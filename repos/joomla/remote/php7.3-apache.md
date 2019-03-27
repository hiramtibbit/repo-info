## `joomla:php7.3-apache`

```console
$ docker pull joomla@sha256:ee8507e1445da108e3f3e1575fd8b00dfc09d46957bc341e55de65694410c3d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `joomla:php7.3-apache` - linux; amd64

```console
$ docker pull joomla@sha256:6ac3253f58f587f5232634876c0615d9dda3fb3af5c9588f0953cc17b608a417
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.6 MB (147626205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da7c4dd6af3cc1719566d89aa325077f575056ba98c7e4fcccc9ffd77c5fafee`
-	Entrypoint: `["\/entrypoint.sh"]`
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
# Wed, 27 Mar 2019 01:09:13 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Wed, 27 Mar 2019 01:09:13 GMT
ENV PHP_VERSION=7.3.3
# Wed, 27 Mar 2019 01:09:13 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.3.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.3.tar.xz.asc/from/this/mirror
# Wed, 27 Mar 2019 01:09:14 GMT
ENV PHP_SHA256=6bb03e79a183d0cb059a6d117bbb2e0679cab667fb713a13c6a16f56bebab9b3 PHP_MD5=
# Wed, 27 Mar 2019 01:09:23 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 27 Mar 2019 01:09:23 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Wed, 27 Mar 2019 01:13:40 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 27 Mar 2019 01:13:40 GMT
COPY multi:0002d7d5b06fb24f987aa4b027705dc71f81957419a02be5b9014431514c25b5 in /usr/local/bin/ 
# Wed, 27 Mar 2019 01:13:41 GMT
RUN docker-php-ext-enable sodium
# Wed, 27 Mar 2019 01:13:42 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 27 Mar 2019 01:13:42 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Wed, 27 Mar 2019 01:13:42 GMT
WORKDIR /var/www/html
# Wed, 27 Mar 2019 01:13:43 GMT
EXPOSE 80
# Wed, 27 Mar 2019 01:13:43 GMT
CMD ["apache2-foreground"]
# Wed, 27 Mar 2019 12:47:11 GMT
LABEL maintainer=Michael Babker <michael.babker@joomla.org> (@mbabker)
# Wed, 27 Mar 2019 12:47:12 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Wed, 27 Mar 2019 12:47:13 GMT
RUN a2enmod rewrite
# Wed, 27 Mar 2019 12:50:25 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libbz2-dev 		libjpeg-dev 		libldap2-dev 		libmemcached-dev 		libpng-dev 		libpq-dev 		libzip-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install 		bz2 		gd 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 		pecl install APCu-5.1.17; 	pecl install memcached-3.1.3; 	pecl install redis-4.3.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:50:26 GMT
VOLUME [/var/www/html]
# Wed, 27 Mar 2019 12:50:26 GMT
ENV JOOMLA_VERSION=3.9.4
# Wed, 27 Mar 2019 12:50:26 GMT
ENV JOOMLA_SHA512=fca41b63396c2f5429680297224f3345bc845b3c62a234c82c5c28af477f4a2b176c53d8b4b821b0c71a28a06f3c2a270b42d54396f3cf6075d72e27f136c4d9
# Wed, 27 Mar 2019 12:50:34 GMT
RUN curl -o joomla.tar.bz2 -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.tar.bz2 	&& echo "$JOOMLA_SHA512 *joomla.tar.bz2" | sha512sum -c - 	&& mkdir /usr/src/joomla 	&& tar -xf joomla.tar.bz2 -C /usr/src/joomla 	&& rm joomla.tar.bz2 	&& chown -R www-data:www-data /usr/src/joomla
# Wed, 27 Mar 2019 12:50:35 GMT
COPY file:fcc18c5b9c2d514cfb965bab84e10b4f924a39a5f202055df75d7990da099d8f in /entrypoint.sh 
# Wed, 27 Mar 2019 12:50:35 GMT
COPY file:5a85d779aaae74cfa3ab6228df0f24236d4d5ad9097e2a1b277e3daea0d6d3dc in /makedb.php 
# Wed, 27 Mar 2019 12:50:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Mar 2019 12:50:36 GMT
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
	-	`sha256:9a83aba0e520aa0df14d27aac9e2416741fc87081c16218eba3538b08e1ef8fd`  
		Last Modified: Wed, 27 Mar 2019 03:24:34 GMT  
		Size: 12.3 MB (12320776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:580e40123e1c2b062f721323f8a5e2cdc5ab2896968cd32e99d7e962b3091c1f`  
		Last Modified: Wed, 27 Mar 2019 03:24:32 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9caa270f9f0daae4e9ccb336753ee29e69400fd9ee090d55f48443146b85eb7`  
		Last Modified: Wed, 27 Mar 2019 03:24:36 GMT  
		Size: 15.6 MB (15564449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c88a6e18b7ca31bf822885d5f3e759409f46cb9c6725b3ce3cfe1695d5f5209`  
		Last Modified: Wed, 27 Mar 2019 03:24:32 GMT  
		Size: 2.2 KB (2201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae42feed495c55ec754524d3dd6dc940622b6f07deb7fdc0e7fc07316f125cd9`  
		Last Modified: Wed, 27 Mar 2019 03:24:32 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3fab3ec90ee7acf3bdaf42303964f5ec67cd62a133e6a8ea900ae2ccf38dcbc`  
		Last Modified: Wed, 27 Mar 2019 03:24:32 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7984697576e0bb6b882dce14d936bd298c26bd1d7ad398f86ed2aa76fc72fa2e`  
		Last Modified: Wed, 27 Mar 2019 12:55:42 GMT  
		Size: 311.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b42a788284d636126b237108c6b39324569f3bce7e8b0181973ad24fa954c32`  
		Last Modified: Wed, 27 Mar 2019 12:55:44 GMT  
		Size: 3.1 MB (3083887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fb272f1f8dde1877e2b45c32d250600ccc745982d3641e9c3c1093c5a4908ca`  
		Last Modified: Wed, 27 Mar 2019 12:55:47 GMT  
		Size: 9.6 MB (9581949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f03cc96eee9ca88c0129d8e3438c22debfa4940b25cb7cdb109e3084a9c151f`  
		Last Modified: Wed, 27 Mar 2019 12:55:42 GMT  
		Size: 1.2 KB (1172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4b84465560444ca7fad02fe28c10946629af8b4db86bec802bd965001f59907`  
		Last Modified: Wed, 27 Mar 2019 12:55:43 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `joomla:php7.3-apache` - linux; arm variant v5

```console
$ docker pull joomla@sha256:e10ab583583de8a1671ddc79326a4648923f16b7efb42a824abc7359ea58b428
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.9 MB (134941954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20e7bd1423b9c1278240fe2ec68773d616da5024543f39bbc5293743be0595aa`
-	Entrypoint: `["\/entrypoint.sh"]`
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
# Wed, 27 Mar 2019 09:59:24 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Wed, 27 Mar 2019 09:59:25 GMT
ENV PHP_VERSION=7.3.3
# Wed, 27 Mar 2019 09:59:25 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.3.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.3.tar.xz.asc/from/this/mirror
# Wed, 27 Mar 2019 09:59:25 GMT
ENV PHP_SHA256=6bb03e79a183d0cb059a6d117bbb2e0679cab667fb713a13c6a16f56bebab9b3 PHP_MD5=
# Wed, 27 Mar 2019 09:59:41 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 27 Mar 2019 09:59:41 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Wed, 27 Mar 2019 10:05:10 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 27 Mar 2019 10:05:11 GMT
COPY multi:0002d7d5b06fb24f987aa4b027705dc71f81957419a02be5b9014431514c25b5 in /usr/local/bin/ 
# Wed, 27 Mar 2019 10:05:13 GMT
RUN docker-php-ext-enable sodium
# Wed, 27 Mar 2019 10:05:13 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 27 Mar 2019 10:05:13 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Wed, 27 Mar 2019 10:05:14 GMT
WORKDIR /var/www/html
# Wed, 27 Mar 2019 10:05:14 GMT
EXPOSE 80
# Wed, 27 Mar 2019 10:05:15 GMT
CMD ["apache2-foreground"]
# Wed, 27 Mar 2019 15:01:56 GMT
LABEL maintainer=Michael Babker <michael.babker@joomla.org> (@mbabker)
# Wed, 27 Mar 2019 15:01:56 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Wed, 27 Mar 2019 15:01:59 GMT
RUN a2enmod rewrite
# Wed, 27 Mar 2019 15:07:44 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libbz2-dev 		libjpeg-dev 		libldap2-dev 		libmemcached-dev 		libpng-dev 		libpq-dev 		libzip-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install 		bz2 		gd 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 		pecl install APCu-5.1.17; 	pecl install memcached-3.1.3; 	pecl install redis-4.3.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 15:07:45 GMT
VOLUME [/var/www/html]
# Wed, 27 Mar 2019 15:07:45 GMT
ENV JOOMLA_VERSION=3.9.4
# Wed, 27 Mar 2019 15:07:46 GMT
ENV JOOMLA_SHA512=fca41b63396c2f5429680297224f3345bc845b3c62a234c82c5c28af477f4a2b176c53d8b4b821b0c71a28a06f3c2a270b42d54396f3cf6075d72e27f136c4d9
# Wed, 27 Mar 2019 15:07:55 GMT
RUN curl -o joomla.tar.bz2 -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.tar.bz2 	&& echo "$JOOMLA_SHA512 *joomla.tar.bz2" | sha512sum -c - 	&& mkdir /usr/src/joomla 	&& tar -xf joomla.tar.bz2 -C /usr/src/joomla 	&& rm joomla.tar.bz2 	&& chown -R www-data:www-data /usr/src/joomla
# Wed, 27 Mar 2019 15:07:57 GMT
COPY file:fcc18c5b9c2d514cfb965bab84e10b4f924a39a5f202055df75d7990da099d8f in /entrypoint.sh 
# Wed, 27 Mar 2019 15:07:58 GMT
COPY file:5a85d779aaae74cfa3ab6228df0f24236d4d5ad9097e2a1b277e3daea0d6d3dc in /makedb.php 
# Wed, 27 Mar 2019 15:07:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Mar 2019 15:07:59 GMT
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
	-	`sha256:a2c99726cbdfffbd64eb3ad047e7a6e4fbdcaa022967b66cbc479474f543fd18`  
		Last Modified: Wed, 27 Mar 2019 11:21:40 GMT  
		Size: 12.3 MB (12318535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb9515524e7451a2b107d7bd1a1844ad6228cbedf2d0fa7a06eb70e6335c5ebe`  
		Last Modified: Wed, 27 Mar 2019 11:21:38 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4faf08b72a134ab8afb439461d1c0f1407ac9eccc9da1d571f1c4804276e1c96`  
		Last Modified: Wed, 27 Mar 2019 11:21:43 GMT  
		Size: 14.7 MB (14749093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50a588cbcc2e4e5b18cc8b3f884088d693f427958b8eb2eb028d74e98d778dca`  
		Last Modified: Wed, 27 Mar 2019 11:21:37 GMT  
		Size: 2.2 KB (2199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4900c38c20008818195ac7e8e5b22e1caa4170dd7ed506f8127b4e53170e4633`  
		Last Modified: Wed, 27 Mar 2019 11:21:38 GMT  
		Size: 257.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51fc827c27643d75695884f6f2d959cc096f0de54eca3efc23efdf813559d9e6`  
		Last Modified: Wed, 27 Mar 2019 11:21:37 GMT  
		Size: 900.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86032dfce91cbe38788d93e34aa60092cec9bf6f55813a872850d55f53d46a0e`  
		Last Modified: Wed, 27 Mar 2019 15:14:26 GMT  
		Size: 314.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1469488b26f7994665da02e01929a0c7bd149e0ad33d4c8f9092388f4d4d1ebc`  
		Last Modified: Wed, 27 Mar 2019 15:14:27 GMT  
		Size: 3.0 MB (3000917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5a11e5751cc1d0117758d26d78f977496488220333668086f36804664065592`  
		Last Modified: Wed, 27 Mar 2019 15:14:31 GMT  
		Size: 9.6 MB (9582086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33c0ac89760c9019db0e790d3e7e9b5ef9b17e937804d9994a2ba504babd4ad5`  
		Last Modified: Wed, 27 Mar 2019 15:14:26 GMT  
		Size: 1.2 KB (1172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76d289bc396744b71b4a4a61745296b908f68162e668991eb8174895903c772a`  
		Last Modified: Wed, 27 Mar 2019 15:14:26 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `joomla:php7.3-apache` - linux; arm variant v7

```console
$ docker pull joomla@sha256:d29a651e5363c1881429b4352a5867a9f6db4e03f04437e07a3599086381b51b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.7 MB (127718894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:694b4e9a76f519def09705c7648a4ceb129d19632246d3c3b6d76730785f31d8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 27 Mar 2019 12:07:48 GMT
ADD file:6bf06125d936ccaf67981470df5ef6b9bd5dee3c0ef0e042a448fc60bb02f191 in / 
# Wed, 27 Mar 2019 12:07:49 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 13:25:47 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 27 Mar 2019 13:25:48 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 27 Mar 2019 13:26:21 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 27 Mar 2019 13:26:23 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 27 Mar 2019 13:26:25 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 27 Mar 2019 13:33:31 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 27 Mar 2019 13:33:32 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 27 Mar 2019 13:36:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Wed, 27 Mar 2019 13:36:07 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 27 Mar 2019 13:36:09 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 27 Mar 2019 13:36:09 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 27 Mar 2019 13:36:10 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 27 Mar 2019 13:36:10 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 27 Mar 2019 13:36:11 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 27 Mar 2019 13:36:11 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 27 Mar 2019 13:36:12 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Wed, 27 Mar 2019 13:36:12 GMT
ENV PHP_VERSION=7.3.3
# Wed, 27 Mar 2019 13:36:12 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.3.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.3.tar.xz.asc/from/this/mirror
# Wed, 27 Mar 2019 13:36:13 GMT
ENV PHP_SHA256=6bb03e79a183d0cb059a6d117bbb2e0679cab667fb713a13c6a16f56bebab9b3 PHP_MD5=
# Wed, 27 Mar 2019 13:36:29 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 27 Mar 2019 13:36:29 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Wed, 27 Mar 2019 13:39:22 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 27 Mar 2019 13:39:24 GMT
COPY multi:0002d7d5b06fb24f987aa4b027705dc71f81957419a02be5b9014431514c25b5 in /usr/local/bin/ 
# Wed, 27 Mar 2019 13:39:27 GMT
RUN docker-php-ext-enable sodium
# Wed, 27 Mar 2019 13:39:28 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 27 Mar 2019 13:39:29 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Wed, 27 Mar 2019 13:39:30 GMT
WORKDIR /var/www/html
# Wed, 27 Mar 2019 13:39:31 GMT
EXPOSE 80
# Wed, 27 Mar 2019 13:39:31 GMT
CMD ["apache2-foreground"]
# Wed, 27 Mar 2019 17:49:59 GMT
LABEL maintainer=Michael Babker <michael.babker@joomla.org> (@mbabker)
# Wed, 27 Mar 2019 17:49:59 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Wed, 27 Mar 2019 17:50:01 GMT
RUN a2enmod rewrite
# Wed, 27 Mar 2019 17:53:00 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libbz2-dev 		libjpeg-dev 		libldap2-dev 		libmemcached-dev 		libpng-dev 		libpq-dev 		libzip-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install 		bz2 		gd 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 		pecl install APCu-5.1.17; 	pecl install memcached-3.1.3; 	pecl install redis-4.3.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 17:53:00 GMT
VOLUME [/var/www/html]
# Wed, 27 Mar 2019 17:53:00 GMT
ENV JOOMLA_VERSION=3.9.4
# Wed, 27 Mar 2019 17:53:01 GMT
ENV JOOMLA_SHA512=fca41b63396c2f5429680297224f3345bc845b3c62a234c82c5c28af477f4a2b176c53d8b4b821b0c71a28a06f3c2a270b42d54396f3cf6075d72e27f136c4d9
# Wed, 27 Mar 2019 17:53:09 GMT
RUN curl -o joomla.tar.bz2 -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.tar.bz2 	&& echo "$JOOMLA_SHA512 *joomla.tar.bz2" | sha512sum -c - 	&& mkdir /usr/src/joomla 	&& tar -xf joomla.tar.bz2 -C /usr/src/joomla 	&& rm joomla.tar.bz2 	&& chown -R www-data:www-data /usr/src/joomla
# Wed, 27 Mar 2019 17:53:11 GMT
COPY file:fcc18c5b9c2d514cfb965bab84e10b4f924a39a5f202055df75d7990da099d8f in /entrypoint.sh 
# Wed, 27 Mar 2019 17:53:11 GMT
COPY file:5a85d779aaae74cfa3ab6228df0f24236d4d5ad9097e2a1b277e3daea0d6d3dc in /makedb.php 
# Wed, 27 Mar 2019 17:53:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Mar 2019 17:53:12 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:fac132c5d16f670820c8c4ae332bd663c2ff856e9af86b2b23a201db263d851e`  
		Last Modified: Wed, 27 Mar 2019 12:13:15 GMT  
		Size: 19.3 MB (19282442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81b01ea1cc93b3873c41af54001d5339edc6390542539335a03d26e915ea4881`  
		Last Modified: Wed, 27 Mar 2019 14:49:30 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f6dbde6a9fec8c62956c5927935406df6e6661479c23836bdc7c52948f6d80c`  
		Last Modified: Wed, 27 Mar 2019 14:49:48 GMT  
		Size: 53.6 MB (53588806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0a44078fb42eccfbe7175e1040007d9fff44e535963a8d4fc99447139f63982`  
		Last Modified: Wed, 27 Mar 2019 14:49:28 GMT  
		Size: 285.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c5dd1d3e43fc54b5459d8646cc56e8df980718e354ca82706aa639c733ca890`  
		Last Modified: Wed, 27 Mar 2019 14:50:26 GMT  
		Size: 16.2 MB (16159587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0603d19f2293eb9c3f14fca1e401bb45bc679b4cb0a1cf87e7de01a20e67d61c`  
		Last Modified: Wed, 27 Mar 2019 14:50:20 GMT  
		Size: 477.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08985eae825a95a2701766f6626841d93451060323f73d9d247f167c3e3309dc`  
		Last Modified: Wed, 27 Mar 2019 14:50:19 GMT  
		Size: 518.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfb3016e8d158ca67e4bf05264ad9de0c572b5eee1152b32fbac1e6741b9dde0`  
		Last Modified: Wed, 27 Mar 2019 14:50:21 GMT  
		Size: 12.3 MB (12318526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2f213fc7d66842bcf17efae1f01a8cde452c99c6aaa7558e32102e5540cd436`  
		Last Modified: Wed, 27 Mar 2019 14:50:19 GMT  
		Size: 502.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a1670fef5a45eaa126b3208b5d5e32901b3a74ab39f3df0d2eed35801c5bbea`  
		Last Modified: Wed, 27 Mar 2019 14:50:23 GMT  
		Size: 13.9 MB (13889237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5b6cb621f8cbf6184dfbf33e0b8b9c582fc435a56df65e80b133b29d1d2568b`  
		Last Modified: Wed, 27 Mar 2019 14:50:18 GMT  
		Size: 2.2 KB (2204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:505af121fc4d95810dbe3ddc4b8b118bfdc73b94d23be01fb73c543eb354613d`  
		Last Modified: Wed, 27 Mar 2019 14:50:18 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:335b48f25145e67804882f46d10f26024bfc9b753580e4c1027fd17d8e95a889`  
		Last Modified: Wed, 27 Mar 2019 14:50:18 GMT  
		Size: 905.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecf7b6337e2c04de20cd9d576a8db302a0507c95e1b7cbdf512ce66d4f118ba7`  
		Last Modified: Wed, 27 Mar 2019 17:59:11 GMT  
		Size: 313.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a095466bd846d4b9528a3a343baa123f29b1ce119a0c2392e7e7176bf2816daa`  
		Last Modified: Wed, 27 Mar 2019 17:59:12 GMT  
		Size: 2.9 MB (2890724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46105442d0c3eaeb971fbc390ef1eff77b12fefd3b601bf28345ae85124b8b6a`  
		Last Modified: Wed, 27 Mar 2019 17:59:16 GMT  
		Size: 9.6 MB (9582095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bbdc45129372f63d799c86708be6dffcf14f6a40b295ee33bad9c210ec8e265`  
		Last Modified: Wed, 27 Mar 2019 17:59:11 GMT  
		Size: 1.2 KB (1172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ea89d4a67792f16b013d1a365cbd034938702b0f41cdf8ee02fa374dd41f00c`  
		Last Modified: Wed, 27 Mar 2019 17:59:11 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `joomla:php7.3-apache` - linux; arm64 variant v8

```console
$ docker pull joomla@sha256:b53214c1e8d4b5920e06e0cf584fa40d0772105665711f30a6d08fd2dd92f417
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.4 MB (134411212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbc17713b472a1768bf066a47788504adccf0f3ae93aa176c0e82cd356668bf3`
-	Entrypoint: `["\/entrypoint.sh"]`
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
# Sat, 09 Mar 2019 10:16:39 GMT
ENV PHP_VERSION=7.3.3
# Sat, 09 Mar 2019 10:16:40 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.3.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.3.tar.xz.asc/from/this/mirror
# Sat, 09 Mar 2019 10:16:41 GMT
ENV PHP_SHA256=6bb03e79a183d0cb059a6d117bbb2e0679cab667fb713a13c6a16f56bebab9b3 PHP_MD5=
# Sat, 09 Mar 2019 10:17:22 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 09 Mar 2019 10:17:22 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Mar 2019 10:25:13 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Mar 2019 10:25:16 GMT
COPY multi:0002d7d5b06fb24f987aa4b027705dc71f81957419a02be5b9014431514c25b5 in /usr/local/bin/ 
# Sat, 09 Mar 2019 10:25:20 GMT
RUN docker-php-ext-enable sodium
# Sat, 09 Mar 2019 10:25:21 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Mar 2019 10:25:22 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Sat, 09 Mar 2019 10:25:24 GMT
WORKDIR /var/www/html
# Sat, 09 Mar 2019 10:25:25 GMT
EXPOSE 80
# Sat, 09 Mar 2019 10:25:26 GMT
CMD ["apache2-foreground"]
# Sat, 09 Mar 2019 15:43:52 GMT
LABEL maintainer=Michael Babker <michael.babker@joomla.org> (@mbabker)
# Sat, 09 Mar 2019 15:43:53 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Sat, 09 Mar 2019 15:43:56 GMT
RUN a2enmod rewrite
# Fri, 15 Mar 2019 09:28:23 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libbz2-dev 		libjpeg-dev 		libldap2-dev 		libmemcached-dev 		libpng-dev 		libpq-dev 		libzip-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install 		bz2 		gd 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 		pecl install APCu-5.1.17; 	pecl install memcached-3.1.3; 	pecl install redis-4.3.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Fri, 15 Mar 2019 09:28:24 GMT
VOLUME [/var/www/html]
# Fri, 15 Mar 2019 09:28:25 GMT
ENV JOOMLA_VERSION=3.9.4
# Fri, 15 Mar 2019 09:28:26 GMT
ENV JOOMLA_SHA512=fca41b63396c2f5429680297224f3345bc845b3c62a234c82c5c28af477f4a2b176c53d8b4b821b0c71a28a06f3c2a270b42d54396f3cf6075d72e27f136c4d9
# Fri, 15 Mar 2019 09:28:37 GMT
RUN curl -o joomla.tar.bz2 -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.tar.bz2 	&& echo "$JOOMLA_SHA512 *joomla.tar.bz2" | sha512sum -c - 	&& mkdir /usr/src/joomla 	&& tar -xf joomla.tar.bz2 -C /usr/src/joomla 	&& rm joomla.tar.bz2 	&& chown -R www-data:www-data /usr/src/joomla
# Fri, 15 Mar 2019 09:28:38 GMT
COPY file:fcc18c5b9c2d514cfb965bab84e10b4f924a39a5f202055df75d7990da099d8f in /entrypoint.sh 
# Fri, 15 Mar 2019 09:28:38 GMT
COPY file:5a85d779aaae74cfa3ab6228df0f24236d4d5ad9097e2a1b277e3daea0d6d3dc in /makedb.php 
# Fri, 15 Mar 2019 09:28:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 15 Mar 2019 09:28:40 GMT
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
	-	`sha256:a4fe1918b06ca7e9ec6c15e0120921427f0d0dcdaf3af1c58a1ae816b991b87a`  
		Last Modified: Sat, 09 Mar 2019 14:53:53 GMT  
		Size: 12.3 MB (12319221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6be50d469157f53b728104074a05c74c18f986bb1f4b92b77499c3246c2b9e62`  
		Last Modified: Sat, 09 Mar 2019 14:53:49 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5543112751b7fd809df58faab15a100ae01e35375c32ac82e99042dc4ca05abe`  
		Last Modified: Sat, 09 Mar 2019 14:53:56 GMT  
		Size: 14.9 MB (14855882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b48315f722849804bfc9c7eaab4d51c14bc5928187a7618d1689d211328cd7d`  
		Last Modified: Sat, 09 Mar 2019 14:53:49 GMT  
		Size: 2.2 KB (2203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f9eed1ef841e7a45dd8fdee57d354b88f936923ab2e44bf846ec136371efc8a`  
		Last Modified: Sat, 09 Mar 2019 14:53:49 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8be5ef8169cb5c4e0147ad110d0f26d34b9850761a2905b05671632ffe3dea99`  
		Last Modified: Sat, 09 Mar 2019 14:53:49 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:647f008d6c99ee0ae360ef2c0e6f926d86234b00f8850a4b5f05c551a064fea4`  
		Last Modified: Sat, 09 Mar 2019 16:01:58 GMT  
		Size: 316.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59b3028875035db3224f45f1bbbe970dc36307855e07566e2776408d8890c70c`  
		Last Modified: Fri, 15 Mar 2019 09:43:03 GMT  
		Size: 3.0 MB (2981185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08ebc27b71b4c56c47f770a9315fa924a1210c4f666032e4921e81842c68981b`  
		Last Modified: Fri, 15 Mar 2019 09:43:07 GMT  
		Size: 9.6 MB (9581951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bcc2e34285b115f09a116d205c962e62b3cc1a481187375d30bcda0128c2431`  
		Last Modified: Fri, 15 Mar 2019 09:43:01 GMT  
		Size: 1.2 KB (1172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:900d97f458db8919bcae8310e907e08f2da3cac594d56227bf8063bd1046d0bd`  
		Last Modified: Fri, 15 Mar 2019 09:43:02 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `joomla:php7.3-apache` - linux; 386

```console
$ docker pull joomla@sha256:263199e2ffa50038543ccac86b3ffbda012e62c9212f23dbabfc90848badaf79
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.2 MB (153229954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04b0b1aa57a05956d3893189ce871dea2da2fe89ca88ee3a06917813038f3361`
-	Entrypoint: `["\/entrypoint.sh"]`
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
# Tue, 05 Mar 2019 17:58:50 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Sat, 09 Mar 2019 13:42:32 GMT
ENV PHP_VERSION=7.3.3
# Sat, 09 Mar 2019 13:42:32 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.3.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.3.tar.xz.asc/from/this/mirror
# Sat, 09 Mar 2019 13:42:32 GMT
ENV PHP_SHA256=6bb03e79a183d0cb059a6d117bbb2e0679cab667fb713a13c6a16f56bebab9b3 PHP_MD5=
# Sat, 09 Mar 2019 13:42:42 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 09 Mar 2019 13:42:42 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Mar 2019 13:46:12 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Mar 2019 13:46:12 GMT
COPY multi:0002d7d5b06fb24f987aa4b027705dc71f81957419a02be5b9014431514c25b5 in /usr/local/bin/ 
# Sat, 09 Mar 2019 13:46:13 GMT
RUN docker-php-ext-enable sodium
# Sat, 09 Mar 2019 13:46:13 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Mar 2019 13:46:13 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Sat, 09 Mar 2019 13:46:13 GMT
WORKDIR /var/www/html
# Sat, 09 Mar 2019 13:46:14 GMT
EXPOSE 80
# Sat, 09 Mar 2019 13:46:14 GMT
CMD ["apache2-foreground"]
# Sat, 09 Mar 2019 18:26:08 GMT
LABEL maintainer=Michael Babker <michael.babker@joomla.org> (@mbabker)
# Sat, 09 Mar 2019 18:26:08 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Sat, 09 Mar 2019 18:26:09 GMT
RUN a2enmod rewrite
# Fri, 15 Mar 2019 11:01:28 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libbz2-dev 		libjpeg-dev 		libldap2-dev 		libmemcached-dev 		libpng-dev 		libpq-dev 		libzip-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install 		bz2 		gd 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 		pecl install APCu-5.1.17; 	pecl install memcached-3.1.3; 	pecl install redis-4.3.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Fri, 15 Mar 2019 11:01:28 GMT
VOLUME [/var/www/html]
# Fri, 15 Mar 2019 11:01:28 GMT
ENV JOOMLA_VERSION=3.9.4
# Fri, 15 Mar 2019 11:01:28 GMT
ENV JOOMLA_SHA512=fca41b63396c2f5429680297224f3345bc845b3c62a234c82c5c28af477f4a2b176c53d8b4b821b0c71a28a06f3c2a270b42d54396f3cf6075d72e27f136c4d9
# Fri, 15 Mar 2019 11:01:33 GMT
RUN curl -o joomla.tar.bz2 -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.tar.bz2 	&& echo "$JOOMLA_SHA512 *joomla.tar.bz2" | sha512sum -c - 	&& mkdir /usr/src/joomla 	&& tar -xf joomla.tar.bz2 -C /usr/src/joomla 	&& rm joomla.tar.bz2 	&& chown -R www-data:www-data /usr/src/joomla
# Fri, 15 Mar 2019 11:01:33 GMT
COPY file:fcc18c5b9c2d514cfb965bab84e10b4f924a39a5f202055df75d7990da099d8f in /entrypoint.sh 
# Fri, 15 Mar 2019 11:01:34 GMT
COPY file:5a85d779aaae74cfa3ab6228df0f24236d4d5ad9097e2a1b277e3daea0d6d3dc in /makedb.php 
# Fri, 15 Mar 2019 11:01:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 15 Mar 2019 11:01:34 GMT
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
	-	`sha256:c352b05b4378058eb69e5c5afdb4bc96657d84d1263d0e08bef93170a3ce4bd3`  
		Last Modified: Sat, 09 Mar 2019 17:18:33 GMT  
		Size: 12.3 MB (12320016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47c26728fb02de9dc55db057f1fb999f2ca5679f3e03feb045494ff6cd26d67d`  
		Last Modified: Sat, 09 Mar 2019 17:18:31 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22c1e9374ec7da23c781f9f59e4dc0e4402a4b93d7e791c761e82454ebc7988e`  
		Last Modified: Sat, 09 Mar 2019 17:18:36 GMT  
		Size: 16.0 MB (16004240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd8cc0cc26c95e5c3c8d9879c3f75d0687ccf57263782afa1accd95e039f4f3d`  
		Last Modified: Sat, 09 Mar 2019 17:18:31 GMT  
		Size: 2.2 KB (2200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:306834957675d574f61e9c658a6e75d2b093f27c61931738902ae78ae553e4b1`  
		Last Modified: Sat, 09 Mar 2019 17:18:31 GMT  
		Size: 256.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52323bddb8193984466078062546ca7dc2d04d8a2526a5f21dfc98118bb3c21a`  
		Last Modified: Sat, 09 Mar 2019 17:18:31 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3fa4236ea12b7583e78818a2d5c1b96d72c25544141d624d2b2477f7dc3dc47`  
		Last Modified: Sat, 09 Mar 2019 18:33:53 GMT  
		Size: 312.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3a9e13858b33e270196b3edde04dcbf9fc575bb193f41d6dfb9354a57f98263`  
		Last Modified: Fri, 15 Mar 2019 11:07:13 GMT  
		Size: 3.1 MB (3116213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:361b6ce7c7344f2c5d02a33a2db78bb89798d363a8c1eeb7b0c69886c4eb8bec`  
		Last Modified: Fri, 15 Mar 2019 11:07:16 GMT  
		Size: 9.6 MB (9581948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed1f29e55539ff4f152f403635f9680bbe9b3e560eb2426945eff4d7ce770b31`  
		Last Modified: Fri, 15 Mar 2019 11:07:12 GMT  
		Size: 1.2 KB (1172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f14811763807e7752531147b5126f80bca4619560b7d78887e97bb6a9a7c6fa3`  
		Last Modified: Fri, 15 Mar 2019 11:07:12 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `joomla:php7.3-apache` - linux; ppc64le

```console
$ docker pull joomla@sha256:efc7990d1083120e071120042f2bd98939c10935b7beeec4967930f292b172a6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.3 MB (142307009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad28539b4e4fd4ee456a5d8a88d07cdc7148871d2eb3f94375e2be39b9cf57fa`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 27 Mar 2019 08:25:17 GMT
ADD file:ef0d89af4ccdb491595dd964213059d7802952b9f452040c4f936f803ae3e3fd in / 
# Wed, 27 Mar 2019 08:25:20 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 10:55:04 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 27 Mar 2019 10:55:06 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 27 Mar 2019 10:57:39 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 27 Mar 2019 10:57:43 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 27 Mar 2019 10:57:48 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 27 Mar 2019 11:04:15 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 27 Mar 2019 11:04:18 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 27 Mar 2019 11:05:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Wed, 27 Mar 2019 11:05:09 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 27 Mar 2019 11:05:15 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 27 Mar 2019 11:05:17 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 27 Mar 2019 11:05:18 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 27 Mar 2019 11:05:19 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 27 Mar 2019 11:05:21 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 27 Mar 2019 11:05:22 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 27 Mar 2019 11:05:23 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Wed, 27 Mar 2019 11:05:26 GMT
ENV PHP_VERSION=7.3.3
# Wed, 27 Mar 2019 11:05:28 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.3.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.3.tar.xz.asc/from/this/mirror
# Wed, 27 Mar 2019 11:05:31 GMT
ENV PHP_SHA256=6bb03e79a183d0cb059a6d117bbb2e0679cab667fb713a13c6a16f56bebab9b3 PHP_MD5=
# Wed, 27 Mar 2019 11:06:09 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 27 Mar 2019 11:06:10 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Wed, 27 Mar 2019 11:10:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 27 Mar 2019 11:10:26 GMT
COPY multi:0002d7d5b06fb24f987aa4b027705dc71f81957419a02be5b9014431514c25b5 in /usr/local/bin/ 
# Wed, 27 Mar 2019 11:10:33 GMT
RUN docker-php-ext-enable sodium
# Wed, 27 Mar 2019 11:10:35 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 27 Mar 2019 11:10:36 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Wed, 27 Mar 2019 11:10:40 GMT
WORKDIR /var/www/html
# Wed, 27 Mar 2019 11:10:43 GMT
EXPOSE 80
# Wed, 27 Mar 2019 11:10:45 GMT
CMD ["apache2-foreground"]
# Wed, 27 Mar 2019 17:58:14 GMT
LABEL maintainer=Michael Babker <michael.babker@joomla.org> (@mbabker)
# Wed, 27 Mar 2019 17:58:16 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Wed, 27 Mar 2019 17:58:26 GMT
RUN a2enmod rewrite
# Wed, 27 Mar 2019 18:01:46 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libbz2-dev 		libjpeg-dev 		libldap2-dev 		libmemcached-dev 		libpng-dev 		libpq-dev 		libzip-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install 		bz2 		gd 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 		pecl install APCu-5.1.17; 	pecl install memcached-3.1.3; 	pecl install redis-4.3.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 18:01:50 GMT
VOLUME [/var/www/html]
# Wed, 27 Mar 2019 18:01:53 GMT
ENV JOOMLA_VERSION=3.9.4
# Wed, 27 Mar 2019 18:01:57 GMT
ENV JOOMLA_SHA512=fca41b63396c2f5429680297224f3345bc845b3c62a234c82c5c28af477f4a2b176c53d8b4b821b0c71a28a06f3c2a270b42d54396f3cf6075d72e27f136c4d9
# Wed, 27 Mar 2019 18:02:07 GMT
RUN curl -o joomla.tar.bz2 -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.tar.bz2 	&& echo "$JOOMLA_SHA512 *joomla.tar.bz2" | sha512sum -c - 	&& mkdir /usr/src/joomla 	&& tar -xf joomla.tar.bz2 -C /usr/src/joomla 	&& rm joomla.tar.bz2 	&& chown -R www-data:www-data /usr/src/joomla
# Wed, 27 Mar 2019 18:02:11 GMT
COPY file:fcc18c5b9c2d514cfb965bab84e10b4f924a39a5f202055df75d7990da099d8f in /entrypoint.sh 
# Wed, 27 Mar 2019 18:02:13 GMT
COPY file:5a85d779aaae74cfa3ab6228df0f24236d4d5ad9097e2a1b277e3daea0d6d3dc in /makedb.php 
# Wed, 27 Mar 2019 18:02:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Mar 2019 18:02:17 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:47457ee2fac27696752b903854c4e4621e3481edc7a34b727f45b4c355de7976`  
		Last Modified: Wed, 27 Mar 2019 08:32:50 GMT  
		Size: 22.8 MB (22751385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c48d8d6ee980ff0699d1c4ae1cd58d966012a7ac3339b6d79b236de2039107f2`  
		Last Modified: Wed, 27 Mar 2019 12:20:20 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cc75f64ae24214c9b90e368f7a5e0f4dcaa9bb0846c942a01de5913ebdb0f50`  
		Last Modified: Wed, 27 Mar 2019 12:20:58 GMT  
		Size: 61.8 MB (61832711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95bb762fbffd9e09ca148bb8f5c57e5ac2d629675cf3c52c0568d859fb01b99d`  
		Last Modified: Wed, 27 Mar 2019 12:20:18 GMT  
		Size: 286.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:359da8d524d2272215864a91be2b9c149f28f048fbb42c08f501f88bb4d0a01f`  
		Last Modified: Wed, 27 Mar 2019 12:22:00 GMT  
		Size: 17.3 MB (17345230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b90bd4692c3d0b346ababf696ab4edf226c34dac5c51324c30c8ce0839d433e`  
		Last Modified: Wed, 27 Mar 2019 12:21:52 GMT  
		Size: 476.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6058026c7c4060c918f469ee10a7e42a5cba0e5af3ecbebc40dc38fca9a7116`  
		Last Modified: Wed, 27 Mar 2019 12:21:51 GMT  
		Size: 515.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dddf1080ba9444537bd9610006bfdfc98cbc620f4c30a4ba25454b627cb68a7`  
		Last Modified: Wed, 27 Mar 2019 12:21:53 GMT  
		Size: 12.3 MB (12319047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5b4e02da7bae8cb849ed52481653a0aca3221551a47908330b5e46241206e94`  
		Last Modified: Wed, 27 Mar 2019 12:21:48 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df14033f1ff5f68359ab230ba92abd37b5170370e5fb0d61d44f7fe5cab1f3e8`  
		Last Modified: Wed, 27 Mar 2019 12:21:55 GMT  
		Size: 15.4 MB (15353720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65cca8d6b7b5bb6f99f3f3d6960771cb50ec1591c29e9ec78fb4333cb398aed6`  
		Last Modified: Wed, 27 Mar 2019 12:21:48 GMT  
		Size: 2.2 KB (2202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5cde6424ac14a16fc0112e1c33907f2cbc60d3bffb35aac5b330f12682c7a59`  
		Last Modified: Wed, 27 Mar 2019 12:21:48 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14f756fd45d4064e00b3afe54d203605798d509e498685ac084b151c09213008`  
		Last Modified: Wed, 27 Mar 2019 12:21:48 GMT  
		Size: 905.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fba83101d34ecd98d995c31a00822f03a229055d9ffc5e9fb9c8d48d6784f4ba`  
		Last Modified: Wed, 27 Mar 2019 18:15:38 GMT  
		Size: 314.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd29c6458e1e4283ea86c805ff54dadd06b2dd3781378034e3aa478770dc1679`  
		Last Modified: Wed, 27 Mar 2019 18:15:58 GMT  
		Size: 3.1 MB (3115355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92ee5877123d1f707847e9b1d7c77019224908bb87125361b1e6f33d95282c29`  
		Last Modified: Wed, 27 Mar 2019 18:16:37 GMT  
		Size: 9.6 MB (9582089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13779df8804b1d2566bfe6424996f5565abbe7bb99b035a6be8bd0a55659ef7e`  
		Last Modified: Wed, 27 Mar 2019 18:15:35 GMT  
		Size: 1.2 KB (1172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50731125f5ef9aa8ff9b254ef67fca3badba8bf8ec4a1beae39d0a888f35ed76`  
		Last Modified: Wed, 27 Mar 2019 18:15:35 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
