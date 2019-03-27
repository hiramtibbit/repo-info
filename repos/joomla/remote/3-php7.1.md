## `joomla:3-php7.1`

```console
$ docker pull joomla@sha256:f6315a805e302124202581875f5e305244a23780a4a119f47409bb2e051a5fb3
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

### `joomla:3-php7.1` - linux; amd64

```console
$ docker pull joomla@sha256:9447aa855c77bf0f9b48ddd9ef3cc06d920703314e4f64548cbccb52b3c05c4c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.6 MB (146604788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:501fda0626ffc9302f9848e202fd6e67fcf5c5f1ac230fc18952a346e125ee6d`
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
# Wed, 27 Mar 2019 12:33:49 GMT
LABEL maintainer=Michael Babker <michael.babker@joomla.org> (@mbabker)
# Wed, 27 Mar 2019 12:33:49 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Wed, 27 Mar 2019 12:33:51 GMT
RUN a2enmod rewrite
# Wed, 27 Mar 2019 12:37:21 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libbz2-dev 		libjpeg-dev 		libldap2-dev 		libmcrypt-dev 		libmemcached-dev 		libpng-dev 		libpq-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install 		bz2 		gd 		ldap 		mcrypt 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 		pecl install APCu-5.1.17; 	pecl install memcached-3.1.3; 	pecl install redis-4.3.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:37:21 GMT
VOLUME [/var/www/html]
# Wed, 27 Mar 2019 12:37:21 GMT
ENV JOOMLA_VERSION=3.9.4
# Wed, 27 Mar 2019 12:37:21 GMT
ENV JOOMLA_SHA512=fca41b63396c2f5429680297224f3345bc845b3c62a234c82c5c28af477f4a2b176c53d8b4b821b0c71a28a06f3c2a270b42d54396f3cf6075d72e27f136c4d9
# Wed, 27 Mar 2019 12:37:26 GMT
RUN curl -o joomla.tar.bz2 -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.tar.bz2 	&& echo "$JOOMLA_SHA512 *joomla.tar.bz2" | sha512sum -c - 	&& mkdir /usr/src/joomla 	&& tar -xf joomla.tar.bz2 -C /usr/src/joomla 	&& rm joomla.tar.bz2 	&& chown -R www-data:www-data /usr/src/joomla
# Wed, 27 Mar 2019 12:37:27 GMT
COPY file:fcc18c5b9c2d514cfb965bab84e10b4f924a39a5f202055df75d7990da099d8f in /entrypoint.sh 
# Wed, 27 Mar 2019 12:37:27 GMT
COPY file:5a85d779aaae74cfa3ab6228df0f24236d4d5ad9097e2a1b277e3daea0d6d3dc in /makedb.php 
# Wed, 27 Mar 2019 12:37:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Mar 2019 12:37:27 GMT
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
	-	`sha256:c8e049bcb5cd91384be144c14a873620598f5d504eabc26cb840172514b6ee17`  
		Last Modified: Wed, 27 Mar 2019 12:54:32 GMT  
		Size: 309.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0ade9064376ea0435faf5a9ee878aab55c236c08a8d460c13f9facb8b8dd8dd`  
		Last Modified: Wed, 27 Mar 2019 12:54:33 GMT  
		Size: 3.1 MB (3146430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c53219e2bf25c8dbbeb374cb85894030eb2a292fc1164c0431f874120705ec8b`  
		Last Modified: Wed, 27 Mar 2019 12:54:37 GMT  
		Size: 9.6 MB (9581948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8c51e9f99fb4a66b55be45ddf9490ba9bb853e81f98eee2ef1085573de84004`  
		Last Modified: Wed, 27 Mar 2019 12:54:32 GMT  
		Size: 1.2 KB (1169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e46eb3a687480c595de1c07db1ddb5e303834402e86cba46de7de7ca5a42b54d`  
		Last Modified: Wed, 27 Mar 2019 12:54:32 GMT  
		Size: 612.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `joomla:3-php7.1` - linux; arm variant v5

```console
$ docker pull joomla@sha256:94c6b6544fd4b5227a2ab6298201cd6e293044fa3daacc11727660de943aed6a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.0 MB (134039500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a680d1838fa527329ba7fba086f7244f2b211cb3634e0e8dac73d85cd248798`
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
# Wed, 27 Mar 2019 14:43:32 GMT
LABEL maintainer=Michael Babker <michael.babker@joomla.org> (@mbabker)
# Wed, 27 Mar 2019 14:43:33 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Wed, 27 Mar 2019 14:43:35 GMT
RUN a2enmod rewrite
# Wed, 27 Mar 2019 14:47:32 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libbz2-dev 		libjpeg-dev 		libldap2-dev 		libmcrypt-dev 		libmemcached-dev 		libpng-dev 		libpq-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install 		bz2 		gd 		ldap 		mcrypt 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 		pecl install APCu-5.1.17; 	pecl install memcached-3.1.3; 	pecl install redis-4.3.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 14:47:33 GMT
VOLUME [/var/www/html]
# Wed, 27 Mar 2019 14:47:33 GMT
ENV JOOMLA_VERSION=3.9.4
# Wed, 27 Mar 2019 14:47:34 GMT
ENV JOOMLA_SHA512=fca41b63396c2f5429680297224f3345bc845b3c62a234c82c5c28af477f4a2b176c53d8b4b821b0c71a28a06f3c2a270b42d54396f3cf6075d72e27f136c4d9
# Wed, 27 Mar 2019 14:47:43 GMT
RUN curl -o joomla.tar.bz2 -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.tar.bz2 	&& echo "$JOOMLA_SHA512 *joomla.tar.bz2" | sha512sum -c - 	&& mkdir /usr/src/joomla 	&& tar -xf joomla.tar.bz2 -C /usr/src/joomla 	&& rm joomla.tar.bz2 	&& chown -R www-data:www-data /usr/src/joomla
# Wed, 27 Mar 2019 14:47:45 GMT
COPY file:fcc18c5b9c2d514cfb965bab84e10b4f924a39a5f202055df75d7990da099d8f in /entrypoint.sh 
# Wed, 27 Mar 2019 14:47:45 GMT
COPY file:5a85d779aaae74cfa3ab6228df0f24236d4d5ad9097e2a1b277e3daea0d6d3dc in /makedb.php 
# Wed, 27 Mar 2019 14:47:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Mar 2019 14:47:46 GMT
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
	-	`sha256:763f8c100624c2363ac07f0983bbfd74030f5ce544a243b7b67c023794fad095`  
		Last Modified: Wed, 27 Mar 2019 15:12:42 GMT  
		Size: 314.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cff6cbc6c5d61e670c685dc161702d78a6bde7ed05f4c6869f727764417be30`  
		Last Modified: Wed, 27 Mar 2019 15:12:43 GMT  
		Size: 3.0 MB (3035396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4047caa7a3431e9a50638cf48d683f7eb53cd11bb719fc777072c77990ae75df`  
		Last Modified: Wed, 27 Mar 2019 15:12:48 GMT  
		Size: 9.6 MB (9582090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ec7354c4739f3403bfadff131f2b30246fecb7a08d3b18a24fad0fac7f7ecca`  
		Last Modified: Wed, 27 Mar 2019 15:12:42 GMT  
		Size: 1.2 KB (1170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a553deaa998901c9d8699087a071a6901ce4d3531028dee832941f1393676af`  
		Last Modified: Wed, 27 Mar 2019 15:12:42 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `joomla:3-php7.1` - linux; arm variant v7

```console
$ docker pull joomla@sha256:90088f62a9ed2ad62d264d1e2d0d221c39e17ca573117d1e89d3648d97b4287c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.9 MB (126888908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfa918c2b1a1ae39fad2cef6966dfa25b686d185d0272a982a0ba7180408f68d`
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
# Wed, 27 Mar 2019 14:08:46 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Wed, 27 Mar 2019 14:08:47 GMT
ENV PHP_VERSION=7.1.27
# Wed, 27 Mar 2019 14:08:48 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.27.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.27.tar.xz.asc/from/this/mirror
# Wed, 27 Mar 2019 14:08:48 GMT
ENV PHP_SHA256=25672a3a6060eff37c865a0c84e284da50b7ee8cd57174c78f0ae244b90a96a8 PHP_MD5=
# Wed, 27 Mar 2019 14:09:04 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 27 Mar 2019 14:09:05 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Wed, 27 Mar 2019 14:11:46 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 27 Mar 2019 14:11:48 GMT
COPY multi:0002d7d5b06fb24f987aa4b027705dc71f81957419a02be5b9014431514c25b5 in /usr/local/bin/ 
# Wed, 27 Mar 2019 14:11:48 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 27 Mar 2019 14:11:49 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Wed, 27 Mar 2019 14:11:50 GMT
WORKDIR /var/www/html
# Wed, 27 Mar 2019 14:11:51 GMT
EXPOSE 80
# Wed, 27 Mar 2019 14:11:52 GMT
CMD ["apache2-foreground"]
# Wed, 27 Mar 2019 17:34:37 GMT
LABEL maintainer=Michael Babker <michael.babker@joomla.org> (@mbabker)
# Wed, 27 Mar 2019 17:34:37 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Wed, 27 Mar 2019 17:34:39 GMT
RUN a2enmod rewrite
# Wed, 27 Mar 2019 17:38:02 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libbz2-dev 		libjpeg-dev 		libldap2-dev 		libmcrypt-dev 		libmemcached-dev 		libpng-dev 		libpq-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install 		bz2 		gd 		ldap 		mcrypt 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 		pecl install APCu-5.1.17; 	pecl install memcached-3.1.3; 	pecl install redis-4.3.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 17:38:03 GMT
VOLUME [/var/www/html]
# Wed, 27 Mar 2019 17:38:03 GMT
ENV JOOMLA_VERSION=3.9.4
# Wed, 27 Mar 2019 17:38:04 GMT
ENV JOOMLA_SHA512=fca41b63396c2f5429680297224f3345bc845b3c62a234c82c5c28af477f4a2b176c53d8b4b821b0c71a28a06f3c2a270b42d54396f3cf6075d72e27f136c4d9
# Wed, 27 Mar 2019 17:38:12 GMT
RUN curl -o joomla.tar.bz2 -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.tar.bz2 	&& echo "$JOOMLA_SHA512 *joomla.tar.bz2" | sha512sum -c - 	&& mkdir /usr/src/joomla 	&& tar -xf joomla.tar.bz2 -C /usr/src/joomla 	&& rm joomla.tar.bz2 	&& chown -R www-data:www-data /usr/src/joomla
# Wed, 27 Mar 2019 17:38:14 GMT
COPY file:fcc18c5b9c2d514cfb965bab84e10b4f924a39a5f202055df75d7990da099d8f in /entrypoint.sh 
# Wed, 27 Mar 2019 17:38:14 GMT
COPY file:5a85d779aaae74cfa3ab6228df0f24236d4d5ad9097e2a1b277e3daea0d6d3dc in /makedb.php 
# Wed, 27 Mar 2019 17:38:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Mar 2019 17:38:15 GMT
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
	-	`sha256:202744a8f70a9c68ce5196bc1072146fab7bfb6f74cdb8ae370c47fdca58b67b`  
		Last Modified: Wed, 27 Mar 2019 14:54:30 GMT  
		Size: 12.6 MB (12566193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9b4ae7878a260b5824ee789442dc2af0f1223c19377620847274780a4b09b93`  
		Last Modified: Wed, 27 Mar 2019 14:54:29 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:becb47c03e6eb32b7de4595f3379eee63c769aff17ebedf731be07af5ba107d3`  
		Last Modified: Wed, 27 Mar 2019 14:54:33 GMT  
		Size: 12.8 MB (12771267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc2e866fb81fbcbee279a7c9fbe44da06f07094896f6f4d698b2427c25def7ff`  
		Last Modified: Wed, 27 Mar 2019 14:54:28 GMT  
		Size: 2.2 KB (2199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70b305f1e9083122389abc9e64e7ddad43265086a1426b62376e6729ecd6b5ec`  
		Last Modified: Wed, 27 Mar 2019 14:54:28 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36b07bbd5cd47f33620d24df31c34d74b155c1552641244fc4d8d8d98a0a8b09`  
		Last Modified: Wed, 27 Mar 2019 17:57:25 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3ef14f6ac0cdd468b2261e5870f7689b1e08341233befa1b14eea616fb41ca4`  
		Last Modified: Wed, 27 Mar 2019 17:57:26 GMT  
		Size: 2.9 MB (2931316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf34e89aab9a5898d0a1e29aff584835f4772b4d622832b7b8ce84914ee82438`  
		Last Modified: Wed, 27 Mar 2019 17:57:31 GMT  
		Size: 9.6 MB (9582086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ec45d3e19dc117cff5ad4f37ea3254a6daea26ac48ef568e7e99de522cebcd7`  
		Last Modified: Wed, 27 Mar 2019 17:57:25 GMT  
		Size: 1.2 KB (1172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9e89667da3ccb4be88ea66ee82bf7b5d507c6280c7115320f95c35a67e07b16`  
		Last Modified: Wed, 27 Mar 2019 17:57:25 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `joomla:3-php7.1` - linux; arm64 variant v8

```console
$ docker pull joomla@sha256:8d258ce962c90336205004ab2970a7d6d41e364ba57777d18b591d4791335f7f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.6 MB (133578418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d151773b0ce9b3f481724bcd834e9254ec1ad32383a18def18a1b93c8bc6a808`
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
# Sat, 09 Mar 2019 15:23:43 GMT
LABEL maintainer=Michael Babker <michael.babker@joomla.org> (@mbabker)
# Sat, 09 Mar 2019 15:23:43 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Sat, 09 Mar 2019 15:23:46 GMT
RUN a2enmod rewrite
# Fri, 15 Mar 2019 08:57:44 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libbz2-dev 		libjpeg-dev 		libldap2-dev 		libmcrypt-dev 		libmemcached-dev 		libpng-dev 		libpq-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install 		bz2 		gd 		ldap 		mcrypt 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 		pecl install APCu-5.1.17; 	pecl install memcached-3.1.3; 	pecl install redis-4.3.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Fri, 15 Mar 2019 08:57:44 GMT
VOLUME [/var/www/html]
# Fri, 15 Mar 2019 08:57:45 GMT
ENV JOOMLA_VERSION=3.9.4
# Fri, 15 Mar 2019 08:57:46 GMT
ENV JOOMLA_SHA512=fca41b63396c2f5429680297224f3345bc845b3c62a234c82c5c28af477f4a2b176c53d8b4b821b0c71a28a06f3c2a270b42d54396f3cf6075d72e27f136c4d9
# Fri, 15 Mar 2019 08:57:57 GMT
RUN curl -o joomla.tar.bz2 -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.tar.bz2 	&& echo "$JOOMLA_SHA512 *joomla.tar.bz2" | sha512sum -c - 	&& mkdir /usr/src/joomla 	&& tar -xf joomla.tar.bz2 -C /usr/src/joomla 	&& rm joomla.tar.bz2 	&& chown -R www-data:www-data /usr/src/joomla
# Fri, 15 Mar 2019 08:57:58 GMT
COPY file:fcc18c5b9c2d514cfb965bab84e10b4f924a39a5f202055df75d7990da099d8f in /entrypoint.sh 
# Fri, 15 Mar 2019 08:57:58 GMT
COPY file:5a85d779aaae74cfa3ab6228df0f24236d4d5ad9097e2a1b277e3daea0d6d3dc in /makedb.php 
# Fri, 15 Mar 2019 08:57:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 15 Mar 2019 08:58:00 GMT
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
	-	`sha256:0ed88212ca1f0d006cafb25663203352b0ce84f0139e77f5efa925a9e92653bd`  
		Last Modified: Sat, 09 Mar 2019 15:59:23 GMT  
		Size: 317.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25e979463bc224b109185581418cde821b1c5c42097c3220b745e401ae8d02eb`  
		Last Modified: Fri, 15 Mar 2019 09:39:58 GMT  
		Size: 3.0 MB (3029934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec61e858130985e4256e703a30ed3fc28270ff76f37ba9214be503119872bb96`  
		Last Modified: Fri, 15 Mar 2019 09:40:01 GMT  
		Size: 9.6 MB (9581951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d469a3f57482d43e4e45800e4d47dc8c0dbb39bcbb103763f9724148692ad79`  
		Last Modified: Fri, 15 Mar 2019 09:39:55 GMT  
		Size: 1.2 KB (1172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:601c84e070df1c476563b4debff921430c57c47f32fb2395d0319c3318ff072b`  
		Last Modified: Fri, 15 Mar 2019 09:39:55 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `joomla:3-php7.1` - linux; 386

```console
$ docker pull joomla@sha256:d4c6a16d9bcfc21518c8cf85e6ac0fc42a4d15e1f1382da35fb9d7dcd7cadcb9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.2 MB (152216325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1bdc7f4b9948cfb694ec5d6fb5100a8009fa82f537874372e59a11bfcbfde12`
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
# Sat, 09 Mar 2019 18:13:17 GMT
LABEL maintainer=Michael Babker <michael.babker@joomla.org> (@mbabker)
# Sat, 09 Mar 2019 18:13:18 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Sat, 09 Mar 2019 18:13:18 GMT
RUN a2enmod rewrite
# Fri, 15 Mar 2019 10:48:52 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libbz2-dev 		libjpeg-dev 		libldap2-dev 		libmcrypt-dev 		libmemcached-dev 		libpng-dev 		libpq-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install 		bz2 		gd 		ldap 		mcrypt 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 		pecl install APCu-5.1.17; 	pecl install memcached-3.1.3; 	pecl install redis-4.3.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Fri, 15 Mar 2019 10:48:52 GMT
VOLUME [/var/www/html]
# Fri, 15 Mar 2019 10:48:52 GMT
ENV JOOMLA_VERSION=3.9.4
# Fri, 15 Mar 2019 10:48:53 GMT
ENV JOOMLA_SHA512=fca41b63396c2f5429680297224f3345bc845b3c62a234c82c5c28af477f4a2b176c53d8b4b821b0c71a28a06f3c2a270b42d54396f3cf6075d72e27f136c4d9
# Fri, 15 Mar 2019 10:48:57 GMT
RUN curl -o joomla.tar.bz2 -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.tar.bz2 	&& echo "$JOOMLA_SHA512 *joomla.tar.bz2" | sha512sum -c - 	&& mkdir /usr/src/joomla 	&& tar -xf joomla.tar.bz2 -C /usr/src/joomla 	&& rm joomla.tar.bz2 	&& chown -R www-data:www-data /usr/src/joomla
# Fri, 15 Mar 2019 10:48:58 GMT
COPY file:fcc18c5b9c2d514cfb965bab84e10b4f924a39a5f202055df75d7990da099d8f in /entrypoint.sh 
# Fri, 15 Mar 2019 10:48:58 GMT
COPY file:5a85d779aaae74cfa3ab6228df0f24236d4d5ad9097e2a1b277e3daea0d6d3dc in /makedb.php 
# Fri, 15 Mar 2019 10:48:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 15 Mar 2019 10:48:58 GMT
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
	-	`sha256:ed07e99d22df1fd54f6e769c0fd6d79e5b257368b7b9df6ea2452b43163127b8`  
		Last Modified: Sat, 09 Mar 2019 18:32:23 GMT  
		Size: 312.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b24131c88c313c4a98e098353270f877e597516d0e4e3dc9ee23bc55bf8208db`  
		Last Modified: Fri, 15 Mar 2019 11:05:42 GMT  
		Size: 3.1 MB (3139019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5314dec3edb15edd9ea11f739675cf2c1e8d483fd7a235ef1eb9d574f18d660`  
		Last Modified: Fri, 15 Mar 2019 11:05:44 GMT  
		Size: 9.6 MB (9581952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37e4624507e915673a543b243d99d3bbcc268c3b4c9ab4b04ae564b6cc2b51b0`  
		Last Modified: Fri, 15 Mar 2019 11:05:41 GMT  
		Size: 1.2 KB (1171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd6a2547fc80e9bbde44e8d6407f6ff3e5f41201b427309b351d903da51d3528`  
		Last Modified: Fri, 15 Mar 2019 11:05:41 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `joomla:3-php7.1` - linux; ppc64le

```console
$ docker pull joomla@sha256:1aed4cf867088ccd62d76e3d9143bee60ce4a7a57f5b67302204d9f415950aad
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.3 MB (141256733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d47b8a43caf16aa3e4fb9e15e1497d0b91389550f474c87b372cee242da6b51b`
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
# Wed, 27 Mar 2019 11:58:10 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Wed, 27 Mar 2019 11:58:13 GMT
ENV PHP_VERSION=7.1.27
# Wed, 27 Mar 2019 11:58:15 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.27.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.27.tar.xz.asc/from/this/mirror
# Wed, 27 Mar 2019 11:58:16 GMT
ENV PHP_SHA256=25672a3a6060eff37c865a0c84e284da50b7ee8cd57174c78f0ae244b90a96a8 PHP_MD5=
# Wed, 27 Mar 2019 11:58:53 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 27 Mar 2019 11:58:54 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Wed, 27 Mar 2019 12:03:27 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 27 Mar 2019 12:03:30 GMT
COPY multi:0002d7d5b06fb24f987aa4b027705dc71f81957419a02be5b9014431514c25b5 in /usr/local/bin/ 
# Wed, 27 Mar 2019 12:03:32 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 27 Mar 2019 12:03:33 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Wed, 27 Mar 2019 12:03:37 GMT
WORKDIR /var/www/html
# Wed, 27 Mar 2019 12:03:39 GMT
EXPOSE 80
# Wed, 27 Mar 2019 12:03:43 GMT
CMD ["apache2-foreground"]
# Wed, 27 Mar 2019 17:33:16 GMT
LABEL maintainer=Michael Babker <michael.babker@joomla.org> (@mbabker)
# Wed, 27 Mar 2019 17:33:20 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Wed, 27 Mar 2019 17:33:31 GMT
RUN a2enmod rewrite
# Wed, 27 Mar 2019 17:36:53 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libbz2-dev 		libjpeg-dev 		libldap2-dev 		libmcrypt-dev 		libmemcached-dev 		libpng-dev 		libpq-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install 		bz2 		gd 		ldap 		mcrypt 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 		pecl install APCu-5.1.17; 	pecl install memcached-3.1.3; 	pecl install redis-4.3.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 17:36:57 GMT
VOLUME [/var/www/html]
# Wed, 27 Mar 2019 17:36:59 GMT
ENV JOOMLA_VERSION=3.9.4
# Wed, 27 Mar 2019 17:37:03 GMT
ENV JOOMLA_SHA512=fca41b63396c2f5429680297224f3345bc845b3c62a234c82c5c28af477f4a2b176c53d8b4b821b0c71a28a06f3c2a270b42d54396f3cf6075d72e27f136c4d9
# Wed, 27 Mar 2019 17:37:18 GMT
RUN curl -o joomla.tar.bz2 -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.tar.bz2 	&& echo "$JOOMLA_SHA512 *joomla.tar.bz2" | sha512sum -c - 	&& mkdir /usr/src/joomla 	&& tar -xf joomla.tar.bz2 -C /usr/src/joomla 	&& rm joomla.tar.bz2 	&& chown -R www-data:www-data /usr/src/joomla
# Wed, 27 Mar 2019 17:37:23 GMT
COPY file:fcc18c5b9c2d514cfb965bab84e10b4f924a39a5f202055df75d7990da099d8f in /entrypoint.sh 
# Wed, 27 Mar 2019 17:37:26 GMT
COPY file:5a85d779aaae74cfa3ab6228df0f24236d4d5ad9097e2a1b277e3daea0d6d3dc in /makedb.php 
# Wed, 27 Mar 2019 17:37:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Mar 2019 17:37:35 GMT
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
	-	`sha256:f277223f7c4df590f3b40a154932fa9c8bc2f9d901b94f999b0af3d3ed074422`  
		Last Modified: Wed, 27 Mar 2019 12:27:13 GMT  
		Size: 12.6 MB (12566630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a39d19231612797a9fc83de18a64c7c74b0ef755129d6e7e105cc5a1390ae18b`  
		Last Modified: Wed, 27 Mar 2019 12:27:11 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35440c4ba611958ee0d4d2458086e301bc8401f477b669dbd24ce07ccc91f64`  
		Last Modified: Wed, 27 Mar 2019 12:27:17 GMT  
		Size: 14.0 MB (14008160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a612c8d906b477a9d57da1c714cfd881a4f03f0555bad42c95cf97e9e4d6612`  
		Last Modified: Wed, 27 Mar 2019 12:27:11 GMT  
		Size: 2.2 KB (2203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86e5d9a3bce2ea93a442931f52d5d8dee803ff62f3cbd409b44c84a57c93fe26`  
		Last Modified: Wed, 27 Mar 2019 12:27:11 GMT  
		Size: 903.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fbbb183d98e7de786686e13e7f16b2af34895374e3fd0a5994162e052f2fecd`  
		Last Modified: Wed, 27 Mar 2019 18:07:21 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:912f8ce039979853736cd9c8cb17ca6712bb1da52411c5dcbe9ab0528d1d5c70`  
		Last Modified: Wed, 27 Mar 2019 18:07:30 GMT  
		Size: 3.2 MB (3163322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1fafe4e6b6db4e9cca0ff35ca46618962f922edcc3526a519c73a8bb183a330`  
		Last Modified: Wed, 27 Mar 2019 18:08:26 GMT  
		Size: 9.6 MB (9582086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2be786e31793e2d9c56494ad15ed7f43d4c8daa7e2104947e7018176c71a7dbb`  
		Last Modified: Wed, 27 Mar 2019 18:07:18 GMT  
		Size: 1.2 KB (1172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e076f09ca5dbcafab3c25be2a7bea193c0d93dd25cf73994fa6c597dc17b4d3e`  
		Last Modified: Wed, 27 Mar 2019 18:07:18 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `joomla:3-php7.1` - linux; s390x

```console
$ docker pull joomla@sha256:cf24d71e6ac2bed39e10bb01cbb1dbecc1191fa7924ce203ad77ac70aefda6fe
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.1 MB (135111404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1bd19725ec58075113351c1f29d234209f36574bb54575dc05ea722533b4a32`
-	Entrypoint: `["\/entrypoint.sh"]`
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
# Sat, 09 Mar 2019 13:43:22 GMT
LABEL maintainer=Michael Babker <michael.babker@joomla.org> (@mbabker)
# Sat, 09 Mar 2019 13:43:22 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Sat, 09 Mar 2019 13:43:23 GMT
RUN a2enmod rewrite
# Fri, 15 Mar 2019 11:48:37 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libbz2-dev 		libjpeg-dev 		libldap2-dev 		libmcrypt-dev 		libmemcached-dev 		libpng-dev 		libpq-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install 		bz2 		gd 		ldap 		mcrypt 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 		pecl install APCu-5.1.17; 	pecl install memcached-3.1.3; 	pecl install redis-4.3.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Fri, 15 Mar 2019 11:48:38 GMT
VOLUME [/var/www/html]
# Fri, 15 Mar 2019 11:48:38 GMT
ENV JOOMLA_VERSION=3.9.4
# Fri, 15 Mar 2019 11:48:38 GMT
ENV JOOMLA_SHA512=fca41b63396c2f5429680297224f3345bc845b3c62a234c82c5c28af477f4a2b176c53d8b4b821b0c71a28a06f3c2a270b42d54396f3cf6075d72e27f136c4d9
# Fri, 15 Mar 2019 11:48:44 GMT
RUN curl -o joomla.tar.bz2 -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.tar.bz2 	&& echo "$JOOMLA_SHA512 *joomla.tar.bz2" | sha512sum -c - 	&& mkdir /usr/src/joomla 	&& tar -xf joomla.tar.bz2 -C /usr/src/joomla 	&& rm joomla.tar.bz2 	&& chown -R www-data:www-data /usr/src/joomla
# Fri, 15 Mar 2019 11:48:45 GMT
COPY file:fcc18c5b9c2d514cfb965bab84e10b4f924a39a5f202055df75d7990da099d8f in /entrypoint.sh 
# Fri, 15 Mar 2019 11:48:45 GMT
COPY file:5a85d779aaae74cfa3ab6228df0f24236d4d5ad9097e2a1b277e3daea0d6d3dc in /makedb.php 
# Fri, 15 Mar 2019 11:48:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 15 Mar 2019 11:48:46 GMT
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
	-	`sha256:5fc647112da420e0a594b2a3c7d49e383a4a49f7eb19ccec22e369bfcfc2acbd`  
		Last Modified: Sat, 09 Mar 2019 13:48:28 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f47864a05acc4259848cce82528c8a4c4af054bfbfc60f04819e405f73c3056f`  
		Last Modified: Fri, 15 Mar 2019 11:52:04 GMT  
		Size: 3.2 MB (3199577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c20c9e3b00fc3f3ae51c885d66bc6ff568c545be64c8b6828eae35c6eed0e64f`  
		Last Modified: Fri, 15 Mar 2019 11:52:06 GMT  
		Size: 9.6 MB (9581951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8832f8fde00eaf8e3fe135927a27808eb9e9a3a745fe6f5ceb09746927d39614`  
		Last Modified: Fri, 15 Mar 2019 11:52:04 GMT  
		Size: 1.2 KB (1170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca4a3a63bd31e5e09c8f638ed0e70c1a41c2fa0d9fbaf02815bd8cf5966ce610`  
		Last Modified: Fri, 15 Mar 2019 11:52:03 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
