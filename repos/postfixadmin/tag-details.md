<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `postfixadmin`

-	[`postfixadmin:3`](#postfixadmin3)
-	[`postfixadmin:3.2`](#postfixadmin32)
-	[`postfixadmin:3.2-apache`](#postfixadmin32-apache)
-	[`postfixadmin:3.2-fpm`](#postfixadmin32-fpm)
-	[`postfixadmin:3.2-fpm-alpine`](#postfixadmin32-fpm-alpine)
-	[`postfixadmin:3-apache`](#postfixadmin3-apache)
-	[`postfixadmin:3-fpm`](#postfixadmin3-fpm)
-	[`postfixadmin:3-fpm-alpine`](#postfixadmin3-fpm-alpine)
-	[`postfixadmin:apache`](#postfixadminapache)
-	[`postfixadmin:fpm`](#postfixadminfpm)
-	[`postfixadmin:fpm-alpine`](#postfixadminfpm-alpine)
-	[`postfixadmin:latest`](#postfixadminlatest)

## `postfixadmin:3`

```console
$ docker pull postfixadmin@sha256:a1bda52b53279ac7c112bcebee006a4dc48b11b753cc165922e53eb9571bc029
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386

### `postfixadmin:3` - linux; amd64

```console
$ docker pull postfixadmin@sha256:3ed2a11058d1d9d2e4ea17c24d3f18037d0541303b02a3bd440551ca03fc5438
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.8 MB (136782618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:688e2e24625f75280ef824ad4c2987fb95aff52282aa6c3787ce5cd87072fe56`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:32 GMT
ADD file:a65337a57a064a79ad8a3f42e8282b3e01710cb4684ccd880463cc8d2e051fa5 in / 
# Tue, 22 Jan 2019 19:30:32 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 21:46:13 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 22 Jan 2019 21:46:14 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 22 Jan 2019 21:46:46 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 22 Jan 2019 21:46:46 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 22 Jan 2019 21:46:47 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 22 Jan 2019 21:56:16 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 21:56:16 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 22 Jan 2019 21:56:16 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 22 Jan 2019 21:56:17 GMT
RUN set -eux; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Tue, 22 Jan 2019 21:56:19 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 22 Jan 2019 21:56:20 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 22 Jan 2019 21:56:20 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 22 Jan 2019 21:56:20 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Tue, 22 Jan 2019 21:56:21 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 22 Jan 2019 21:56:21 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 22 Jan 2019 21:56:21 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 22 Jan 2019 22:27:31 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Tue, 22 Jan 2019 22:27:31 GMT
ENV PHP_VERSION=7.2.14
# Tue, 22 Jan 2019 22:27:31 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror
# Tue, 22 Jan 2019 22:27:32 GMT
ENV PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f PHP_MD5=
# Tue, 22 Jan 2019 22:27:43 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 22 Jan 2019 22:27:43 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Tue, 22 Jan 2019 22:31:33 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 22 Jan 2019 22:31:33 GMT
COPY multi:0a6fe33cb39694994fa567c75b399b9aa5e477c8770caa9f731607a72819b457 in /usr/local/bin/ 
# Tue, 22 Jan 2019 22:31:34 GMT
RUN docker-php-ext-enable sodium
# Tue, 22 Jan 2019 22:31:34 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 22 Jan 2019 22:31:35 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Tue, 22 Jan 2019 22:31:35 GMT
WORKDIR /var/www/html
# Tue, 22 Jan 2019 22:31:35 GMT
EXPOSE 80
# Tue, 22 Jan 2019 22:31:35 GMT
CMD ["apache2-foreground"]
# Wed, 23 Jan 2019 11:49:14 GMT
LABEL maintainer=David Goodwin <david@codepoets.co.uk> (@DavidGoodwin)
# Wed, 23 Jan 2019 11:50:06 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 	libpq-dev 	libsqlite3-dev 	; 		docker-php-ext-install 		mysqli 		pdo_mysql 		pdo_pgsql 		pdo_sqlite 		pgsql 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 		ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 			apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 11:50:06 GMT
ARG POSTFIXADMIN_VERSION=3.2
# Wed, 23 Jan 2019 11:50:06 GMT
ARG POSTFIXADMIN_SHA512=9e022e3311bce96342e87925159a048f294ed0e2d4558bd43120b5c6eda35a7a2d128987372d310dfe86680c98a4d8cf3d602afcb20d948c9bba58bed1766560
# Wed, 23 Jan 2019 11:50:06 GMT
ENV POSTFIXADMIN_VERSION=3.2
# Wed, 23 Jan 2019 11:50:06 GMT
ENV POSTFIXADMIN_SHA512=9e022e3311bce96342e87925159a048f294ed0e2d4558bd43120b5c6eda35a7a2d128987372d310dfe86680c98a4d8cf3d602afcb20d948c9bba58bed1766560
# Wed, 23 Jan 2019 11:50:07 GMT
ENV APACHE_DOCUMENT_ROOT=/var/www/html/public
# Wed, 23 Jan 2019 11:50:07 GMT
RUN set -eu; sed -ri -e 's!/var/www/html!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/sites-available/*.conf; 	sed -ri -e 's!/var/www/!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/apache2.conf /etc/apache2/conf-available/*.conf
# Tue, 29 Jan 2019 00:19:57 GMT
RUN set -eu; 	curl -fsSL -o postfixadmin.tar.gz "https://github.com/postfixadmin/postfixadmin/archive/postfixadmin-${POSTFIXADMIN_VERSION}.tar.gz"; 	echo "$POSTFIXADMIN_SHA512 *postfixadmin.tar.gz" | sha512sum -c -; 	mkdir /usr/src/postfixadmin; 	tar -xf postfixadmin.tar.gz -C /usr/src/postfixadmin --strip-components=1; 	rm postfixadmin.tar.gz; 	mkdir -p /usr/src/postfixadmin/templates_c; 	chown -R www-data:www-data /usr/src/postfixadmin
# Tue, 29 Jan 2019 00:19:57 GMT
COPY file:7b9804d962cc9ab943424976141cd6ab11b4bd5e6f589713aab01e577d18b5e9 in /usr/local/bin/ 
# Tue, 29 Jan 2019 00:19:57 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
# Tue, 29 Jan 2019 00:19:58 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:5e6ec7f28fb77f84f64b8c29fcb0a746260563f5858315e3e9fcc4aee2844840`  
		Last Modified: Tue, 22 Jan 2019 19:37:02 GMT  
		Size: 22.5 MB (22500707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf165947b5b75ef63a7872634239e795a3063179895699dc8e0726f1039946b3`  
		Last Modified: Wed, 23 Jan 2019 01:11:30 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bd37682846da479bcfb64459fa36e043d3380a77b401f6de5b862d00d8dcebf`  
		Last Modified: Wed, 23 Jan 2019 01:11:50 GMT  
		Size: 67.4 MB (67442781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99daf8e838e14fb73055ddac03535d506dbf36a5a01c37497ff001c0dbd68f3e`  
		Last Modified: Wed, 23 Jan 2019 01:11:29 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae320713efba9e138236c82142d67bd9d5f05ef4d4a3de877e7aa27d1456ce3e`  
		Last Modified: Wed, 23 Jan 2019 01:12:17 GMT  
		Size: 17.1 MB (17128043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebcb99c48d8c8dd49d64a2d097966dacca7117b4381a54b6835b0afa487e9814`  
		Last Modified: Wed, 23 Jan 2019 01:12:12 GMT  
		Size: 1.3 KB (1337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9867e71b4ab60b84952cf76ca4f3446e994d0760b3d6e16658417c496656dca2`  
		Last Modified: Wed, 23 Jan 2019 01:12:12 GMT  
		Size: 430.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:936eb418164ae6e2bb965f03cb699d969f0ed568d0f965d6f276c944511dbcfb`  
		Last Modified: Wed, 23 Jan 2019 01:12:11 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d9617dfb66bd026b0be8e8119800b84b3d01f08793f248addff29d1eb3890df`  
		Last Modified: Wed, 23 Jan 2019 01:13:42 GMT  
		Size: 12.5 MB (12506442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dd7afaae10961af92770c0101d92fb65c273d2c0f2ddc37e50a27e0544db9e6`  
		Last Modified: Wed, 23 Jan 2019 01:13:40 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f207844da7e135b8cf0e939b9bcdf7ef96851ceb3ee6a8f7250bb3ab3e3f5f0`  
		Last Modified: Wed, 23 Jan 2019 01:13:40 GMT  
		Size: 15.2 MB (15245750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb3ae5e49870b53e95c7f94f3cde8a99114cdc0ca02ce70a4b046439cc82ffd`  
		Last Modified: Wed, 23 Jan 2019 01:13:40 GMT  
		Size: 2.2 KB (2197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44d7d07029db87ecf6218a08a3827b4d33097b1cfad2c41bb2705e1dacf018bb`  
		Last Modified: Wed, 23 Jan 2019 01:13:40 GMT  
		Size: 255.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb91064652b0cf4550ebc10dc2e3320502d1116b095fc0a6c41e6eb64c4c487c`  
		Last Modified: Wed, 23 Jan 2019 01:13:40 GMT  
		Size: 903.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a9fb13d18e61581e102dab92f6ad950246c51eca1e06979c23e77a92006e014`  
		Last Modified: Wed, 23 Jan 2019 11:51:30 GMT  
		Size: 609.5 KB (609529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db16d23b9e42466091afa868e2a97450ae7033905d3c0ab8c46b95a3069d536c`  
		Last Modified: Wed, 23 Jan 2019 11:51:30 GMT  
		Size: 8.2 KB (8220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:571ef8f90d3b25950a8ec03e65000692375cacfb001809f3113e87bfdc91de08`  
		Last Modified: Tue, 29 Jan 2019 00:20:21 GMT  
		Size: 1.3 MB (1333481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4338dcec5c541355bbd6d49c22e3b55bb2fce425158a2dd8beb3c8f31eb26263`  
		Last Modified: Tue, 29 Jan 2019 00:20:21 GMT  
		Size: 1.1 KB (1146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postfixadmin:3` - linux; arm64 variant v8

```console
$ docker pull postfixadmin@sha256:d6803a69f147f5364d96e676c30834de97c7fd882e2b87713b0c7b71614ac460
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.3 MB (123331274 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:032d28ee6c798cc670d755a8af0e8799539f74c2e63dc6fa384b7212a05f9606`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 23 Jan 2019 10:04:38 GMT
ADD file:64db5736cabe52ff81a1eb31101c1afa1e4a04374e84ae717532a88286d01784 in / 
# Wed, 23 Jan 2019 10:04:39 GMT
CMD ["bash"]
# Fri, 25 Jan 2019 07:42:45 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Fri, 25 Jan 2019 07:42:46 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 25 Jan 2019 07:44:08 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 25 Jan 2019 07:44:09 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 25 Jan 2019 07:44:11 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 25 Jan 2019 07:54:12 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 Jan 2019 07:54:13 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 25 Jan 2019 07:54:13 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 25 Jan 2019 07:54:15 GMT
RUN set -eux; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Fri, 25 Jan 2019 07:54:17 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 25 Jan 2019 07:54:19 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 25 Jan 2019 07:54:20 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 25 Jan 2019 07:54:20 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Fri, 25 Jan 2019 07:54:21 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 25 Jan 2019 07:54:22 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 25 Jan 2019 07:54:23 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 25 Jan 2019 08:32:02 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 25 Jan 2019 08:32:03 GMT
ENV PHP_VERSION=7.2.14
# Fri, 25 Jan 2019 08:32:04 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror
# Fri, 25 Jan 2019 08:32:04 GMT
ENV PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f PHP_MD5=
# Fri, 25 Jan 2019 08:32:35 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 25 Jan 2019 08:32:36 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 25 Jan 2019 08:41:15 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 25 Jan 2019 08:41:17 GMT
COPY multi:0a6fe33cb39694994fa567c75b399b9aa5e477c8770caa9f731607a72819b457 in /usr/local/bin/ 
# Fri, 25 Jan 2019 08:41:24 GMT
RUN docker-php-ext-enable sodium
# Fri, 25 Jan 2019 08:41:27 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 25 Jan 2019 08:41:30 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Fri, 25 Jan 2019 08:41:34 GMT
WORKDIR /var/www/html
# Fri, 25 Jan 2019 08:41:35 GMT
EXPOSE 80
# Fri, 25 Jan 2019 08:41:37 GMT
CMD ["apache2-foreground"]
# Tue, 29 Jan 2019 09:44:36 GMT
LABEL maintainer=David Goodwin <david@codepoets.co.uk> (@DavidGoodwin)
# Tue, 29 Jan 2019 09:46:28 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 	libpq-dev 	libsqlite3-dev 	; 		docker-php-ext-install 		mysqli 		pdo_mysql 		pdo_pgsql 		pdo_sqlite 		pgsql 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 		ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 			apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 09:46:29 GMT
ARG POSTFIXADMIN_VERSION=3.2
# Tue, 29 Jan 2019 09:46:30 GMT
ARG POSTFIXADMIN_SHA512=9e022e3311bce96342e87925159a048f294ed0e2d4558bd43120b5c6eda35a7a2d128987372d310dfe86680c98a4d8cf3d602afcb20d948c9bba58bed1766560
# Tue, 29 Jan 2019 09:46:30 GMT
ENV POSTFIXADMIN_VERSION=3.2
# Tue, 29 Jan 2019 09:46:31 GMT
ENV POSTFIXADMIN_SHA512=9e022e3311bce96342e87925159a048f294ed0e2d4558bd43120b5c6eda35a7a2d128987372d310dfe86680c98a4d8cf3d602afcb20d948c9bba58bed1766560
# Tue, 29 Jan 2019 09:46:32 GMT
ENV APACHE_DOCUMENT_ROOT=/var/www/html/public
# Tue, 29 Jan 2019 09:46:34 GMT
RUN set -eu; sed -ri -e 's!/var/www/html!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/sites-available/*.conf; 	sed -ri -e 's!/var/www/!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/apache2.conf /etc/apache2/conf-available/*.conf
# Tue, 29 Jan 2019 09:46:38 GMT
RUN set -eu; 	curl -fsSL -o postfixadmin.tar.gz "https://github.com/postfixadmin/postfixadmin/archive/postfixadmin-${POSTFIXADMIN_VERSION}.tar.gz"; 	echo "$POSTFIXADMIN_SHA512 *postfixadmin.tar.gz" | sha512sum -c -; 	mkdir /usr/src/postfixadmin; 	tar -xf postfixadmin.tar.gz -C /usr/src/postfixadmin --strip-components=1; 	rm postfixadmin.tar.gz; 	mkdir -p /usr/src/postfixadmin/templates_c; 	chown -R www-data:www-data /usr/src/postfixadmin
# Tue, 29 Jan 2019 09:46:38 GMT
COPY file:7b9804d962cc9ab943424976141cd6ab11b4bd5e6f589713aab01e577d18b5e9 in /usr/local/bin/ 
# Tue, 29 Jan 2019 09:46:39 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
# Tue, 29 Jan 2019 09:46:40 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:711c3a2baeda87a6b9816cb812388d62d17396034e595a68d8ee5f938f9d77b3`  
		Last Modified: Wed, 23 Jan 2019 10:11:36 GMT  
		Size: 20.4 MB (20350180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a273a3c32232329b60ac83d95b6b7744068016759eaf8675589b9dc5b50513b`  
		Last Modified: Fri, 25 Jan 2019 10:11:35 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dbe9d898f22bebde12a9a3868aa7520c4c2250ceae00fa9153248c8f82e5d7b`  
		Last Modified: Fri, 25 Jan 2019 10:12:06 GMT  
		Size: 57.6 MB (57606166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac488f1008ef7811391ec1a02a19be84173ce484a25e46f7f4641ebbce8fcbec`  
		Last Modified: Fri, 25 Jan 2019 10:11:35 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f1173e9c64c514da6d8c6bafbba7be17013209d7ea8fd088cb5e124c80e092`  
		Last Modified: Fri, 25 Jan 2019 10:12:58 GMT  
		Size: 16.7 MB (16711165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c98388262fb672bb0ceff0e361fb5aaed815271fe47e2624df7284736dfe7dd8`  
		Last Modified: Fri, 25 Jan 2019 10:12:48 GMT  
		Size: 1.3 KB (1342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed7a886dc3b7edbee8aadaaf76d25711df48f586f9ebb53e3e8871026d140724`  
		Last Modified: Fri, 25 Jan 2019 10:12:48 GMT  
		Size: 434.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:092bbf92d4041daa2f4cf5625d0b7eb07bf80512241012e26c8cd0bead2107d6`  
		Last Modified: Fri, 25 Jan 2019 10:12:49 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66c8c3882bd24c8e800d569d65615abb5aa81732214840fa66e43a446c7446b8`  
		Last Modified: Fri, 25 Jan 2019 10:15:41 GMT  
		Size: 12.5 MB (12504556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:932ce47bbbe66f0ff55e6e760509c90019f9cb0b94c7ffd66c590bb9b2ab2d00`  
		Last Modified: Fri, 25 Jan 2019 10:15:36 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9be881fb6985de63e0ace9e5c7e9557f29bde8edac7144529898f9a3e00cb331`  
		Last Modified: Fri, 25 Jan 2019 10:15:51 GMT  
		Size: 14.2 MB (14224900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52e4f1293ba756a60e636b137b4259939e88407a7c86aad27cfbc5ae0b659c4d`  
		Last Modified: Fri, 25 Jan 2019 10:15:36 GMT  
		Size: 2.2 KB (2200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b843a3c71d198523cd81cd8345c71f1c449e002bd41d45346f473562871f5fb`  
		Last Modified: Fri, 25 Jan 2019 10:15:36 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:062047dd2f4cc55849f0238f7ce86267f3a376d9a73a28b727e8de776fc98b90`  
		Last Modified: Fri, 25 Jan 2019 10:15:36 GMT  
		Size: 907.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a40169a24ab98c4d053301ea08e65a963d778ad51253a7623ca4a260029e392`  
		Last Modified: Tue, 29 Jan 2019 09:50:49 GMT  
		Size: 584.9 KB (584916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57bc8e4222b03933c82269ceeb0c4f1f0f9d2bb0f8f30ff7d8bcdb47bdd7c39d`  
		Last Modified: Tue, 29 Jan 2019 09:50:49 GMT  
		Size: 8.2 KB (8225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f07a375a48c136278f8ae73eaca9786ec8fec69e4a18288e88aaaf1084cfe3e`  
		Last Modified: Tue, 29 Jan 2019 09:50:50 GMT  
		Size: 1.3 MB (1333475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcf8741bd563f42b3a723a0b3eab08bbb1c0da9ea60b246cce52e66385806813`  
		Last Modified: Tue, 29 Jan 2019 09:50:49 GMT  
		Size: 1.1 KB (1150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postfixadmin:3` - linux; 386

```console
$ docker pull postfixadmin@sha256:4b094f58ce9ed17b6a0ac1ffc98c2558449f065e32754f76d8eb4d21ace07070
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.4 MB (142364515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dd84bff525ddabe37018a4c794b3cd86b1c2a1f3c63bc30e2a8a1ad51320f8f`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

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
# Sat, 29 Dec 2018 21:45:50 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 21:45:51 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Sat, 29 Dec 2018 21:45:51 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Sat, 29 Dec 2018 21:45:51 GMT
RUN set -eux; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Sat, 29 Dec 2018 21:45:52 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Sat, 29 Dec 2018 21:45:53 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Sat, 29 Dec 2018 21:45:53 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Sat, 29 Dec 2018 21:45:53 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Sat, 29 Dec 2018 21:45:54 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 21:45:54 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 21:45:54 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 29 Dec 2018 22:07:26 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 11 Jan 2019 12:50:42 GMT
ENV PHP_VERSION=7.2.14
# Fri, 11 Jan 2019 12:50:42 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror
# Fri, 11 Jan 2019 12:50:42 GMT
ENV PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f PHP_MD5=
# Fri, 11 Jan 2019 12:50:53 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 11 Jan 2019 12:50:53 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 11 Jan 2019 12:54:18 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 11 Jan 2019 12:54:18 GMT
COPY multi:0a6fe33cb39694994fa567c75b399b9aa5e477c8770caa9f731607a72819b457 in /usr/local/bin/ 
# Fri, 11 Jan 2019 12:54:19 GMT
RUN docker-php-ext-enable sodium
# Fri, 11 Jan 2019 12:54:19 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 11 Jan 2019 12:54:19 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Fri, 11 Jan 2019 12:54:20 GMT
WORKDIR /var/www/html
# Fri, 11 Jan 2019 12:54:20 GMT
EXPOSE 80
# Fri, 11 Jan 2019 12:54:20 GMT
CMD ["apache2-foreground"]
# Tue, 29 Jan 2019 13:25:37 GMT
LABEL maintainer=David Goodwin <david@codepoets.co.uk> (@DavidGoodwin)
# Tue, 29 Jan 2019 13:26:26 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 	libpq-dev 	libsqlite3-dev 	; 		docker-php-ext-install 		mysqli 		pdo_mysql 		pdo_pgsql 		pdo_sqlite 		pgsql 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 		ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 			apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 13:26:26 GMT
ARG POSTFIXADMIN_VERSION=3.2
# Tue, 29 Jan 2019 13:26:26 GMT
ARG POSTFIXADMIN_SHA512=9e022e3311bce96342e87925159a048f294ed0e2d4558bd43120b5c6eda35a7a2d128987372d310dfe86680c98a4d8cf3d602afcb20d948c9bba58bed1766560
# Tue, 29 Jan 2019 13:26:26 GMT
ENV POSTFIXADMIN_VERSION=3.2
# Tue, 29 Jan 2019 13:26:27 GMT
ENV POSTFIXADMIN_SHA512=9e022e3311bce96342e87925159a048f294ed0e2d4558bd43120b5c6eda35a7a2d128987372d310dfe86680c98a4d8cf3d602afcb20d948c9bba58bed1766560
# Tue, 29 Jan 2019 13:26:27 GMT
ENV APACHE_DOCUMENT_ROOT=/var/www/html/public
# Tue, 29 Jan 2019 13:26:28 GMT
RUN set -eu; sed -ri -e 's!/var/www/html!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/sites-available/*.conf; 	sed -ri -e 's!/var/www/!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/apache2.conf /etc/apache2/conf-available/*.conf
# Tue, 29 Jan 2019 13:26:29 GMT
RUN set -eu; 	curl -fsSL -o postfixadmin.tar.gz "https://github.com/postfixadmin/postfixadmin/archive/postfixadmin-${POSTFIXADMIN_VERSION}.tar.gz"; 	echo "$POSTFIXADMIN_SHA512 *postfixadmin.tar.gz" | sha512sum -c -; 	mkdir /usr/src/postfixadmin; 	tar -xf postfixadmin.tar.gz -C /usr/src/postfixadmin --strip-components=1; 	rm postfixadmin.tar.gz; 	mkdir -p /usr/src/postfixadmin/templates_c; 	chown -R www-data:www-data /usr/src/postfixadmin
# Tue, 29 Jan 2019 13:26:29 GMT
COPY file:7b9804d962cc9ab943424976141cd6ab11b4bd5e6f589713aab01e577d18b5e9 in /usr/local/bin/ 
# Tue, 29 Jan 2019 13:26:29 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
# Tue, 29 Jan 2019 13:26:29 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:cac1a3cba6925217785401a8b972064ba1a0dfe60d4e039f49c4dac4b3f4270e`  
		Last Modified: Sun, 30 Dec 2018 01:57:45 GMT  
		Size: 17.6 MB (17561920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9184c6ff5922580665f40d9e2416d6ff748200ba764489ad442486d61570f8d0`  
		Last Modified: Sun, 30 Dec 2018 01:57:40 GMT  
		Size: 1.3 KB (1336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9edc4d80dca7d81ba8b7a97ebf76890d74ca4d440e11b418c39c09686094da0b`  
		Last Modified: Sun, 30 Dec 2018 01:57:40 GMT  
		Size: 430.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c49d3ce320b30bff15e021157c1b88262d848a456dbdf970c8796accf3e9cc4`  
		Last Modified: Sun, 30 Dec 2018 01:57:40 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd62ef36d94e7c9305ffd2eb8a68bd0b1939d0e5f21ce8a25c7ab5db0748013d`  
		Last Modified: Fri, 11 Jan 2019 14:54:17 GMT  
		Size: 12.5 MB (12505836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b436f91e147a9071b2e0dde2cd2939f63ead4fffb43f92d4dc8d39aabfad96b`  
		Last Modified: Fri, 11 Jan 2019 14:54:12 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2848e63e536187e58765f167f5d942e58c4ba788373f18053046374337e6a498`  
		Last Modified: Fri, 11 Jan 2019 14:54:16 GMT  
		Size: 15.7 MB (15686833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b45df8623fc8e136011d091ed53d924d6820771d844b4c27843c8aac1a4a6ca6`  
		Last Modified: Fri, 11 Jan 2019 14:54:17 GMT  
		Size: 2.2 KB (2197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02b7d92b09c9e14b62d1c385941eabe813b6b3fb137191d2b3d3b91806481ada`  
		Last Modified: Fri, 11 Jan 2019 14:54:16 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64c2910211b6c9223772e7d9203a87d7f51672460245fe15ecf00277389bdaed`  
		Last Modified: Fri, 11 Jan 2019 14:54:16 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05c168fa999cdfc887e78bdde44218263daedcbffadede3b00c60f680a54c939`  
		Last Modified: Tue, 29 Jan 2019 13:28:21 GMT  
		Size: 623.7 KB (623658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a2241cea4b9b8acae4c1ca72ab984c395dcdcd391cc1e5d1ae64fc4c812600e`  
		Last Modified: Tue, 29 Jan 2019 13:28:21 GMT  
		Size: 8.2 KB (8218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5124e7219d91434265c63088bf1deafc5dc0a97c44d3fe4cf16056a5a3a99ddb`  
		Last Modified: Tue, 29 Jan 2019 13:28:21 GMT  
		Size: 1.3 MB (1333482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fc2b869ab353967ebe6ea47bafe9e2ccedc472ec2997446ff363b951866c923`  
		Last Modified: Tue, 29 Jan 2019 13:28:21 GMT  
		Size: 1.1 KB (1148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postfixadmin:3.2`

```console
$ docker pull postfixadmin@sha256:a1bda52b53279ac7c112bcebee006a4dc48b11b753cc165922e53eb9571bc029
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386

### `postfixadmin:3.2` - linux; amd64

```console
$ docker pull postfixadmin@sha256:3ed2a11058d1d9d2e4ea17c24d3f18037d0541303b02a3bd440551ca03fc5438
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.8 MB (136782618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:688e2e24625f75280ef824ad4c2987fb95aff52282aa6c3787ce5cd87072fe56`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:32 GMT
ADD file:a65337a57a064a79ad8a3f42e8282b3e01710cb4684ccd880463cc8d2e051fa5 in / 
# Tue, 22 Jan 2019 19:30:32 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 21:46:13 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 22 Jan 2019 21:46:14 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 22 Jan 2019 21:46:46 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 22 Jan 2019 21:46:46 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 22 Jan 2019 21:46:47 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 22 Jan 2019 21:56:16 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 21:56:16 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 22 Jan 2019 21:56:16 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 22 Jan 2019 21:56:17 GMT
RUN set -eux; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Tue, 22 Jan 2019 21:56:19 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 22 Jan 2019 21:56:20 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 22 Jan 2019 21:56:20 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 22 Jan 2019 21:56:20 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Tue, 22 Jan 2019 21:56:21 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 22 Jan 2019 21:56:21 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 22 Jan 2019 21:56:21 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 22 Jan 2019 22:27:31 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Tue, 22 Jan 2019 22:27:31 GMT
ENV PHP_VERSION=7.2.14
# Tue, 22 Jan 2019 22:27:31 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror
# Tue, 22 Jan 2019 22:27:32 GMT
ENV PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f PHP_MD5=
# Tue, 22 Jan 2019 22:27:43 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 22 Jan 2019 22:27:43 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Tue, 22 Jan 2019 22:31:33 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 22 Jan 2019 22:31:33 GMT
COPY multi:0a6fe33cb39694994fa567c75b399b9aa5e477c8770caa9f731607a72819b457 in /usr/local/bin/ 
# Tue, 22 Jan 2019 22:31:34 GMT
RUN docker-php-ext-enable sodium
# Tue, 22 Jan 2019 22:31:34 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 22 Jan 2019 22:31:35 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Tue, 22 Jan 2019 22:31:35 GMT
WORKDIR /var/www/html
# Tue, 22 Jan 2019 22:31:35 GMT
EXPOSE 80
# Tue, 22 Jan 2019 22:31:35 GMT
CMD ["apache2-foreground"]
# Wed, 23 Jan 2019 11:49:14 GMT
LABEL maintainer=David Goodwin <david@codepoets.co.uk> (@DavidGoodwin)
# Wed, 23 Jan 2019 11:50:06 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 	libpq-dev 	libsqlite3-dev 	; 		docker-php-ext-install 		mysqli 		pdo_mysql 		pdo_pgsql 		pdo_sqlite 		pgsql 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 		ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 			apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 11:50:06 GMT
ARG POSTFIXADMIN_VERSION=3.2
# Wed, 23 Jan 2019 11:50:06 GMT
ARG POSTFIXADMIN_SHA512=9e022e3311bce96342e87925159a048f294ed0e2d4558bd43120b5c6eda35a7a2d128987372d310dfe86680c98a4d8cf3d602afcb20d948c9bba58bed1766560
# Wed, 23 Jan 2019 11:50:06 GMT
ENV POSTFIXADMIN_VERSION=3.2
# Wed, 23 Jan 2019 11:50:06 GMT
ENV POSTFIXADMIN_SHA512=9e022e3311bce96342e87925159a048f294ed0e2d4558bd43120b5c6eda35a7a2d128987372d310dfe86680c98a4d8cf3d602afcb20d948c9bba58bed1766560
# Wed, 23 Jan 2019 11:50:07 GMT
ENV APACHE_DOCUMENT_ROOT=/var/www/html/public
# Wed, 23 Jan 2019 11:50:07 GMT
RUN set -eu; sed -ri -e 's!/var/www/html!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/sites-available/*.conf; 	sed -ri -e 's!/var/www/!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/apache2.conf /etc/apache2/conf-available/*.conf
# Tue, 29 Jan 2019 00:19:57 GMT
RUN set -eu; 	curl -fsSL -o postfixadmin.tar.gz "https://github.com/postfixadmin/postfixadmin/archive/postfixadmin-${POSTFIXADMIN_VERSION}.tar.gz"; 	echo "$POSTFIXADMIN_SHA512 *postfixadmin.tar.gz" | sha512sum -c -; 	mkdir /usr/src/postfixadmin; 	tar -xf postfixadmin.tar.gz -C /usr/src/postfixadmin --strip-components=1; 	rm postfixadmin.tar.gz; 	mkdir -p /usr/src/postfixadmin/templates_c; 	chown -R www-data:www-data /usr/src/postfixadmin
# Tue, 29 Jan 2019 00:19:57 GMT
COPY file:7b9804d962cc9ab943424976141cd6ab11b4bd5e6f589713aab01e577d18b5e9 in /usr/local/bin/ 
# Tue, 29 Jan 2019 00:19:57 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
# Tue, 29 Jan 2019 00:19:58 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:5e6ec7f28fb77f84f64b8c29fcb0a746260563f5858315e3e9fcc4aee2844840`  
		Last Modified: Tue, 22 Jan 2019 19:37:02 GMT  
		Size: 22.5 MB (22500707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf165947b5b75ef63a7872634239e795a3063179895699dc8e0726f1039946b3`  
		Last Modified: Wed, 23 Jan 2019 01:11:30 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bd37682846da479bcfb64459fa36e043d3380a77b401f6de5b862d00d8dcebf`  
		Last Modified: Wed, 23 Jan 2019 01:11:50 GMT  
		Size: 67.4 MB (67442781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99daf8e838e14fb73055ddac03535d506dbf36a5a01c37497ff001c0dbd68f3e`  
		Last Modified: Wed, 23 Jan 2019 01:11:29 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae320713efba9e138236c82142d67bd9d5f05ef4d4a3de877e7aa27d1456ce3e`  
		Last Modified: Wed, 23 Jan 2019 01:12:17 GMT  
		Size: 17.1 MB (17128043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebcb99c48d8c8dd49d64a2d097966dacca7117b4381a54b6835b0afa487e9814`  
		Last Modified: Wed, 23 Jan 2019 01:12:12 GMT  
		Size: 1.3 KB (1337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9867e71b4ab60b84952cf76ca4f3446e994d0760b3d6e16658417c496656dca2`  
		Last Modified: Wed, 23 Jan 2019 01:12:12 GMT  
		Size: 430.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:936eb418164ae6e2bb965f03cb699d969f0ed568d0f965d6f276c944511dbcfb`  
		Last Modified: Wed, 23 Jan 2019 01:12:11 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d9617dfb66bd026b0be8e8119800b84b3d01f08793f248addff29d1eb3890df`  
		Last Modified: Wed, 23 Jan 2019 01:13:42 GMT  
		Size: 12.5 MB (12506442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dd7afaae10961af92770c0101d92fb65c273d2c0f2ddc37e50a27e0544db9e6`  
		Last Modified: Wed, 23 Jan 2019 01:13:40 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f207844da7e135b8cf0e939b9bcdf7ef96851ceb3ee6a8f7250bb3ab3e3f5f0`  
		Last Modified: Wed, 23 Jan 2019 01:13:40 GMT  
		Size: 15.2 MB (15245750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb3ae5e49870b53e95c7f94f3cde8a99114cdc0ca02ce70a4b046439cc82ffd`  
		Last Modified: Wed, 23 Jan 2019 01:13:40 GMT  
		Size: 2.2 KB (2197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44d7d07029db87ecf6218a08a3827b4d33097b1cfad2c41bb2705e1dacf018bb`  
		Last Modified: Wed, 23 Jan 2019 01:13:40 GMT  
		Size: 255.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb91064652b0cf4550ebc10dc2e3320502d1116b095fc0a6c41e6eb64c4c487c`  
		Last Modified: Wed, 23 Jan 2019 01:13:40 GMT  
		Size: 903.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a9fb13d18e61581e102dab92f6ad950246c51eca1e06979c23e77a92006e014`  
		Last Modified: Wed, 23 Jan 2019 11:51:30 GMT  
		Size: 609.5 KB (609529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db16d23b9e42466091afa868e2a97450ae7033905d3c0ab8c46b95a3069d536c`  
		Last Modified: Wed, 23 Jan 2019 11:51:30 GMT  
		Size: 8.2 KB (8220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:571ef8f90d3b25950a8ec03e65000692375cacfb001809f3113e87bfdc91de08`  
		Last Modified: Tue, 29 Jan 2019 00:20:21 GMT  
		Size: 1.3 MB (1333481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4338dcec5c541355bbd6d49c22e3b55bb2fce425158a2dd8beb3c8f31eb26263`  
		Last Modified: Tue, 29 Jan 2019 00:20:21 GMT  
		Size: 1.1 KB (1146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postfixadmin:3.2` - linux; arm64 variant v8

```console
$ docker pull postfixadmin@sha256:d6803a69f147f5364d96e676c30834de97c7fd882e2b87713b0c7b71614ac460
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.3 MB (123331274 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:032d28ee6c798cc670d755a8af0e8799539f74c2e63dc6fa384b7212a05f9606`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 23 Jan 2019 10:04:38 GMT
ADD file:64db5736cabe52ff81a1eb31101c1afa1e4a04374e84ae717532a88286d01784 in / 
# Wed, 23 Jan 2019 10:04:39 GMT
CMD ["bash"]
# Fri, 25 Jan 2019 07:42:45 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Fri, 25 Jan 2019 07:42:46 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 25 Jan 2019 07:44:08 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 25 Jan 2019 07:44:09 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 25 Jan 2019 07:44:11 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 25 Jan 2019 07:54:12 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 Jan 2019 07:54:13 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 25 Jan 2019 07:54:13 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 25 Jan 2019 07:54:15 GMT
RUN set -eux; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Fri, 25 Jan 2019 07:54:17 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 25 Jan 2019 07:54:19 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 25 Jan 2019 07:54:20 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 25 Jan 2019 07:54:20 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Fri, 25 Jan 2019 07:54:21 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 25 Jan 2019 07:54:22 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 25 Jan 2019 07:54:23 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 25 Jan 2019 08:32:02 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 25 Jan 2019 08:32:03 GMT
ENV PHP_VERSION=7.2.14
# Fri, 25 Jan 2019 08:32:04 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror
# Fri, 25 Jan 2019 08:32:04 GMT
ENV PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f PHP_MD5=
# Fri, 25 Jan 2019 08:32:35 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 25 Jan 2019 08:32:36 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 25 Jan 2019 08:41:15 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 25 Jan 2019 08:41:17 GMT
COPY multi:0a6fe33cb39694994fa567c75b399b9aa5e477c8770caa9f731607a72819b457 in /usr/local/bin/ 
# Fri, 25 Jan 2019 08:41:24 GMT
RUN docker-php-ext-enable sodium
# Fri, 25 Jan 2019 08:41:27 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 25 Jan 2019 08:41:30 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Fri, 25 Jan 2019 08:41:34 GMT
WORKDIR /var/www/html
# Fri, 25 Jan 2019 08:41:35 GMT
EXPOSE 80
# Fri, 25 Jan 2019 08:41:37 GMT
CMD ["apache2-foreground"]
# Tue, 29 Jan 2019 09:44:36 GMT
LABEL maintainer=David Goodwin <david@codepoets.co.uk> (@DavidGoodwin)
# Tue, 29 Jan 2019 09:46:28 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 	libpq-dev 	libsqlite3-dev 	; 		docker-php-ext-install 		mysqli 		pdo_mysql 		pdo_pgsql 		pdo_sqlite 		pgsql 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 		ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 			apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 09:46:29 GMT
ARG POSTFIXADMIN_VERSION=3.2
# Tue, 29 Jan 2019 09:46:30 GMT
ARG POSTFIXADMIN_SHA512=9e022e3311bce96342e87925159a048f294ed0e2d4558bd43120b5c6eda35a7a2d128987372d310dfe86680c98a4d8cf3d602afcb20d948c9bba58bed1766560
# Tue, 29 Jan 2019 09:46:30 GMT
ENV POSTFIXADMIN_VERSION=3.2
# Tue, 29 Jan 2019 09:46:31 GMT
ENV POSTFIXADMIN_SHA512=9e022e3311bce96342e87925159a048f294ed0e2d4558bd43120b5c6eda35a7a2d128987372d310dfe86680c98a4d8cf3d602afcb20d948c9bba58bed1766560
# Tue, 29 Jan 2019 09:46:32 GMT
ENV APACHE_DOCUMENT_ROOT=/var/www/html/public
# Tue, 29 Jan 2019 09:46:34 GMT
RUN set -eu; sed -ri -e 's!/var/www/html!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/sites-available/*.conf; 	sed -ri -e 's!/var/www/!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/apache2.conf /etc/apache2/conf-available/*.conf
# Tue, 29 Jan 2019 09:46:38 GMT
RUN set -eu; 	curl -fsSL -o postfixadmin.tar.gz "https://github.com/postfixadmin/postfixadmin/archive/postfixadmin-${POSTFIXADMIN_VERSION}.tar.gz"; 	echo "$POSTFIXADMIN_SHA512 *postfixadmin.tar.gz" | sha512sum -c -; 	mkdir /usr/src/postfixadmin; 	tar -xf postfixadmin.tar.gz -C /usr/src/postfixadmin --strip-components=1; 	rm postfixadmin.tar.gz; 	mkdir -p /usr/src/postfixadmin/templates_c; 	chown -R www-data:www-data /usr/src/postfixadmin
# Tue, 29 Jan 2019 09:46:38 GMT
COPY file:7b9804d962cc9ab943424976141cd6ab11b4bd5e6f589713aab01e577d18b5e9 in /usr/local/bin/ 
# Tue, 29 Jan 2019 09:46:39 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
# Tue, 29 Jan 2019 09:46:40 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:711c3a2baeda87a6b9816cb812388d62d17396034e595a68d8ee5f938f9d77b3`  
		Last Modified: Wed, 23 Jan 2019 10:11:36 GMT  
		Size: 20.4 MB (20350180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a273a3c32232329b60ac83d95b6b7744068016759eaf8675589b9dc5b50513b`  
		Last Modified: Fri, 25 Jan 2019 10:11:35 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dbe9d898f22bebde12a9a3868aa7520c4c2250ceae00fa9153248c8f82e5d7b`  
		Last Modified: Fri, 25 Jan 2019 10:12:06 GMT  
		Size: 57.6 MB (57606166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac488f1008ef7811391ec1a02a19be84173ce484a25e46f7f4641ebbce8fcbec`  
		Last Modified: Fri, 25 Jan 2019 10:11:35 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f1173e9c64c514da6d8c6bafbba7be17013209d7ea8fd088cb5e124c80e092`  
		Last Modified: Fri, 25 Jan 2019 10:12:58 GMT  
		Size: 16.7 MB (16711165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c98388262fb672bb0ceff0e361fb5aaed815271fe47e2624df7284736dfe7dd8`  
		Last Modified: Fri, 25 Jan 2019 10:12:48 GMT  
		Size: 1.3 KB (1342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed7a886dc3b7edbee8aadaaf76d25711df48f586f9ebb53e3e8871026d140724`  
		Last Modified: Fri, 25 Jan 2019 10:12:48 GMT  
		Size: 434.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:092bbf92d4041daa2f4cf5625d0b7eb07bf80512241012e26c8cd0bead2107d6`  
		Last Modified: Fri, 25 Jan 2019 10:12:49 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66c8c3882bd24c8e800d569d65615abb5aa81732214840fa66e43a446c7446b8`  
		Last Modified: Fri, 25 Jan 2019 10:15:41 GMT  
		Size: 12.5 MB (12504556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:932ce47bbbe66f0ff55e6e760509c90019f9cb0b94c7ffd66c590bb9b2ab2d00`  
		Last Modified: Fri, 25 Jan 2019 10:15:36 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9be881fb6985de63e0ace9e5c7e9557f29bde8edac7144529898f9a3e00cb331`  
		Last Modified: Fri, 25 Jan 2019 10:15:51 GMT  
		Size: 14.2 MB (14224900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52e4f1293ba756a60e636b137b4259939e88407a7c86aad27cfbc5ae0b659c4d`  
		Last Modified: Fri, 25 Jan 2019 10:15:36 GMT  
		Size: 2.2 KB (2200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b843a3c71d198523cd81cd8345c71f1c449e002bd41d45346f473562871f5fb`  
		Last Modified: Fri, 25 Jan 2019 10:15:36 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:062047dd2f4cc55849f0238f7ce86267f3a376d9a73a28b727e8de776fc98b90`  
		Last Modified: Fri, 25 Jan 2019 10:15:36 GMT  
		Size: 907.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a40169a24ab98c4d053301ea08e65a963d778ad51253a7623ca4a260029e392`  
		Last Modified: Tue, 29 Jan 2019 09:50:49 GMT  
		Size: 584.9 KB (584916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57bc8e4222b03933c82269ceeb0c4f1f0f9d2bb0f8f30ff7d8bcdb47bdd7c39d`  
		Last Modified: Tue, 29 Jan 2019 09:50:49 GMT  
		Size: 8.2 KB (8225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f07a375a48c136278f8ae73eaca9786ec8fec69e4a18288e88aaaf1084cfe3e`  
		Last Modified: Tue, 29 Jan 2019 09:50:50 GMT  
		Size: 1.3 MB (1333475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcf8741bd563f42b3a723a0b3eab08bbb1c0da9ea60b246cce52e66385806813`  
		Last Modified: Tue, 29 Jan 2019 09:50:49 GMT  
		Size: 1.1 KB (1150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postfixadmin:3.2` - linux; 386

```console
$ docker pull postfixadmin@sha256:4b094f58ce9ed17b6a0ac1ffc98c2558449f065e32754f76d8eb4d21ace07070
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.4 MB (142364515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dd84bff525ddabe37018a4c794b3cd86b1c2a1f3c63bc30e2a8a1ad51320f8f`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

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
# Sat, 29 Dec 2018 21:45:50 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 21:45:51 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Sat, 29 Dec 2018 21:45:51 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Sat, 29 Dec 2018 21:45:51 GMT
RUN set -eux; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Sat, 29 Dec 2018 21:45:52 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Sat, 29 Dec 2018 21:45:53 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Sat, 29 Dec 2018 21:45:53 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Sat, 29 Dec 2018 21:45:53 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Sat, 29 Dec 2018 21:45:54 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 21:45:54 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 21:45:54 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 29 Dec 2018 22:07:26 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 11 Jan 2019 12:50:42 GMT
ENV PHP_VERSION=7.2.14
# Fri, 11 Jan 2019 12:50:42 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror
# Fri, 11 Jan 2019 12:50:42 GMT
ENV PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f PHP_MD5=
# Fri, 11 Jan 2019 12:50:53 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 11 Jan 2019 12:50:53 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 11 Jan 2019 12:54:18 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 11 Jan 2019 12:54:18 GMT
COPY multi:0a6fe33cb39694994fa567c75b399b9aa5e477c8770caa9f731607a72819b457 in /usr/local/bin/ 
# Fri, 11 Jan 2019 12:54:19 GMT
RUN docker-php-ext-enable sodium
# Fri, 11 Jan 2019 12:54:19 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 11 Jan 2019 12:54:19 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Fri, 11 Jan 2019 12:54:20 GMT
WORKDIR /var/www/html
# Fri, 11 Jan 2019 12:54:20 GMT
EXPOSE 80
# Fri, 11 Jan 2019 12:54:20 GMT
CMD ["apache2-foreground"]
# Tue, 29 Jan 2019 13:25:37 GMT
LABEL maintainer=David Goodwin <david@codepoets.co.uk> (@DavidGoodwin)
# Tue, 29 Jan 2019 13:26:26 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 	libpq-dev 	libsqlite3-dev 	; 		docker-php-ext-install 		mysqli 		pdo_mysql 		pdo_pgsql 		pdo_sqlite 		pgsql 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 		ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 			apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 13:26:26 GMT
ARG POSTFIXADMIN_VERSION=3.2
# Tue, 29 Jan 2019 13:26:26 GMT
ARG POSTFIXADMIN_SHA512=9e022e3311bce96342e87925159a048f294ed0e2d4558bd43120b5c6eda35a7a2d128987372d310dfe86680c98a4d8cf3d602afcb20d948c9bba58bed1766560
# Tue, 29 Jan 2019 13:26:26 GMT
ENV POSTFIXADMIN_VERSION=3.2
# Tue, 29 Jan 2019 13:26:27 GMT
ENV POSTFIXADMIN_SHA512=9e022e3311bce96342e87925159a048f294ed0e2d4558bd43120b5c6eda35a7a2d128987372d310dfe86680c98a4d8cf3d602afcb20d948c9bba58bed1766560
# Tue, 29 Jan 2019 13:26:27 GMT
ENV APACHE_DOCUMENT_ROOT=/var/www/html/public
# Tue, 29 Jan 2019 13:26:28 GMT
RUN set -eu; sed -ri -e 's!/var/www/html!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/sites-available/*.conf; 	sed -ri -e 's!/var/www/!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/apache2.conf /etc/apache2/conf-available/*.conf
# Tue, 29 Jan 2019 13:26:29 GMT
RUN set -eu; 	curl -fsSL -o postfixadmin.tar.gz "https://github.com/postfixadmin/postfixadmin/archive/postfixadmin-${POSTFIXADMIN_VERSION}.tar.gz"; 	echo "$POSTFIXADMIN_SHA512 *postfixadmin.tar.gz" | sha512sum -c -; 	mkdir /usr/src/postfixadmin; 	tar -xf postfixadmin.tar.gz -C /usr/src/postfixadmin --strip-components=1; 	rm postfixadmin.tar.gz; 	mkdir -p /usr/src/postfixadmin/templates_c; 	chown -R www-data:www-data /usr/src/postfixadmin
# Tue, 29 Jan 2019 13:26:29 GMT
COPY file:7b9804d962cc9ab943424976141cd6ab11b4bd5e6f589713aab01e577d18b5e9 in /usr/local/bin/ 
# Tue, 29 Jan 2019 13:26:29 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
# Tue, 29 Jan 2019 13:26:29 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:cac1a3cba6925217785401a8b972064ba1a0dfe60d4e039f49c4dac4b3f4270e`  
		Last Modified: Sun, 30 Dec 2018 01:57:45 GMT  
		Size: 17.6 MB (17561920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9184c6ff5922580665f40d9e2416d6ff748200ba764489ad442486d61570f8d0`  
		Last Modified: Sun, 30 Dec 2018 01:57:40 GMT  
		Size: 1.3 KB (1336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9edc4d80dca7d81ba8b7a97ebf76890d74ca4d440e11b418c39c09686094da0b`  
		Last Modified: Sun, 30 Dec 2018 01:57:40 GMT  
		Size: 430.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c49d3ce320b30bff15e021157c1b88262d848a456dbdf970c8796accf3e9cc4`  
		Last Modified: Sun, 30 Dec 2018 01:57:40 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd62ef36d94e7c9305ffd2eb8a68bd0b1939d0e5f21ce8a25c7ab5db0748013d`  
		Last Modified: Fri, 11 Jan 2019 14:54:17 GMT  
		Size: 12.5 MB (12505836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b436f91e147a9071b2e0dde2cd2939f63ead4fffb43f92d4dc8d39aabfad96b`  
		Last Modified: Fri, 11 Jan 2019 14:54:12 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2848e63e536187e58765f167f5d942e58c4ba788373f18053046374337e6a498`  
		Last Modified: Fri, 11 Jan 2019 14:54:16 GMT  
		Size: 15.7 MB (15686833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b45df8623fc8e136011d091ed53d924d6820771d844b4c27843c8aac1a4a6ca6`  
		Last Modified: Fri, 11 Jan 2019 14:54:17 GMT  
		Size: 2.2 KB (2197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02b7d92b09c9e14b62d1c385941eabe813b6b3fb137191d2b3d3b91806481ada`  
		Last Modified: Fri, 11 Jan 2019 14:54:16 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64c2910211b6c9223772e7d9203a87d7f51672460245fe15ecf00277389bdaed`  
		Last Modified: Fri, 11 Jan 2019 14:54:16 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05c168fa999cdfc887e78bdde44218263daedcbffadede3b00c60f680a54c939`  
		Last Modified: Tue, 29 Jan 2019 13:28:21 GMT  
		Size: 623.7 KB (623658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a2241cea4b9b8acae4c1ca72ab984c395dcdcd391cc1e5d1ae64fc4c812600e`  
		Last Modified: Tue, 29 Jan 2019 13:28:21 GMT  
		Size: 8.2 KB (8218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5124e7219d91434265c63088bf1deafc5dc0a97c44d3fe4cf16056a5a3a99ddb`  
		Last Modified: Tue, 29 Jan 2019 13:28:21 GMT  
		Size: 1.3 MB (1333482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fc2b869ab353967ebe6ea47bafe9e2ccedc472ec2997446ff363b951866c923`  
		Last Modified: Tue, 29 Jan 2019 13:28:21 GMT  
		Size: 1.1 KB (1148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postfixadmin:3.2-apache`

```console
$ docker pull postfixadmin@sha256:a1bda52b53279ac7c112bcebee006a4dc48b11b753cc165922e53eb9571bc029
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386

### `postfixadmin:3.2-apache` - linux; amd64

```console
$ docker pull postfixadmin@sha256:3ed2a11058d1d9d2e4ea17c24d3f18037d0541303b02a3bd440551ca03fc5438
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.8 MB (136782618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:688e2e24625f75280ef824ad4c2987fb95aff52282aa6c3787ce5cd87072fe56`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:32 GMT
ADD file:a65337a57a064a79ad8a3f42e8282b3e01710cb4684ccd880463cc8d2e051fa5 in / 
# Tue, 22 Jan 2019 19:30:32 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 21:46:13 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 22 Jan 2019 21:46:14 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 22 Jan 2019 21:46:46 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 22 Jan 2019 21:46:46 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 22 Jan 2019 21:46:47 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 22 Jan 2019 21:56:16 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 21:56:16 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 22 Jan 2019 21:56:16 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 22 Jan 2019 21:56:17 GMT
RUN set -eux; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Tue, 22 Jan 2019 21:56:19 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 22 Jan 2019 21:56:20 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 22 Jan 2019 21:56:20 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 22 Jan 2019 21:56:20 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Tue, 22 Jan 2019 21:56:21 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 22 Jan 2019 21:56:21 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 22 Jan 2019 21:56:21 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 22 Jan 2019 22:27:31 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Tue, 22 Jan 2019 22:27:31 GMT
ENV PHP_VERSION=7.2.14
# Tue, 22 Jan 2019 22:27:31 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror
# Tue, 22 Jan 2019 22:27:32 GMT
ENV PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f PHP_MD5=
# Tue, 22 Jan 2019 22:27:43 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 22 Jan 2019 22:27:43 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Tue, 22 Jan 2019 22:31:33 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 22 Jan 2019 22:31:33 GMT
COPY multi:0a6fe33cb39694994fa567c75b399b9aa5e477c8770caa9f731607a72819b457 in /usr/local/bin/ 
# Tue, 22 Jan 2019 22:31:34 GMT
RUN docker-php-ext-enable sodium
# Tue, 22 Jan 2019 22:31:34 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 22 Jan 2019 22:31:35 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Tue, 22 Jan 2019 22:31:35 GMT
WORKDIR /var/www/html
# Tue, 22 Jan 2019 22:31:35 GMT
EXPOSE 80
# Tue, 22 Jan 2019 22:31:35 GMT
CMD ["apache2-foreground"]
# Wed, 23 Jan 2019 11:49:14 GMT
LABEL maintainer=David Goodwin <david@codepoets.co.uk> (@DavidGoodwin)
# Wed, 23 Jan 2019 11:50:06 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 	libpq-dev 	libsqlite3-dev 	; 		docker-php-ext-install 		mysqli 		pdo_mysql 		pdo_pgsql 		pdo_sqlite 		pgsql 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 		ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 			apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 11:50:06 GMT
ARG POSTFIXADMIN_VERSION=3.2
# Wed, 23 Jan 2019 11:50:06 GMT
ARG POSTFIXADMIN_SHA512=9e022e3311bce96342e87925159a048f294ed0e2d4558bd43120b5c6eda35a7a2d128987372d310dfe86680c98a4d8cf3d602afcb20d948c9bba58bed1766560
# Wed, 23 Jan 2019 11:50:06 GMT
ENV POSTFIXADMIN_VERSION=3.2
# Wed, 23 Jan 2019 11:50:06 GMT
ENV POSTFIXADMIN_SHA512=9e022e3311bce96342e87925159a048f294ed0e2d4558bd43120b5c6eda35a7a2d128987372d310dfe86680c98a4d8cf3d602afcb20d948c9bba58bed1766560
# Wed, 23 Jan 2019 11:50:07 GMT
ENV APACHE_DOCUMENT_ROOT=/var/www/html/public
# Wed, 23 Jan 2019 11:50:07 GMT
RUN set -eu; sed -ri -e 's!/var/www/html!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/sites-available/*.conf; 	sed -ri -e 's!/var/www/!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/apache2.conf /etc/apache2/conf-available/*.conf
# Tue, 29 Jan 2019 00:19:57 GMT
RUN set -eu; 	curl -fsSL -o postfixadmin.tar.gz "https://github.com/postfixadmin/postfixadmin/archive/postfixadmin-${POSTFIXADMIN_VERSION}.tar.gz"; 	echo "$POSTFIXADMIN_SHA512 *postfixadmin.tar.gz" | sha512sum -c -; 	mkdir /usr/src/postfixadmin; 	tar -xf postfixadmin.tar.gz -C /usr/src/postfixadmin --strip-components=1; 	rm postfixadmin.tar.gz; 	mkdir -p /usr/src/postfixadmin/templates_c; 	chown -R www-data:www-data /usr/src/postfixadmin
# Tue, 29 Jan 2019 00:19:57 GMT
COPY file:7b9804d962cc9ab943424976141cd6ab11b4bd5e6f589713aab01e577d18b5e9 in /usr/local/bin/ 
# Tue, 29 Jan 2019 00:19:57 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
# Tue, 29 Jan 2019 00:19:58 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:5e6ec7f28fb77f84f64b8c29fcb0a746260563f5858315e3e9fcc4aee2844840`  
		Last Modified: Tue, 22 Jan 2019 19:37:02 GMT  
		Size: 22.5 MB (22500707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf165947b5b75ef63a7872634239e795a3063179895699dc8e0726f1039946b3`  
		Last Modified: Wed, 23 Jan 2019 01:11:30 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bd37682846da479bcfb64459fa36e043d3380a77b401f6de5b862d00d8dcebf`  
		Last Modified: Wed, 23 Jan 2019 01:11:50 GMT  
		Size: 67.4 MB (67442781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99daf8e838e14fb73055ddac03535d506dbf36a5a01c37497ff001c0dbd68f3e`  
		Last Modified: Wed, 23 Jan 2019 01:11:29 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae320713efba9e138236c82142d67bd9d5f05ef4d4a3de877e7aa27d1456ce3e`  
		Last Modified: Wed, 23 Jan 2019 01:12:17 GMT  
		Size: 17.1 MB (17128043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebcb99c48d8c8dd49d64a2d097966dacca7117b4381a54b6835b0afa487e9814`  
		Last Modified: Wed, 23 Jan 2019 01:12:12 GMT  
		Size: 1.3 KB (1337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9867e71b4ab60b84952cf76ca4f3446e994d0760b3d6e16658417c496656dca2`  
		Last Modified: Wed, 23 Jan 2019 01:12:12 GMT  
		Size: 430.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:936eb418164ae6e2bb965f03cb699d969f0ed568d0f965d6f276c944511dbcfb`  
		Last Modified: Wed, 23 Jan 2019 01:12:11 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d9617dfb66bd026b0be8e8119800b84b3d01f08793f248addff29d1eb3890df`  
		Last Modified: Wed, 23 Jan 2019 01:13:42 GMT  
		Size: 12.5 MB (12506442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dd7afaae10961af92770c0101d92fb65c273d2c0f2ddc37e50a27e0544db9e6`  
		Last Modified: Wed, 23 Jan 2019 01:13:40 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f207844da7e135b8cf0e939b9bcdf7ef96851ceb3ee6a8f7250bb3ab3e3f5f0`  
		Last Modified: Wed, 23 Jan 2019 01:13:40 GMT  
		Size: 15.2 MB (15245750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb3ae5e49870b53e95c7f94f3cde8a99114cdc0ca02ce70a4b046439cc82ffd`  
		Last Modified: Wed, 23 Jan 2019 01:13:40 GMT  
		Size: 2.2 KB (2197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44d7d07029db87ecf6218a08a3827b4d33097b1cfad2c41bb2705e1dacf018bb`  
		Last Modified: Wed, 23 Jan 2019 01:13:40 GMT  
		Size: 255.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb91064652b0cf4550ebc10dc2e3320502d1116b095fc0a6c41e6eb64c4c487c`  
		Last Modified: Wed, 23 Jan 2019 01:13:40 GMT  
		Size: 903.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a9fb13d18e61581e102dab92f6ad950246c51eca1e06979c23e77a92006e014`  
		Last Modified: Wed, 23 Jan 2019 11:51:30 GMT  
		Size: 609.5 KB (609529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db16d23b9e42466091afa868e2a97450ae7033905d3c0ab8c46b95a3069d536c`  
		Last Modified: Wed, 23 Jan 2019 11:51:30 GMT  
		Size: 8.2 KB (8220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:571ef8f90d3b25950a8ec03e65000692375cacfb001809f3113e87bfdc91de08`  
		Last Modified: Tue, 29 Jan 2019 00:20:21 GMT  
		Size: 1.3 MB (1333481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4338dcec5c541355bbd6d49c22e3b55bb2fce425158a2dd8beb3c8f31eb26263`  
		Last Modified: Tue, 29 Jan 2019 00:20:21 GMT  
		Size: 1.1 KB (1146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postfixadmin:3.2-apache` - linux; arm64 variant v8

```console
$ docker pull postfixadmin@sha256:d6803a69f147f5364d96e676c30834de97c7fd882e2b87713b0c7b71614ac460
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.3 MB (123331274 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:032d28ee6c798cc670d755a8af0e8799539f74c2e63dc6fa384b7212a05f9606`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 23 Jan 2019 10:04:38 GMT
ADD file:64db5736cabe52ff81a1eb31101c1afa1e4a04374e84ae717532a88286d01784 in / 
# Wed, 23 Jan 2019 10:04:39 GMT
CMD ["bash"]
# Fri, 25 Jan 2019 07:42:45 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Fri, 25 Jan 2019 07:42:46 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 25 Jan 2019 07:44:08 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 25 Jan 2019 07:44:09 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 25 Jan 2019 07:44:11 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 25 Jan 2019 07:54:12 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 Jan 2019 07:54:13 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 25 Jan 2019 07:54:13 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 25 Jan 2019 07:54:15 GMT
RUN set -eux; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Fri, 25 Jan 2019 07:54:17 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 25 Jan 2019 07:54:19 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 25 Jan 2019 07:54:20 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 25 Jan 2019 07:54:20 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Fri, 25 Jan 2019 07:54:21 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 25 Jan 2019 07:54:22 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 25 Jan 2019 07:54:23 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 25 Jan 2019 08:32:02 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 25 Jan 2019 08:32:03 GMT
ENV PHP_VERSION=7.2.14
# Fri, 25 Jan 2019 08:32:04 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror
# Fri, 25 Jan 2019 08:32:04 GMT
ENV PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f PHP_MD5=
# Fri, 25 Jan 2019 08:32:35 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 25 Jan 2019 08:32:36 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 25 Jan 2019 08:41:15 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 25 Jan 2019 08:41:17 GMT
COPY multi:0a6fe33cb39694994fa567c75b399b9aa5e477c8770caa9f731607a72819b457 in /usr/local/bin/ 
# Fri, 25 Jan 2019 08:41:24 GMT
RUN docker-php-ext-enable sodium
# Fri, 25 Jan 2019 08:41:27 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 25 Jan 2019 08:41:30 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Fri, 25 Jan 2019 08:41:34 GMT
WORKDIR /var/www/html
# Fri, 25 Jan 2019 08:41:35 GMT
EXPOSE 80
# Fri, 25 Jan 2019 08:41:37 GMT
CMD ["apache2-foreground"]
# Tue, 29 Jan 2019 09:44:36 GMT
LABEL maintainer=David Goodwin <david@codepoets.co.uk> (@DavidGoodwin)
# Tue, 29 Jan 2019 09:46:28 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 	libpq-dev 	libsqlite3-dev 	; 		docker-php-ext-install 		mysqli 		pdo_mysql 		pdo_pgsql 		pdo_sqlite 		pgsql 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 		ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 			apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 09:46:29 GMT
ARG POSTFIXADMIN_VERSION=3.2
# Tue, 29 Jan 2019 09:46:30 GMT
ARG POSTFIXADMIN_SHA512=9e022e3311bce96342e87925159a048f294ed0e2d4558bd43120b5c6eda35a7a2d128987372d310dfe86680c98a4d8cf3d602afcb20d948c9bba58bed1766560
# Tue, 29 Jan 2019 09:46:30 GMT
ENV POSTFIXADMIN_VERSION=3.2
# Tue, 29 Jan 2019 09:46:31 GMT
ENV POSTFIXADMIN_SHA512=9e022e3311bce96342e87925159a048f294ed0e2d4558bd43120b5c6eda35a7a2d128987372d310dfe86680c98a4d8cf3d602afcb20d948c9bba58bed1766560
# Tue, 29 Jan 2019 09:46:32 GMT
ENV APACHE_DOCUMENT_ROOT=/var/www/html/public
# Tue, 29 Jan 2019 09:46:34 GMT
RUN set -eu; sed -ri -e 's!/var/www/html!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/sites-available/*.conf; 	sed -ri -e 's!/var/www/!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/apache2.conf /etc/apache2/conf-available/*.conf
# Tue, 29 Jan 2019 09:46:38 GMT
RUN set -eu; 	curl -fsSL -o postfixadmin.tar.gz "https://github.com/postfixadmin/postfixadmin/archive/postfixadmin-${POSTFIXADMIN_VERSION}.tar.gz"; 	echo "$POSTFIXADMIN_SHA512 *postfixadmin.tar.gz" | sha512sum -c -; 	mkdir /usr/src/postfixadmin; 	tar -xf postfixadmin.tar.gz -C /usr/src/postfixadmin --strip-components=1; 	rm postfixadmin.tar.gz; 	mkdir -p /usr/src/postfixadmin/templates_c; 	chown -R www-data:www-data /usr/src/postfixadmin
# Tue, 29 Jan 2019 09:46:38 GMT
COPY file:7b9804d962cc9ab943424976141cd6ab11b4bd5e6f589713aab01e577d18b5e9 in /usr/local/bin/ 
# Tue, 29 Jan 2019 09:46:39 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
# Tue, 29 Jan 2019 09:46:40 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:711c3a2baeda87a6b9816cb812388d62d17396034e595a68d8ee5f938f9d77b3`  
		Last Modified: Wed, 23 Jan 2019 10:11:36 GMT  
		Size: 20.4 MB (20350180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a273a3c32232329b60ac83d95b6b7744068016759eaf8675589b9dc5b50513b`  
		Last Modified: Fri, 25 Jan 2019 10:11:35 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dbe9d898f22bebde12a9a3868aa7520c4c2250ceae00fa9153248c8f82e5d7b`  
		Last Modified: Fri, 25 Jan 2019 10:12:06 GMT  
		Size: 57.6 MB (57606166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac488f1008ef7811391ec1a02a19be84173ce484a25e46f7f4641ebbce8fcbec`  
		Last Modified: Fri, 25 Jan 2019 10:11:35 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f1173e9c64c514da6d8c6bafbba7be17013209d7ea8fd088cb5e124c80e092`  
		Last Modified: Fri, 25 Jan 2019 10:12:58 GMT  
		Size: 16.7 MB (16711165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c98388262fb672bb0ceff0e361fb5aaed815271fe47e2624df7284736dfe7dd8`  
		Last Modified: Fri, 25 Jan 2019 10:12:48 GMT  
		Size: 1.3 KB (1342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed7a886dc3b7edbee8aadaaf76d25711df48f586f9ebb53e3e8871026d140724`  
		Last Modified: Fri, 25 Jan 2019 10:12:48 GMT  
		Size: 434.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:092bbf92d4041daa2f4cf5625d0b7eb07bf80512241012e26c8cd0bead2107d6`  
		Last Modified: Fri, 25 Jan 2019 10:12:49 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66c8c3882bd24c8e800d569d65615abb5aa81732214840fa66e43a446c7446b8`  
		Last Modified: Fri, 25 Jan 2019 10:15:41 GMT  
		Size: 12.5 MB (12504556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:932ce47bbbe66f0ff55e6e760509c90019f9cb0b94c7ffd66c590bb9b2ab2d00`  
		Last Modified: Fri, 25 Jan 2019 10:15:36 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9be881fb6985de63e0ace9e5c7e9557f29bde8edac7144529898f9a3e00cb331`  
		Last Modified: Fri, 25 Jan 2019 10:15:51 GMT  
		Size: 14.2 MB (14224900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52e4f1293ba756a60e636b137b4259939e88407a7c86aad27cfbc5ae0b659c4d`  
		Last Modified: Fri, 25 Jan 2019 10:15:36 GMT  
		Size: 2.2 KB (2200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b843a3c71d198523cd81cd8345c71f1c449e002bd41d45346f473562871f5fb`  
		Last Modified: Fri, 25 Jan 2019 10:15:36 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:062047dd2f4cc55849f0238f7ce86267f3a376d9a73a28b727e8de776fc98b90`  
		Last Modified: Fri, 25 Jan 2019 10:15:36 GMT  
		Size: 907.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a40169a24ab98c4d053301ea08e65a963d778ad51253a7623ca4a260029e392`  
		Last Modified: Tue, 29 Jan 2019 09:50:49 GMT  
		Size: 584.9 KB (584916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57bc8e4222b03933c82269ceeb0c4f1f0f9d2bb0f8f30ff7d8bcdb47bdd7c39d`  
		Last Modified: Tue, 29 Jan 2019 09:50:49 GMT  
		Size: 8.2 KB (8225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f07a375a48c136278f8ae73eaca9786ec8fec69e4a18288e88aaaf1084cfe3e`  
		Last Modified: Tue, 29 Jan 2019 09:50:50 GMT  
		Size: 1.3 MB (1333475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcf8741bd563f42b3a723a0b3eab08bbb1c0da9ea60b246cce52e66385806813`  
		Last Modified: Tue, 29 Jan 2019 09:50:49 GMT  
		Size: 1.1 KB (1150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postfixadmin:3.2-apache` - linux; 386

```console
$ docker pull postfixadmin@sha256:4b094f58ce9ed17b6a0ac1ffc98c2558449f065e32754f76d8eb4d21ace07070
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.4 MB (142364515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dd84bff525ddabe37018a4c794b3cd86b1c2a1f3c63bc30e2a8a1ad51320f8f`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

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
# Sat, 29 Dec 2018 21:45:50 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 21:45:51 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Sat, 29 Dec 2018 21:45:51 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Sat, 29 Dec 2018 21:45:51 GMT
RUN set -eux; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Sat, 29 Dec 2018 21:45:52 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Sat, 29 Dec 2018 21:45:53 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Sat, 29 Dec 2018 21:45:53 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Sat, 29 Dec 2018 21:45:53 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Sat, 29 Dec 2018 21:45:54 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 21:45:54 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 21:45:54 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 29 Dec 2018 22:07:26 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 11 Jan 2019 12:50:42 GMT
ENV PHP_VERSION=7.2.14
# Fri, 11 Jan 2019 12:50:42 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror
# Fri, 11 Jan 2019 12:50:42 GMT
ENV PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f PHP_MD5=
# Fri, 11 Jan 2019 12:50:53 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 11 Jan 2019 12:50:53 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 11 Jan 2019 12:54:18 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 11 Jan 2019 12:54:18 GMT
COPY multi:0a6fe33cb39694994fa567c75b399b9aa5e477c8770caa9f731607a72819b457 in /usr/local/bin/ 
# Fri, 11 Jan 2019 12:54:19 GMT
RUN docker-php-ext-enable sodium
# Fri, 11 Jan 2019 12:54:19 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 11 Jan 2019 12:54:19 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Fri, 11 Jan 2019 12:54:20 GMT
WORKDIR /var/www/html
# Fri, 11 Jan 2019 12:54:20 GMT
EXPOSE 80
# Fri, 11 Jan 2019 12:54:20 GMT
CMD ["apache2-foreground"]
# Tue, 29 Jan 2019 13:25:37 GMT
LABEL maintainer=David Goodwin <david@codepoets.co.uk> (@DavidGoodwin)
# Tue, 29 Jan 2019 13:26:26 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 	libpq-dev 	libsqlite3-dev 	; 		docker-php-ext-install 		mysqli 		pdo_mysql 		pdo_pgsql 		pdo_sqlite 		pgsql 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 		ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 			apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 13:26:26 GMT
ARG POSTFIXADMIN_VERSION=3.2
# Tue, 29 Jan 2019 13:26:26 GMT
ARG POSTFIXADMIN_SHA512=9e022e3311bce96342e87925159a048f294ed0e2d4558bd43120b5c6eda35a7a2d128987372d310dfe86680c98a4d8cf3d602afcb20d948c9bba58bed1766560
# Tue, 29 Jan 2019 13:26:26 GMT
ENV POSTFIXADMIN_VERSION=3.2
# Tue, 29 Jan 2019 13:26:27 GMT
ENV POSTFIXADMIN_SHA512=9e022e3311bce96342e87925159a048f294ed0e2d4558bd43120b5c6eda35a7a2d128987372d310dfe86680c98a4d8cf3d602afcb20d948c9bba58bed1766560
# Tue, 29 Jan 2019 13:26:27 GMT
ENV APACHE_DOCUMENT_ROOT=/var/www/html/public
# Tue, 29 Jan 2019 13:26:28 GMT
RUN set -eu; sed -ri -e 's!/var/www/html!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/sites-available/*.conf; 	sed -ri -e 's!/var/www/!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/apache2.conf /etc/apache2/conf-available/*.conf
# Tue, 29 Jan 2019 13:26:29 GMT
RUN set -eu; 	curl -fsSL -o postfixadmin.tar.gz "https://github.com/postfixadmin/postfixadmin/archive/postfixadmin-${POSTFIXADMIN_VERSION}.tar.gz"; 	echo "$POSTFIXADMIN_SHA512 *postfixadmin.tar.gz" | sha512sum -c -; 	mkdir /usr/src/postfixadmin; 	tar -xf postfixadmin.tar.gz -C /usr/src/postfixadmin --strip-components=1; 	rm postfixadmin.tar.gz; 	mkdir -p /usr/src/postfixadmin/templates_c; 	chown -R www-data:www-data /usr/src/postfixadmin
# Tue, 29 Jan 2019 13:26:29 GMT
COPY file:7b9804d962cc9ab943424976141cd6ab11b4bd5e6f589713aab01e577d18b5e9 in /usr/local/bin/ 
# Tue, 29 Jan 2019 13:26:29 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
# Tue, 29 Jan 2019 13:26:29 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:cac1a3cba6925217785401a8b972064ba1a0dfe60d4e039f49c4dac4b3f4270e`  
		Last Modified: Sun, 30 Dec 2018 01:57:45 GMT  
		Size: 17.6 MB (17561920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9184c6ff5922580665f40d9e2416d6ff748200ba764489ad442486d61570f8d0`  
		Last Modified: Sun, 30 Dec 2018 01:57:40 GMT  
		Size: 1.3 KB (1336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9edc4d80dca7d81ba8b7a97ebf76890d74ca4d440e11b418c39c09686094da0b`  
		Last Modified: Sun, 30 Dec 2018 01:57:40 GMT  
		Size: 430.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c49d3ce320b30bff15e021157c1b88262d848a456dbdf970c8796accf3e9cc4`  
		Last Modified: Sun, 30 Dec 2018 01:57:40 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd62ef36d94e7c9305ffd2eb8a68bd0b1939d0e5f21ce8a25c7ab5db0748013d`  
		Last Modified: Fri, 11 Jan 2019 14:54:17 GMT  
		Size: 12.5 MB (12505836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b436f91e147a9071b2e0dde2cd2939f63ead4fffb43f92d4dc8d39aabfad96b`  
		Last Modified: Fri, 11 Jan 2019 14:54:12 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2848e63e536187e58765f167f5d942e58c4ba788373f18053046374337e6a498`  
		Last Modified: Fri, 11 Jan 2019 14:54:16 GMT  
		Size: 15.7 MB (15686833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b45df8623fc8e136011d091ed53d924d6820771d844b4c27843c8aac1a4a6ca6`  
		Last Modified: Fri, 11 Jan 2019 14:54:17 GMT  
		Size: 2.2 KB (2197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02b7d92b09c9e14b62d1c385941eabe813b6b3fb137191d2b3d3b91806481ada`  
		Last Modified: Fri, 11 Jan 2019 14:54:16 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64c2910211b6c9223772e7d9203a87d7f51672460245fe15ecf00277389bdaed`  
		Last Modified: Fri, 11 Jan 2019 14:54:16 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05c168fa999cdfc887e78bdde44218263daedcbffadede3b00c60f680a54c939`  
		Last Modified: Tue, 29 Jan 2019 13:28:21 GMT  
		Size: 623.7 KB (623658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a2241cea4b9b8acae4c1ca72ab984c395dcdcd391cc1e5d1ae64fc4c812600e`  
		Last Modified: Tue, 29 Jan 2019 13:28:21 GMT  
		Size: 8.2 KB (8218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5124e7219d91434265c63088bf1deafc5dc0a97c44d3fe4cf16056a5a3a99ddb`  
		Last Modified: Tue, 29 Jan 2019 13:28:21 GMT  
		Size: 1.3 MB (1333482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fc2b869ab353967ebe6ea47bafe9e2ccedc472ec2997446ff363b951866c923`  
		Last Modified: Tue, 29 Jan 2019 13:28:21 GMT  
		Size: 1.1 KB (1148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postfixadmin:3.2-fpm`

```console
$ docker pull postfixadmin@sha256:98de6463e9eec0a7c33d11a1cdfed3229fa3660d4d7995ff1f0c90a5cb3d23dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386

### `postfixadmin:3.2-fpm` - linux; amd64

```console
$ docker pull postfixadmin@sha256:39a7d561a480cc2124f9a2793f011fbe71e96ee2f115fb6b87218181603d2e9d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.7 MB (133654702 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6144d24eecb7005669268d08111323e05892fcd2e1bbdf74d087bb96240973b9`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:32 GMT
ADD file:a65337a57a064a79ad8a3f42e8282b3e01710cb4684ccd880463cc8d2e051fa5 in / 
# Tue, 22 Jan 2019 19:30:32 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 21:46:13 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 22 Jan 2019 21:46:14 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 22 Jan 2019 21:46:46 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 22 Jan 2019 21:46:46 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 22 Jan 2019 21:46:47 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 22 Jan 2019 22:01:33 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Tue, 22 Jan 2019 22:01:34 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 22 Jan 2019 22:01:34 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 22 Jan 2019 22:01:34 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 22 Jan 2019 22:31:46 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Tue, 22 Jan 2019 22:31:46 GMT
ENV PHP_VERSION=7.2.14
# Tue, 22 Jan 2019 22:31:46 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror
# Tue, 22 Jan 2019 22:31:47 GMT
ENV PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f PHP_MD5=
# Tue, 22 Jan 2019 22:31:57 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 22 Jan 2019 22:31:57 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Tue, 22 Jan 2019 22:38:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 22 Jan 2019 22:38:49 GMT
COPY multi:cbc68fef2c8554b9a23fee7eee16ffda927235f929048638240f97172562665c in /usr/local/bin/ 
# Tue, 22 Jan 2019 22:38:49 GMT
RUN docker-php-ext-enable sodium
# Tue, 22 Jan 2019 22:38:50 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 22 Jan 2019 22:38:50 GMT
WORKDIR /var/www/html
# Tue, 22 Jan 2019 22:38:51 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 22 Jan 2019 22:38:51 GMT
EXPOSE 9000
# Tue, 22 Jan 2019 22:38:51 GMT
CMD ["php-fpm"]
# Wed, 23 Jan 2019 11:50:17 GMT
LABEL maintainer=David Goodwin <david@codepoets.co.uk> (@DavidGoodwin)
# Wed, 23 Jan 2019 11:51:12 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 	libpq-dev 	libsqlite3-dev 	; 		docker-php-ext-install 		mysqli 		pdo_mysql 		pdo_pgsql 		pdo_sqlite 		pgsql 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 		ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 			apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 11:51:13 GMT
ARG POSTFIXADMIN_VERSION=3.2
# Wed, 23 Jan 2019 11:51:13 GMT
ARG POSTFIXADMIN_SHA512=9e022e3311bce96342e87925159a048f294ed0e2d4558bd43120b5c6eda35a7a2d128987372d310dfe86680c98a4d8cf3d602afcb20d948c9bba58bed1766560
# Wed, 23 Jan 2019 11:51:13 GMT
ENV POSTFIXADMIN_VERSION=3.2
# Wed, 23 Jan 2019 11:51:13 GMT
ENV POSTFIXADMIN_SHA512=9e022e3311bce96342e87925159a048f294ed0e2d4558bd43120b5c6eda35a7a2d128987372d310dfe86680c98a4d8cf3d602afcb20d948c9bba58bed1766560
# Tue, 29 Jan 2019 00:20:03 GMT
RUN set -eu; 	curl -fsSL -o postfixadmin.tar.gz "https://github.com/postfixadmin/postfixadmin/archive/postfixadmin-${POSTFIXADMIN_VERSION}.tar.gz"; 	echo "$POSTFIXADMIN_SHA512 *postfixadmin.tar.gz" | sha512sum -c -; 	mkdir /usr/src/postfixadmin; 	tar -xf postfixadmin.tar.gz -C /usr/src/postfixadmin --strip-components=1; 	rm postfixadmin.tar.gz; 	mkdir -p /usr/src/postfixadmin/templates_c; 	chown -R www-data:www-data /usr/src/postfixadmin
# Tue, 29 Jan 2019 00:20:03 GMT
COPY file:7b9804d962cc9ab943424976141cd6ab11b4bd5e6f589713aab01e577d18b5e9 in /usr/local/bin/ 
# Tue, 29 Jan 2019 00:20:04 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
# Tue, 29 Jan 2019 00:20:04 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:5e6ec7f28fb77f84f64b8c29fcb0a746260563f5858315e3e9fcc4aee2844840`  
		Last Modified: Tue, 22 Jan 2019 19:37:02 GMT  
		Size: 22.5 MB (22500707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf165947b5b75ef63a7872634239e795a3063179895699dc8e0726f1039946b3`  
		Last Modified: Wed, 23 Jan 2019 01:11:30 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bd37682846da479bcfb64459fa36e043d3380a77b401f6de5b862d00d8dcebf`  
		Last Modified: Wed, 23 Jan 2019 01:11:50 GMT  
		Size: 67.4 MB (67442781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99daf8e838e14fb73055ddac03535d506dbf36a5a01c37497ff001c0dbd68f3e`  
		Last Modified: Wed, 23 Jan 2019 01:11:29 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e5a056cae49034c1e7b05021b61684c6a89b54623e151d23f08cd1b9563a1e2`  
		Last Modified: Wed, 23 Jan 2019 01:13:55 GMT  
		Size: 12.5 MB (12485167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc6a1020a50331bc24372e4053e31efb0de94f161e159ca3740051d1aff8f37a`  
		Last Modified: Wed, 23 Jan 2019 01:13:54 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46ccabdcf8f047560ac869bf36fc64081ef69cdcf8c494c58dc347cd84505d86`  
		Last Modified: Wed, 23 Jan 2019 01:14:00 GMT  
		Size: 28.7 MB (28707660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87e8d1e332d67bea7ddf071e7f040c5ed316ea8ae93c8b0b27b3c9d197b6f3dd`  
		Last Modified: Wed, 23 Jan 2019 01:13:53 GMT  
		Size: 2.2 KB (2193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc6fdf312773ea965552f892d8ec43b0ac9d4d14c42fbf95613cb79d8d7d45a`  
		Last Modified: Wed, 23 Jan 2019 01:13:53 GMT  
		Size: 256.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48dbf73992778e30426b1979163246a78a02ce623134039c1b054da410672cd1`  
		Last Modified: Wed, 23 Jan 2019 01:13:58 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69940737122ab46f2b881c85a6724cabbd2b859e5e06151f8f280633cbe19060`  
		Last Modified: Wed, 23 Jan 2019 01:13:53 GMT  
		Size: 7.8 KB (7805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:611e132390ac6251c41d993b18cd22269ef96c4592dc3d7683e8469490769457`  
		Last Modified: Wed, 23 Jan 2019 11:51:39 GMT  
		Size: 1.2 MB (1172470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13b0a42e07d692ed1b812efe6f0531147dbed21f88389ef2418ffe7f673acded`  
		Last Modified: Tue, 29 Jan 2019 00:20:31 GMT  
		Size: 1.3 MB (1333475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f802133b815035fefe2af54d36b80c2d61b728f12cc2ddeb77a1469f00d1f136`  
		Last Modified: Tue, 29 Jan 2019 00:20:30 GMT  
		Size: 1.1 KB (1148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postfixadmin:3.2-fpm` - linux; arm64 variant v8

```console
$ docker pull postfixadmin@sha256:70ccff245b98ea734df372bf66bcfb5f15184b17c67f03f37d2bb88ae01ff4b8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.4 MB (120368294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b5191b96712a319280fbda2a4d675ac93f701555ec68ace60e71f96192fb3f1`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 23 Jan 2019 10:04:38 GMT
ADD file:64db5736cabe52ff81a1eb31101c1afa1e4a04374e84ae717532a88286d01784 in / 
# Wed, 23 Jan 2019 10:04:39 GMT
CMD ["bash"]
# Fri, 25 Jan 2019 07:42:45 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Fri, 25 Jan 2019 07:42:46 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 25 Jan 2019 07:44:08 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 25 Jan 2019 07:44:09 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 25 Jan 2019 07:44:11 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 25 Jan 2019 08:02:51 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Fri, 25 Jan 2019 08:02:52 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 25 Jan 2019 08:02:53 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 25 Jan 2019 08:02:53 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 25 Jan 2019 08:41:52 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 25 Jan 2019 08:41:53 GMT
ENV PHP_VERSION=7.2.14
# Fri, 25 Jan 2019 08:41:54 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror
# Fri, 25 Jan 2019 08:41:55 GMT
ENV PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f PHP_MD5=
# Fri, 25 Jan 2019 08:42:43 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 25 Jan 2019 08:42:44 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 25 Jan 2019 08:51:26 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 25 Jan 2019 08:51:27 GMT
COPY multi:cbc68fef2c8554b9a23fee7eee16ffda927235f929048638240f97172562665c in /usr/local/bin/ 
# Fri, 25 Jan 2019 08:51:29 GMT
RUN docker-php-ext-enable sodium
# Fri, 25 Jan 2019 08:51:30 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 25 Jan 2019 08:51:31 GMT
WORKDIR /var/www/html
# Fri, 25 Jan 2019 08:51:32 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 25 Jan 2019 08:51:33 GMT
EXPOSE 9000
# Fri, 25 Jan 2019 08:51:34 GMT
CMD ["php-fpm"]
# Tue, 29 Jan 2019 09:46:51 GMT
LABEL maintainer=David Goodwin <david@codepoets.co.uk> (@DavidGoodwin)
# Tue, 29 Jan 2019 09:48:40 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 	libpq-dev 	libsqlite3-dev 	; 		docker-php-ext-install 		mysqli 		pdo_mysql 		pdo_pgsql 		pdo_sqlite 		pgsql 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 		ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 			apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 09:48:40 GMT
ARG POSTFIXADMIN_VERSION=3.2
# Tue, 29 Jan 2019 09:48:41 GMT
ARG POSTFIXADMIN_SHA512=9e022e3311bce96342e87925159a048f294ed0e2d4558bd43120b5c6eda35a7a2d128987372d310dfe86680c98a4d8cf3d602afcb20d948c9bba58bed1766560
# Tue, 29 Jan 2019 09:48:41 GMT
ENV POSTFIXADMIN_VERSION=3.2
# Tue, 29 Jan 2019 09:48:42 GMT
ENV POSTFIXADMIN_SHA512=9e022e3311bce96342e87925159a048f294ed0e2d4558bd43120b5c6eda35a7a2d128987372d310dfe86680c98a4d8cf3d602afcb20d948c9bba58bed1766560
# Tue, 29 Jan 2019 09:48:46 GMT
RUN set -eu; 	curl -fsSL -o postfixadmin.tar.gz "https://github.com/postfixadmin/postfixadmin/archive/postfixadmin-${POSTFIXADMIN_VERSION}.tar.gz"; 	echo "$POSTFIXADMIN_SHA512 *postfixadmin.tar.gz" | sha512sum -c -; 	mkdir /usr/src/postfixadmin; 	tar -xf postfixadmin.tar.gz -C /usr/src/postfixadmin --strip-components=1; 	rm postfixadmin.tar.gz; 	mkdir -p /usr/src/postfixadmin/templates_c; 	chown -R www-data:www-data /usr/src/postfixadmin
# Tue, 29 Jan 2019 09:48:46 GMT
COPY file:7b9804d962cc9ab943424976141cd6ab11b4bd5e6f589713aab01e577d18b5e9 in /usr/local/bin/ 
# Tue, 29 Jan 2019 09:48:47 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
# Tue, 29 Jan 2019 09:48:47 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:711c3a2baeda87a6b9816cb812388d62d17396034e595a68d8ee5f938f9d77b3`  
		Last Modified: Wed, 23 Jan 2019 10:11:36 GMT  
		Size: 20.4 MB (20350180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a273a3c32232329b60ac83d95b6b7744068016759eaf8675589b9dc5b50513b`  
		Last Modified: Fri, 25 Jan 2019 10:11:35 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dbe9d898f22bebde12a9a3868aa7520c4c2250ceae00fa9153248c8f82e5d7b`  
		Last Modified: Fri, 25 Jan 2019 10:12:06 GMT  
		Size: 57.6 MB (57606166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac488f1008ef7811391ec1a02a19be84173ce484a25e46f7f4641ebbce8fcbec`  
		Last Modified: Fri, 25 Jan 2019 10:11:35 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfa534adc3a2f713bf275b6e7c26a499bdcb43e0862c0ddb87eb1fb90bad84e8`  
		Last Modified: Fri, 25 Jan 2019 10:16:09 GMT  
		Size: 12.5 MB (12483285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9712aa2898758460cb55b44ec230d13c9c394df9e6d31b264d25f126c86197e1`  
		Last Modified: Fri, 25 Jan 2019 10:16:06 GMT  
		Size: 502.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2002e802922a8dd6eb82056929a53fb9f850ba65890f9947a4b310a0da3c030b`  
		Last Modified: Fri, 25 Jan 2019 10:16:24 GMT  
		Size: 27.5 MB (27481239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:589f8777b903614efabcc49f983c7a8cb853513e2bcaf0154e78868539dc15c3`  
		Last Modified: Fri, 25 Jan 2019 10:16:04 GMT  
		Size: 2.2 KB (2192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2c8560ad21409ad1f508410d4607890664ca305e04b414d8e2741d50a89b2cb`  
		Last Modified: Fri, 25 Jan 2019 10:16:04 GMT  
		Size: 261.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dab9989ff7fd577b340f2b3a9845bf3e505b77030c80347c02c28cf63bae9e8a`  
		Last Modified: Fri, 25 Jan 2019 10:16:04 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf0a60387f185d3098475fd316580432657b9211016fafe393c0b6ca16a8ea1a`  
		Last Modified: Fri, 25 Jan 2019 10:16:04 GMT  
		Size: 7.8 KB (7805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55d78c55ff7a7372dfae6d86a14867333078f2b51c5c1d8c22d3ba696490d64b`  
		Last Modified: Tue, 29 Jan 2019 09:51:17 GMT  
		Size: 1.1 MB (1101505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f15e00388320cf08f0b01870017cd503cf106e12ff006241652e5fa96e707ff9`  
		Last Modified: Tue, 29 Jan 2019 09:51:17 GMT  
		Size: 1.3 MB (1333472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab2d79742e08bffdb0529dc115af01f94966d1783ef5fed8399ecd481337f15e`  
		Last Modified: Tue, 29 Jan 2019 09:51:16 GMT  
		Size: 1.1 KB (1147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postfixadmin:3.2-fpm` - linux; 386

```console
$ docker pull postfixadmin@sha256:93745b4d318f3893d80e127697e855807e8711a828c153f4f8ae6f85bbcc7cde
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.0 MB (139028943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cf52a767394ff979e0be5e1a8d62fcb36b57a50a433fec87d80c5faf8e36707`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint.sh"]`
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
# Sat, 29 Dec 2018 22:11:26 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 11 Jan 2019 12:54:26 GMT
ENV PHP_VERSION=7.2.14
# Fri, 11 Jan 2019 12:54:26 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror
# Fri, 11 Jan 2019 12:54:26 GMT
ENV PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f PHP_MD5=
# Fri, 11 Jan 2019 12:54:36 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 11 Jan 2019 12:54:36 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 11 Jan 2019 13:00:04 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 11 Jan 2019 13:00:05 GMT
COPY multi:cbc68fef2c8554b9a23fee7eee16ffda927235f929048638240f97172562665c in /usr/local/bin/ 
# Fri, 11 Jan 2019 13:00:05 GMT
RUN docker-php-ext-enable sodium
# Fri, 11 Jan 2019 13:00:05 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 11 Jan 2019 13:00:06 GMT
WORKDIR /var/www/html
# Fri, 11 Jan 2019 13:00:06 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 11 Jan 2019 13:00:07 GMT
EXPOSE 9000
# Fri, 11 Jan 2019 13:00:07 GMT
CMD ["php-fpm"]
# Tue, 29 Jan 2019 13:26:39 GMT
LABEL maintainer=David Goodwin <david@codepoets.co.uk> (@DavidGoodwin)
# Tue, 29 Jan 2019 13:27:24 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 	libpq-dev 	libsqlite3-dev 	; 		docker-php-ext-install 		mysqli 		pdo_mysql 		pdo_pgsql 		pdo_sqlite 		pgsql 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 		ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 			apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 13:27:24 GMT
ARG POSTFIXADMIN_VERSION=3.2
# Tue, 29 Jan 2019 13:27:25 GMT
ARG POSTFIXADMIN_SHA512=9e022e3311bce96342e87925159a048f294ed0e2d4558bd43120b5c6eda35a7a2d128987372d310dfe86680c98a4d8cf3d602afcb20d948c9bba58bed1766560
# Tue, 29 Jan 2019 13:27:25 GMT
ENV POSTFIXADMIN_VERSION=3.2
# Tue, 29 Jan 2019 13:27:25 GMT
ENV POSTFIXADMIN_SHA512=9e022e3311bce96342e87925159a048f294ed0e2d4558bd43120b5c6eda35a7a2d128987372d310dfe86680c98a4d8cf3d602afcb20d948c9bba58bed1766560
# Tue, 29 Jan 2019 13:27:26 GMT
RUN set -eu; 	curl -fsSL -o postfixadmin.tar.gz "https://github.com/postfixadmin/postfixadmin/archive/postfixadmin-${POSTFIXADMIN_VERSION}.tar.gz"; 	echo "$POSTFIXADMIN_SHA512 *postfixadmin.tar.gz" | sha512sum -c -; 	mkdir /usr/src/postfixadmin; 	tar -xf postfixadmin.tar.gz -C /usr/src/postfixadmin --strip-components=1; 	rm postfixadmin.tar.gz; 	mkdir -p /usr/src/postfixadmin/templates_c; 	chown -R www-data:www-data /usr/src/postfixadmin
# Tue, 29 Jan 2019 13:27:26 GMT
COPY file:7b9804d962cc9ab943424976141cd6ab11b4bd5e6f589713aab01e577d18b5e9 in /usr/local/bin/ 
# Tue, 29 Jan 2019 13:27:26 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
# Tue, 29 Jan 2019 13:27:27 GMT
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
	-	`sha256:2f96c042f31352ffc4706d54dd5e87a2e4f9502aa22ab1a495d43088b47d8d4c`  
		Last Modified: Fri, 11 Jan 2019 14:54:27 GMT  
		Size: 12.5 MB (12484697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c48899a82e4ff4a06d3fe22e3b19d8487b872aab41540f5e8a3b8b96f0fa6fe`  
		Last Modified: Fri, 11 Jan 2019 14:54:26 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb564ff7a873d5c5065ad5333c5bc35a0ccf44be3e542bef90fd6bcedce00417`  
		Last Modified: Fri, 11 Jan 2019 14:54:32 GMT  
		Size: 29.3 MB (29332789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2679b31a3bde8a45d1ef9e44f3bb3a7381ffe8cb994738674cac4cc92c8bc32d`  
		Last Modified: Fri, 11 Jan 2019 14:54:25 GMT  
		Size: 2.2 KB (2189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:618cc564acfe7a10b6ed49868a21c4b895588acef6a135912122f103d3f33567`  
		Last Modified: Fri, 11 Jan 2019 14:54:25 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:418806b632b4a50647c6e7c2bfb6dd19ad2daa5023b8be70e9d3e615d318f040`  
		Last Modified: Fri, 11 Jan 2019 14:54:25 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:333219bdf344bcf1ddfd7a0f198febcf422a761618cd75b05f7881552e764252`  
		Last Modified: Fri, 11 Jan 2019 14:54:25 GMT  
		Size: 7.8 KB (7801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ee938520f891c2407d425529da547f39ddbca3b44e2a463726f10f97aa9d778`  
		Last Modified: Tue, 29 Jan 2019 13:28:31 GMT  
		Size: 1.2 MB (1228652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1fe511052c16de8a4b7c95b36bae22b272a707d75d6b315332186056915de4e`  
		Last Modified: Tue, 29 Jan 2019 13:28:31 GMT  
		Size: 1.3 MB (1333472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf09694b68cfd33dd9b15fadf30af6218564a8d788dea6c51987f427cff36815`  
		Last Modified: Tue, 29 Jan 2019 13:28:30 GMT  
		Size: 1.1 KB (1147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postfixadmin:3.2-fpm-alpine`

```console
$ docker pull postfixadmin@sha256:14b40b7645069be3da78dad5b70551670c896fb5570ff8c43d13458beaf22b4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386

### `postfixadmin:3.2-fpm-alpine` - linux; amd64

```console
$ docker pull postfixadmin@sha256:713fb3fdda7db842697f63ab8853e8ae614046f6f2c73a222cdb844f30067bc8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.4 MB (37370937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c0a33dda5e64b0d16af13effdabc8434ee0aa2be66addf922e7bc64dc9d766a`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Thu, 31 Jan 2019 00:20:36 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 31 Jan 2019 00:20:38 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Thu, 31 Jan 2019 00:20:39 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Thu, 31 Jan 2019 00:20:39 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 31 Jan 2019 00:20:40 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 31 Jan 2019 00:27:08 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Thu, 31 Jan 2019 00:27:09 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 31 Jan 2019 00:27:09 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 31 Jan 2019 00:27:09 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 31 Jan 2019 00:47:44 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Thu, 31 Jan 2019 00:47:44 GMT
ENV PHP_VERSION=7.2.14
# Thu, 31 Jan 2019 00:47:44 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror
# Thu, 31 Jan 2019 00:47:44 GMT
ENV PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f PHP_MD5=
# Thu, 31 Jan 2019 00:47:49 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Thu, 31 Jan 2019 00:47:49 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Thu, 31 Jan 2019 00:53:59 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libsodium-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 31 Jan 2019 00:53:59 GMT
COPY multi:cbc68fef2c8554b9a23fee7eee16ffda927235f929048638240f97172562665c in /usr/local/bin/ 
# Thu, 31 Jan 2019 00:54:00 GMT
RUN docker-php-ext-enable sodium
# Thu, 31 Jan 2019 00:54:00 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 31 Jan 2019 00:54:01 GMT
WORKDIR /var/www/html
# Thu, 31 Jan 2019 00:54:01 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Thu, 31 Jan 2019 00:54:02 GMT
EXPOSE 9000
# Thu, 31 Jan 2019 00:54:02 GMT
CMD ["php-fpm"]
# Thu, 31 Jan 2019 03:17:32 GMT
LABEL maintainer=David Goodwin <david@codepoets.co.uk> (@DavidGoodwin)
# Thu, 31 Jan 2019 03:17:33 GMT
RUN apk add --no-cache 		bash 		coreutils
# Thu, 31 Jan 2019 03:18:06 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		sqlite-dev 		postgresql-dev 	; 	docker-php-ext-install 		mysqli 		pdo_mysql 		pdo_pgsql 		pdo_sqlite 		pgsql 	; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .postfixadmin-phpexts-rundeps $runDeps; 	apk del .build-deps
# Thu, 31 Jan 2019 03:18:06 GMT
ARG POSTFIXADMIN_VERSION=3.2
# Thu, 31 Jan 2019 03:18:07 GMT
ARG POSTFIXADMIN_SHA512=9e022e3311bce96342e87925159a048f294ed0e2d4558bd43120b5c6eda35a7a2d128987372d310dfe86680c98a4d8cf3d602afcb20d948c9bba58bed1766560
# Thu, 31 Jan 2019 03:18:07 GMT
ENV POSTFIXADMIN_VERSION=3.2
# Thu, 31 Jan 2019 03:18:07 GMT
ENV POSTFIXADMIN_SHA512=9e022e3311bce96342e87925159a048f294ed0e2d4558bd43120b5c6eda35a7a2d128987372d310dfe86680c98a4d8cf3d602afcb20d948c9bba58bed1766560
# Thu, 31 Jan 2019 03:18:08 GMT
RUN set -eu; 	curl -fsSL -o postfixadmin.tar.gz "https://github.com/postfixadmin/postfixadmin/archive/postfixadmin-${POSTFIXADMIN_VERSION}.tar.gz"; 	echo "$POSTFIXADMIN_SHA512 *postfixadmin.tar.gz" | sha512sum -c -; 	mkdir /usr/src/postfixadmin; 	tar -xf postfixadmin.tar.gz -C /usr/src/postfixadmin --strip-components=1; 	rm postfixadmin.tar.gz; 	mkdir -p /usr/src/postfixadmin/templates_c; 	chown -R www-data:www-data /usr/src/postfixadmin
# Thu, 31 Jan 2019 03:18:08 GMT
COPY file:7b9804d962cc9ab943424976141cd6ab11b4bd5e6f589713aab01e577d18b5e9 in /usr/local/bin/ 
# Thu, 31 Jan 2019 03:18:08 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
# Thu, 31 Jan 2019 03:18:09 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ba0d98519aaeb7e9f907b28d10dc5fe17def3fe18221465a5d99d79c2f9f3e2`  
		Last Modified: Thu, 31 Jan 2019 01:42:20 GMT  
		Size: 1.4 MB (1357252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75f762bbc102cc1ab5ed220ac6a99fea476cbb574069cf7deb662ac3d04c02ad`  
		Last Modified: Thu, 31 Jan 2019 01:42:18 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04f939cd9fe58bc13d88c8dddcb194752f936dd6acbeca7a6f35cd5ab62d8762`  
		Last Modified: Thu, 31 Jan 2019 01:42:18 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40df79071b61850039421ef4f84fba6a727741d3c0e10e821f365297888b5449`  
		Last Modified: Thu, 31 Jan 2019 01:43:37 GMT  
		Size: 12.2 MB (12176078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bec25f0cd096f1f11ad4d68b4b0ba4ec3e59dbeb3c84b6c68c360fcd6d1f9167`  
		Last Modified: Thu, 31 Jan 2019 01:43:35 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:029b01defb67a82864802e781ff178f1a0fc1db2032c370b47022686d621ae49`  
		Last Modified: Thu, 31 Jan 2019 01:43:40 GMT  
		Size: 15.9 MB (15850538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a134d99ba2a7a7bba61f81dbd0d547f5758a54c91caca7181da076b332faa866`  
		Last Modified: Thu, 31 Jan 2019 01:43:34 GMT  
		Size: 2.2 KB (2176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7a62b5c54cca9a8d9c0c6e553a87cb94b16d3be463c51f2d1fe26c7044f08b3`  
		Last Modified: Thu, 31 Jan 2019 01:43:34 GMT  
		Size: 71.8 KB (71842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd5dd98188d03e3161ca09def3947127100418054e37e7c8fbc7a4d3c9b15ccf`  
		Last Modified: Thu, 31 Jan 2019 01:43:34 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dff9e3e36d8c7623a7522c91f7e284be1a9ace494327ddb13b1dfa524f09901`  
		Last Modified: Thu, 31 Jan 2019 01:43:34 GMT  
		Size: 7.8 KB (7781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34e48c3e0d969abf3059775328765671881b49bc311a94edad4981c9b2087235`  
		Last Modified: Thu, 31 Jan 2019 03:18:24 GMT  
		Size: 1.1 MB (1132763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17b8888a2ab372f40a08abaf272e3f5250bc6cbdd929cb806326f8a1b2fab075`  
		Last Modified: Thu, 31 Jan 2019 03:18:25 GMT  
		Size: 3.2 MB (3228796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e16c4a7a67f47c020a808b4766761d40934f8d80805a67a8b6b3c756c14b5ae5`  
		Last Modified: Thu, 31 Jan 2019 03:18:24 GMT  
		Size: 1.3 MB (1333492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:137a801a9b45583ab8eb2b8414255fee6d504e75401cc748c2a015a686d62c32`  
		Last Modified: Thu, 31 Jan 2019 03:18:24 GMT  
		Size: 1.1 KB (1135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postfixadmin:3.2-fpm-alpine` - linux; arm64 variant v8

```console
$ docker pull postfixadmin@sha256:ee59f287fd4a8741503ea6e0739549c073484394b904ab7ca666f8cdd2907cca
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.8 MB (35805864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c7598e917e4f374e370547b13a77d095a1daedfd4726fdea4ed229d01fdf6ec`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 12:10:06 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 21 Dec 2018 12:10:08 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Fri, 21 Dec 2018 12:10:11 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 21 Dec 2018 12:10:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 21 Dec 2018 12:10:13 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 21 Dec 2018 12:19:38 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Fri, 21 Dec 2018 12:19:39 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 21 Dec 2018 12:19:40 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 21 Dec 2018 12:19:40 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 21 Dec 2018 12:51:23 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 11 Jan 2019 12:05:25 GMT
ENV PHP_VERSION=7.2.14
# Fri, 11 Jan 2019 12:05:26 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror
# Fri, 11 Jan 2019 12:05:26 GMT
ENV PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f PHP_MD5=
# Fri, 11 Jan 2019 12:05:38 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 11 Jan 2019 12:05:39 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 11 Jan 2019 12:12:27 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libsodium-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 11 Jan 2019 12:12:28 GMT
COPY multi:cbc68fef2c8554b9a23fee7eee16ffda927235f929048638240f97172562665c in /usr/local/bin/ 
# Fri, 11 Jan 2019 12:12:30 GMT
RUN docker-php-ext-enable sodium
# Fri, 11 Jan 2019 12:12:31 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 11 Jan 2019 12:12:32 GMT
WORKDIR /var/www/html
# Fri, 11 Jan 2019 12:12:33 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 11 Jan 2019 12:12:34 GMT
EXPOSE 9000
# Fri, 11 Jan 2019 12:12:35 GMT
CMD ["php-fpm"]
# Tue, 29 Jan 2019 09:48:52 GMT
LABEL maintainer=David Goodwin <david@codepoets.co.uk> (@DavidGoodwin)
# Tue, 29 Jan 2019 09:48:55 GMT
RUN apk add --no-cache 		bash 		coreutils
# Tue, 29 Jan 2019 09:50:13 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		sqlite-dev 		postgresql-dev 	; 	docker-php-ext-install 		mysqli 		pdo_mysql 		pdo_pgsql 		pdo_sqlite 		pgsql 	; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .postfixadmin-phpexts-rundeps $runDeps; 	apk del .build-deps
# Tue, 29 Jan 2019 09:50:14 GMT
ARG POSTFIXADMIN_VERSION=3.2
# Tue, 29 Jan 2019 09:50:15 GMT
ARG POSTFIXADMIN_SHA512=9e022e3311bce96342e87925159a048f294ed0e2d4558bd43120b5c6eda35a7a2d128987372d310dfe86680c98a4d8cf3d602afcb20d948c9bba58bed1766560
# Tue, 29 Jan 2019 09:50:15 GMT
ENV POSTFIXADMIN_VERSION=3.2
# Tue, 29 Jan 2019 09:50:16 GMT
ENV POSTFIXADMIN_SHA512=9e022e3311bce96342e87925159a048f294ed0e2d4558bd43120b5c6eda35a7a2d128987372d310dfe86680c98a4d8cf3d602afcb20d948c9bba58bed1766560
# Tue, 29 Jan 2019 09:50:19 GMT
RUN set -eu; 	curl -fsSL -o postfixadmin.tar.gz "https://github.com/postfixadmin/postfixadmin/archive/postfixadmin-${POSTFIXADMIN_VERSION}.tar.gz"; 	echo "$POSTFIXADMIN_SHA512 *postfixadmin.tar.gz" | sha512sum -c -; 	mkdir /usr/src/postfixadmin; 	tar -xf postfixadmin.tar.gz -C /usr/src/postfixadmin --strip-components=1; 	rm postfixadmin.tar.gz; 	mkdir -p /usr/src/postfixadmin/templates_c; 	chown -R www-data:www-data /usr/src/postfixadmin
# Tue, 29 Jan 2019 09:50:20 GMT
COPY file:7b9804d962cc9ab943424976141cd6ab11b4bd5e6f589713aab01e577d18b5e9 in /usr/local/bin/ 
# Tue, 29 Jan 2019 09:50:21 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
# Tue, 29 Jan 2019 09:50:22 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:e3c488b39803d9194cf010f6127b1121d5387b90a1562d44b50b749d0e7a69bf`  
		Last Modified: Fri, 21 Dec 2018 09:43:51 GMT  
		Size: 2.1 MB (2099839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a63128803b1ea223f87244cb8d3faa97817f6cf3ca8249e485430218758510`  
		Last Modified: Fri, 21 Dec 2018 09:43:50 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73bf4a12ae92b20610d889c240ddcd72b338a21e3fa4f3d6c077d9fcad3566f1`  
		Last Modified: Fri, 21 Dec 2018 14:38:54 GMT  
		Size: 1.3 MB (1274014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf309e8a13c2d5f8e92a71c30f189658629d7079402a4dbd6c42d8a5302b755e`  
		Last Modified: Fri, 21 Dec 2018 14:38:54 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2290f763cb3e9ff58547451226cdcbb3b5083ab00da970fb03b03604c2c78716`  
		Last Modified: Fri, 21 Dec 2018 14:38:53 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08ff3daeaeb2c6f80e985fe6a65ebcf4c174894b1111553a77038b106db4dfa4`  
		Last Modified: Fri, 11 Jan 2019 13:30:07 GMT  
		Size: 12.2 MB (12176103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f415816cc27b5f850a1475f2264f6b325f08fddb036f2a484f1c38cee60562d8`  
		Last Modified: Fri, 11 Jan 2019 13:30:05 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0d8dfc978e0329562a72d717cad6d3114bd6a2a392d761a2bda797f0476f485`  
		Last Modified: Fri, 11 Jan 2019 13:30:12 GMT  
		Size: 14.7 MB (14694310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d42bfc57b96f2b8d3a77f54cf48ff03022b5bdf4581f96b39b42328593a847c`  
		Last Modified: Fri, 11 Jan 2019 13:30:03 GMT  
		Size: 2.2 KB (2176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d3ef9fa25c04f4c400cff945c823594bce0253ba6e692c7ebf62d8d23a63d2d`  
		Last Modified: Fri, 11 Jan 2019 13:30:03 GMT  
		Size: 70.9 KB (70866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdd07133ba580f4b004c26bffcdf7cb09e1ec7a007886f3759a8313202efab70`  
		Last Modified: Fri, 11 Jan 2019 13:30:03 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f39c56929428921ec4c76fd858639f743ade99b41aaaa8e894727a2ea43dd5f`  
		Last Modified: Fri, 11 Jan 2019 13:30:03 GMT  
		Size: 7.8 KB (7782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfea3a62d4a76c95659011feac528a7d090b99189d9271c475de41dfe150acdc`  
		Last Modified: Tue, 29 Jan 2019 09:51:30 GMT  
		Size: 1.1 MB (1075310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa820313885652a002eb63e952b026e59e78f88fa85ae7c843174ea8cbfa1349`  
		Last Modified: Tue, 29 Jan 2019 09:51:30 GMT  
		Size: 3.1 MB (3068614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4516ef42f3e7f28dd9276a718b3d52f24e4f5068d505bb5f73d7b963df339a75`  
		Last Modified: Tue, 29 Jan 2019 09:51:30 GMT  
		Size: 1.3 MB (1333491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6d80171691987f96a32a37df75921ba559f6951ba78763aa20c585150981f1e`  
		Last Modified: Tue, 29 Jan 2019 09:51:29 GMT  
		Size: 1.1 KB (1138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postfixadmin:3.2-fpm-alpine` - linux; 386

```console
$ docker pull postfixadmin@sha256:c13278d1e30fd4a89ee86a9c36fb3844d3dbd7d8e8196bbd9da6564e4c4918c7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 MB (38208339 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96a5ba53918733e73abe9b2a438392fedeed60088afce35620dc5d120a39e5fe`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 21 Dec 2018 11:40:13 GMT
ADD file:38576b24298c124265c8fffb7bc8fdb0c144d99dcce4e9942bdcceb936830ba6 in / 
# Fri, 21 Dec 2018 11:40:14 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 11:40:14 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 12:26:09 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 21 Dec 2018 12:26:10 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Fri, 21 Dec 2018 12:26:11 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 21 Dec 2018 12:26:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 21 Dec 2018 12:26:12 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 21 Dec 2018 12:32:56 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Fri, 21 Dec 2018 12:32:56 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 21 Dec 2018 12:32:56 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 21 Dec 2018 12:32:56 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 21 Dec 2018 12:53:43 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 11 Jan 2019 13:12:03 GMT
ENV PHP_VERSION=7.2.14
# Fri, 11 Jan 2019 13:12:03 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror
# Fri, 11 Jan 2019 13:12:03 GMT
ENV PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f PHP_MD5=
# Fri, 11 Jan 2019 13:12:08 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 11 Jan 2019 13:12:08 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 11 Jan 2019 13:17:40 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libsodium-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 11 Jan 2019 13:17:41 GMT
COPY multi:cbc68fef2c8554b9a23fee7eee16ffda927235f929048638240f97172562665c in /usr/local/bin/ 
# Fri, 11 Jan 2019 13:17:42 GMT
RUN docker-php-ext-enable sodium
# Fri, 11 Jan 2019 13:17:42 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 11 Jan 2019 13:17:42 GMT
WORKDIR /var/www/html
# Fri, 11 Jan 2019 13:17:43 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 11 Jan 2019 13:17:43 GMT
EXPOSE 9000
# Fri, 11 Jan 2019 13:17:43 GMT
CMD ["php-fpm"]
# Tue, 29 Jan 2019 13:27:31 GMT
LABEL maintainer=David Goodwin <david@codepoets.co.uk> (@DavidGoodwin)
# Tue, 29 Jan 2019 13:27:32 GMT
RUN apk add --no-cache 		bash 		coreutils
# Tue, 29 Jan 2019 13:28:04 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		sqlite-dev 		postgresql-dev 	; 	docker-php-ext-install 		mysqli 		pdo_mysql 		pdo_pgsql 		pdo_sqlite 		pgsql 	; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .postfixadmin-phpexts-rundeps $runDeps; 	apk del .build-deps
# Tue, 29 Jan 2019 13:28:04 GMT
ARG POSTFIXADMIN_VERSION=3.2
# Tue, 29 Jan 2019 13:28:04 GMT
ARG POSTFIXADMIN_SHA512=9e022e3311bce96342e87925159a048f294ed0e2d4558bd43120b5c6eda35a7a2d128987372d310dfe86680c98a4d8cf3d602afcb20d948c9bba58bed1766560
# Tue, 29 Jan 2019 13:28:05 GMT
ENV POSTFIXADMIN_VERSION=3.2
# Tue, 29 Jan 2019 13:28:05 GMT
ENV POSTFIXADMIN_SHA512=9e022e3311bce96342e87925159a048f294ed0e2d4558bd43120b5c6eda35a7a2d128987372d310dfe86680c98a4d8cf3d602afcb20d948c9bba58bed1766560
# Tue, 29 Jan 2019 13:28:06 GMT
RUN set -eu; 	curl -fsSL -o postfixadmin.tar.gz "https://github.com/postfixadmin/postfixadmin/archive/postfixadmin-${POSTFIXADMIN_VERSION}.tar.gz"; 	echo "$POSTFIXADMIN_SHA512 *postfixadmin.tar.gz" | sha512sum -c -; 	mkdir /usr/src/postfixadmin; 	tar -xf postfixadmin.tar.gz -C /usr/src/postfixadmin --strip-components=1; 	rm postfixadmin.tar.gz; 	mkdir -p /usr/src/postfixadmin/templates_c; 	chown -R www-data:www-data /usr/src/postfixadmin
# Tue, 29 Jan 2019 13:28:06 GMT
COPY file:7b9804d962cc9ab943424976141cd6ab11b4bd5e6f589713aab01e577d18b5e9 in /usr/local/bin/ 
# Tue, 29 Jan 2019 13:28:06 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
# Tue, 29 Jan 2019 13:28:07 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:25bcd1068fdd02354e6b3fb4ebbad1a9c1df7f5ec2d61aa88a337345415dc102`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 2.3 MB (2271567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795c3ef9c057ef60e7a4a088655adecaccd21d68099ad1f654bccd015ab319da`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4811baf1f023d21ea625c97101dbaffec612a7fc948ff1d9f1e85badb90282f7`  
		Last Modified: Fri, 21 Dec 2018 14:03:58 GMT  
		Size: 1.5 MB (1453187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66ce10d169b702fb314523985cab18b12c3d56cf08f625154b27d0847e96f089`  
		Last Modified: Fri, 21 Dec 2018 14:03:58 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a89858ddd116f7d2220d5ff7f60ae246411089bb3c686a47294192ef6b55c9d`  
		Last Modified: Fri, 21 Dec 2018 14:03:57 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6043e2c76dbe219109f72235280314072a2217eda96687558d21f8578b3e75ef`  
		Last Modified: Fri, 11 Jan 2019 14:55:05 GMT  
		Size: 12.2 MB (12176111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8440fdedbe0046ed87adf69105b08c449aba4d3bd3c0793adab9f7ff3440694b`  
		Last Modified: Fri, 11 Jan 2019 14:55:04 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8d4733b5cfb1cb0069daa62cf9f209df0ba5b2b750b083d4c5bb84ea8464a8b`  
		Last Modified: Fri, 11 Jan 2019 14:55:08 GMT  
		Size: 16.3 MB (16308650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d841e9114fbd446750277075cec7238a8d521ba32770dc463d8e70b18faf0b5`  
		Last Modified: Fri, 11 Jan 2019 14:55:03 GMT  
		Size: 2.2 KB (2176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aa176c23e31bd93ed00c94293dc542732e58fe45a9a7eb7f7d5d2c41c5a5635`  
		Last Modified: Fri, 11 Jan 2019 14:55:03 GMT  
		Size: 71.0 KB (70990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69278d1d66b65f5c197afc970ea16254f399f69909a42e58aa644f7e5c4a0b22`  
		Last Modified: Fri, 11 Jan 2019 14:55:03 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78d76d1e33feaf865d85eda3797a826c94470919951a86586780f337bae702c3`  
		Last Modified: Fri, 11 Jan 2019 14:55:03 GMT  
		Size: 7.8 KB (7782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2900294b4c7d547d39757b877982cbb6d72fdbce470ad9bd0e60040eff70614e`  
		Last Modified: Tue, 29 Jan 2019 13:28:36 GMT  
		Size: 1.2 MB (1215976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35e9bda408e7db0088f5bf8f376c0d2c2ce20e42e7c1b2058944a5c9c2fb360`  
		Last Modified: Tue, 29 Jan 2019 13:28:37 GMT  
		Size: 3.4 MB (3365056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a84f839bc52a26f5e41c8cfd80992c28bbf0ca536da88ce404cedc7a1e6b291`  
		Last Modified: Tue, 29 Jan 2019 13:28:37 GMT  
		Size: 1.3 MB (1333485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb98f498adca6b0ff77d5e79af43f086f2fc21143fecd4b1617fc8caedc3444e`  
		Last Modified: Tue, 29 Jan 2019 13:28:36 GMT  
		Size: 1.1 KB (1136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postfixadmin:3-apache`

```console
$ docker pull postfixadmin@sha256:a1bda52b53279ac7c112bcebee006a4dc48b11b753cc165922e53eb9571bc029
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386

### `postfixadmin:3-apache` - linux; amd64

```console
$ docker pull postfixadmin@sha256:3ed2a11058d1d9d2e4ea17c24d3f18037d0541303b02a3bd440551ca03fc5438
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.8 MB (136782618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:688e2e24625f75280ef824ad4c2987fb95aff52282aa6c3787ce5cd87072fe56`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:32 GMT
ADD file:a65337a57a064a79ad8a3f42e8282b3e01710cb4684ccd880463cc8d2e051fa5 in / 
# Tue, 22 Jan 2019 19:30:32 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 21:46:13 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 22 Jan 2019 21:46:14 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 22 Jan 2019 21:46:46 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 22 Jan 2019 21:46:46 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 22 Jan 2019 21:46:47 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 22 Jan 2019 21:56:16 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 21:56:16 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 22 Jan 2019 21:56:16 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 22 Jan 2019 21:56:17 GMT
RUN set -eux; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Tue, 22 Jan 2019 21:56:19 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 22 Jan 2019 21:56:20 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 22 Jan 2019 21:56:20 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 22 Jan 2019 21:56:20 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Tue, 22 Jan 2019 21:56:21 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 22 Jan 2019 21:56:21 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 22 Jan 2019 21:56:21 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 22 Jan 2019 22:27:31 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Tue, 22 Jan 2019 22:27:31 GMT
ENV PHP_VERSION=7.2.14
# Tue, 22 Jan 2019 22:27:31 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror
# Tue, 22 Jan 2019 22:27:32 GMT
ENV PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f PHP_MD5=
# Tue, 22 Jan 2019 22:27:43 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 22 Jan 2019 22:27:43 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Tue, 22 Jan 2019 22:31:33 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 22 Jan 2019 22:31:33 GMT
COPY multi:0a6fe33cb39694994fa567c75b399b9aa5e477c8770caa9f731607a72819b457 in /usr/local/bin/ 
# Tue, 22 Jan 2019 22:31:34 GMT
RUN docker-php-ext-enable sodium
# Tue, 22 Jan 2019 22:31:34 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 22 Jan 2019 22:31:35 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Tue, 22 Jan 2019 22:31:35 GMT
WORKDIR /var/www/html
# Tue, 22 Jan 2019 22:31:35 GMT
EXPOSE 80
# Tue, 22 Jan 2019 22:31:35 GMT
CMD ["apache2-foreground"]
# Wed, 23 Jan 2019 11:49:14 GMT
LABEL maintainer=David Goodwin <david@codepoets.co.uk> (@DavidGoodwin)
# Wed, 23 Jan 2019 11:50:06 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 	libpq-dev 	libsqlite3-dev 	; 		docker-php-ext-install 		mysqli 		pdo_mysql 		pdo_pgsql 		pdo_sqlite 		pgsql 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 		ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 			apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 11:50:06 GMT
ARG POSTFIXADMIN_VERSION=3.2
# Wed, 23 Jan 2019 11:50:06 GMT
ARG POSTFIXADMIN_SHA512=9e022e3311bce96342e87925159a048f294ed0e2d4558bd43120b5c6eda35a7a2d128987372d310dfe86680c98a4d8cf3d602afcb20d948c9bba58bed1766560
# Wed, 23 Jan 2019 11:50:06 GMT
ENV POSTFIXADMIN_VERSION=3.2
# Wed, 23 Jan 2019 11:50:06 GMT
ENV POSTFIXADMIN_SHA512=9e022e3311bce96342e87925159a048f294ed0e2d4558bd43120b5c6eda35a7a2d128987372d310dfe86680c98a4d8cf3d602afcb20d948c9bba58bed1766560
# Wed, 23 Jan 2019 11:50:07 GMT
ENV APACHE_DOCUMENT_ROOT=/var/www/html/public
# Wed, 23 Jan 2019 11:50:07 GMT
RUN set -eu; sed -ri -e 's!/var/www/html!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/sites-available/*.conf; 	sed -ri -e 's!/var/www/!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/apache2.conf /etc/apache2/conf-available/*.conf
# Tue, 29 Jan 2019 00:19:57 GMT
RUN set -eu; 	curl -fsSL -o postfixadmin.tar.gz "https://github.com/postfixadmin/postfixadmin/archive/postfixadmin-${POSTFIXADMIN_VERSION}.tar.gz"; 	echo "$POSTFIXADMIN_SHA512 *postfixadmin.tar.gz" | sha512sum -c -; 	mkdir /usr/src/postfixadmin; 	tar -xf postfixadmin.tar.gz -C /usr/src/postfixadmin --strip-components=1; 	rm postfixadmin.tar.gz; 	mkdir -p /usr/src/postfixadmin/templates_c; 	chown -R www-data:www-data /usr/src/postfixadmin
# Tue, 29 Jan 2019 00:19:57 GMT
COPY file:7b9804d962cc9ab943424976141cd6ab11b4bd5e6f589713aab01e577d18b5e9 in /usr/local/bin/ 
# Tue, 29 Jan 2019 00:19:57 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
# Tue, 29 Jan 2019 00:19:58 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:5e6ec7f28fb77f84f64b8c29fcb0a746260563f5858315e3e9fcc4aee2844840`  
		Last Modified: Tue, 22 Jan 2019 19:37:02 GMT  
		Size: 22.5 MB (22500707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf165947b5b75ef63a7872634239e795a3063179895699dc8e0726f1039946b3`  
		Last Modified: Wed, 23 Jan 2019 01:11:30 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bd37682846da479bcfb64459fa36e043d3380a77b401f6de5b862d00d8dcebf`  
		Last Modified: Wed, 23 Jan 2019 01:11:50 GMT  
		Size: 67.4 MB (67442781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99daf8e838e14fb73055ddac03535d506dbf36a5a01c37497ff001c0dbd68f3e`  
		Last Modified: Wed, 23 Jan 2019 01:11:29 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae320713efba9e138236c82142d67bd9d5f05ef4d4a3de877e7aa27d1456ce3e`  
		Last Modified: Wed, 23 Jan 2019 01:12:17 GMT  
		Size: 17.1 MB (17128043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebcb99c48d8c8dd49d64a2d097966dacca7117b4381a54b6835b0afa487e9814`  
		Last Modified: Wed, 23 Jan 2019 01:12:12 GMT  
		Size: 1.3 KB (1337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9867e71b4ab60b84952cf76ca4f3446e994d0760b3d6e16658417c496656dca2`  
		Last Modified: Wed, 23 Jan 2019 01:12:12 GMT  
		Size: 430.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:936eb418164ae6e2bb965f03cb699d969f0ed568d0f965d6f276c944511dbcfb`  
		Last Modified: Wed, 23 Jan 2019 01:12:11 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d9617dfb66bd026b0be8e8119800b84b3d01f08793f248addff29d1eb3890df`  
		Last Modified: Wed, 23 Jan 2019 01:13:42 GMT  
		Size: 12.5 MB (12506442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dd7afaae10961af92770c0101d92fb65c273d2c0f2ddc37e50a27e0544db9e6`  
		Last Modified: Wed, 23 Jan 2019 01:13:40 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f207844da7e135b8cf0e939b9bcdf7ef96851ceb3ee6a8f7250bb3ab3e3f5f0`  
		Last Modified: Wed, 23 Jan 2019 01:13:40 GMT  
		Size: 15.2 MB (15245750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb3ae5e49870b53e95c7f94f3cde8a99114cdc0ca02ce70a4b046439cc82ffd`  
		Last Modified: Wed, 23 Jan 2019 01:13:40 GMT  
		Size: 2.2 KB (2197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44d7d07029db87ecf6218a08a3827b4d33097b1cfad2c41bb2705e1dacf018bb`  
		Last Modified: Wed, 23 Jan 2019 01:13:40 GMT  
		Size: 255.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb91064652b0cf4550ebc10dc2e3320502d1116b095fc0a6c41e6eb64c4c487c`  
		Last Modified: Wed, 23 Jan 2019 01:13:40 GMT  
		Size: 903.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a9fb13d18e61581e102dab92f6ad950246c51eca1e06979c23e77a92006e014`  
		Last Modified: Wed, 23 Jan 2019 11:51:30 GMT  
		Size: 609.5 KB (609529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db16d23b9e42466091afa868e2a97450ae7033905d3c0ab8c46b95a3069d536c`  
		Last Modified: Wed, 23 Jan 2019 11:51:30 GMT  
		Size: 8.2 KB (8220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:571ef8f90d3b25950a8ec03e65000692375cacfb001809f3113e87bfdc91de08`  
		Last Modified: Tue, 29 Jan 2019 00:20:21 GMT  
		Size: 1.3 MB (1333481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4338dcec5c541355bbd6d49c22e3b55bb2fce425158a2dd8beb3c8f31eb26263`  
		Last Modified: Tue, 29 Jan 2019 00:20:21 GMT  
		Size: 1.1 KB (1146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postfixadmin:3-apache` - linux; arm64 variant v8

```console
$ docker pull postfixadmin@sha256:d6803a69f147f5364d96e676c30834de97c7fd882e2b87713b0c7b71614ac460
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.3 MB (123331274 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:032d28ee6c798cc670d755a8af0e8799539f74c2e63dc6fa384b7212a05f9606`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 23 Jan 2019 10:04:38 GMT
ADD file:64db5736cabe52ff81a1eb31101c1afa1e4a04374e84ae717532a88286d01784 in / 
# Wed, 23 Jan 2019 10:04:39 GMT
CMD ["bash"]
# Fri, 25 Jan 2019 07:42:45 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Fri, 25 Jan 2019 07:42:46 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 25 Jan 2019 07:44:08 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 25 Jan 2019 07:44:09 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 25 Jan 2019 07:44:11 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 25 Jan 2019 07:54:12 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 Jan 2019 07:54:13 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 25 Jan 2019 07:54:13 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 25 Jan 2019 07:54:15 GMT
RUN set -eux; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Fri, 25 Jan 2019 07:54:17 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 25 Jan 2019 07:54:19 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 25 Jan 2019 07:54:20 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 25 Jan 2019 07:54:20 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Fri, 25 Jan 2019 07:54:21 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 25 Jan 2019 07:54:22 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 25 Jan 2019 07:54:23 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 25 Jan 2019 08:32:02 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 25 Jan 2019 08:32:03 GMT
ENV PHP_VERSION=7.2.14
# Fri, 25 Jan 2019 08:32:04 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror
# Fri, 25 Jan 2019 08:32:04 GMT
ENV PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f PHP_MD5=
# Fri, 25 Jan 2019 08:32:35 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 25 Jan 2019 08:32:36 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 25 Jan 2019 08:41:15 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 25 Jan 2019 08:41:17 GMT
COPY multi:0a6fe33cb39694994fa567c75b399b9aa5e477c8770caa9f731607a72819b457 in /usr/local/bin/ 
# Fri, 25 Jan 2019 08:41:24 GMT
RUN docker-php-ext-enable sodium
# Fri, 25 Jan 2019 08:41:27 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 25 Jan 2019 08:41:30 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Fri, 25 Jan 2019 08:41:34 GMT
WORKDIR /var/www/html
# Fri, 25 Jan 2019 08:41:35 GMT
EXPOSE 80
# Fri, 25 Jan 2019 08:41:37 GMT
CMD ["apache2-foreground"]
# Tue, 29 Jan 2019 09:44:36 GMT
LABEL maintainer=David Goodwin <david@codepoets.co.uk> (@DavidGoodwin)
# Tue, 29 Jan 2019 09:46:28 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 	libpq-dev 	libsqlite3-dev 	; 		docker-php-ext-install 		mysqli 		pdo_mysql 		pdo_pgsql 		pdo_sqlite 		pgsql 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 		ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 			apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 09:46:29 GMT
ARG POSTFIXADMIN_VERSION=3.2
# Tue, 29 Jan 2019 09:46:30 GMT
ARG POSTFIXADMIN_SHA512=9e022e3311bce96342e87925159a048f294ed0e2d4558bd43120b5c6eda35a7a2d128987372d310dfe86680c98a4d8cf3d602afcb20d948c9bba58bed1766560
# Tue, 29 Jan 2019 09:46:30 GMT
ENV POSTFIXADMIN_VERSION=3.2
# Tue, 29 Jan 2019 09:46:31 GMT
ENV POSTFIXADMIN_SHA512=9e022e3311bce96342e87925159a048f294ed0e2d4558bd43120b5c6eda35a7a2d128987372d310dfe86680c98a4d8cf3d602afcb20d948c9bba58bed1766560
# Tue, 29 Jan 2019 09:46:32 GMT
ENV APACHE_DOCUMENT_ROOT=/var/www/html/public
# Tue, 29 Jan 2019 09:46:34 GMT
RUN set -eu; sed -ri -e 's!/var/www/html!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/sites-available/*.conf; 	sed -ri -e 's!/var/www/!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/apache2.conf /etc/apache2/conf-available/*.conf
# Tue, 29 Jan 2019 09:46:38 GMT
RUN set -eu; 	curl -fsSL -o postfixadmin.tar.gz "https://github.com/postfixadmin/postfixadmin/archive/postfixadmin-${POSTFIXADMIN_VERSION}.tar.gz"; 	echo "$POSTFIXADMIN_SHA512 *postfixadmin.tar.gz" | sha512sum -c -; 	mkdir /usr/src/postfixadmin; 	tar -xf postfixadmin.tar.gz -C /usr/src/postfixadmin --strip-components=1; 	rm postfixadmin.tar.gz; 	mkdir -p /usr/src/postfixadmin/templates_c; 	chown -R www-data:www-data /usr/src/postfixadmin
# Tue, 29 Jan 2019 09:46:38 GMT
COPY file:7b9804d962cc9ab943424976141cd6ab11b4bd5e6f589713aab01e577d18b5e9 in /usr/local/bin/ 
# Tue, 29 Jan 2019 09:46:39 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
# Tue, 29 Jan 2019 09:46:40 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:711c3a2baeda87a6b9816cb812388d62d17396034e595a68d8ee5f938f9d77b3`  
		Last Modified: Wed, 23 Jan 2019 10:11:36 GMT  
		Size: 20.4 MB (20350180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a273a3c32232329b60ac83d95b6b7744068016759eaf8675589b9dc5b50513b`  
		Last Modified: Fri, 25 Jan 2019 10:11:35 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dbe9d898f22bebde12a9a3868aa7520c4c2250ceae00fa9153248c8f82e5d7b`  
		Last Modified: Fri, 25 Jan 2019 10:12:06 GMT  
		Size: 57.6 MB (57606166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac488f1008ef7811391ec1a02a19be84173ce484a25e46f7f4641ebbce8fcbec`  
		Last Modified: Fri, 25 Jan 2019 10:11:35 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f1173e9c64c514da6d8c6bafbba7be17013209d7ea8fd088cb5e124c80e092`  
		Last Modified: Fri, 25 Jan 2019 10:12:58 GMT  
		Size: 16.7 MB (16711165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c98388262fb672bb0ceff0e361fb5aaed815271fe47e2624df7284736dfe7dd8`  
		Last Modified: Fri, 25 Jan 2019 10:12:48 GMT  
		Size: 1.3 KB (1342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed7a886dc3b7edbee8aadaaf76d25711df48f586f9ebb53e3e8871026d140724`  
		Last Modified: Fri, 25 Jan 2019 10:12:48 GMT  
		Size: 434.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:092bbf92d4041daa2f4cf5625d0b7eb07bf80512241012e26c8cd0bead2107d6`  
		Last Modified: Fri, 25 Jan 2019 10:12:49 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66c8c3882bd24c8e800d569d65615abb5aa81732214840fa66e43a446c7446b8`  
		Last Modified: Fri, 25 Jan 2019 10:15:41 GMT  
		Size: 12.5 MB (12504556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:932ce47bbbe66f0ff55e6e760509c90019f9cb0b94c7ffd66c590bb9b2ab2d00`  
		Last Modified: Fri, 25 Jan 2019 10:15:36 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9be881fb6985de63e0ace9e5c7e9557f29bde8edac7144529898f9a3e00cb331`  
		Last Modified: Fri, 25 Jan 2019 10:15:51 GMT  
		Size: 14.2 MB (14224900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52e4f1293ba756a60e636b137b4259939e88407a7c86aad27cfbc5ae0b659c4d`  
		Last Modified: Fri, 25 Jan 2019 10:15:36 GMT  
		Size: 2.2 KB (2200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b843a3c71d198523cd81cd8345c71f1c449e002bd41d45346f473562871f5fb`  
		Last Modified: Fri, 25 Jan 2019 10:15:36 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:062047dd2f4cc55849f0238f7ce86267f3a376d9a73a28b727e8de776fc98b90`  
		Last Modified: Fri, 25 Jan 2019 10:15:36 GMT  
		Size: 907.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a40169a24ab98c4d053301ea08e65a963d778ad51253a7623ca4a260029e392`  
		Last Modified: Tue, 29 Jan 2019 09:50:49 GMT  
		Size: 584.9 KB (584916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57bc8e4222b03933c82269ceeb0c4f1f0f9d2bb0f8f30ff7d8bcdb47bdd7c39d`  
		Last Modified: Tue, 29 Jan 2019 09:50:49 GMT  
		Size: 8.2 KB (8225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f07a375a48c136278f8ae73eaca9786ec8fec69e4a18288e88aaaf1084cfe3e`  
		Last Modified: Tue, 29 Jan 2019 09:50:50 GMT  
		Size: 1.3 MB (1333475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcf8741bd563f42b3a723a0b3eab08bbb1c0da9ea60b246cce52e66385806813`  
		Last Modified: Tue, 29 Jan 2019 09:50:49 GMT  
		Size: 1.1 KB (1150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postfixadmin:3-apache` - linux; 386

```console
$ docker pull postfixadmin@sha256:4b094f58ce9ed17b6a0ac1ffc98c2558449f065e32754f76d8eb4d21ace07070
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.4 MB (142364515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dd84bff525ddabe37018a4c794b3cd86b1c2a1f3c63bc30e2a8a1ad51320f8f`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

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
# Sat, 29 Dec 2018 21:45:50 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 21:45:51 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Sat, 29 Dec 2018 21:45:51 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Sat, 29 Dec 2018 21:45:51 GMT
RUN set -eux; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Sat, 29 Dec 2018 21:45:52 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Sat, 29 Dec 2018 21:45:53 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Sat, 29 Dec 2018 21:45:53 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Sat, 29 Dec 2018 21:45:53 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Sat, 29 Dec 2018 21:45:54 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 21:45:54 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 21:45:54 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 29 Dec 2018 22:07:26 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 11 Jan 2019 12:50:42 GMT
ENV PHP_VERSION=7.2.14
# Fri, 11 Jan 2019 12:50:42 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror
# Fri, 11 Jan 2019 12:50:42 GMT
ENV PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f PHP_MD5=
# Fri, 11 Jan 2019 12:50:53 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 11 Jan 2019 12:50:53 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 11 Jan 2019 12:54:18 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 11 Jan 2019 12:54:18 GMT
COPY multi:0a6fe33cb39694994fa567c75b399b9aa5e477c8770caa9f731607a72819b457 in /usr/local/bin/ 
# Fri, 11 Jan 2019 12:54:19 GMT
RUN docker-php-ext-enable sodium
# Fri, 11 Jan 2019 12:54:19 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 11 Jan 2019 12:54:19 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Fri, 11 Jan 2019 12:54:20 GMT
WORKDIR /var/www/html
# Fri, 11 Jan 2019 12:54:20 GMT
EXPOSE 80
# Fri, 11 Jan 2019 12:54:20 GMT
CMD ["apache2-foreground"]
# Tue, 29 Jan 2019 13:25:37 GMT
LABEL maintainer=David Goodwin <david@codepoets.co.uk> (@DavidGoodwin)
# Tue, 29 Jan 2019 13:26:26 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 	libpq-dev 	libsqlite3-dev 	; 		docker-php-ext-install 		mysqli 		pdo_mysql 		pdo_pgsql 		pdo_sqlite 		pgsql 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 		ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 			apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 13:26:26 GMT
ARG POSTFIXADMIN_VERSION=3.2
# Tue, 29 Jan 2019 13:26:26 GMT
ARG POSTFIXADMIN_SHA512=9e022e3311bce96342e87925159a048f294ed0e2d4558bd43120b5c6eda35a7a2d128987372d310dfe86680c98a4d8cf3d602afcb20d948c9bba58bed1766560
# Tue, 29 Jan 2019 13:26:26 GMT
ENV POSTFIXADMIN_VERSION=3.2
# Tue, 29 Jan 2019 13:26:27 GMT
ENV POSTFIXADMIN_SHA512=9e022e3311bce96342e87925159a048f294ed0e2d4558bd43120b5c6eda35a7a2d128987372d310dfe86680c98a4d8cf3d602afcb20d948c9bba58bed1766560
# Tue, 29 Jan 2019 13:26:27 GMT
ENV APACHE_DOCUMENT_ROOT=/var/www/html/public
# Tue, 29 Jan 2019 13:26:28 GMT
RUN set -eu; sed -ri -e 's!/var/www/html!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/sites-available/*.conf; 	sed -ri -e 's!/var/www/!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/apache2.conf /etc/apache2/conf-available/*.conf
# Tue, 29 Jan 2019 13:26:29 GMT
RUN set -eu; 	curl -fsSL -o postfixadmin.tar.gz "https://github.com/postfixadmin/postfixadmin/archive/postfixadmin-${POSTFIXADMIN_VERSION}.tar.gz"; 	echo "$POSTFIXADMIN_SHA512 *postfixadmin.tar.gz" | sha512sum -c -; 	mkdir /usr/src/postfixadmin; 	tar -xf postfixadmin.tar.gz -C /usr/src/postfixadmin --strip-components=1; 	rm postfixadmin.tar.gz; 	mkdir -p /usr/src/postfixadmin/templates_c; 	chown -R www-data:www-data /usr/src/postfixadmin
# Tue, 29 Jan 2019 13:26:29 GMT
COPY file:7b9804d962cc9ab943424976141cd6ab11b4bd5e6f589713aab01e577d18b5e9 in /usr/local/bin/ 
# Tue, 29 Jan 2019 13:26:29 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
# Tue, 29 Jan 2019 13:26:29 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:cac1a3cba6925217785401a8b972064ba1a0dfe60d4e039f49c4dac4b3f4270e`  
		Last Modified: Sun, 30 Dec 2018 01:57:45 GMT  
		Size: 17.6 MB (17561920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9184c6ff5922580665f40d9e2416d6ff748200ba764489ad442486d61570f8d0`  
		Last Modified: Sun, 30 Dec 2018 01:57:40 GMT  
		Size: 1.3 KB (1336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9edc4d80dca7d81ba8b7a97ebf76890d74ca4d440e11b418c39c09686094da0b`  
		Last Modified: Sun, 30 Dec 2018 01:57:40 GMT  
		Size: 430.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c49d3ce320b30bff15e021157c1b88262d848a456dbdf970c8796accf3e9cc4`  
		Last Modified: Sun, 30 Dec 2018 01:57:40 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd62ef36d94e7c9305ffd2eb8a68bd0b1939d0e5f21ce8a25c7ab5db0748013d`  
		Last Modified: Fri, 11 Jan 2019 14:54:17 GMT  
		Size: 12.5 MB (12505836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b436f91e147a9071b2e0dde2cd2939f63ead4fffb43f92d4dc8d39aabfad96b`  
		Last Modified: Fri, 11 Jan 2019 14:54:12 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2848e63e536187e58765f167f5d942e58c4ba788373f18053046374337e6a498`  
		Last Modified: Fri, 11 Jan 2019 14:54:16 GMT  
		Size: 15.7 MB (15686833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b45df8623fc8e136011d091ed53d924d6820771d844b4c27843c8aac1a4a6ca6`  
		Last Modified: Fri, 11 Jan 2019 14:54:17 GMT  
		Size: 2.2 KB (2197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02b7d92b09c9e14b62d1c385941eabe813b6b3fb137191d2b3d3b91806481ada`  
		Last Modified: Fri, 11 Jan 2019 14:54:16 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64c2910211b6c9223772e7d9203a87d7f51672460245fe15ecf00277389bdaed`  
		Last Modified: Fri, 11 Jan 2019 14:54:16 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05c168fa999cdfc887e78bdde44218263daedcbffadede3b00c60f680a54c939`  
		Last Modified: Tue, 29 Jan 2019 13:28:21 GMT  
		Size: 623.7 KB (623658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a2241cea4b9b8acae4c1ca72ab984c395dcdcd391cc1e5d1ae64fc4c812600e`  
		Last Modified: Tue, 29 Jan 2019 13:28:21 GMT  
		Size: 8.2 KB (8218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5124e7219d91434265c63088bf1deafc5dc0a97c44d3fe4cf16056a5a3a99ddb`  
		Last Modified: Tue, 29 Jan 2019 13:28:21 GMT  
		Size: 1.3 MB (1333482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fc2b869ab353967ebe6ea47bafe9e2ccedc472ec2997446ff363b951866c923`  
		Last Modified: Tue, 29 Jan 2019 13:28:21 GMT  
		Size: 1.1 KB (1148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postfixadmin:3-fpm`

```console
$ docker pull postfixadmin@sha256:98de6463e9eec0a7c33d11a1cdfed3229fa3660d4d7995ff1f0c90a5cb3d23dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386

### `postfixadmin:3-fpm` - linux; amd64

```console
$ docker pull postfixadmin@sha256:39a7d561a480cc2124f9a2793f011fbe71e96ee2f115fb6b87218181603d2e9d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.7 MB (133654702 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6144d24eecb7005669268d08111323e05892fcd2e1bbdf74d087bb96240973b9`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:32 GMT
ADD file:a65337a57a064a79ad8a3f42e8282b3e01710cb4684ccd880463cc8d2e051fa5 in / 
# Tue, 22 Jan 2019 19:30:32 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 21:46:13 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 22 Jan 2019 21:46:14 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 22 Jan 2019 21:46:46 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 22 Jan 2019 21:46:46 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 22 Jan 2019 21:46:47 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 22 Jan 2019 22:01:33 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Tue, 22 Jan 2019 22:01:34 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 22 Jan 2019 22:01:34 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 22 Jan 2019 22:01:34 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 22 Jan 2019 22:31:46 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Tue, 22 Jan 2019 22:31:46 GMT
ENV PHP_VERSION=7.2.14
# Tue, 22 Jan 2019 22:31:46 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror
# Tue, 22 Jan 2019 22:31:47 GMT
ENV PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f PHP_MD5=
# Tue, 22 Jan 2019 22:31:57 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 22 Jan 2019 22:31:57 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Tue, 22 Jan 2019 22:38:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 22 Jan 2019 22:38:49 GMT
COPY multi:cbc68fef2c8554b9a23fee7eee16ffda927235f929048638240f97172562665c in /usr/local/bin/ 
# Tue, 22 Jan 2019 22:38:49 GMT
RUN docker-php-ext-enable sodium
# Tue, 22 Jan 2019 22:38:50 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 22 Jan 2019 22:38:50 GMT
WORKDIR /var/www/html
# Tue, 22 Jan 2019 22:38:51 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 22 Jan 2019 22:38:51 GMT
EXPOSE 9000
# Tue, 22 Jan 2019 22:38:51 GMT
CMD ["php-fpm"]
# Wed, 23 Jan 2019 11:50:17 GMT
LABEL maintainer=David Goodwin <david@codepoets.co.uk> (@DavidGoodwin)
# Wed, 23 Jan 2019 11:51:12 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 	libpq-dev 	libsqlite3-dev 	; 		docker-php-ext-install 		mysqli 		pdo_mysql 		pdo_pgsql 		pdo_sqlite 		pgsql 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 		ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 			apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 11:51:13 GMT
ARG POSTFIXADMIN_VERSION=3.2
# Wed, 23 Jan 2019 11:51:13 GMT
ARG POSTFIXADMIN_SHA512=9e022e3311bce96342e87925159a048f294ed0e2d4558bd43120b5c6eda35a7a2d128987372d310dfe86680c98a4d8cf3d602afcb20d948c9bba58bed1766560
# Wed, 23 Jan 2019 11:51:13 GMT
ENV POSTFIXADMIN_VERSION=3.2
# Wed, 23 Jan 2019 11:51:13 GMT
ENV POSTFIXADMIN_SHA512=9e022e3311bce96342e87925159a048f294ed0e2d4558bd43120b5c6eda35a7a2d128987372d310dfe86680c98a4d8cf3d602afcb20d948c9bba58bed1766560
# Tue, 29 Jan 2019 00:20:03 GMT
RUN set -eu; 	curl -fsSL -o postfixadmin.tar.gz "https://github.com/postfixadmin/postfixadmin/archive/postfixadmin-${POSTFIXADMIN_VERSION}.tar.gz"; 	echo "$POSTFIXADMIN_SHA512 *postfixadmin.tar.gz" | sha512sum -c -; 	mkdir /usr/src/postfixadmin; 	tar -xf postfixadmin.tar.gz -C /usr/src/postfixadmin --strip-components=1; 	rm postfixadmin.tar.gz; 	mkdir -p /usr/src/postfixadmin/templates_c; 	chown -R www-data:www-data /usr/src/postfixadmin
# Tue, 29 Jan 2019 00:20:03 GMT
COPY file:7b9804d962cc9ab943424976141cd6ab11b4bd5e6f589713aab01e577d18b5e9 in /usr/local/bin/ 
# Tue, 29 Jan 2019 00:20:04 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
# Tue, 29 Jan 2019 00:20:04 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:5e6ec7f28fb77f84f64b8c29fcb0a746260563f5858315e3e9fcc4aee2844840`  
		Last Modified: Tue, 22 Jan 2019 19:37:02 GMT  
		Size: 22.5 MB (22500707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf165947b5b75ef63a7872634239e795a3063179895699dc8e0726f1039946b3`  
		Last Modified: Wed, 23 Jan 2019 01:11:30 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bd37682846da479bcfb64459fa36e043d3380a77b401f6de5b862d00d8dcebf`  
		Last Modified: Wed, 23 Jan 2019 01:11:50 GMT  
		Size: 67.4 MB (67442781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99daf8e838e14fb73055ddac03535d506dbf36a5a01c37497ff001c0dbd68f3e`  
		Last Modified: Wed, 23 Jan 2019 01:11:29 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e5a056cae49034c1e7b05021b61684c6a89b54623e151d23f08cd1b9563a1e2`  
		Last Modified: Wed, 23 Jan 2019 01:13:55 GMT  
		Size: 12.5 MB (12485167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc6a1020a50331bc24372e4053e31efb0de94f161e159ca3740051d1aff8f37a`  
		Last Modified: Wed, 23 Jan 2019 01:13:54 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46ccabdcf8f047560ac869bf36fc64081ef69cdcf8c494c58dc347cd84505d86`  
		Last Modified: Wed, 23 Jan 2019 01:14:00 GMT  
		Size: 28.7 MB (28707660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87e8d1e332d67bea7ddf071e7f040c5ed316ea8ae93c8b0b27b3c9d197b6f3dd`  
		Last Modified: Wed, 23 Jan 2019 01:13:53 GMT  
		Size: 2.2 KB (2193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc6fdf312773ea965552f892d8ec43b0ac9d4d14c42fbf95613cb79d8d7d45a`  
		Last Modified: Wed, 23 Jan 2019 01:13:53 GMT  
		Size: 256.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48dbf73992778e30426b1979163246a78a02ce623134039c1b054da410672cd1`  
		Last Modified: Wed, 23 Jan 2019 01:13:58 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69940737122ab46f2b881c85a6724cabbd2b859e5e06151f8f280633cbe19060`  
		Last Modified: Wed, 23 Jan 2019 01:13:53 GMT  
		Size: 7.8 KB (7805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:611e132390ac6251c41d993b18cd22269ef96c4592dc3d7683e8469490769457`  
		Last Modified: Wed, 23 Jan 2019 11:51:39 GMT  
		Size: 1.2 MB (1172470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13b0a42e07d692ed1b812efe6f0531147dbed21f88389ef2418ffe7f673acded`  
		Last Modified: Tue, 29 Jan 2019 00:20:31 GMT  
		Size: 1.3 MB (1333475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f802133b815035fefe2af54d36b80c2d61b728f12cc2ddeb77a1469f00d1f136`  
		Last Modified: Tue, 29 Jan 2019 00:20:30 GMT  
		Size: 1.1 KB (1148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postfixadmin:3-fpm` - linux; arm64 variant v8

```console
$ docker pull postfixadmin@sha256:70ccff245b98ea734df372bf66bcfb5f15184b17c67f03f37d2bb88ae01ff4b8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.4 MB (120368294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b5191b96712a319280fbda2a4d675ac93f701555ec68ace60e71f96192fb3f1`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 23 Jan 2019 10:04:38 GMT
ADD file:64db5736cabe52ff81a1eb31101c1afa1e4a04374e84ae717532a88286d01784 in / 
# Wed, 23 Jan 2019 10:04:39 GMT
CMD ["bash"]
# Fri, 25 Jan 2019 07:42:45 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Fri, 25 Jan 2019 07:42:46 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 25 Jan 2019 07:44:08 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 25 Jan 2019 07:44:09 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 25 Jan 2019 07:44:11 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 25 Jan 2019 08:02:51 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Fri, 25 Jan 2019 08:02:52 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 25 Jan 2019 08:02:53 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 25 Jan 2019 08:02:53 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 25 Jan 2019 08:41:52 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 25 Jan 2019 08:41:53 GMT
ENV PHP_VERSION=7.2.14
# Fri, 25 Jan 2019 08:41:54 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror
# Fri, 25 Jan 2019 08:41:55 GMT
ENV PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f PHP_MD5=
# Fri, 25 Jan 2019 08:42:43 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 25 Jan 2019 08:42:44 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 25 Jan 2019 08:51:26 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 25 Jan 2019 08:51:27 GMT
COPY multi:cbc68fef2c8554b9a23fee7eee16ffda927235f929048638240f97172562665c in /usr/local/bin/ 
# Fri, 25 Jan 2019 08:51:29 GMT
RUN docker-php-ext-enable sodium
# Fri, 25 Jan 2019 08:51:30 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 25 Jan 2019 08:51:31 GMT
WORKDIR /var/www/html
# Fri, 25 Jan 2019 08:51:32 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 25 Jan 2019 08:51:33 GMT
EXPOSE 9000
# Fri, 25 Jan 2019 08:51:34 GMT
CMD ["php-fpm"]
# Tue, 29 Jan 2019 09:46:51 GMT
LABEL maintainer=David Goodwin <david@codepoets.co.uk> (@DavidGoodwin)
# Tue, 29 Jan 2019 09:48:40 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 	libpq-dev 	libsqlite3-dev 	; 		docker-php-ext-install 		mysqli 		pdo_mysql 		pdo_pgsql 		pdo_sqlite 		pgsql 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 		ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 			apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 09:48:40 GMT
ARG POSTFIXADMIN_VERSION=3.2
# Tue, 29 Jan 2019 09:48:41 GMT
ARG POSTFIXADMIN_SHA512=9e022e3311bce96342e87925159a048f294ed0e2d4558bd43120b5c6eda35a7a2d128987372d310dfe86680c98a4d8cf3d602afcb20d948c9bba58bed1766560
# Tue, 29 Jan 2019 09:48:41 GMT
ENV POSTFIXADMIN_VERSION=3.2
# Tue, 29 Jan 2019 09:48:42 GMT
ENV POSTFIXADMIN_SHA512=9e022e3311bce96342e87925159a048f294ed0e2d4558bd43120b5c6eda35a7a2d128987372d310dfe86680c98a4d8cf3d602afcb20d948c9bba58bed1766560
# Tue, 29 Jan 2019 09:48:46 GMT
RUN set -eu; 	curl -fsSL -o postfixadmin.tar.gz "https://github.com/postfixadmin/postfixadmin/archive/postfixadmin-${POSTFIXADMIN_VERSION}.tar.gz"; 	echo "$POSTFIXADMIN_SHA512 *postfixadmin.tar.gz" | sha512sum -c -; 	mkdir /usr/src/postfixadmin; 	tar -xf postfixadmin.tar.gz -C /usr/src/postfixadmin --strip-components=1; 	rm postfixadmin.tar.gz; 	mkdir -p /usr/src/postfixadmin/templates_c; 	chown -R www-data:www-data /usr/src/postfixadmin
# Tue, 29 Jan 2019 09:48:46 GMT
COPY file:7b9804d962cc9ab943424976141cd6ab11b4bd5e6f589713aab01e577d18b5e9 in /usr/local/bin/ 
# Tue, 29 Jan 2019 09:48:47 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
# Tue, 29 Jan 2019 09:48:47 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:711c3a2baeda87a6b9816cb812388d62d17396034e595a68d8ee5f938f9d77b3`  
		Last Modified: Wed, 23 Jan 2019 10:11:36 GMT  
		Size: 20.4 MB (20350180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a273a3c32232329b60ac83d95b6b7744068016759eaf8675589b9dc5b50513b`  
		Last Modified: Fri, 25 Jan 2019 10:11:35 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dbe9d898f22bebde12a9a3868aa7520c4c2250ceae00fa9153248c8f82e5d7b`  
		Last Modified: Fri, 25 Jan 2019 10:12:06 GMT  
		Size: 57.6 MB (57606166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac488f1008ef7811391ec1a02a19be84173ce484a25e46f7f4641ebbce8fcbec`  
		Last Modified: Fri, 25 Jan 2019 10:11:35 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfa534adc3a2f713bf275b6e7c26a499bdcb43e0862c0ddb87eb1fb90bad84e8`  
		Last Modified: Fri, 25 Jan 2019 10:16:09 GMT  
		Size: 12.5 MB (12483285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9712aa2898758460cb55b44ec230d13c9c394df9e6d31b264d25f126c86197e1`  
		Last Modified: Fri, 25 Jan 2019 10:16:06 GMT  
		Size: 502.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2002e802922a8dd6eb82056929a53fb9f850ba65890f9947a4b310a0da3c030b`  
		Last Modified: Fri, 25 Jan 2019 10:16:24 GMT  
		Size: 27.5 MB (27481239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:589f8777b903614efabcc49f983c7a8cb853513e2bcaf0154e78868539dc15c3`  
		Last Modified: Fri, 25 Jan 2019 10:16:04 GMT  
		Size: 2.2 KB (2192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2c8560ad21409ad1f508410d4607890664ca305e04b414d8e2741d50a89b2cb`  
		Last Modified: Fri, 25 Jan 2019 10:16:04 GMT  
		Size: 261.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dab9989ff7fd577b340f2b3a9845bf3e505b77030c80347c02c28cf63bae9e8a`  
		Last Modified: Fri, 25 Jan 2019 10:16:04 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf0a60387f185d3098475fd316580432657b9211016fafe393c0b6ca16a8ea1a`  
		Last Modified: Fri, 25 Jan 2019 10:16:04 GMT  
		Size: 7.8 KB (7805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55d78c55ff7a7372dfae6d86a14867333078f2b51c5c1d8c22d3ba696490d64b`  
		Last Modified: Tue, 29 Jan 2019 09:51:17 GMT  
		Size: 1.1 MB (1101505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f15e00388320cf08f0b01870017cd503cf106e12ff006241652e5fa96e707ff9`  
		Last Modified: Tue, 29 Jan 2019 09:51:17 GMT  
		Size: 1.3 MB (1333472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab2d79742e08bffdb0529dc115af01f94966d1783ef5fed8399ecd481337f15e`  
		Last Modified: Tue, 29 Jan 2019 09:51:16 GMT  
		Size: 1.1 KB (1147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postfixadmin:3-fpm` - linux; 386

```console
$ docker pull postfixadmin@sha256:93745b4d318f3893d80e127697e855807e8711a828c153f4f8ae6f85bbcc7cde
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.0 MB (139028943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cf52a767394ff979e0be5e1a8d62fcb36b57a50a433fec87d80c5faf8e36707`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint.sh"]`
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
# Sat, 29 Dec 2018 22:11:26 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 11 Jan 2019 12:54:26 GMT
ENV PHP_VERSION=7.2.14
# Fri, 11 Jan 2019 12:54:26 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror
# Fri, 11 Jan 2019 12:54:26 GMT
ENV PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f PHP_MD5=
# Fri, 11 Jan 2019 12:54:36 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 11 Jan 2019 12:54:36 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 11 Jan 2019 13:00:04 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 11 Jan 2019 13:00:05 GMT
COPY multi:cbc68fef2c8554b9a23fee7eee16ffda927235f929048638240f97172562665c in /usr/local/bin/ 
# Fri, 11 Jan 2019 13:00:05 GMT
RUN docker-php-ext-enable sodium
# Fri, 11 Jan 2019 13:00:05 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 11 Jan 2019 13:00:06 GMT
WORKDIR /var/www/html
# Fri, 11 Jan 2019 13:00:06 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 11 Jan 2019 13:00:07 GMT
EXPOSE 9000
# Fri, 11 Jan 2019 13:00:07 GMT
CMD ["php-fpm"]
# Tue, 29 Jan 2019 13:26:39 GMT
LABEL maintainer=David Goodwin <david@codepoets.co.uk> (@DavidGoodwin)
# Tue, 29 Jan 2019 13:27:24 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 	libpq-dev 	libsqlite3-dev 	; 		docker-php-ext-install 		mysqli 		pdo_mysql 		pdo_pgsql 		pdo_sqlite 		pgsql 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 		ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 			apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 13:27:24 GMT
ARG POSTFIXADMIN_VERSION=3.2
# Tue, 29 Jan 2019 13:27:25 GMT
ARG POSTFIXADMIN_SHA512=9e022e3311bce96342e87925159a048f294ed0e2d4558bd43120b5c6eda35a7a2d128987372d310dfe86680c98a4d8cf3d602afcb20d948c9bba58bed1766560
# Tue, 29 Jan 2019 13:27:25 GMT
ENV POSTFIXADMIN_VERSION=3.2
# Tue, 29 Jan 2019 13:27:25 GMT
ENV POSTFIXADMIN_SHA512=9e022e3311bce96342e87925159a048f294ed0e2d4558bd43120b5c6eda35a7a2d128987372d310dfe86680c98a4d8cf3d602afcb20d948c9bba58bed1766560
# Tue, 29 Jan 2019 13:27:26 GMT
RUN set -eu; 	curl -fsSL -o postfixadmin.tar.gz "https://github.com/postfixadmin/postfixadmin/archive/postfixadmin-${POSTFIXADMIN_VERSION}.tar.gz"; 	echo "$POSTFIXADMIN_SHA512 *postfixadmin.tar.gz" | sha512sum -c -; 	mkdir /usr/src/postfixadmin; 	tar -xf postfixadmin.tar.gz -C /usr/src/postfixadmin --strip-components=1; 	rm postfixadmin.tar.gz; 	mkdir -p /usr/src/postfixadmin/templates_c; 	chown -R www-data:www-data /usr/src/postfixadmin
# Tue, 29 Jan 2019 13:27:26 GMT
COPY file:7b9804d962cc9ab943424976141cd6ab11b4bd5e6f589713aab01e577d18b5e9 in /usr/local/bin/ 
# Tue, 29 Jan 2019 13:27:26 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
# Tue, 29 Jan 2019 13:27:27 GMT
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
	-	`sha256:2f96c042f31352ffc4706d54dd5e87a2e4f9502aa22ab1a495d43088b47d8d4c`  
		Last Modified: Fri, 11 Jan 2019 14:54:27 GMT  
		Size: 12.5 MB (12484697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c48899a82e4ff4a06d3fe22e3b19d8487b872aab41540f5e8a3b8b96f0fa6fe`  
		Last Modified: Fri, 11 Jan 2019 14:54:26 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb564ff7a873d5c5065ad5333c5bc35a0ccf44be3e542bef90fd6bcedce00417`  
		Last Modified: Fri, 11 Jan 2019 14:54:32 GMT  
		Size: 29.3 MB (29332789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2679b31a3bde8a45d1ef9e44f3bb3a7381ffe8cb994738674cac4cc92c8bc32d`  
		Last Modified: Fri, 11 Jan 2019 14:54:25 GMT  
		Size: 2.2 KB (2189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:618cc564acfe7a10b6ed49868a21c4b895588acef6a135912122f103d3f33567`  
		Last Modified: Fri, 11 Jan 2019 14:54:25 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:418806b632b4a50647c6e7c2bfb6dd19ad2daa5023b8be70e9d3e615d318f040`  
		Last Modified: Fri, 11 Jan 2019 14:54:25 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:333219bdf344bcf1ddfd7a0f198febcf422a761618cd75b05f7881552e764252`  
		Last Modified: Fri, 11 Jan 2019 14:54:25 GMT  
		Size: 7.8 KB (7801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ee938520f891c2407d425529da547f39ddbca3b44e2a463726f10f97aa9d778`  
		Last Modified: Tue, 29 Jan 2019 13:28:31 GMT  
		Size: 1.2 MB (1228652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1fe511052c16de8a4b7c95b36bae22b272a707d75d6b315332186056915de4e`  
		Last Modified: Tue, 29 Jan 2019 13:28:31 GMT  
		Size: 1.3 MB (1333472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf09694b68cfd33dd9b15fadf30af6218564a8d788dea6c51987f427cff36815`  
		Last Modified: Tue, 29 Jan 2019 13:28:30 GMT  
		Size: 1.1 KB (1147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postfixadmin:3-fpm-alpine`

```console
$ docker pull postfixadmin@sha256:14b40b7645069be3da78dad5b70551670c896fb5570ff8c43d13458beaf22b4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386

### `postfixadmin:3-fpm-alpine` - linux; amd64

```console
$ docker pull postfixadmin@sha256:713fb3fdda7db842697f63ab8853e8ae614046f6f2c73a222cdb844f30067bc8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.4 MB (37370937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c0a33dda5e64b0d16af13effdabc8434ee0aa2be66addf922e7bc64dc9d766a`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Thu, 31 Jan 2019 00:20:36 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 31 Jan 2019 00:20:38 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Thu, 31 Jan 2019 00:20:39 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Thu, 31 Jan 2019 00:20:39 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 31 Jan 2019 00:20:40 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 31 Jan 2019 00:27:08 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Thu, 31 Jan 2019 00:27:09 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 31 Jan 2019 00:27:09 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 31 Jan 2019 00:27:09 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 31 Jan 2019 00:47:44 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Thu, 31 Jan 2019 00:47:44 GMT
ENV PHP_VERSION=7.2.14
# Thu, 31 Jan 2019 00:47:44 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror
# Thu, 31 Jan 2019 00:47:44 GMT
ENV PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f PHP_MD5=
# Thu, 31 Jan 2019 00:47:49 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Thu, 31 Jan 2019 00:47:49 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Thu, 31 Jan 2019 00:53:59 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libsodium-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 31 Jan 2019 00:53:59 GMT
COPY multi:cbc68fef2c8554b9a23fee7eee16ffda927235f929048638240f97172562665c in /usr/local/bin/ 
# Thu, 31 Jan 2019 00:54:00 GMT
RUN docker-php-ext-enable sodium
# Thu, 31 Jan 2019 00:54:00 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 31 Jan 2019 00:54:01 GMT
WORKDIR /var/www/html
# Thu, 31 Jan 2019 00:54:01 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Thu, 31 Jan 2019 00:54:02 GMT
EXPOSE 9000
# Thu, 31 Jan 2019 00:54:02 GMT
CMD ["php-fpm"]
# Thu, 31 Jan 2019 03:17:32 GMT
LABEL maintainer=David Goodwin <david@codepoets.co.uk> (@DavidGoodwin)
# Thu, 31 Jan 2019 03:17:33 GMT
RUN apk add --no-cache 		bash 		coreutils
# Thu, 31 Jan 2019 03:18:06 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		sqlite-dev 		postgresql-dev 	; 	docker-php-ext-install 		mysqli 		pdo_mysql 		pdo_pgsql 		pdo_sqlite 		pgsql 	; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .postfixadmin-phpexts-rundeps $runDeps; 	apk del .build-deps
# Thu, 31 Jan 2019 03:18:06 GMT
ARG POSTFIXADMIN_VERSION=3.2
# Thu, 31 Jan 2019 03:18:07 GMT
ARG POSTFIXADMIN_SHA512=9e022e3311bce96342e87925159a048f294ed0e2d4558bd43120b5c6eda35a7a2d128987372d310dfe86680c98a4d8cf3d602afcb20d948c9bba58bed1766560
# Thu, 31 Jan 2019 03:18:07 GMT
ENV POSTFIXADMIN_VERSION=3.2
# Thu, 31 Jan 2019 03:18:07 GMT
ENV POSTFIXADMIN_SHA512=9e022e3311bce96342e87925159a048f294ed0e2d4558bd43120b5c6eda35a7a2d128987372d310dfe86680c98a4d8cf3d602afcb20d948c9bba58bed1766560
# Thu, 31 Jan 2019 03:18:08 GMT
RUN set -eu; 	curl -fsSL -o postfixadmin.tar.gz "https://github.com/postfixadmin/postfixadmin/archive/postfixadmin-${POSTFIXADMIN_VERSION}.tar.gz"; 	echo "$POSTFIXADMIN_SHA512 *postfixadmin.tar.gz" | sha512sum -c -; 	mkdir /usr/src/postfixadmin; 	tar -xf postfixadmin.tar.gz -C /usr/src/postfixadmin --strip-components=1; 	rm postfixadmin.tar.gz; 	mkdir -p /usr/src/postfixadmin/templates_c; 	chown -R www-data:www-data /usr/src/postfixadmin
# Thu, 31 Jan 2019 03:18:08 GMT
COPY file:7b9804d962cc9ab943424976141cd6ab11b4bd5e6f589713aab01e577d18b5e9 in /usr/local/bin/ 
# Thu, 31 Jan 2019 03:18:08 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
# Thu, 31 Jan 2019 03:18:09 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ba0d98519aaeb7e9f907b28d10dc5fe17def3fe18221465a5d99d79c2f9f3e2`  
		Last Modified: Thu, 31 Jan 2019 01:42:20 GMT  
		Size: 1.4 MB (1357252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75f762bbc102cc1ab5ed220ac6a99fea476cbb574069cf7deb662ac3d04c02ad`  
		Last Modified: Thu, 31 Jan 2019 01:42:18 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04f939cd9fe58bc13d88c8dddcb194752f936dd6acbeca7a6f35cd5ab62d8762`  
		Last Modified: Thu, 31 Jan 2019 01:42:18 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40df79071b61850039421ef4f84fba6a727741d3c0e10e821f365297888b5449`  
		Last Modified: Thu, 31 Jan 2019 01:43:37 GMT  
		Size: 12.2 MB (12176078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bec25f0cd096f1f11ad4d68b4b0ba4ec3e59dbeb3c84b6c68c360fcd6d1f9167`  
		Last Modified: Thu, 31 Jan 2019 01:43:35 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:029b01defb67a82864802e781ff178f1a0fc1db2032c370b47022686d621ae49`  
		Last Modified: Thu, 31 Jan 2019 01:43:40 GMT  
		Size: 15.9 MB (15850538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a134d99ba2a7a7bba61f81dbd0d547f5758a54c91caca7181da076b332faa866`  
		Last Modified: Thu, 31 Jan 2019 01:43:34 GMT  
		Size: 2.2 KB (2176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7a62b5c54cca9a8d9c0c6e553a87cb94b16d3be463c51f2d1fe26c7044f08b3`  
		Last Modified: Thu, 31 Jan 2019 01:43:34 GMT  
		Size: 71.8 KB (71842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd5dd98188d03e3161ca09def3947127100418054e37e7c8fbc7a4d3c9b15ccf`  
		Last Modified: Thu, 31 Jan 2019 01:43:34 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dff9e3e36d8c7623a7522c91f7e284be1a9ace494327ddb13b1dfa524f09901`  
		Last Modified: Thu, 31 Jan 2019 01:43:34 GMT  
		Size: 7.8 KB (7781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34e48c3e0d969abf3059775328765671881b49bc311a94edad4981c9b2087235`  
		Last Modified: Thu, 31 Jan 2019 03:18:24 GMT  
		Size: 1.1 MB (1132763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17b8888a2ab372f40a08abaf272e3f5250bc6cbdd929cb806326f8a1b2fab075`  
		Last Modified: Thu, 31 Jan 2019 03:18:25 GMT  
		Size: 3.2 MB (3228796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e16c4a7a67f47c020a808b4766761d40934f8d80805a67a8b6b3c756c14b5ae5`  
		Last Modified: Thu, 31 Jan 2019 03:18:24 GMT  
		Size: 1.3 MB (1333492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:137a801a9b45583ab8eb2b8414255fee6d504e75401cc748c2a015a686d62c32`  
		Last Modified: Thu, 31 Jan 2019 03:18:24 GMT  
		Size: 1.1 KB (1135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postfixadmin:3-fpm-alpine` - linux; arm64 variant v8

```console
$ docker pull postfixadmin@sha256:ee59f287fd4a8741503ea6e0739549c073484394b904ab7ca666f8cdd2907cca
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.8 MB (35805864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c7598e917e4f374e370547b13a77d095a1daedfd4726fdea4ed229d01fdf6ec`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 12:10:06 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 21 Dec 2018 12:10:08 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Fri, 21 Dec 2018 12:10:11 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 21 Dec 2018 12:10:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 21 Dec 2018 12:10:13 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 21 Dec 2018 12:19:38 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Fri, 21 Dec 2018 12:19:39 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 21 Dec 2018 12:19:40 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 21 Dec 2018 12:19:40 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 21 Dec 2018 12:51:23 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 11 Jan 2019 12:05:25 GMT
ENV PHP_VERSION=7.2.14
# Fri, 11 Jan 2019 12:05:26 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror
# Fri, 11 Jan 2019 12:05:26 GMT
ENV PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f PHP_MD5=
# Fri, 11 Jan 2019 12:05:38 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 11 Jan 2019 12:05:39 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 11 Jan 2019 12:12:27 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libsodium-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 11 Jan 2019 12:12:28 GMT
COPY multi:cbc68fef2c8554b9a23fee7eee16ffda927235f929048638240f97172562665c in /usr/local/bin/ 
# Fri, 11 Jan 2019 12:12:30 GMT
RUN docker-php-ext-enable sodium
# Fri, 11 Jan 2019 12:12:31 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 11 Jan 2019 12:12:32 GMT
WORKDIR /var/www/html
# Fri, 11 Jan 2019 12:12:33 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 11 Jan 2019 12:12:34 GMT
EXPOSE 9000
# Fri, 11 Jan 2019 12:12:35 GMT
CMD ["php-fpm"]
# Tue, 29 Jan 2019 09:48:52 GMT
LABEL maintainer=David Goodwin <david@codepoets.co.uk> (@DavidGoodwin)
# Tue, 29 Jan 2019 09:48:55 GMT
RUN apk add --no-cache 		bash 		coreutils
# Tue, 29 Jan 2019 09:50:13 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		sqlite-dev 		postgresql-dev 	; 	docker-php-ext-install 		mysqli 		pdo_mysql 		pdo_pgsql 		pdo_sqlite 		pgsql 	; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .postfixadmin-phpexts-rundeps $runDeps; 	apk del .build-deps
# Tue, 29 Jan 2019 09:50:14 GMT
ARG POSTFIXADMIN_VERSION=3.2
# Tue, 29 Jan 2019 09:50:15 GMT
ARG POSTFIXADMIN_SHA512=9e022e3311bce96342e87925159a048f294ed0e2d4558bd43120b5c6eda35a7a2d128987372d310dfe86680c98a4d8cf3d602afcb20d948c9bba58bed1766560
# Tue, 29 Jan 2019 09:50:15 GMT
ENV POSTFIXADMIN_VERSION=3.2
# Tue, 29 Jan 2019 09:50:16 GMT
ENV POSTFIXADMIN_SHA512=9e022e3311bce96342e87925159a048f294ed0e2d4558bd43120b5c6eda35a7a2d128987372d310dfe86680c98a4d8cf3d602afcb20d948c9bba58bed1766560
# Tue, 29 Jan 2019 09:50:19 GMT
RUN set -eu; 	curl -fsSL -o postfixadmin.tar.gz "https://github.com/postfixadmin/postfixadmin/archive/postfixadmin-${POSTFIXADMIN_VERSION}.tar.gz"; 	echo "$POSTFIXADMIN_SHA512 *postfixadmin.tar.gz" | sha512sum -c -; 	mkdir /usr/src/postfixadmin; 	tar -xf postfixadmin.tar.gz -C /usr/src/postfixadmin --strip-components=1; 	rm postfixadmin.tar.gz; 	mkdir -p /usr/src/postfixadmin/templates_c; 	chown -R www-data:www-data /usr/src/postfixadmin
# Tue, 29 Jan 2019 09:50:20 GMT
COPY file:7b9804d962cc9ab943424976141cd6ab11b4bd5e6f589713aab01e577d18b5e9 in /usr/local/bin/ 
# Tue, 29 Jan 2019 09:50:21 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
# Tue, 29 Jan 2019 09:50:22 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:e3c488b39803d9194cf010f6127b1121d5387b90a1562d44b50b749d0e7a69bf`  
		Last Modified: Fri, 21 Dec 2018 09:43:51 GMT  
		Size: 2.1 MB (2099839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a63128803b1ea223f87244cb8d3faa97817f6cf3ca8249e485430218758510`  
		Last Modified: Fri, 21 Dec 2018 09:43:50 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73bf4a12ae92b20610d889c240ddcd72b338a21e3fa4f3d6c077d9fcad3566f1`  
		Last Modified: Fri, 21 Dec 2018 14:38:54 GMT  
		Size: 1.3 MB (1274014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf309e8a13c2d5f8e92a71c30f189658629d7079402a4dbd6c42d8a5302b755e`  
		Last Modified: Fri, 21 Dec 2018 14:38:54 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2290f763cb3e9ff58547451226cdcbb3b5083ab00da970fb03b03604c2c78716`  
		Last Modified: Fri, 21 Dec 2018 14:38:53 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08ff3daeaeb2c6f80e985fe6a65ebcf4c174894b1111553a77038b106db4dfa4`  
		Last Modified: Fri, 11 Jan 2019 13:30:07 GMT  
		Size: 12.2 MB (12176103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f415816cc27b5f850a1475f2264f6b325f08fddb036f2a484f1c38cee60562d8`  
		Last Modified: Fri, 11 Jan 2019 13:30:05 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0d8dfc978e0329562a72d717cad6d3114bd6a2a392d761a2bda797f0476f485`  
		Last Modified: Fri, 11 Jan 2019 13:30:12 GMT  
		Size: 14.7 MB (14694310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d42bfc57b96f2b8d3a77f54cf48ff03022b5bdf4581f96b39b42328593a847c`  
		Last Modified: Fri, 11 Jan 2019 13:30:03 GMT  
		Size: 2.2 KB (2176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d3ef9fa25c04f4c400cff945c823594bce0253ba6e692c7ebf62d8d23a63d2d`  
		Last Modified: Fri, 11 Jan 2019 13:30:03 GMT  
		Size: 70.9 KB (70866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdd07133ba580f4b004c26bffcdf7cb09e1ec7a007886f3759a8313202efab70`  
		Last Modified: Fri, 11 Jan 2019 13:30:03 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f39c56929428921ec4c76fd858639f743ade99b41aaaa8e894727a2ea43dd5f`  
		Last Modified: Fri, 11 Jan 2019 13:30:03 GMT  
		Size: 7.8 KB (7782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfea3a62d4a76c95659011feac528a7d090b99189d9271c475de41dfe150acdc`  
		Last Modified: Tue, 29 Jan 2019 09:51:30 GMT  
		Size: 1.1 MB (1075310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa820313885652a002eb63e952b026e59e78f88fa85ae7c843174ea8cbfa1349`  
		Last Modified: Tue, 29 Jan 2019 09:51:30 GMT  
		Size: 3.1 MB (3068614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4516ef42f3e7f28dd9276a718b3d52f24e4f5068d505bb5f73d7b963df339a75`  
		Last Modified: Tue, 29 Jan 2019 09:51:30 GMT  
		Size: 1.3 MB (1333491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6d80171691987f96a32a37df75921ba559f6951ba78763aa20c585150981f1e`  
		Last Modified: Tue, 29 Jan 2019 09:51:29 GMT  
		Size: 1.1 KB (1138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postfixadmin:3-fpm-alpine` - linux; 386

```console
$ docker pull postfixadmin@sha256:c13278d1e30fd4a89ee86a9c36fb3844d3dbd7d8e8196bbd9da6564e4c4918c7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 MB (38208339 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96a5ba53918733e73abe9b2a438392fedeed60088afce35620dc5d120a39e5fe`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 21 Dec 2018 11:40:13 GMT
ADD file:38576b24298c124265c8fffb7bc8fdb0c144d99dcce4e9942bdcceb936830ba6 in / 
# Fri, 21 Dec 2018 11:40:14 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 11:40:14 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 12:26:09 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 21 Dec 2018 12:26:10 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Fri, 21 Dec 2018 12:26:11 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 21 Dec 2018 12:26:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 21 Dec 2018 12:26:12 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 21 Dec 2018 12:32:56 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Fri, 21 Dec 2018 12:32:56 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 21 Dec 2018 12:32:56 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 21 Dec 2018 12:32:56 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 21 Dec 2018 12:53:43 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 11 Jan 2019 13:12:03 GMT
ENV PHP_VERSION=7.2.14
# Fri, 11 Jan 2019 13:12:03 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror
# Fri, 11 Jan 2019 13:12:03 GMT
ENV PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f PHP_MD5=
# Fri, 11 Jan 2019 13:12:08 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 11 Jan 2019 13:12:08 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 11 Jan 2019 13:17:40 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libsodium-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 11 Jan 2019 13:17:41 GMT
COPY multi:cbc68fef2c8554b9a23fee7eee16ffda927235f929048638240f97172562665c in /usr/local/bin/ 
# Fri, 11 Jan 2019 13:17:42 GMT
RUN docker-php-ext-enable sodium
# Fri, 11 Jan 2019 13:17:42 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 11 Jan 2019 13:17:42 GMT
WORKDIR /var/www/html
# Fri, 11 Jan 2019 13:17:43 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 11 Jan 2019 13:17:43 GMT
EXPOSE 9000
# Fri, 11 Jan 2019 13:17:43 GMT
CMD ["php-fpm"]
# Tue, 29 Jan 2019 13:27:31 GMT
LABEL maintainer=David Goodwin <david@codepoets.co.uk> (@DavidGoodwin)
# Tue, 29 Jan 2019 13:27:32 GMT
RUN apk add --no-cache 		bash 		coreutils
# Tue, 29 Jan 2019 13:28:04 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		sqlite-dev 		postgresql-dev 	; 	docker-php-ext-install 		mysqli 		pdo_mysql 		pdo_pgsql 		pdo_sqlite 		pgsql 	; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .postfixadmin-phpexts-rundeps $runDeps; 	apk del .build-deps
# Tue, 29 Jan 2019 13:28:04 GMT
ARG POSTFIXADMIN_VERSION=3.2
# Tue, 29 Jan 2019 13:28:04 GMT
ARG POSTFIXADMIN_SHA512=9e022e3311bce96342e87925159a048f294ed0e2d4558bd43120b5c6eda35a7a2d128987372d310dfe86680c98a4d8cf3d602afcb20d948c9bba58bed1766560
# Tue, 29 Jan 2019 13:28:05 GMT
ENV POSTFIXADMIN_VERSION=3.2
# Tue, 29 Jan 2019 13:28:05 GMT
ENV POSTFIXADMIN_SHA512=9e022e3311bce96342e87925159a048f294ed0e2d4558bd43120b5c6eda35a7a2d128987372d310dfe86680c98a4d8cf3d602afcb20d948c9bba58bed1766560
# Tue, 29 Jan 2019 13:28:06 GMT
RUN set -eu; 	curl -fsSL -o postfixadmin.tar.gz "https://github.com/postfixadmin/postfixadmin/archive/postfixadmin-${POSTFIXADMIN_VERSION}.tar.gz"; 	echo "$POSTFIXADMIN_SHA512 *postfixadmin.tar.gz" | sha512sum -c -; 	mkdir /usr/src/postfixadmin; 	tar -xf postfixadmin.tar.gz -C /usr/src/postfixadmin --strip-components=1; 	rm postfixadmin.tar.gz; 	mkdir -p /usr/src/postfixadmin/templates_c; 	chown -R www-data:www-data /usr/src/postfixadmin
# Tue, 29 Jan 2019 13:28:06 GMT
COPY file:7b9804d962cc9ab943424976141cd6ab11b4bd5e6f589713aab01e577d18b5e9 in /usr/local/bin/ 
# Tue, 29 Jan 2019 13:28:06 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
# Tue, 29 Jan 2019 13:28:07 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:25bcd1068fdd02354e6b3fb4ebbad1a9c1df7f5ec2d61aa88a337345415dc102`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 2.3 MB (2271567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795c3ef9c057ef60e7a4a088655adecaccd21d68099ad1f654bccd015ab319da`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4811baf1f023d21ea625c97101dbaffec612a7fc948ff1d9f1e85badb90282f7`  
		Last Modified: Fri, 21 Dec 2018 14:03:58 GMT  
		Size: 1.5 MB (1453187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66ce10d169b702fb314523985cab18b12c3d56cf08f625154b27d0847e96f089`  
		Last Modified: Fri, 21 Dec 2018 14:03:58 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a89858ddd116f7d2220d5ff7f60ae246411089bb3c686a47294192ef6b55c9d`  
		Last Modified: Fri, 21 Dec 2018 14:03:57 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6043e2c76dbe219109f72235280314072a2217eda96687558d21f8578b3e75ef`  
		Last Modified: Fri, 11 Jan 2019 14:55:05 GMT  
		Size: 12.2 MB (12176111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8440fdedbe0046ed87adf69105b08c449aba4d3bd3c0793adab9f7ff3440694b`  
		Last Modified: Fri, 11 Jan 2019 14:55:04 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8d4733b5cfb1cb0069daa62cf9f209df0ba5b2b750b083d4c5bb84ea8464a8b`  
		Last Modified: Fri, 11 Jan 2019 14:55:08 GMT  
		Size: 16.3 MB (16308650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d841e9114fbd446750277075cec7238a8d521ba32770dc463d8e70b18faf0b5`  
		Last Modified: Fri, 11 Jan 2019 14:55:03 GMT  
		Size: 2.2 KB (2176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aa176c23e31bd93ed00c94293dc542732e58fe45a9a7eb7f7d5d2c41c5a5635`  
		Last Modified: Fri, 11 Jan 2019 14:55:03 GMT  
		Size: 71.0 KB (70990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69278d1d66b65f5c197afc970ea16254f399f69909a42e58aa644f7e5c4a0b22`  
		Last Modified: Fri, 11 Jan 2019 14:55:03 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78d76d1e33feaf865d85eda3797a826c94470919951a86586780f337bae702c3`  
		Last Modified: Fri, 11 Jan 2019 14:55:03 GMT  
		Size: 7.8 KB (7782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2900294b4c7d547d39757b877982cbb6d72fdbce470ad9bd0e60040eff70614e`  
		Last Modified: Tue, 29 Jan 2019 13:28:36 GMT  
		Size: 1.2 MB (1215976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35e9bda408e7db0088f5bf8f376c0d2c2ce20e42e7c1b2058944a5c9c2fb360`  
		Last Modified: Tue, 29 Jan 2019 13:28:37 GMT  
		Size: 3.4 MB (3365056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a84f839bc52a26f5e41c8cfd80992c28bbf0ca536da88ce404cedc7a1e6b291`  
		Last Modified: Tue, 29 Jan 2019 13:28:37 GMT  
		Size: 1.3 MB (1333485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb98f498adca6b0ff77d5e79af43f086f2fc21143fecd4b1617fc8caedc3444e`  
		Last Modified: Tue, 29 Jan 2019 13:28:36 GMT  
		Size: 1.1 KB (1136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postfixadmin:apache`

```console
$ docker pull postfixadmin@sha256:a1bda52b53279ac7c112bcebee006a4dc48b11b753cc165922e53eb9571bc029
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386

### `postfixadmin:apache` - linux; amd64

```console
$ docker pull postfixadmin@sha256:3ed2a11058d1d9d2e4ea17c24d3f18037d0541303b02a3bd440551ca03fc5438
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.8 MB (136782618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:688e2e24625f75280ef824ad4c2987fb95aff52282aa6c3787ce5cd87072fe56`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:32 GMT
ADD file:a65337a57a064a79ad8a3f42e8282b3e01710cb4684ccd880463cc8d2e051fa5 in / 
# Tue, 22 Jan 2019 19:30:32 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 21:46:13 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 22 Jan 2019 21:46:14 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 22 Jan 2019 21:46:46 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 22 Jan 2019 21:46:46 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 22 Jan 2019 21:46:47 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 22 Jan 2019 21:56:16 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 21:56:16 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 22 Jan 2019 21:56:16 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 22 Jan 2019 21:56:17 GMT
RUN set -eux; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Tue, 22 Jan 2019 21:56:19 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 22 Jan 2019 21:56:20 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 22 Jan 2019 21:56:20 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 22 Jan 2019 21:56:20 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Tue, 22 Jan 2019 21:56:21 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 22 Jan 2019 21:56:21 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 22 Jan 2019 21:56:21 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 22 Jan 2019 22:27:31 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Tue, 22 Jan 2019 22:27:31 GMT
ENV PHP_VERSION=7.2.14
# Tue, 22 Jan 2019 22:27:31 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror
# Tue, 22 Jan 2019 22:27:32 GMT
ENV PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f PHP_MD5=
# Tue, 22 Jan 2019 22:27:43 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 22 Jan 2019 22:27:43 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Tue, 22 Jan 2019 22:31:33 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 22 Jan 2019 22:31:33 GMT
COPY multi:0a6fe33cb39694994fa567c75b399b9aa5e477c8770caa9f731607a72819b457 in /usr/local/bin/ 
# Tue, 22 Jan 2019 22:31:34 GMT
RUN docker-php-ext-enable sodium
# Tue, 22 Jan 2019 22:31:34 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 22 Jan 2019 22:31:35 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Tue, 22 Jan 2019 22:31:35 GMT
WORKDIR /var/www/html
# Tue, 22 Jan 2019 22:31:35 GMT
EXPOSE 80
# Tue, 22 Jan 2019 22:31:35 GMT
CMD ["apache2-foreground"]
# Wed, 23 Jan 2019 11:49:14 GMT
LABEL maintainer=David Goodwin <david@codepoets.co.uk> (@DavidGoodwin)
# Wed, 23 Jan 2019 11:50:06 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 	libpq-dev 	libsqlite3-dev 	; 		docker-php-ext-install 		mysqli 		pdo_mysql 		pdo_pgsql 		pdo_sqlite 		pgsql 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 		ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 			apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 11:50:06 GMT
ARG POSTFIXADMIN_VERSION=3.2
# Wed, 23 Jan 2019 11:50:06 GMT
ARG POSTFIXADMIN_SHA512=9e022e3311bce96342e87925159a048f294ed0e2d4558bd43120b5c6eda35a7a2d128987372d310dfe86680c98a4d8cf3d602afcb20d948c9bba58bed1766560
# Wed, 23 Jan 2019 11:50:06 GMT
ENV POSTFIXADMIN_VERSION=3.2
# Wed, 23 Jan 2019 11:50:06 GMT
ENV POSTFIXADMIN_SHA512=9e022e3311bce96342e87925159a048f294ed0e2d4558bd43120b5c6eda35a7a2d128987372d310dfe86680c98a4d8cf3d602afcb20d948c9bba58bed1766560
# Wed, 23 Jan 2019 11:50:07 GMT
ENV APACHE_DOCUMENT_ROOT=/var/www/html/public
# Wed, 23 Jan 2019 11:50:07 GMT
RUN set -eu; sed -ri -e 's!/var/www/html!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/sites-available/*.conf; 	sed -ri -e 's!/var/www/!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/apache2.conf /etc/apache2/conf-available/*.conf
# Tue, 29 Jan 2019 00:19:57 GMT
RUN set -eu; 	curl -fsSL -o postfixadmin.tar.gz "https://github.com/postfixadmin/postfixadmin/archive/postfixadmin-${POSTFIXADMIN_VERSION}.tar.gz"; 	echo "$POSTFIXADMIN_SHA512 *postfixadmin.tar.gz" | sha512sum -c -; 	mkdir /usr/src/postfixadmin; 	tar -xf postfixadmin.tar.gz -C /usr/src/postfixadmin --strip-components=1; 	rm postfixadmin.tar.gz; 	mkdir -p /usr/src/postfixadmin/templates_c; 	chown -R www-data:www-data /usr/src/postfixadmin
# Tue, 29 Jan 2019 00:19:57 GMT
COPY file:7b9804d962cc9ab943424976141cd6ab11b4bd5e6f589713aab01e577d18b5e9 in /usr/local/bin/ 
# Tue, 29 Jan 2019 00:19:57 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
# Tue, 29 Jan 2019 00:19:58 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:5e6ec7f28fb77f84f64b8c29fcb0a746260563f5858315e3e9fcc4aee2844840`  
		Last Modified: Tue, 22 Jan 2019 19:37:02 GMT  
		Size: 22.5 MB (22500707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf165947b5b75ef63a7872634239e795a3063179895699dc8e0726f1039946b3`  
		Last Modified: Wed, 23 Jan 2019 01:11:30 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bd37682846da479bcfb64459fa36e043d3380a77b401f6de5b862d00d8dcebf`  
		Last Modified: Wed, 23 Jan 2019 01:11:50 GMT  
		Size: 67.4 MB (67442781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99daf8e838e14fb73055ddac03535d506dbf36a5a01c37497ff001c0dbd68f3e`  
		Last Modified: Wed, 23 Jan 2019 01:11:29 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae320713efba9e138236c82142d67bd9d5f05ef4d4a3de877e7aa27d1456ce3e`  
		Last Modified: Wed, 23 Jan 2019 01:12:17 GMT  
		Size: 17.1 MB (17128043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebcb99c48d8c8dd49d64a2d097966dacca7117b4381a54b6835b0afa487e9814`  
		Last Modified: Wed, 23 Jan 2019 01:12:12 GMT  
		Size: 1.3 KB (1337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9867e71b4ab60b84952cf76ca4f3446e994d0760b3d6e16658417c496656dca2`  
		Last Modified: Wed, 23 Jan 2019 01:12:12 GMT  
		Size: 430.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:936eb418164ae6e2bb965f03cb699d969f0ed568d0f965d6f276c944511dbcfb`  
		Last Modified: Wed, 23 Jan 2019 01:12:11 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d9617dfb66bd026b0be8e8119800b84b3d01f08793f248addff29d1eb3890df`  
		Last Modified: Wed, 23 Jan 2019 01:13:42 GMT  
		Size: 12.5 MB (12506442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dd7afaae10961af92770c0101d92fb65c273d2c0f2ddc37e50a27e0544db9e6`  
		Last Modified: Wed, 23 Jan 2019 01:13:40 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f207844da7e135b8cf0e939b9bcdf7ef96851ceb3ee6a8f7250bb3ab3e3f5f0`  
		Last Modified: Wed, 23 Jan 2019 01:13:40 GMT  
		Size: 15.2 MB (15245750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb3ae5e49870b53e95c7f94f3cde8a99114cdc0ca02ce70a4b046439cc82ffd`  
		Last Modified: Wed, 23 Jan 2019 01:13:40 GMT  
		Size: 2.2 KB (2197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44d7d07029db87ecf6218a08a3827b4d33097b1cfad2c41bb2705e1dacf018bb`  
		Last Modified: Wed, 23 Jan 2019 01:13:40 GMT  
		Size: 255.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb91064652b0cf4550ebc10dc2e3320502d1116b095fc0a6c41e6eb64c4c487c`  
		Last Modified: Wed, 23 Jan 2019 01:13:40 GMT  
		Size: 903.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a9fb13d18e61581e102dab92f6ad950246c51eca1e06979c23e77a92006e014`  
		Last Modified: Wed, 23 Jan 2019 11:51:30 GMT  
		Size: 609.5 KB (609529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db16d23b9e42466091afa868e2a97450ae7033905d3c0ab8c46b95a3069d536c`  
		Last Modified: Wed, 23 Jan 2019 11:51:30 GMT  
		Size: 8.2 KB (8220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:571ef8f90d3b25950a8ec03e65000692375cacfb001809f3113e87bfdc91de08`  
		Last Modified: Tue, 29 Jan 2019 00:20:21 GMT  
		Size: 1.3 MB (1333481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4338dcec5c541355bbd6d49c22e3b55bb2fce425158a2dd8beb3c8f31eb26263`  
		Last Modified: Tue, 29 Jan 2019 00:20:21 GMT  
		Size: 1.1 KB (1146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postfixadmin:apache` - linux; arm64 variant v8

```console
$ docker pull postfixadmin@sha256:d6803a69f147f5364d96e676c30834de97c7fd882e2b87713b0c7b71614ac460
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.3 MB (123331274 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:032d28ee6c798cc670d755a8af0e8799539f74c2e63dc6fa384b7212a05f9606`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 23 Jan 2019 10:04:38 GMT
ADD file:64db5736cabe52ff81a1eb31101c1afa1e4a04374e84ae717532a88286d01784 in / 
# Wed, 23 Jan 2019 10:04:39 GMT
CMD ["bash"]
# Fri, 25 Jan 2019 07:42:45 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Fri, 25 Jan 2019 07:42:46 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 25 Jan 2019 07:44:08 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 25 Jan 2019 07:44:09 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 25 Jan 2019 07:44:11 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 25 Jan 2019 07:54:12 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 Jan 2019 07:54:13 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 25 Jan 2019 07:54:13 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 25 Jan 2019 07:54:15 GMT
RUN set -eux; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Fri, 25 Jan 2019 07:54:17 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 25 Jan 2019 07:54:19 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 25 Jan 2019 07:54:20 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 25 Jan 2019 07:54:20 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Fri, 25 Jan 2019 07:54:21 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 25 Jan 2019 07:54:22 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 25 Jan 2019 07:54:23 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 25 Jan 2019 08:32:02 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 25 Jan 2019 08:32:03 GMT
ENV PHP_VERSION=7.2.14
# Fri, 25 Jan 2019 08:32:04 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror
# Fri, 25 Jan 2019 08:32:04 GMT
ENV PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f PHP_MD5=
# Fri, 25 Jan 2019 08:32:35 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 25 Jan 2019 08:32:36 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 25 Jan 2019 08:41:15 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 25 Jan 2019 08:41:17 GMT
COPY multi:0a6fe33cb39694994fa567c75b399b9aa5e477c8770caa9f731607a72819b457 in /usr/local/bin/ 
# Fri, 25 Jan 2019 08:41:24 GMT
RUN docker-php-ext-enable sodium
# Fri, 25 Jan 2019 08:41:27 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 25 Jan 2019 08:41:30 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Fri, 25 Jan 2019 08:41:34 GMT
WORKDIR /var/www/html
# Fri, 25 Jan 2019 08:41:35 GMT
EXPOSE 80
# Fri, 25 Jan 2019 08:41:37 GMT
CMD ["apache2-foreground"]
# Tue, 29 Jan 2019 09:44:36 GMT
LABEL maintainer=David Goodwin <david@codepoets.co.uk> (@DavidGoodwin)
# Tue, 29 Jan 2019 09:46:28 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 	libpq-dev 	libsqlite3-dev 	; 		docker-php-ext-install 		mysqli 		pdo_mysql 		pdo_pgsql 		pdo_sqlite 		pgsql 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 		ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 			apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 09:46:29 GMT
ARG POSTFIXADMIN_VERSION=3.2
# Tue, 29 Jan 2019 09:46:30 GMT
ARG POSTFIXADMIN_SHA512=9e022e3311bce96342e87925159a048f294ed0e2d4558bd43120b5c6eda35a7a2d128987372d310dfe86680c98a4d8cf3d602afcb20d948c9bba58bed1766560
# Tue, 29 Jan 2019 09:46:30 GMT
ENV POSTFIXADMIN_VERSION=3.2
# Tue, 29 Jan 2019 09:46:31 GMT
ENV POSTFIXADMIN_SHA512=9e022e3311bce96342e87925159a048f294ed0e2d4558bd43120b5c6eda35a7a2d128987372d310dfe86680c98a4d8cf3d602afcb20d948c9bba58bed1766560
# Tue, 29 Jan 2019 09:46:32 GMT
ENV APACHE_DOCUMENT_ROOT=/var/www/html/public
# Tue, 29 Jan 2019 09:46:34 GMT
RUN set -eu; sed -ri -e 's!/var/www/html!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/sites-available/*.conf; 	sed -ri -e 's!/var/www/!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/apache2.conf /etc/apache2/conf-available/*.conf
# Tue, 29 Jan 2019 09:46:38 GMT
RUN set -eu; 	curl -fsSL -o postfixadmin.tar.gz "https://github.com/postfixadmin/postfixadmin/archive/postfixadmin-${POSTFIXADMIN_VERSION}.tar.gz"; 	echo "$POSTFIXADMIN_SHA512 *postfixadmin.tar.gz" | sha512sum -c -; 	mkdir /usr/src/postfixadmin; 	tar -xf postfixadmin.tar.gz -C /usr/src/postfixadmin --strip-components=1; 	rm postfixadmin.tar.gz; 	mkdir -p /usr/src/postfixadmin/templates_c; 	chown -R www-data:www-data /usr/src/postfixadmin
# Tue, 29 Jan 2019 09:46:38 GMT
COPY file:7b9804d962cc9ab943424976141cd6ab11b4bd5e6f589713aab01e577d18b5e9 in /usr/local/bin/ 
# Tue, 29 Jan 2019 09:46:39 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
# Tue, 29 Jan 2019 09:46:40 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:711c3a2baeda87a6b9816cb812388d62d17396034e595a68d8ee5f938f9d77b3`  
		Last Modified: Wed, 23 Jan 2019 10:11:36 GMT  
		Size: 20.4 MB (20350180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a273a3c32232329b60ac83d95b6b7744068016759eaf8675589b9dc5b50513b`  
		Last Modified: Fri, 25 Jan 2019 10:11:35 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dbe9d898f22bebde12a9a3868aa7520c4c2250ceae00fa9153248c8f82e5d7b`  
		Last Modified: Fri, 25 Jan 2019 10:12:06 GMT  
		Size: 57.6 MB (57606166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac488f1008ef7811391ec1a02a19be84173ce484a25e46f7f4641ebbce8fcbec`  
		Last Modified: Fri, 25 Jan 2019 10:11:35 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f1173e9c64c514da6d8c6bafbba7be17013209d7ea8fd088cb5e124c80e092`  
		Last Modified: Fri, 25 Jan 2019 10:12:58 GMT  
		Size: 16.7 MB (16711165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c98388262fb672bb0ceff0e361fb5aaed815271fe47e2624df7284736dfe7dd8`  
		Last Modified: Fri, 25 Jan 2019 10:12:48 GMT  
		Size: 1.3 KB (1342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed7a886dc3b7edbee8aadaaf76d25711df48f586f9ebb53e3e8871026d140724`  
		Last Modified: Fri, 25 Jan 2019 10:12:48 GMT  
		Size: 434.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:092bbf92d4041daa2f4cf5625d0b7eb07bf80512241012e26c8cd0bead2107d6`  
		Last Modified: Fri, 25 Jan 2019 10:12:49 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66c8c3882bd24c8e800d569d65615abb5aa81732214840fa66e43a446c7446b8`  
		Last Modified: Fri, 25 Jan 2019 10:15:41 GMT  
		Size: 12.5 MB (12504556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:932ce47bbbe66f0ff55e6e760509c90019f9cb0b94c7ffd66c590bb9b2ab2d00`  
		Last Modified: Fri, 25 Jan 2019 10:15:36 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9be881fb6985de63e0ace9e5c7e9557f29bde8edac7144529898f9a3e00cb331`  
		Last Modified: Fri, 25 Jan 2019 10:15:51 GMT  
		Size: 14.2 MB (14224900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52e4f1293ba756a60e636b137b4259939e88407a7c86aad27cfbc5ae0b659c4d`  
		Last Modified: Fri, 25 Jan 2019 10:15:36 GMT  
		Size: 2.2 KB (2200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b843a3c71d198523cd81cd8345c71f1c449e002bd41d45346f473562871f5fb`  
		Last Modified: Fri, 25 Jan 2019 10:15:36 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:062047dd2f4cc55849f0238f7ce86267f3a376d9a73a28b727e8de776fc98b90`  
		Last Modified: Fri, 25 Jan 2019 10:15:36 GMT  
		Size: 907.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a40169a24ab98c4d053301ea08e65a963d778ad51253a7623ca4a260029e392`  
		Last Modified: Tue, 29 Jan 2019 09:50:49 GMT  
		Size: 584.9 KB (584916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57bc8e4222b03933c82269ceeb0c4f1f0f9d2bb0f8f30ff7d8bcdb47bdd7c39d`  
		Last Modified: Tue, 29 Jan 2019 09:50:49 GMT  
		Size: 8.2 KB (8225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f07a375a48c136278f8ae73eaca9786ec8fec69e4a18288e88aaaf1084cfe3e`  
		Last Modified: Tue, 29 Jan 2019 09:50:50 GMT  
		Size: 1.3 MB (1333475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcf8741bd563f42b3a723a0b3eab08bbb1c0da9ea60b246cce52e66385806813`  
		Last Modified: Tue, 29 Jan 2019 09:50:49 GMT  
		Size: 1.1 KB (1150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postfixadmin:apache` - linux; 386

```console
$ docker pull postfixadmin@sha256:4b094f58ce9ed17b6a0ac1ffc98c2558449f065e32754f76d8eb4d21ace07070
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.4 MB (142364515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dd84bff525ddabe37018a4c794b3cd86b1c2a1f3c63bc30e2a8a1ad51320f8f`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

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
# Sat, 29 Dec 2018 21:45:50 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 21:45:51 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Sat, 29 Dec 2018 21:45:51 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Sat, 29 Dec 2018 21:45:51 GMT
RUN set -eux; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Sat, 29 Dec 2018 21:45:52 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Sat, 29 Dec 2018 21:45:53 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Sat, 29 Dec 2018 21:45:53 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Sat, 29 Dec 2018 21:45:53 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Sat, 29 Dec 2018 21:45:54 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 21:45:54 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 21:45:54 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 29 Dec 2018 22:07:26 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 11 Jan 2019 12:50:42 GMT
ENV PHP_VERSION=7.2.14
# Fri, 11 Jan 2019 12:50:42 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror
# Fri, 11 Jan 2019 12:50:42 GMT
ENV PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f PHP_MD5=
# Fri, 11 Jan 2019 12:50:53 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 11 Jan 2019 12:50:53 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 11 Jan 2019 12:54:18 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 11 Jan 2019 12:54:18 GMT
COPY multi:0a6fe33cb39694994fa567c75b399b9aa5e477c8770caa9f731607a72819b457 in /usr/local/bin/ 
# Fri, 11 Jan 2019 12:54:19 GMT
RUN docker-php-ext-enable sodium
# Fri, 11 Jan 2019 12:54:19 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 11 Jan 2019 12:54:19 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Fri, 11 Jan 2019 12:54:20 GMT
WORKDIR /var/www/html
# Fri, 11 Jan 2019 12:54:20 GMT
EXPOSE 80
# Fri, 11 Jan 2019 12:54:20 GMT
CMD ["apache2-foreground"]
# Tue, 29 Jan 2019 13:25:37 GMT
LABEL maintainer=David Goodwin <david@codepoets.co.uk> (@DavidGoodwin)
# Tue, 29 Jan 2019 13:26:26 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 	libpq-dev 	libsqlite3-dev 	; 		docker-php-ext-install 		mysqli 		pdo_mysql 		pdo_pgsql 		pdo_sqlite 		pgsql 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 		ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 			apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 13:26:26 GMT
ARG POSTFIXADMIN_VERSION=3.2
# Tue, 29 Jan 2019 13:26:26 GMT
ARG POSTFIXADMIN_SHA512=9e022e3311bce96342e87925159a048f294ed0e2d4558bd43120b5c6eda35a7a2d128987372d310dfe86680c98a4d8cf3d602afcb20d948c9bba58bed1766560
# Tue, 29 Jan 2019 13:26:26 GMT
ENV POSTFIXADMIN_VERSION=3.2
# Tue, 29 Jan 2019 13:26:27 GMT
ENV POSTFIXADMIN_SHA512=9e022e3311bce96342e87925159a048f294ed0e2d4558bd43120b5c6eda35a7a2d128987372d310dfe86680c98a4d8cf3d602afcb20d948c9bba58bed1766560
# Tue, 29 Jan 2019 13:26:27 GMT
ENV APACHE_DOCUMENT_ROOT=/var/www/html/public
# Tue, 29 Jan 2019 13:26:28 GMT
RUN set -eu; sed -ri -e 's!/var/www/html!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/sites-available/*.conf; 	sed -ri -e 's!/var/www/!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/apache2.conf /etc/apache2/conf-available/*.conf
# Tue, 29 Jan 2019 13:26:29 GMT
RUN set -eu; 	curl -fsSL -o postfixadmin.tar.gz "https://github.com/postfixadmin/postfixadmin/archive/postfixadmin-${POSTFIXADMIN_VERSION}.tar.gz"; 	echo "$POSTFIXADMIN_SHA512 *postfixadmin.tar.gz" | sha512sum -c -; 	mkdir /usr/src/postfixadmin; 	tar -xf postfixadmin.tar.gz -C /usr/src/postfixadmin --strip-components=1; 	rm postfixadmin.tar.gz; 	mkdir -p /usr/src/postfixadmin/templates_c; 	chown -R www-data:www-data /usr/src/postfixadmin
# Tue, 29 Jan 2019 13:26:29 GMT
COPY file:7b9804d962cc9ab943424976141cd6ab11b4bd5e6f589713aab01e577d18b5e9 in /usr/local/bin/ 
# Tue, 29 Jan 2019 13:26:29 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
# Tue, 29 Jan 2019 13:26:29 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:cac1a3cba6925217785401a8b972064ba1a0dfe60d4e039f49c4dac4b3f4270e`  
		Last Modified: Sun, 30 Dec 2018 01:57:45 GMT  
		Size: 17.6 MB (17561920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9184c6ff5922580665f40d9e2416d6ff748200ba764489ad442486d61570f8d0`  
		Last Modified: Sun, 30 Dec 2018 01:57:40 GMT  
		Size: 1.3 KB (1336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9edc4d80dca7d81ba8b7a97ebf76890d74ca4d440e11b418c39c09686094da0b`  
		Last Modified: Sun, 30 Dec 2018 01:57:40 GMT  
		Size: 430.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c49d3ce320b30bff15e021157c1b88262d848a456dbdf970c8796accf3e9cc4`  
		Last Modified: Sun, 30 Dec 2018 01:57:40 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd62ef36d94e7c9305ffd2eb8a68bd0b1939d0e5f21ce8a25c7ab5db0748013d`  
		Last Modified: Fri, 11 Jan 2019 14:54:17 GMT  
		Size: 12.5 MB (12505836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b436f91e147a9071b2e0dde2cd2939f63ead4fffb43f92d4dc8d39aabfad96b`  
		Last Modified: Fri, 11 Jan 2019 14:54:12 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2848e63e536187e58765f167f5d942e58c4ba788373f18053046374337e6a498`  
		Last Modified: Fri, 11 Jan 2019 14:54:16 GMT  
		Size: 15.7 MB (15686833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b45df8623fc8e136011d091ed53d924d6820771d844b4c27843c8aac1a4a6ca6`  
		Last Modified: Fri, 11 Jan 2019 14:54:17 GMT  
		Size: 2.2 KB (2197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02b7d92b09c9e14b62d1c385941eabe813b6b3fb137191d2b3d3b91806481ada`  
		Last Modified: Fri, 11 Jan 2019 14:54:16 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64c2910211b6c9223772e7d9203a87d7f51672460245fe15ecf00277389bdaed`  
		Last Modified: Fri, 11 Jan 2019 14:54:16 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05c168fa999cdfc887e78bdde44218263daedcbffadede3b00c60f680a54c939`  
		Last Modified: Tue, 29 Jan 2019 13:28:21 GMT  
		Size: 623.7 KB (623658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a2241cea4b9b8acae4c1ca72ab984c395dcdcd391cc1e5d1ae64fc4c812600e`  
		Last Modified: Tue, 29 Jan 2019 13:28:21 GMT  
		Size: 8.2 KB (8218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5124e7219d91434265c63088bf1deafc5dc0a97c44d3fe4cf16056a5a3a99ddb`  
		Last Modified: Tue, 29 Jan 2019 13:28:21 GMT  
		Size: 1.3 MB (1333482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fc2b869ab353967ebe6ea47bafe9e2ccedc472ec2997446ff363b951866c923`  
		Last Modified: Tue, 29 Jan 2019 13:28:21 GMT  
		Size: 1.1 KB (1148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postfixadmin:fpm`

```console
$ docker pull postfixadmin@sha256:98de6463e9eec0a7c33d11a1cdfed3229fa3660d4d7995ff1f0c90a5cb3d23dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386

### `postfixadmin:fpm` - linux; amd64

```console
$ docker pull postfixadmin@sha256:39a7d561a480cc2124f9a2793f011fbe71e96ee2f115fb6b87218181603d2e9d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.7 MB (133654702 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6144d24eecb7005669268d08111323e05892fcd2e1bbdf74d087bb96240973b9`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:32 GMT
ADD file:a65337a57a064a79ad8a3f42e8282b3e01710cb4684ccd880463cc8d2e051fa5 in / 
# Tue, 22 Jan 2019 19:30:32 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 21:46:13 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 22 Jan 2019 21:46:14 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 22 Jan 2019 21:46:46 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 22 Jan 2019 21:46:46 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 22 Jan 2019 21:46:47 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 22 Jan 2019 22:01:33 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Tue, 22 Jan 2019 22:01:34 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 22 Jan 2019 22:01:34 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 22 Jan 2019 22:01:34 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 22 Jan 2019 22:31:46 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Tue, 22 Jan 2019 22:31:46 GMT
ENV PHP_VERSION=7.2.14
# Tue, 22 Jan 2019 22:31:46 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror
# Tue, 22 Jan 2019 22:31:47 GMT
ENV PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f PHP_MD5=
# Tue, 22 Jan 2019 22:31:57 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 22 Jan 2019 22:31:57 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Tue, 22 Jan 2019 22:38:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 22 Jan 2019 22:38:49 GMT
COPY multi:cbc68fef2c8554b9a23fee7eee16ffda927235f929048638240f97172562665c in /usr/local/bin/ 
# Tue, 22 Jan 2019 22:38:49 GMT
RUN docker-php-ext-enable sodium
# Tue, 22 Jan 2019 22:38:50 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 22 Jan 2019 22:38:50 GMT
WORKDIR /var/www/html
# Tue, 22 Jan 2019 22:38:51 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Tue, 22 Jan 2019 22:38:51 GMT
EXPOSE 9000
# Tue, 22 Jan 2019 22:38:51 GMT
CMD ["php-fpm"]
# Wed, 23 Jan 2019 11:50:17 GMT
LABEL maintainer=David Goodwin <david@codepoets.co.uk> (@DavidGoodwin)
# Wed, 23 Jan 2019 11:51:12 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 	libpq-dev 	libsqlite3-dev 	; 		docker-php-ext-install 		mysqli 		pdo_mysql 		pdo_pgsql 		pdo_sqlite 		pgsql 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 		ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 			apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 11:51:13 GMT
ARG POSTFIXADMIN_VERSION=3.2
# Wed, 23 Jan 2019 11:51:13 GMT
ARG POSTFIXADMIN_SHA512=9e022e3311bce96342e87925159a048f294ed0e2d4558bd43120b5c6eda35a7a2d128987372d310dfe86680c98a4d8cf3d602afcb20d948c9bba58bed1766560
# Wed, 23 Jan 2019 11:51:13 GMT
ENV POSTFIXADMIN_VERSION=3.2
# Wed, 23 Jan 2019 11:51:13 GMT
ENV POSTFIXADMIN_SHA512=9e022e3311bce96342e87925159a048f294ed0e2d4558bd43120b5c6eda35a7a2d128987372d310dfe86680c98a4d8cf3d602afcb20d948c9bba58bed1766560
# Tue, 29 Jan 2019 00:20:03 GMT
RUN set -eu; 	curl -fsSL -o postfixadmin.tar.gz "https://github.com/postfixadmin/postfixadmin/archive/postfixadmin-${POSTFIXADMIN_VERSION}.tar.gz"; 	echo "$POSTFIXADMIN_SHA512 *postfixadmin.tar.gz" | sha512sum -c -; 	mkdir /usr/src/postfixadmin; 	tar -xf postfixadmin.tar.gz -C /usr/src/postfixadmin --strip-components=1; 	rm postfixadmin.tar.gz; 	mkdir -p /usr/src/postfixadmin/templates_c; 	chown -R www-data:www-data /usr/src/postfixadmin
# Tue, 29 Jan 2019 00:20:03 GMT
COPY file:7b9804d962cc9ab943424976141cd6ab11b4bd5e6f589713aab01e577d18b5e9 in /usr/local/bin/ 
# Tue, 29 Jan 2019 00:20:04 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
# Tue, 29 Jan 2019 00:20:04 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:5e6ec7f28fb77f84f64b8c29fcb0a746260563f5858315e3e9fcc4aee2844840`  
		Last Modified: Tue, 22 Jan 2019 19:37:02 GMT  
		Size: 22.5 MB (22500707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf165947b5b75ef63a7872634239e795a3063179895699dc8e0726f1039946b3`  
		Last Modified: Wed, 23 Jan 2019 01:11:30 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bd37682846da479bcfb64459fa36e043d3380a77b401f6de5b862d00d8dcebf`  
		Last Modified: Wed, 23 Jan 2019 01:11:50 GMT  
		Size: 67.4 MB (67442781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99daf8e838e14fb73055ddac03535d506dbf36a5a01c37497ff001c0dbd68f3e`  
		Last Modified: Wed, 23 Jan 2019 01:11:29 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e5a056cae49034c1e7b05021b61684c6a89b54623e151d23f08cd1b9563a1e2`  
		Last Modified: Wed, 23 Jan 2019 01:13:55 GMT  
		Size: 12.5 MB (12485167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc6a1020a50331bc24372e4053e31efb0de94f161e159ca3740051d1aff8f37a`  
		Last Modified: Wed, 23 Jan 2019 01:13:54 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46ccabdcf8f047560ac869bf36fc64081ef69cdcf8c494c58dc347cd84505d86`  
		Last Modified: Wed, 23 Jan 2019 01:14:00 GMT  
		Size: 28.7 MB (28707660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87e8d1e332d67bea7ddf071e7f040c5ed316ea8ae93c8b0b27b3c9d197b6f3dd`  
		Last Modified: Wed, 23 Jan 2019 01:13:53 GMT  
		Size: 2.2 KB (2193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc6fdf312773ea965552f892d8ec43b0ac9d4d14c42fbf95613cb79d8d7d45a`  
		Last Modified: Wed, 23 Jan 2019 01:13:53 GMT  
		Size: 256.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48dbf73992778e30426b1979163246a78a02ce623134039c1b054da410672cd1`  
		Last Modified: Wed, 23 Jan 2019 01:13:58 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69940737122ab46f2b881c85a6724cabbd2b859e5e06151f8f280633cbe19060`  
		Last Modified: Wed, 23 Jan 2019 01:13:53 GMT  
		Size: 7.8 KB (7805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:611e132390ac6251c41d993b18cd22269ef96c4592dc3d7683e8469490769457`  
		Last Modified: Wed, 23 Jan 2019 11:51:39 GMT  
		Size: 1.2 MB (1172470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13b0a42e07d692ed1b812efe6f0531147dbed21f88389ef2418ffe7f673acded`  
		Last Modified: Tue, 29 Jan 2019 00:20:31 GMT  
		Size: 1.3 MB (1333475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f802133b815035fefe2af54d36b80c2d61b728f12cc2ddeb77a1469f00d1f136`  
		Last Modified: Tue, 29 Jan 2019 00:20:30 GMT  
		Size: 1.1 KB (1148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postfixadmin:fpm` - linux; arm64 variant v8

```console
$ docker pull postfixadmin@sha256:70ccff245b98ea734df372bf66bcfb5f15184b17c67f03f37d2bb88ae01ff4b8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.4 MB (120368294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b5191b96712a319280fbda2a4d675ac93f701555ec68ace60e71f96192fb3f1`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 23 Jan 2019 10:04:38 GMT
ADD file:64db5736cabe52ff81a1eb31101c1afa1e4a04374e84ae717532a88286d01784 in / 
# Wed, 23 Jan 2019 10:04:39 GMT
CMD ["bash"]
# Fri, 25 Jan 2019 07:42:45 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Fri, 25 Jan 2019 07:42:46 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 25 Jan 2019 07:44:08 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 25 Jan 2019 07:44:09 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 25 Jan 2019 07:44:11 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 25 Jan 2019 08:02:51 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Fri, 25 Jan 2019 08:02:52 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 25 Jan 2019 08:02:53 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 25 Jan 2019 08:02:53 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 25 Jan 2019 08:41:52 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 25 Jan 2019 08:41:53 GMT
ENV PHP_VERSION=7.2.14
# Fri, 25 Jan 2019 08:41:54 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror
# Fri, 25 Jan 2019 08:41:55 GMT
ENV PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f PHP_MD5=
# Fri, 25 Jan 2019 08:42:43 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 25 Jan 2019 08:42:44 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 25 Jan 2019 08:51:26 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 25 Jan 2019 08:51:27 GMT
COPY multi:cbc68fef2c8554b9a23fee7eee16ffda927235f929048638240f97172562665c in /usr/local/bin/ 
# Fri, 25 Jan 2019 08:51:29 GMT
RUN docker-php-ext-enable sodium
# Fri, 25 Jan 2019 08:51:30 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 25 Jan 2019 08:51:31 GMT
WORKDIR /var/www/html
# Fri, 25 Jan 2019 08:51:32 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 25 Jan 2019 08:51:33 GMT
EXPOSE 9000
# Fri, 25 Jan 2019 08:51:34 GMT
CMD ["php-fpm"]
# Tue, 29 Jan 2019 09:46:51 GMT
LABEL maintainer=David Goodwin <david@codepoets.co.uk> (@DavidGoodwin)
# Tue, 29 Jan 2019 09:48:40 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 	libpq-dev 	libsqlite3-dev 	; 		docker-php-ext-install 		mysqli 		pdo_mysql 		pdo_pgsql 		pdo_sqlite 		pgsql 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 		ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 			apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 09:48:40 GMT
ARG POSTFIXADMIN_VERSION=3.2
# Tue, 29 Jan 2019 09:48:41 GMT
ARG POSTFIXADMIN_SHA512=9e022e3311bce96342e87925159a048f294ed0e2d4558bd43120b5c6eda35a7a2d128987372d310dfe86680c98a4d8cf3d602afcb20d948c9bba58bed1766560
# Tue, 29 Jan 2019 09:48:41 GMT
ENV POSTFIXADMIN_VERSION=3.2
# Tue, 29 Jan 2019 09:48:42 GMT
ENV POSTFIXADMIN_SHA512=9e022e3311bce96342e87925159a048f294ed0e2d4558bd43120b5c6eda35a7a2d128987372d310dfe86680c98a4d8cf3d602afcb20d948c9bba58bed1766560
# Tue, 29 Jan 2019 09:48:46 GMT
RUN set -eu; 	curl -fsSL -o postfixadmin.tar.gz "https://github.com/postfixadmin/postfixadmin/archive/postfixadmin-${POSTFIXADMIN_VERSION}.tar.gz"; 	echo "$POSTFIXADMIN_SHA512 *postfixadmin.tar.gz" | sha512sum -c -; 	mkdir /usr/src/postfixadmin; 	tar -xf postfixadmin.tar.gz -C /usr/src/postfixadmin --strip-components=1; 	rm postfixadmin.tar.gz; 	mkdir -p /usr/src/postfixadmin/templates_c; 	chown -R www-data:www-data /usr/src/postfixadmin
# Tue, 29 Jan 2019 09:48:46 GMT
COPY file:7b9804d962cc9ab943424976141cd6ab11b4bd5e6f589713aab01e577d18b5e9 in /usr/local/bin/ 
# Tue, 29 Jan 2019 09:48:47 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
# Tue, 29 Jan 2019 09:48:47 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:711c3a2baeda87a6b9816cb812388d62d17396034e595a68d8ee5f938f9d77b3`  
		Last Modified: Wed, 23 Jan 2019 10:11:36 GMT  
		Size: 20.4 MB (20350180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a273a3c32232329b60ac83d95b6b7744068016759eaf8675589b9dc5b50513b`  
		Last Modified: Fri, 25 Jan 2019 10:11:35 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dbe9d898f22bebde12a9a3868aa7520c4c2250ceae00fa9153248c8f82e5d7b`  
		Last Modified: Fri, 25 Jan 2019 10:12:06 GMT  
		Size: 57.6 MB (57606166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac488f1008ef7811391ec1a02a19be84173ce484a25e46f7f4641ebbce8fcbec`  
		Last Modified: Fri, 25 Jan 2019 10:11:35 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfa534adc3a2f713bf275b6e7c26a499bdcb43e0862c0ddb87eb1fb90bad84e8`  
		Last Modified: Fri, 25 Jan 2019 10:16:09 GMT  
		Size: 12.5 MB (12483285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9712aa2898758460cb55b44ec230d13c9c394df9e6d31b264d25f126c86197e1`  
		Last Modified: Fri, 25 Jan 2019 10:16:06 GMT  
		Size: 502.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2002e802922a8dd6eb82056929a53fb9f850ba65890f9947a4b310a0da3c030b`  
		Last Modified: Fri, 25 Jan 2019 10:16:24 GMT  
		Size: 27.5 MB (27481239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:589f8777b903614efabcc49f983c7a8cb853513e2bcaf0154e78868539dc15c3`  
		Last Modified: Fri, 25 Jan 2019 10:16:04 GMT  
		Size: 2.2 KB (2192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2c8560ad21409ad1f508410d4607890664ca305e04b414d8e2741d50a89b2cb`  
		Last Modified: Fri, 25 Jan 2019 10:16:04 GMT  
		Size: 261.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dab9989ff7fd577b340f2b3a9845bf3e505b77030c80347c02c28cf63bae9e8a`  
		Last Modified: Fri, 25 Jan 2019 10:16:04 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf0a60387f185d3098475fd316580432657b9211016fafe393c0b6ca16a8ea1a`  
		Last Modified: Fri, 25 Jan 2019 10:16:04 GMT  
		Size: 7.8 KB (7805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55d78c55ff7a7372dfae6d86a14867333078f2b51c5c1d8c22d3ba696490d64b`  
		Last Modified: Tue, 29 Jan 2019 09:51:17 GMT  
		Size: 1.1 MB (1101505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f15e00388320cf08f0b01870017cd503cf106e12ff006241652e5fa96e707ff9`  
		Last Modified: Tue, 29 Jan 2019 09:51:17 GMT  
		Size: 1.3 MB (1333472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab2d79742e08bffdb0529dc115af01f94966d1783ef5fed8399ecd481337f15e`  
		Last Modified: Tue, 29 Jan 2019 09:51:16 GMT  
		Size: 1.1 KB (1147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postfixadmin:fpm` - linux; 386

```console
$ docker pull postfixadmin@sha256:93745b4d318f3893d80e127697e855807e8711a828c153f4f8ae6f85bbcc7cde
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.0 MB (139028943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cf52a767394ff979e0be5e1a8d62fcb36b57a50a433fec87d80c5faf8e36707`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint.sh"]`
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
# Sat, 29 Dec 2018 22:11:26 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 11 Jan 2019 12:54:26 GMT
ENV PHP_VERSION=7.2.14
# Fri, 11 Jan 2019 12:54:26 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror
# Fri, 11 Jan 2019 12:54:26 GMT
ENV PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f PHP_MD5=
# Fri, 11 Jan 2019 12:54:36 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 11 Jan 2019 12:54:36 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 11 Jan 2019 13:00:04 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 11 Jan 2019 13:00:05 GMT
COPY multi:cbc68fef2c8554b9a23fee7eee16ffda927235f929048638240f97172562665c in /usr/local/bin/ 
# Fri, 11 Jan 2019 13:00:05 GMT
RUN docker-php-ext-enable sodium
# Fri, 11 Jan 2019 13:00:05 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 11 Jan 2019 13:00:06 GMT
WORKDIR /var/www/html
# Fri, 11 Jan 2019 13:00:06 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 11 Jan 2019 13:00:07 GMT
EXPOSE 9000
# Fri, 11 Jan 2019 13:00:07 GMT
CMD ["php-fpm"]
# Tue, 29 Jan 2019 13:26:39 GMT
LABEL maintainer=David Goodwin <david@codepoets.co.uk> (@DavidGoodwin)
# Tue, 29 Jan 2019 13:27:24 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 	libpq-dev 	libsqlite3-dev 	; 		docker-php-ext-install 		mysqli 		pdo_mysql 		pdo_pgsql 		pdo_sqlite 		pgsql 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 		ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 			apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 13:27:24 GMT
ARG POSTFIXADMIN_VERSION=3.2
# Tue, 29 Jan 2019 13:27:25 GMT
ARG POSTFIXADMIN_SHA512=9e022e3311bce96342e87925159a048f294ed0e2d4558bd43120b5c6eda35a7a2d128987372d310dfe86680c98a4d8cf3d602afcb20d948c9bba58bed1766560
# Tue, 29 Jan 2019 13:27:25 GMT
ENV POSTFIXADMIN_VERSION=3.2
# Tue, 29 Jan 2019 13:27:25 GMT
ENV POSTFIXADMIN_SHA512=9e022e3311bce96342e87925159a048f294ed0e2d4558bd43120b5c6eda35a7a2d128987372d310dfe86680c98a4d8cf3d602afcb20d948c9bba58bed1766560
# Tue, 29 Jan 2019 13:27:26 GMT
RUN set -eu; 	curl -fsSL -o postfixadmin.tar.gz "https://github.com/postfixadmin/postfixadmin/archive/postfixadmin-${POSTFIXADMIN_VERSION}.tar.gz"; 	echo "$POSTFIXADMIN_SHA512 *postfixadmin.tar.gz" | sha512sum -c -; 	mkdir /usr/src/postfixadmin; 	tar -xf postfixadmin.tar.gz -C /usr/src/postfixadmin --strip-components=1; 	rm postfixadmin.tar.gz; 	mkdir -p /usr/src/postfixadmin/templates_c; 	chown -R www-data:www-data /usr/src/postfixadmin
# Tue, 29 Jan 2019 13:27:26 GMT
COPY file:7b9804d962cc9ab943424976141cd6ab11b4bd5e6f589713aab01e577d18b5e9 in /usr/local/bin/ 
# Tue, 29 Jan 2019 13:27:26 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
# Tue, 29 Jan 2019 13:27:27 GMT
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
	-	`sha256:2f96c042f31352ffc4706d54dd5e87a2e4f9502aa22ab1a495d43088b47d8d4c`  
		Last Modified: Fri, 11 Jan 2019 14:54:27 GMT  
		Size: 12.5 MB (12484697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c48899a82e4ff4a06d3fe22e3b19d8487b872aab41540f5e8a3b8b96f0fa6fe`  
		Last Modified: Fri, 11 Jan 2019 14:54:26 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb564ff7a873d5c5065ad5333c5bc35a0ccf44be3e542bef90fd6bcedce00417`  
		Last Modified: Fri, 11 Jan 2019 14:54:32 GMT  
		Size: 29.3 MB (29332789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2679b31a3bde8a45d1ef9e44f3bb3a7381ffe8cb994738674cac4cc92c8bc32d`  
		Last Modified: Fri, 11 Jan 2019 14:54:25 GMT  
		Size: 2.2 KB (2189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:618cc564acfe7a10b6ed49868a21c4b895588acef6a135912122f103d3f33567`  
		Last Modified: Fri, 11 Jan 2019 14:54:25 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:418806b632b4a50647c6e7c2bfb6dd19ad2daa5023b8be70e9d3e615d318f040`  
		Last Modified: Fri, 11 Jan 2019 14:54:25 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:333219bdf344bcf1ddfd7a0f198febcf422a761618cd75b05f7881552e764252`  
		Last Modified: Fri, 11 Jan 2019 14:54:25 GMT  
		Size: 7.8 KB (7801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ee938520f891c2407d425529da547f39ddbca3b44e2a463726f10f97aa9d778`  
		Last Modified: Tue, 29 Jan 2019 13:28:31 GMT  
		Size: 1.2 MB (1228652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1fe511052c16de8a4b7c95b36bae22b272a707d75d6b315332186056915de4e`  
		Last Modified: Tue, 29 Jan 2019 13:28:31 GMT  
		Size: 1.3 MB (1333472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf09694b68cfd33dd9b15fadf30af6218564a8d788dea6c51987f427cff36815`  
		Last Modified: Tue, 29 Jan 2019 13:28:30 GMT  
		Size: 1.1 KB (1147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postfixadmin:fpm-alpine`

```console
$ docker pull postfixadmin@sha256:14b40b7645069be3da78dad5b70551670c896fb5570ff8c43d13458beaf22b4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386

### `postfixadmin:fpm-alpine` - linux; amd64

```console
$ docker pull postfixadmin@sha256:713fb3fdda7db842697f63ab8853e8ae614046f6f2c73a222cdb844f30067bc8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.4 MB (37370937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c0a33dda5e64b0d16af13effdabc8434ee0aa2be66addf922e7bc64dc9d766a`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Thu, 31 Jan 2019 00:20:36 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 31 Jan 2019 00:20:38 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Thu, 31 Jan 2019 00:20:39 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Thu, 31 Jan 2019 00:20:39 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 31 Jan 2019 00:20:40 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 31 Jan 2019 00:27:08 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Thu, 31 Jan 2019 00:27:09 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 31 Jan 2019 00:27:09 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 31 Jan 2019 00:27:09 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 31 Jan 2019 00:47:44 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Thu, 31 Jan 2019 00:47:44 GMT
ENV PHP_VERSION=7.2.14
# Thu, 31 Jan 2019 00:47:44 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror
# Thu, 31 Jan 2019 00:47:44 GMT
ENV PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f PHP_MD5=
# Thu, 31 Jan 2019 00:47:49 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Thu, 31 Jan 2019 00:47:49 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Thu, 31 Jan 2019 00:53:59 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libsodium-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 31 Jan 2019 00:53:59 GMT
COPY multi:cbc68fef2c8554b9a23fee7eee16ffda927235f929048638240f97172562665c in /usr/local/bin/ 
# Thu, 31 Jan 2019 00:54:00 GMT
RUN docker-php-ext-enable sodium
# Thu, 31 Jan 2019 00:54:00 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 31 Jan 2019 00:54:01 GMT
WORKDIR /var/www/html
# Thu, 31 Jan 2019 00:54:01 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Thu, 31 Jan 2019 00:54:02 GMT
EXPOSE 9000
# Thu, 31 Jan 2019 00:54:02 GMT
CMD ["php-fpm"]
# Thu, 31 Jan 2019 03:17:32 GMT
LABEL maintainer=David Goodwin <david@codepoets.co.uk> (@DavidGoodwin)
# Thu, 31 Jan 2019 03:17:33 GMT
RUN apk add --no-cache 		bash 		coreutils
# Thu, 31 Jan 2019 03:18:06 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		sqlite-dev 		postgresql-dev 	; 	docker-php-ext-install 		mysqli 		pdo_mysql 		pdo_pgsql 		pdo_sqlite 		pgsql 	; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .postfixadmin-phpexts-rundeps $runDeps; 	apk del .build-deps
# Thu, 31 Jan 2019 03:18:06 GMT
ARG POSTFIXADMIN_VERSION=3.2
# Thu, 31 Jan 2019 03:18:07 GMT
ARG POSTFIXADMIN_SHA512=9e022e3311bce96342e87925159a048f294ed0e2d4558bd43120b5c6eda35a7a2d128987372d310dfe86680c98a4d8cf3d602afcb20d948c9bba58bed1766560
# Thu, 31 Jan 2019 03:18:07 GMT
ENV POSTFIXADMIN_VERSION=3.2
# Thu, 31 Jan 2019 03:18:07 GMT
ENV POSTFIXADMIN_SHA512=9e022e3311bce96342e87925159a048f294ed0e2d4558bd43120b5c6eda35a7a2d128987372d310dfe86680c98a4d8cf3d602afcb20d948c9bba58bed1766560
# Thu, 31 Jan 2019 03:18:08 GMT
RUN set -eu; 	curl -fsSL -o postfixadmin.tar.gz "https://github.com/postfixadmin/postfixadmin/archive/postfixadmin-${POSTFIXADMIN_VERSION}.tar.gz"; 	echo "$POSTFIXADMIN_SHA512 *postfixadmin.tar.gz" | sha512sum -c -; 	mkdir /usr/src/postfixadmin; 	tar -xf postfixadmin.tar.gz -C /usr/src/postfixadmin --strip-components=1; 	rm postfixadmin.tar.gz; 	mkdir -p /usr/src/postfixadmin/templates_c; 	chown -R www-data:www-data /usr/src/postfixadmin
# Thu, 31 Jan 2019 03:18:08 GMT
COPY file:7b9804d962cc9ab943424976141cd6ab11b4bd5e6f589713aab01e577d18b5e9 in /usr/local/bin/ 
# Thu, 31 Jan 2019 03:18:08 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
# Thu, 31 Jan 2019 03:18:09 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ba0d98519aaeb7e9f907b28d10dc5fe17def3fe18221465a5d99d79c2f9f3e2`  
		Last Modified: Thu, 31 Jan 2019 01:42:20 GMT  
		Size: 1.4 MB (1357252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75f762bbc102cc1ab5ed220ac6a99fea476cbb574069cf7deb662ac3d04c02ad`  
		Last Modified: Thu, 31 Jan 2019 01:42:18 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04f939cd9fe58bc13d88c8dddcb194752f936dd6acbeca7a6f35cd5ab62d8762`  
		Last Modified: Thu, 31 Jan 2019 01:42:18 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40df79071b61850039421ef4f84fba6a727741d3c0e10e821f365297888b5449`  
		Last Modified: Thu, 31 Jan 2019 01:43:37 GMT  
		Size: 12.2 MB (12176078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bec25f0cd096f1f11ad4d68b4b0ba4ec3e59dbeb3c84b6c68c360fcd6d1f9167`  
		Last Modified: Thu, 31 Jan 2019 01:43:35 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:029b01defb67a82864802e781ff178f1a0fc1db2032c370b47022686d621ae49`  
		Last Modified: Thu, 31 Jan 2019 01:43:40 GMT  
		Size: 15.9 MB (15850538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a134d99ba2a7a7bba61f81dbd0d547f5758a54c91caca7181da076b332faa866`  
		Last Modified: Thu, 31 Jan 2019 01:43:34 GMT  
		Size: 2.2 KB (2176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7a62b5c54cca9a8d9c0c6e553a87cb94b16d3be463c51f2d1fe26c7044f08b3`  
		Last Modified: Thu, 31 Jan 2019 01:43:34 GMT  
		Size: 71.8 KB (71842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd5dd98188d03e3161ca09def3947127100418054e37e7c8fbc7a4d3c9b15ccf`  
		Last Modified: Thu, 31 Jan 2019 01:43:34 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dff9e3e36d8c7623a7522c91f7e284be1a9ace494327ddb13b1dfa524f09901`  
		Last Modified: Thu, 31 Jan 2019 01:43:34 GMT  
		Size: 7.8 KB (7781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34e48c3e0d969abf3059775328765671881b49bc311a94edad4981c9b2087235`  
		Last Modified: Thu, 31 Jan 2019 03:18:24 GMT  
		Size: 1.1 MB (1132763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17b8888a2ab372f40a08abaf272e3f5250bc6cbdd929cb806326f8a1b2fab075`  
		Last Modified: Thu, 31 Jan 2019 03:18:25 GMT  
		Size: 3.2 MB (3228796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e16c4a7a67f47c020a808b4766761d40934f8d80805a67a8b6b3c756c14b5ae5`  
		Last Modified: Thu, 31 Jan 2019 03:18:24 GMT  
		Size: 1.3 MB (1333492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:137a801a9b45583ab8eb2b8414255fee6d504e75401cc748c2a015a686d62c32`  
		Last Modified: Thu, 31 Jan 2019 03:18:24 GMT  
		Size: 1.1 KB (1135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postfixadmin:fpm-alpine` - linux; arm64 variant v8

```console
$ docker pull postfixadmin@sha256:ee59f287fd4a8741503ea6e0739549c073484394b904ab7ca666f8cdd2907cca
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.8 MB (35805864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c7598e917e4f374e370547b13a77d095a1daedfd4726fdea4ed229d01fdf6ec`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 12:10:06 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 21 Dec 2018 12:10:08 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Fri, 21 Dec 2018 12:10:11 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 21 Dec 2018 12:10:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 21 Dec 2018 12:10:13 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 21 Dec 2018 12:19:38 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Fri, 21 Dec 2018 12:19:39 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 21 Dec 2018 12:19:40 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 21 Dec 2018 12:19:40 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 21 Dec 2018 12:51:23 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 11 Jan 2019 12:05:25 GMT
ENV PHP_VERSION=7.2.14
# Fri, 11 Jan 2019 12:05:26 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror
# Fri, 11 Jan 2019 12:05:26 GMT
ENV PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f PHP_MD5=
# Fri, 11 Jan 2019 12:05:38 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 11 Jan 2019 12:05:39 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 11 Jan 2019 12:12:27 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libsodium-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 11 Jan 2019 12:12:28 GMT
COPY multi:cbc68fef2c8554b9a23fee7eee16ffda927235f929048638240f97172562665c in /usr/local/bin/ 
# Fri, 11 Jan 2019 12:12:30 GMT
RUN docker-php-ext-enable sodium
# Fri, 11 Jan 2019 12:12:31 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 11 Jan 2019 12:12:32 GMT
WORKDIR /var/www/html
# Fri, 11 Jan 2019 12:12:33 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 11 Jan 2019 12:12:34 GMT
EXPOSE 9000
# Fri, 11 Jan 2019 12:12:35 GMT
CMD ["php-fpm"]
# Tue, 29 Jan 2019 09:48:52 GMT
LABEL maintainer=David Goodwin <david@codepoets.co.uk> (@DavidGoodwin)
# Tue, 29 Jan 2019 09:48:55 GMT
RUN apk add --no-cache 		bash 		coreutils
# Tue, 29 Jan 2019 09:50:13 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		sqlite-dev 		postgresql-dev 	; 	docker-php-ext-install 		mysqli 		pdo_mysql 		pdo_pgsql 		pdo_sqlite 		pgsql 	; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .postfixadmin-phpexts-rundeps $runDeps; 	apk del .build-deps
# Tue, 29 Jan 2019 09:50:14 GMT
ARG POSTFIXADMIN_VERSION=3.2
# Tue, 29 Jan 2019 09:50:15 GMT
ARG POSTFIXADMIN_SHA512=9e022e3311bce96342e87925159a048f294ed0e2d4558bd43120b5c6eda35a7a2d128987372d310dfe86680c98a4d8cf3d602afcb20d948c9bba58bed1766560
# Tue, 29 Jan 2019 09:50:15 GMT
ENV POSTFIXADMIN_VERSION=3.2
# Tue, 29 Jan 2019 09:50:16 GMT
ENV POSTFIXADMIN_SHA512=9e022e3311bce96342e87925159a048f294ed0e2d4558bd43120b5c6eda35a7a2d128987372d310dfe86680c98a4d8cf3d602afcb20d948c9bba58bed1766560
# Tue, 29 Jan 2019 09:50:19 GMT
RUN set -eu; 	curl -fsSL -o postfixadmin.tar.gz "https://github.com/postfixadmin/postfixadmin/archive/postfixadmin-${POSTFIXADMIN_VERSION}.tar.gz"; 	echo "$POSTFIXADMIN_SHA512 *postfixadmin.tar.gz" | sha512sum -c -; 	mkdir /usr/src/postfixadmin; 	tar -xf postfixadmin.tar.gz -C /usr/src/postfixadmin --strip-components=1; 	rm postfixadmin.tar.gz; 	mkdir -p /usr/src/postfixadmin/templates_c; 	chown -R www-data:www-data /usr/src/postfixadmin
# Tue, 29 Jan 2019 09:50:20 GMT
COPY file:7b9804d962cc9ab943424976141cd6ab11b4bd5e6f589713aab01e577d18b5e9 in /usr/local/bin/ 
# Tue, 29 Jan 2019 09:50:21 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
# Tue, 29 Jan 2019 09:50:22 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:e3c488b39803d9194cf010f6127b1121d5387b90a1562d44b50b749d0e7a69bf`  
		Last Modified: Fri, 21 Dec 2018 09:43:51 GMT  
		Size: 2.1 MB (2099839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a63128803b1ea223f87244cb8d3faa97817f6cf3ca8249e485430218758510`  
		Last Modified: Fri, 21 Dec 2018 09:43:50 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73bf4a12ae92b20610d889c240ddcd72b338a21e3fa4f3d6c077d9fcad3566f1`  
		Last Modified: Fri, 21 Dec 2018 14:38:54 GMT  
		Size: 1.3 MB (1274014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf309e8a13c2d5f8e92a71c30f189658629d7079402a4dbd6c42d8a5302b755e`  
		Last Modified: Fri, 21 Dec 2018 14:38:54 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2290f763cb3e9ff58547451226cdcbb3b5083ab00da970fb03b03604c2c78716`  
		Last Modified: Fri, 21 Dec 2018 14:38:53 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08ff3daeaeb2c6f80e985fe6a65ebcf4c174894b1111553a77038b106db4dfa4`  
		Last Modified: Fri, 11 Jan 2019 13:30:07 GMT  
		Size: 12.2 MB (12176103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f415816cc27b5f850a1475f2264f6b325f08fddb036f2a484f1c38cee60562d8`  
		Last Modified: Fri, 11 Jan 2019 13:30:05 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0d8dfc978e0329562a72d717cad6d3114bd6a2a392d761a2bda797f0476f485`  
		Last Modified: Fri, 11 Jan 2019 13:30:12 GMT  
		Size: 14.7 MB (14694310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d42bfc57b96f2b8d3a77f54cf48ff03022b5bdf4581f96b39b42328593a847c`  
		Last Modified: Fri, 11 Jan 2019 13:30:03 GMT  
		Size: 2.2 KB (2176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d3ef9fa25c04f4c400cff945c823594bce0253ba6e692c7ebf62d8d23a63d2d`  
		Last Modified: Fri, 11 Jan 2019 13:30:03 GMT  
		Size: 70.9 KB (70866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdd07133ba580f4b004c26bffcdf7cb09e1ec7a007886f3759a8313202efab70`  
		Last Modified: Fri, 11 Jan 2019 13:30:03 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f39c56929428921ec4c76fd858639f743ade99b41aaaa8e894727a2ea43dd5f`  
		Last Modified: Fri, 11 Jan 2019 13:30:03 GMT  
		Size: 7.8 KB (7782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfea3a62d4a76c95659011feac528a7d090b99189d9271c475de41dfe150acdc`  
		Last Modified: Tue, 29 Jan 2019 09:51:30 GMT  
		Size: 1.1 MB (1075310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa820313885652a002eb63e952b026e59e78f88fa85ae7c843174ea8cbfa1349`  
		Last Modified: Tue, 29 Jan 2019 09:51:30 GMT  
		Size: 3.1 MB (3068614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4516ef42f3e7f28dd9276a718b3d52f24e4f5068d505bb5f73d7b963df339a75`  
		Last Modified: Tue, 29 Jan 2019 09:51:30 GMT  
		Size: 1.3 MB (1333491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6d80171691987f96a32a37df75921ba559f6951ba78763aa20c585150981f1e`  
		Last Modified: Tue, 29 Jan 2019 09:51:29 GMT  
		Size: 1.1 KB (1138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postfixadmin:fpm-alpine` - linux; 386

```console
$ docker pull postfixadmin@sha256:c13278d1e30fd4a89ee86a9c36fb3844d3dbd7d8e8196bbd9da6564e4c4918c7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 MB (38208339 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96a5ba53918733e73abe9b2a438392fedeed60088afce35620dc5d120a39e5fe`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 21 Dec 2018 11:40:13 GMT
ADD file:38576b24298c124265c8fffb7bc8fdb0c144d99dcce4e9942bdcceb936830ba6 in / 
# Fri, 21 Dec 2018 11:40:14 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 11:40:14 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 12:26:09 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 21 Dec 2018 12:26:10 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Fri, 21 Dec 2018 12:26:11 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 21 Dec 2018 12:26:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 21 Dec 2018 12:26:12 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 21 Dec 2018 12:32:56 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Fri, 21 Dec 2018 12:32:56 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 21 Dec 2018 12:32:56 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 21 Dec 2018 12:32:56 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 21 Dec 2018 12:53:43 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 11 Jan 2019 13:12:03 GMT
ENV PHP_VERSION=7.2.14
# Fri, 11 Jan 2019 13:12:03 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror
# Fri, 11 Jan 2019 13:12:03 GMT
ENV PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f PHP_MD5=
# Fri, 11 Jan 2019 13:12:08 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 11 Jan 2019 13:12:08 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 11 Jan 2019 13:17:40 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libsodium-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 11 Jan 2019 13:17:41 GMT
COPY multi:cbc68fef2c8554b9a23fee7eee16ffda927235f929048638240f97172562665c in /usr/local/bin/ 
# Fri, 11 Jan 2019 13:17:42 GMT
RUN docker-php-ext-enable sodium
# Fri, 11 Jan 2019 13:17:42 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 11 Jan 2019 13:17:42 GMT
WORKDIR /var/www/html
# Fri, 11 Jan 2019 13:17:43 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 11 Jan 2019 13:17:43 GMT
EXPOSE 9000
# Fri, 11 Jan 2019 13:17:43 GMT
CMD ["php-fpm"]
# Tue, 29 Jan 2019 13:27:31 GMT
LABEL maintainer=David Goodwin <david@codepoets.co.uk> (@DavidGoodwin)
# Tue, 29 Jan 2019 13:27:32 GMT
RUN apk add --no-cache 		bash 		coreutils
# Tue, 29 Jan 2019 13:28:04 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		sqlite-dev 		postgresql-dev 	; 	docker-php-ext-install 		mysqli 		pdo_mysql 		pdo_pgsql 		pdo_sqlite 		pgsql 	; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .postfixadmin-phpexts-rundeps $runDeps; 	apk del .build-deps
# Tue, 29 Jan 2019 13:28:04 GMT
ARG POSTFIXADMIN_VERSION=3.2
# Tue, 29 Jan 2019 13:28:04 GMT
ARG POSTFIXADMIN_SHA512=9e022e3311bce96342e87925159a048f294ed0e2d4558bd43120b5c6eda35a7a2d128987372d310dfe86680c98a4d8cf3d602afcb20d948c9bba58bed1766560
# Tue, 29 Jan 2019 13:28:05 GMT
ENV POSTFIXADMIN_VERSION=3.2
# Tue, 29 Jan 2019 13:28:05 GMT
ENV POSTFIXADMIN_SHA512=9e022e3311bce96342e87925159a048f294ed0e2d4558bd43120b5c6eda35a7a2d128987372d310dfe86680c98a4d8cf3d602afcb20d948c9bba58bed1766560
# Tue, 29 Jan 2019 13:28:06 GMT
RUN set -eu; 	curl -fsSL -o postfixadmin.tar.gz "https://github.com/postfixadmin/postfixadmin/archive/postfixadmin-${POSTFIXADMIN_VERSION}.tar.gz"; 	echo "$POSTFIXADMIN_SHA512 *postfixadmin.tar.gz" | sha512sum -c -; 	mkdir /usr/src/postfixadmin; 	tar -xf postfixadmin.tar.gz -C /usr/src/postfixadmin --strip-components=1; 	rm postfixadmin.tar.gz; 	mkdir -p /usr/src/postfixadmin/templates_c; 	chown -R www-data:www-data /usr/src/postfixadmin
# Tue, 29 Jan 2019 13:28:06 GMT
COPY file:7b9804d962cc9ab943424976141cd6ab11b4bd5e6f589713aab01e577d18b5e9 in /usr/local/bin/ 
# Tue, 29 Jan 2019 13:28:06 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
# Tue, 29 Jan 2019 13:28:07 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:25bcd1068fdd02354e6b3fb4ebbad1a9c1df7f5ec2d61aa88a337345415dc102`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 2.3 MB (2271567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795c3ef9c057ef60e7a4a088655adecaccd21d68099ad1f654bccd015ab319da`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4811baf1f023d21ea625c97101dbaffec612a7fc948ff1d9f1e85badb90282f7`  
		Last Modified: Fri, 21 Dec 2018 14:03:58 GMT  
		Size: 1.5 MB (1453187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66ce10d169b702fb314523985cab18b12c3d56cf08f625154b27d0847e96f089`  
		Last Modified: Fri, 21 Dec 2018 14:03:58 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a89858ddd116f7d2220d5ff7f60ae246411089bb3c686a47294192ef6b55c9d`  
		Last Modified: Fri, 21 Dec 2018 14:03:57 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6043e2c76dbe219109f72235280314072a2217eda96687558d21f8578b3e75ef`  
		Last Modified: Fri, 11 Jan 2019 14:55:05 GMT  
		Size: 12.2 MB (12176111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8440fdedbe0046ed87adf69105b08c449aba4d3bd3c0793adab9f7ff3440694b`  
		Last Modified: Fri, 11 Jan 2019 14:55:04 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8d4733b5cfb1cb0069daa62cf9f209df0ba5b2b750b083d4c5bb84ea8464a8b`  
		Last Modified: Fri, 11 Jan 2019 14:55:08 GMT  
		Size: 16.3 MB (16308650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d841e9114fbd446750277075cec7238a8d521ba32770dc463d8e70b18faf0b5`  
		Last Modified: Fri, 11 Jan 2019 14:55:03 GMT  
		Size: 2.2 KB (2176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aa176c23e31bd93ed00c94293dc542732e58fe45a9a7eb7f7d5d2c41c5a5635`  
		Last Modified: Fri, 11 Jan 2019 14:55:03 GMT  
		Size: 71.0 KB (70990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69278d1d66b65f5c197afc970ea16254f399f69909a42e58aa644f7e5c4a0b22`  
		Last Modified: Fri, 11 Jan 2019 14:55:03 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78d76d1e33feaf865d85eda3797a826c94470919951a86586780f337bae702c3`  
		Last Modified: Fri, 11 Jan 2019 14:55:03 GMT  
		Size: 7.8 KB (7782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2900294b4c7d547d39757b877982cbb6d72fdbce470ad9bd0e60040eff70614e`  
		Last Modified: Tue, 29 Jan 2019 13:28:36 GMT  
		Size: 1.2 MB (1215976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35e9bda408e7db0088f5bf8f376c0d2c2ce20e42e7c1b2058944a5c9c2fb360`  
		Last Modified: Tue, 29 Jan 2019 13:28:37 GMT  
		Size: 3.4 MB (3365056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a84f839bc52a26f5e41c8cfd80992c28bbf0ca536da88ce404cedc7a1e6b291`  
		Last Modified: Tue, 29 Jan 2019 13:28:37 GMT  
		Size: 1.3 MB (1333485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb98f498adca6b0ff77d5e79af43f086f2fc21143fecd4b1617fc8caedc3444e`  
		Last Modified: Tue, 29 Jan 2019 13:28:36 GMT  
		Size: 1.1 KB (1136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postfixadmin:latest`

```console
$ docker pull postfixadmin@sha256:a1bda52b53279ac7c112bcebee006a4dc48b11b753cc165922e53eb9571bc029
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386

### `postfixadmin:latest` - linux; amd64

```console
$ docker pull postfixadmin@sha256:3ed2a11058d1d9d2e4ea17c24d3f18037d0541303b02a3bd440551ca03fc5438
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.8 MB (136782618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:688e2e24625f75280ef824ad4c2987fb95aff52282aa6c3787ce5cd87072fe56`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:32 GMT
ADD file:a65337a57a064a79ad8a3f42e8282b3e01710cb4684ccd880463cc8d2e051fa5 in / 
# Tue, 22 Jan 2019 19:30:32 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 21:46:13 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 22 Jan 2019 21:46:14 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 22 Jan 2019 21:46:46 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 22 Jan 2019 21:46:46 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 22 Jan 2019 21:46:47 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 22 Jan 2019 21:56:16 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 21:56:16 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 22 Jan 2019 21:56:16 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 22 Jan 2019 21:56:17 GMT
RUN set -eux; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Tue, 22 Jan 2019 21:56:19 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 22 Jan 2019 21:56:20 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 22 Jan 2019 21:56:20 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 22 Jan 2019 21:56:20 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Tue, 22 Jan 2019 21:56:21 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 22 Jan 2019 21:56:21 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 22 Jan 2019 21:56:21 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 22 Jan 2019 22:27:31 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Tue, 22 Jan 2019 22:27:31 GMT
ENV PHP_VERSION=7.2.14
# Tue, 22 Jan 2019 22:27:31 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror
# Tue, 22 Jan 2019 22:27:32 GMT
ENV PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f PHP_MD5=
# Tue, 22 Jan 2019 22:27:43 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 22 Jan 2019 22:27:43 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Tue, 22 Jan 2019 22:31:33 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 22 Jan 2019 22:31:33 GMT
COPY multi:0a6fe33cb39694994fa567c75b399b9aa5e477c8770caa9f731607a72819b457 in /usr/local/bin/ 
# Tue, 22 Jan 2019 22:31:34 GMT
RUN docker-php-ext-enable sodium
# Tue, 22 Jan 2019 22:31:34 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 22 Jan 2019 22:31:35 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Tue, 22 Jan 2019 22:31:35 GMT
WORKDIR /var/www/html
# Tue, 22 Jan 2019 22:31:35 GMT
EXPOSE 80
# Tue, 22 Jan 2019 22:31:35 GMT
CMD ["apache2-foreground"]
# Wed, 23 Jan 2019 11:49:14 GMT
LABEL maintainer=David Goodwin <david@codepoets.co.uk> (@DavidGoodwin)
# Wed, 23 Jan 2019 11:50:06 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 	libpq-dev 	libsqlite3-dev 	; 		docker-php-ext-install 		mysqli 		pdo_mysql 		pdo_pgsql 		pdo_sqlite 		pgsql 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 		ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 			apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 11:50:06 GMT
ARG POSTFIXADMIN_VERSION=3.2
# Wed, 23 Jan 2019 11:50:06 GMT
ARG POSTFIXADMIN_SHA512=9e022e3311bce96342e87925159a048f294ed0e2d4558bd43120b5c6eda35a7a2d128987372d310dfe86680c98a4d8cf3d602afcb20d948c9bba58bed1766560
# Wed, 23 Jan 2019 11:50:06 GMT
ENV POSTFIXADMIN_VERSION=3.2
# Wed, 23 Jan 2019 11:50:06 GMT
ENV POSTFIXADMIN_SHA512=9e022e3311bce96342e87925159a048f294ed0e2d4558bd43120b5c6eda35a7a2d128987372d310dfe86680c98a4d8cf3d602afcb20d948c9bba58bed1766560
# Wed, 23 Jan 2019 11:50:07 GMT
ENV APACHE_DOCUMENT_ROOT=/var/www/html/public
# Wed, 23 Jan 2019 11:50:07 GMT
RUN set -eu; sed -ri -e 's!/var/www/html!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/sites-available/*.conf; 	sed -ri -e 's!/var/www/!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/apache2.conf /etc/apache2/conf-available/*.conf
# Tue, 29 Jan 2019 00:19:57 GMT
RUN set -eu; 	curl -fsSL -o postfixadmin.tar.gz "https://github.com/postfixadmin/postfixadmin/archive/postfixadmin-${POSTFIXADMIN_VERSION}.tar.gz"; 	echo "$POSTFIXADMIN_SHA512 *postfixadmin.tar.gz" | sha512sum -c -; 	mkdir /usr/src/postfixadmin; 	tar -xf postfixadmin.tar.gz -C /usr/src/postfixadmin --strip-components=1; 	rm postfixadmin.tar.gz; 	mkdir -p /usr/src/postfixadmin/templates_c; 	chown -R www-data:www-data /usr/src/postfixadmin
# Tue, 29 Jan 2019 00:19:57 GMT
COPY file:7b9804d962cc9ab943424976141cd6ab11b4bd5e6f589713aab01e577d18b5e9 in /usr/local/bin/ 
# Tue, 29 Jan 2019 00:19:57 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
# Tue, 29 Jan 2019 00:19:58 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:5e6ec7f28fb77f84f64b8c29fcb0a746260563f5858315e3e9fcc4aee2844840`  
		Last Modified: Tue, 22 Jan 2019 19:37:02 GMT  
		Size: 22.5 MB (22500707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf165947b5b75ef63a7872634239e795a3063179895699dc8e0726f1039946b3`  
		Last Modified: Wed, 23 Jan 2019 01:11:30 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bd37682846da479bcfb64459fa36e043d3380a77b401f6de5b862d00d8dcebf`  
		Last Modified: Wed, 23 Jan 2019 01:11:50 GMT  
		Size: 67.4 MB (67442781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99daf8e838e14fb73055ddac03535d506dbf36a5a01c37497ff001c0dbd68f3e`  
		Last Modified: Wed, 23 Jan 2019 01:11:29 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae320713efba9e138236c82142d67bd9d5f05ef4d4a3de877e7aa27d1456ce3e`  
		Last Modified: Wed, 23 Jan 2019 01:12:17 GMT  
		Size: 17.1 MB (17128043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebcb99c48d8c8dd49d64a2d097966dacca7117b4381a54b6835b0afa487e9814`  
		Last Modified: Wed, 23 Jan 2019 01:12:12 GMT  
		Size: 1.3 KB (1337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9867e71b4ab60b84952cf76ca4f3446e994d0760b3d6e16658417c496656dca2`  
		Last Modified: Wed, 23 Jan 2019 01:12:12 GMT  
		Size: 430.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:936eb418164ae6e2bb965f03cb699d969f0ed568d0f965d6f276c944511dbcfb`  
		Last Modified: Wed, 23 Jan 2019 01:12:11 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d9617dfb66bd026b0be8e8119800b84b3d01f08793f248addff29d1eb3890df`  
		Last Modified: Wed, 23 Jan 2019 01:13:42 GMT  
		Size: 12.5 MB (12506442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dd7afaae10961af92770c0101d92fb65c273d2c0f2ddc37e50a27e0544db9e6`  
		Last Modified: Wed, 23 Jan 2019 01:13:40 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f207844da7e135b8cf0e939b9bcdf7ef96851ceb3ee6a8f7250bb3ab3e3f5f0`  
		Last Modified: Wed, 23 Jan 2019 01:13:40 GMT  
		Size: 15.2 MB (15245750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb3ae5e49870b53e95c7f94f3cde8a99114cdc0ca02ce70a4b046439cc82ffd`  
		Last Modified: Wed, 23 Jan 2019 01:13:40 GMT  
		Size: 2.2 KB (2197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44d7d07029db87ecf6218a08a3827b4d33097b1cfad2c41bb2705e1dacf018bb`  
		Last Modified: Wed, 23 Jan 2019 01:13:40 GMT  
		Size: 255.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb91064652b0cf4550ebc10dc2e3320502d1116b095fc0a6c41e6eb64c4c487c`  
		Last Modified: Wed, 23 Jan 2019 01:13:40 GMT  
		Size: 903.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a9fb13d18e61581e102dab92f6ad950246c51eca1e06979c23e77a92006e014`  
		Last Modified: Wed, 23 Jan 2019 11:51:30 GMT  
		Size: 609.5 KB (609529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db16d23b9e42466091afa868e2a97450ae7033905d3c0ab8c46b95a3069d536c`  
		Last Modified: Wed, 23 Jan 2019 11:51:30 GMT  
		Size: 8.2 KB (8220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:571ef8f90d3b25950a8ec03e65000692375cacfb001809f3113e87bfdc91de08`  
		Last Modified: Tue, 29 Jan 2019 00:20:21 GMT  
		Size: 1.3 MB (1333481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4338dcec5c541355bbd6d49c22e3b55bb2fce425158a2dd8beb3c8f31eb26263`  
		Last Modified: Tue, 29 Jan 2019 00:20:21 GMT  
		Size: 1.1 KB (1146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postfixadmin:latest` - linux; arm64 variant v8

```console
$ docker pull postfixadmin@sha256:d6803a69f147f5364d96e676c30834de97c7fd882e2b87713b0c7b71614ac460
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.3 MB (123331274 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:032d28ee6c798cc670d755a8af0e8799539f74c2e63dc6fa384b7212a05f9606`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 23 Jan 2019 10:04:38 GMT
ADD file:64db5736cabe52ff81a1eb31101c1afa1e4a04374e84ae717532a88286d01784 in / 
# Wed, 23 Jan 2019 10:04:39 GMT
CMD ["bash"]
# Fri, 25 Jan 2019 07:42:45 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Fri, 25 Jan 2019 07:42:46 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 25 Jan 2019 07:44:08 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 25 Jan 2019 07:44:09 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 25 Jan 2019 07:44:11 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 25 Jan 2019 07:54:12 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 Jan 2019 07:54:13 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 25 Jan 2019 07:54:13 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 25 Jan 2019 07:54:15 GMT
RUN set -eux; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Fri, 25 Jan 2019 07:54:17 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 25 Jan 2019 07:54:19 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 25 Jan 2019 07:54:20 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 25 Jan 2019 07:54:20 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Fri, 25 Jan 2019 07:54:21 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 25 Jan 2019 07:54:22 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 25 Jan 2019 07:54:23 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 25 Jan 2019 08:32:02 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 25 Jan 2019 08:32:03 GMT
ENV PHP_VERSION=7.2.14
# Fri, 25 Jan 2019 08:32:04 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror
# Fri, 25 Jan 2019 08:32:04 GMT
ENV PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f PHP_MD5=
# Fri, 25 Jan 2019 08:32:35 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 25 Jan 2019 08:32:36 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 25 Jan 2019 08:41:15 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 25 Jan 2019 08:41:17 GMT
COPY multi:0a6fe33cb39694994fa567c75b399b9aa5e477c8770caa9f731607a72819b457 in /usr/local/bin/ 
# Fri, 25 Jan 2019 08:41:24 GMT
RUN docker-php-ext-enable sodium
# Fri, 25 Jan 2019 08:41:27 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 25 Jan 2019 08:41:30 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Fri, 25 Jan 2019 08:41:34 GMT
WORKDIR /var/www/html
# Fri, 25 Jan 2019 08:41:35 GMT
EXPOSE 80
# Fri, 25 Jan 2019 08:41:37 GMT
CMD ["apache2-foreground"]
# Tue, 29 Jan 2019 09:44:36 GMT
LABEL maintainer=David Goodwin <david@codepoets.co.uk> (@DavidGoodwin)
# Tue, 29 Jan 2019 09:46:28 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 	libpq-dev 	libsqlite3-dev 	; 		docker-php-ext-install 		mysqli 		pdo_mysql 		pdo_pgsql 		pdo_sqlite 		pgsql 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 		ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 			apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 09:46:29 GMT
ARG POSTFIXADMIN_VERSION=3.2
# Tue, 29 Jan 2019 09:46:30 GMT
ARG POSTFIXADMIN_SHA512=9e022e3311bce96342e87925159a048f294ed0e2d4558bd43120b5c6eda35a7a2d128987372d310dfe86680c98a4d8cf3d602afcb20d948c9bba58bed1766560
# Tue, 29 Jan 2019 09:46:30 GMT
ENV POSTFIXADMIN_VERSION=3.2
# Tue, 29 Jan 2019 09:46:31 GMT
ENV POSTFIXADMIN_SHA512=9e022e3311bce96342e87925159a048f294ed0e2d4558bd43120b5c6eda35a7a2d128987372d310dfe86680c98a4d8cf3d602afcb20d948c9bba58bed1766560
# Tue, 29 Jan 2019 09:46:32 GMT
ENV APACHE_DOCUMENT_ROOT=/var/www/html/public
# Tue, 29 Jan 2019 09:46:34 GMT
RUN set -eu; sed -ri -e 's!/var/www/html!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/sites-available/*.conf; 	sed -ri -e 's!/var/www/!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/apache2.conf /etc/apache2/conf-available/*.conf
# Tue, 29 Jan 2019 09:46:38 GMT
RUN set -eu; 	curl -fsSL -o postfixadmin.tar.gz "https://github.com/postfixadmin/postfixadmin/archive/postfixadmin-${POSTFIXADMIN_VERSION}.tar.gz"; 	echo "$POSTFIXADMIN_SHA512 *postfixadmin.tar.gz" | sha512sum -c -; 	mkdir /usr/src/postfixadmin; 	tar -xf postfixadmin.tar.gz -C /usr/src/postfixadmin --strip-components=1; 	rm postfixadmin.tar.gz; 	mkdir -p /usr/src/postfixadmin/templates_c; 	chown -R www-data:www-data /usr/src/postfixadmin
# Tue, 29 Jan 2019 09:46:38 GMT
COPY file:7b9804d962cc9ab943424976141cd6ab11b4bd5e6f589713aab01e577d18b5e9 in /usr/local/bin/ 
# Tue, 29 Jan 2019 09:46:39 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
# Tue, 29 Jan 2019 09:46:40 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:711c3a2baeda87a6b9816cb812388d62d17396034e595a68d8ee5f938f9d77b3`  
		Last Modified: Wed, 23 Jan 2019 10:11:36 GMT  
		Size: 20.4 MB (20350180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a273a3c32232329b60ac83d95b6b7744068016759eaf8675589b9dc5b50513b`  
		Last Modified: Fri, 25 Jan 2019 10:11:35 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dbe9d898f22bebde12a9a3868aa7520c4c2250ceae00fa9153248c8f82e5d7b`  
		Last Modified: Fri, 25 Jan 2019 10:12:06 GMT  
		Size: 57.6 MB (57606166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac488f1008ef7811391ec1a02a19be84173ce484a25e46f7f4641ebbce8fcbec`  
		Last Modified: Fri, 25 Jan 2019 10:11:35 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f1173e9c64c514da6d8c6bafbba7be17013209d7ea8fd088cb5e124c80e092`  
		Last Modified: Fri, 25 Jan 2019 10:12:58 GMT  
		Size: 16.7 MB (16711165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c98388262fb672bb0ceff0e361fb5aaed815271fe47e2624df7284736dfe7dd8`  
		Last Modified: Fri, 25 Jan 2019 10:12:48 GMT  
		Size: 1.3 KB (1342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed7a886dc3b7edbee8aadaaf76d25711df48f586f9ebb53e3e8871026d140724`  
		Last Modified: Fri, 25 Jan 2019 10:12:48 GMT  
		Size: 434.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:092bbf92d4041daa2f4cf5625d0b7eb07bf80512241012e26c8cd0bead2107d6`  
		Last Modified: Fri, 25 Jan 2019 10:12:49 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66c8c3882bd24c8e800d569d65615abb5aa81732214840fa66e43a446c7446b8`  
		Last Modified: Fri, 25 Jan 2019 10:15:41 GMT  
		Size: 12.5 MB (12504556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:932ce47bbbe66f0ff55e6e760509c90019f9cb0b94c7ffd66c590bb9b2ab2d00`  
		Last Modified: Fri, 25 Jan 2019 10:15:36 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9be881fb6985de63e0ace9e5c7e9557f29bde8edac7144529898f9a3e00cb331`  
		Last Modified: Fri, 25 Jan 2019 10:15:51 GMT  
		Size: 14.2 MB (14224900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52e4f1293ba756a60e636b137b4259939e88407a7c86aad27cfbc5ae0b659c4d`  
		Last Modified: Fri, 25 Jan 2019 10:15:36 GMT  
		Size: 2.2 KB (2200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b843a3c71d198523cd81cd8345c71f1c449e002bd41d45346f473562871f5fb`  
		Last Modified: Fri, 25 Jan 2019 10:15:36 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:062047dd2f4cc55849f0238f7ce86267f3a376d9a73a28b727e8de776fc98b90`  
		Last Modified: Fri, 25 Jan 2019 10:15:36 GMT  
		Size: 907.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a40169a24ab98c4d053301ea08e65a963d778ad51253a7623ca4a260029e392`  
		Last Modified: Tue, 29 Jan 2019 09:50:49 GMT  
		Size: 584.9 KB (584916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57bc8e4222b03933c82269ceeb0c4f1f0f9d2bb0f8f30ff7d8bcdb47bdd7c39d`  
		Last Modified: Tue, 29 Jan 2019 09:50:49 GMT  
		Size: 8.2 KB (8225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f07a375a48c136278f8ae73eaca9786ec8fec69e4a18288e88aaaf1084cfe3e`  
		Last Modified: Tue, 29 Jan 2019 09:50:50 GMT  
		Size: 1.3 MB (1333475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcf8741bd563f42b3a723a0b3eab08bbb1c0da9ea60b246cce52e66385806813`  
		Last Modified: Tue, 29 Jan 2019 09:50:49 GMT  
		Size: 1.1 KB (1150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postfixadmin:latest` - linux; 386

```console
$ docker pull postfixadmin@sha256:4b094f58ce9ed17b6a0ac1ffc98c2558449f065e32754f76d8eb4d21ace07070
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.4 MB (142364515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dd84bff525ddabe37018a4c794b3cd86b1c2a1f3c63bc30e2a8a1ad51320f8f`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

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
# Sat, 29 Dec 2018 21:45:50 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 21:45:51 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Sat, 29 Dec 2018 21:45:51 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Sat, 29 Dec 2018 21:45:51 GMT
RUN set -eux; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Sat, 29 Dec 2018 21:45:52 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Sat, 29 Dec 2018 21:45:53 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Sat, 29 Dec 2018 21:45:53 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Sat, 29 Dec 2018 21:45:53 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Sat, 29 Dec 2018 21:45:54 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 21:45:54 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 21:45:54 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 29 Dec 2018 22:07:26 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 11 Jan 2019 12:50:42 GMT
ENV PHP_VERSION=7.2.14
# Fri, 11 Jan 2019 12:50:42 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror
# Fri, 11 Jan 2019 12:50:42 GMT
ENV PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f PHP_MD5=
# Fri, 11 Jan 2019 12:50:53 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 11 Jan 2019 12:50:53 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 11 Jan 2019 12:54:18 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 11 Jan 2019 12:54:18 GMT
COPY multi:0a6fe33cb39694994fa567c75b399b9aa5e477c8770caa9f731607a72819b457 in /usr/local/bin/ 
# Fri, 11 Jan 2019 12:54:19 GMT
RUN docker-php-ext-enable sodium
# Fri, 11 Jan 2019 12:54:19 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 11 Jan 2019 12:54:19 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Fri, 11 Jan 2019 12:54:20 GMT
WORKDIR /var/www/html
# Fri, 11 Jan 2019 12:54:20 GMT
EXPOSE 80
# Fri, 11 Jan 2019 12:54:20 GMT
CMD ["apache2-foreground"]
# Tue, 29 Jan 2019 13:25:37 GMT
LABEL maintainer=David Goodwin <david@codepoets.co.uk> (@DavidGoodwin)
# Tue, 29 Jan 2019 13:26:26 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 	libpq-dev 	libsqlite3-dev 	; 		docker-php-ext-install 		mysqli 		pdo_mysql 		pdo_pgsql 		pdo_sqlite 		pgsql 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 		ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 			apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 13:26:26 GMT
ARG POSTFIXADMIN_VERSION=3.2
# Tue, 29 Jan 2019 13:26:26 GMT
ARG POSTFIXADMIN_SHA512=9e022e3311bce96342e87925159a048f294ed0e2d4558bd43120b5c6eda35a7a2d128987372d310dfe86680c98a4d8cf3d602afcb20d948c9bba58bed1766560
# Tue, 29 Jan 2019 13:26:26 GMT
ENV POSTFIXADMIN_VERSION=3.2
# Tue, 29 Jan 2019 13:26:27 GMT
ENV POSTFIXADMIN_SHA512=9e022e3311bce96342e87925159a048f294ed0e2d4558bd43120b5c6eda35a7a2d128987372d310dfe86680c98a4d8cf3d602afcb20d948c9bba58bed1766560
# Tue, 29 Jan 2019 13:26:27 GMT
ENV APACHE_DOCUMENT_ROOT=/var/www/html/public
# Tue, 29 Jan 2019 13:26:28 GMT
RUN set -eu; sed -ri -e 's!/var/www/html!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/sites-available/*.conf; 	sed -ri -e 's!/var/www/!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/apache2.conf /etc/apache2/conf-available/*.conf
# Tue, 29 Jan 2019 13:26:29 GMT
RUN set -eu; 	curl -fsSL -o postfixadmin.tar.gz "https://github.com/postfixadmin/postfixadmin/archive/postfixadmin-${POSTFIXADMIN_VERSION}.tar.gz"; 	echo "$POSTFIXADMIN_SHA512 *postfixadmin.tar.gz" | sha512sum -c -; 	mkdir /usr/src/postfixadmin; 	tar -xf postfixadmin.tar.gz -C /usr/src/postfixadmin --strip-components=1; 	rm postfixadmin.tar.gz; 	mkdir -p /usr/src/postfixadmin/templates_c; 	chown -R www-data:www-data /usr/src/postfixadmin
# Tue, 29 Jan 2019 13:26:29 GMT
COPY file:7b9804d962cc9ab943424976141cd6ab11b4bd5e6f589713aab01e577d18b5e9 in /usr/local/bin/ 
# Tue, 29 Jan 2019 13:26:29 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
# Tue, 29 Jan 2019 13:26:29 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:cac1a3cba6925217785401a8b972064ba1a0dfe60d4e039f49c4dac4b3f4270e`  
		Last Modified: Sun, 30 Dec 2018 01:57:45 GMT  
		Size: 17.6 MB (17561920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9184c6ff5922580665f40d9e2416d6ff748200ba764489ad442486d61570f8d0`  
		Last Modified: Sun, 30 Dec 2018 01:57:40 GMT  
		Size: 1.3 KB (1336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9edc4d80dca7d81ba8b7a97ebf76890d74ca4d440e11b418c39c09686094da0b`  
		Last Modified: Sun, 30 Dec 2018 01:57:40 GMT  
		Size: 430.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c49d3ce320b30bff15e021157c1b88262d848a456dbdf970c8796accf3e9cc4`  
		Last Modified: Sun, 30 Dec 2018 01:57:40 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd62ef36d94e7c9305ffd2eb8a68bd0b1939d0e5f21ce8a25c7ab5db0748013d`  
		Last Modified: Fri, 11 Jan 2019 14:54:17 GMT  
		Size: 12.5 MB (12505836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b436f91e147a9071b2e0dde2cd2939f63ead4fffb43f92d4dc8d39aabfad96b`  
		Last Modified: Fri, 11 Jan 2019 14:54:12 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2848e63e536187e58765f167f5d942e58c4ba788373f18053046374337e6a498`  
		Last Modified: Fri, 11 Jan 2019 14:54:16 GMT  
		Size: 15.7 MB (15686833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b45df8623fc8e136011d091ed53d924d6820771d844b4c27843c8aac1a4a6ca6`  
		Last Modified: Fri, 11 Jan 2019 14:54:17 GMT  
		Size: 2.2 KB (2197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02b7d92b09c9e14b62d1c385941eabe813b6b3fb137191d2b3d3b91806481ada`  
		Last Modified: Fri, 11 Jan 2019 14:54:16 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64c2910211b6c9223772e7d9203a87d7f51672460245fe15ecf00277389bdaed`  
		Last Modified: Fri, 11 Jan 2019 14:54:16 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05c168fa999cdfc887e78bdde44218263daedcbffadede3b00c60f680a54c939`  
		Last Modified: Tue, 29 Jan 2019 13:28:21 GMT  
		Size: 623.7 KB (623658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a2241cea4b9b8acae4c1ca72ab984c395dcdcd391cc1e5d1ae64fc4c812600e`  
		Last Modified: Tue, 29 Jan 2019 13:28:21 GMT  
		Size: 8.2 KB (8218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5124e7219d91434265c63088bf1deafc5dc0a97c44d3fe4cf16056a5a3a99ddb`  
		Last Modified: Tue, 29 Jan 2019 13:28:21 GMT  
		Size: 1.3 MB (1333482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fc2b869ab353967ebe6ea47bafe9e2ccedc472ec2997446ff363b951866c923`  
		Last Modified: Tue, 29 Jan 2019 13:28:21 GMT  
		Size: 1.1 KB (1148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
