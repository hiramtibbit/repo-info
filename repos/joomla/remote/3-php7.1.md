## `joomla:3-php7.1`

```console
$ docker pull joomla@sha256:5a2f25939f1b4ab25f2c1b275640200e2279d3d85601b26b90c6bbfd364eb6f5
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
$ docker pull joomla@sha256:a8e2fc63bdf536d35244e921cd8776ba529dd670b597c3abc95aa87eabeb7675
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.5 MB (146467673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcd8a77767e8ddf8bf577e2bb76e265bd506e09f9a5c810811c1dacb392e494c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

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
# Sat, 29 Dec 2018 04:32:41 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 04:32:41 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Sat, 29 Dec 2018 04:32:42 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Sat, 29 Dec 2018 04:32:42 GMT
RUN set -eux; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Sat, 29 Dec 2018 04:32:43 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Sat, 29 Dec 2018 04:32:44 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Sat, 29 Dec 2018 04:32:44 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Sat, 29 Dec 2018 04:32:44 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Sat, 29 Dec 2018 04:32:44 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 04:32:44 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 04:32:45 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 29 Dec 2018 05:33:25 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Sat, 29 Dec 2018 05:33:26 GMT
ENV PHP_VERSION=7.1.25
# Sat, 29 Dec 2018 05:33:26 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.25.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.25.tar.xz.asc/from/this/mirror
# Sat, 29 Dec 2018 05:33:26 GMT
ENV PHP_SHA256=0fd8dad1903cd0b2d615a1fe4209f99e53b7292403c8ffa1919c0f4dd1eada88 PHP_MD5=
# Sat, 29 Dec 2018 05:33:39 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 29 Dec 2018 05:33:39 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 29 Dec 2018 05:38:15 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 29 Dec 2018 05:38:15 GMT
COPY multi:0a6fe33cb39694994fa567c75b399b9aa5e477c8770caa9f731607a72819b457 in /usr/local/bin/ 
# Sat, 29 Dec 2018 05:38:16 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 29 Dec 2018 05:38:16 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Sat, 29 Dec 2018 05:38:16 GMT
WORKDIR /var/www/html
# Sat, 29 Dec 2018 05:38:16 GMT
EXPOSE 80
# Sat, 29 Dec 2018 05:38:16 GMT
CMD ["apache2-foreground"]
# Sat, 29 Dec 2018 14:37:45 GMT
LABEL maintainer=Michael Babker <michael.babker@joomla.org> (@mbabker)
# Sat, 29 Dec 2018 14:37:45 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Sat, 29 Dec 2018 14:37:46 GMT
RUN a2enmod rewrite
# Sat, 29 Dec 2018 14:41:09 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libbz2-dev 		libjpeg-dev 		libldap2-dev 		libmcrypt-dev 		libmemcached-dev 		libpng-dev 		libpq-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install 		bz2 		gd 		ldap 		mcrypt 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 		pecl install APCu-5.1.16; 	pecl install memcached-3.1.2; 	pecl install redis-4.2.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 14:41:09 GMT
VOLUME [/var/www/html]
# Sat, 29 Dec 2018 14:41:09 GMT
ENV JOOMLA_VERSION=3.9.1
# Sat, 29 Dec 2018 14:41:10 GMT
ENV JOOMLA_SHA1=aec0f602f93064d55cc06917329abdeef2e0f820
# Sat, 29 Dec 2018 14:41:19 GMT
RUN curl -o joomla.tar.bz2 -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.tar.bz2 	&& echo "$JOOMLA_SHA1 *joomla.tar.bz2" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& tar -xf joomla.tar.bz2 -C /usr/src/joomla 	&& rm joomla.tar.bz2 	&& chown -R www-data:www-data /usr/src/joomla
# Sat, 29 Dec 2018 14:41:20 GMT
COPY file:fcc18c5b9c2d514cfb965bab84e10b4f924a39a5f202055df75d7990da099d8f in /entrypoint.sh 
# Sat, 29 Dec 2018 14:41:20 GMT
COPY file:5a85d779aaae74cfa3ab6228df0f24236d4d5ad9097e2a1b277e3daea0d6d3dc in /makedb.php 
# Sat, 29 Dec 2018 14:41:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 29 Dec 2018 14:41:21 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:c0421d5b63d69a2ae480d7c5caa3d21f8105a682249c55f4923f655e73e2f492`  
		Last Modified: Sat, 29 Dec 2018 08:47:27 GMT  
		Size: 17.1 MB (17127964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f76e300fbe727910ee01d0011a0d011f7cffe00483aea448496dbe49029aa8ad`  
		Last Modified: Sat, 29 Dec 2018 08:47:24 GMT  
		Size: 1.3 KB (1337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af9ff1b9ce5b028cb1a7c3ad2bc442aacb9a8ddd46cb8a41485b947536e3f4f6`  
		Last Modified: Sat, 29 Dec 2018 08:47:24 GMT  
		Size: 429.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f072d61771f0bc903b453eca2aa1816ee9aaae195e7be586492a38619c45ce`  
		Last Modified: Sat, 29 Dec 2018 08:47:23 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6dee0ad1d10ad3636666a2fd371962dbd8e9fda7e52e87c2141e4181673f898`  
		Last Modified: Sat, 29 Dec 2018 08:49:26 GMT  
		Size: 12.6 MB (12556072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:431bc5803270dc7eebe6258a1f24a13443e173cebe77beacfbda004455cc0274`  
		Last Modified: Sat, 29 Dec 2018 08:49:25 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c3c10e5b13bbeaa318e973df581d6cf5eda0b11a144754e069036c8550aafe3`  
		Last Modified: Sat, 29 Dec 2018 08:49:27 GMT  
		Size: 14.2 MB (14229662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ad26f1eb7d0871b746fa62f7c7b4abfa40d1d1cc2ed3a46cb729e3874d1998e`  
		Last Modified: Sat, 29 Dec 2018 08:49:24 GMT  
		Size: 2.2 KB (2197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20c9fe583de417a4f16488f22204857253fb25f74ac78c76e23d57939286043c`  
		Last Modified: Sat, 29 Dec 2018 08:49:24 GMT  
		Size: 903.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f6bfc00355bebe77982660527151c2abd3bc98b531b0d01fc7d42bdbc1ae158`  
		Last Modified: Sat, 29 Dec 2018 15:05:50 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8d3903bb7cf711f9f9d6d348cac1e3fad69adf5d910c09b8ce179681425d51a`  
		Last Modified: Sat, 29 Dec 2018 15:05:51 GMT  
		Size: 3.0 MB (3041274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b29cca9cdc8b7269d4b8083ea7eed02cc8b3cb3bab518944b73245ea97de6f9e`  
		Last Modified: Sat, 29 Dec 2018 15:05:57 GMT  
		Size: 9.6 MB (9568705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:563b1ae91196dec2eaa8fe7e11b696bf2bfba4572937d82025049c0fcc354baa`  
		Last Modified: Sat, 29 Dec 2018 15:05:50 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a79fcf414979fcef726b5db0274171ed70a8c53cab8385c7111a65f73b5611d3`  
		Last Modified: Sat, 29 Dec 2018 15:05:50 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `joomla:3-php7.1` - linux; arm variant v5

```console
$ docker pull joomla@sha256:c403370ea52331718ad4124d95513667d9977d69d37877886d0f219727d412ed
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.1 MB (135072894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc6684377ba29da97afda3037d8687eb36dfb9371d2ef6ee44dde8357dc48e5b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 16 Nov 2018 09:58:31 GMT
ADD file:571b664b51137693f1c3889a3ace44345b13edf68179c54841bcf69428925fb3 in / 
# Fri, 16 Nov 2018 09:58:32 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:28:49 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Fri, 16 Nov 2018 11:28:49 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 16 Nov 2018 11:29:36 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:29:38 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 16 Nov 2018 11:29:39 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 16 Nov 2018 11:34:51 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:34:52 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 16 Nov 2018 11:34:52 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 29 Nov 2018 09:59:49 GMT
RUN set -eux; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Thu, 29 Nov 2018 09:59:50 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Thu, 29 Nov 2018 09:59:51 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Thu, 29 Nov 2018 09:59:52 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Thu, 29 Nov 2018 09:59:52 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Thu, 29 Nov 2018 09:59:52 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 29 Nov 2018 09:59:53 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 29 Nov 2018 09:59:53 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 29 Nov 2018 10:07:48 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Tue, 11 Dec 2018 10:30:55 GMT
ENV PHP_VERSION=7.1.25
# Tue, 11 Dec 2018 10:30:56 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.25.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.25.tar.xz.asc/from/this/mirror
# Tue, 11 Dec 2018 10:30:56 GMT
ENV PHP_SHA256=0fd8dad1903cd0b2d615a1fe4209f99e53b7292403c8ffa1919c0f4dd1eada88 PHP_MD5=
# Tue, 11 Dec 2018 10:31:12 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 11 Dec 2018 10:31:13 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 11 Dec 2018 10:34:04 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 11 Dec 2018 10:34:06 GMT
COPY multi:8718fd7f22548816d6fa68aef1cb96dedf8a138235da40c40a2899e248c8d4de in /usr/local/bin/ 
# Tue, 11 Dec 2018 10:34:06 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 11 Dec 2018 10:34:07 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 11 Dec 2018 10:34:07 GMT
WORKDIR /var/www/html
# Tue, 11 Dec 2018 10:34:08 GMT
EXPOSE 80/tcp
# Tue, 11 Dec 2018 10:34:08 GMT
CMD ["apache2-foreground"]
# Tue, 11 Dec 2018 13:59:00 GMT
LABEL maintainer=Michael Babker <michael.babker@joomla.org> (@mbabker)
# Tue, 11 Dec 2018 13:59:01 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Tue, 11 Dec 2018 13:59:02 GMT
RUN a2enmod rewrite
# Wed, 26 Dec 2018 09:52:13 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libbz2-dev 		libjpeg-dev 		libldap2-dev 		libmcrypt-dev 		libmemcached-dev 		libpng-dev 		libpq-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install 		bz2 		gd 		ldap 		mcrypt 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 		pecl install APCu-5.1.16; 	pecl install memcached-3.1.2; 	pecl install redis-4.2.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 09:52:14 GMT
VOLUME [/var/www/html]
# Wed, 26 Dec 2018 09:52:14 GMT
ENV JOOMLA_VERSION=3.9.1
# Wed, 26 Dec 2018 09:52:15 GMT
ENV JOOMLA_SHA1=aec0f602f93064d55cc06917329abdeef2e0f820
# Wed, 26 Dec 2018 09:52:24 GMT
RUN curl -o joomla.tar.bz2 -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.tar.bz2 	&& echo "$JOOMLA_SHA1 *joomla.tar.bz2" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& tar -xf joomla.tar.bz2 -C /usr/src/joomla 	&& rm joomla.tar.bz2 	&& chown -R www-data:www-data /usr/src/joomla
# Wed, 26 Dec 2018 09:52:25 GMT
COPY file:fcc18c5b9c2d514cfb965bab84e10b4f924a39a5f202055df75d7990da099d8f in /entrypoint.sh 
# Wed, 26 Dec 2018 09:52:25 GMT
COPY file:5a85d779aaae74cfa3ab6228df0f24236d4d5ad9097e2a1b277e3daea0d6d3dc in /makedb.php 
# Wed, 26 Dec 2018 09:52:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 26 Dec 2018 09:52:26 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:409ea78f2caa9a970b3fae4f7a23caf60fe64dd022e2b3841944e6d82da81c03`  
		Last Modified: Fri, 16 Nov 2018 10:13:25 GMT  
		Size: 21.2 MB (21163007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36be7f24ef8249a63caa2e9cf2d4a5240da49447f8f4b1022e6deaabc04ade65`  
		Last Modified: Fri, 16 Nov 2018 14:03:16 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63dd69dcf2218b5d34ed001407e1b7b7762ae29fc1cbb5cdff51c4dc98f446dc`  
		Last Modified: Fri, 16 Nov 2018 14:03:38 GMT  
		Size: 57.4 MB (57447645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30fbb3322a97ab486d1416315f7bc8a4a229380e180bfaa7e7debcf05ba88012`  
		Last Modified: Fri, 16 Nov 2018 14:03:17 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d490db21ea244d5a3afd9968406184550a611fec8010d4c3b034c86986256be1`  
		Last Modified: Fri, 16 Nov 2018 14:05:55 GMT  
		Size: 16.7 MB (16654407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:242e902a23a486bd4532f7b029ad4c2d27f5f9d79477d6425ca521694c603381`  
		Last Modified: Thu, 29 Nov 2018 10:33:32 GMT  
		Size: 1.4 KB (1371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8506921f2ac2c4ad039a008fffea1ddbe9f2835be2939fe5f3739dfa41979bf1`  
		Last Modified: Thu, 29 Nov 2018 10:33:32 GMT  
		Size: 480.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff983ab36f8cee8ec5c8d16ef909c1729a560dea45cc5326f6908cec51249976`  
		Last Modified: Thu, 29 Nov 2018 10:33:33 GMT  
		Size: 513.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039d4e2005cf4842c5e21ddad98eeb108cb3128d66de7e83465470bf1ef5e548`  
		Last Modified: Tue, 11 Dec 2018 12:21:59 GMT  
		Size: 12.6 MB (12554057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:653658a6cbae91a5122011b91c90ecbf63efbd5f96862273411a04d431e9778f`  
		Last Modified: Tue, 11 Dec 2018 12:21:58 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41f7d006d9f5f9e21e40f28ff59b1ddd1529734f04667afb2a3dc8b6b388eafb`  
		Last Modified: Tue, 11 Dec 2018 12:22:02 GMT  
		Size: 14.8 MB (14757356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6b0d5107472a3f2021f1494e8727a83170bee789b7eaa2856daf5d37aeaddc4`  
		Last Modified: Tue, 11 Dec 2018 12:21:58 GMT  
		Size: 2.2 KB (2200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91e8bc2bd1c0b2698716e47506a1f2ae9e10a2097f81e4804e76ef7259ec15c`  
		Last Modified: Tue, 11 Dec 2018 12:21:57 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e462d4f54cb892568d3d5a46c1f2fe8cf95224a07648a923c5a35675338528b`  
		Last Modified: Tue, 11 Dec 2018 14:20:51 GMT  
		Size: 317.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1717284db1f9c68b812fdbcee8d11b54a440c379773b4d20236142e638dba5c`  
		Last Modified: Wed, 26 Dec 2018 10:13:32 GMT  
		Size: 2.9 MB (2919209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82b8bcf62c582acd1238b660a8a9903cef0f1e51abfab3fcf4c38ee901ff0d57`  
		Last Modified: Wed, 26 Dec 2018 10:13:37 GMT  
		Size: 9.6 MB (9568702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf87407557f2000d2bc134737a645411136cb63f2d735b6dfbd3fa0fec7be4d9`  
		Last Modified: Wed, 26 Dec 2018 10:13:31 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:309d19b20f679048089d50cd71b448343224e63111bc2208aa25fd9dcd8825a1`  
		Last Modified: Wed, 26 Dec 2018 10:13:31 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `joomla:3-php7.1` - linux; arm variant v7

```console
$ docker pull joomla@sha256:213d36c470b41aa9696899473cfe2d9bbafffa7cd31de0fd851995c27500bd0f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.8 MB (127846847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e31a82deead31cc80893689496f30767dbfb23fb2bce70ddadcd30370f396876`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 16 Nov 2018 13:09:32 GMT
ADD file:dbddf6cec329cf26640d0898aecbeff1c7a67bc245092317a47bfd07c1a49a2d in / 
# Fri, 16 Nov 2018 13:09:33 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 14:10:08 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Fri, 16 Nov 2018 14:10:09 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 16 Nov 2018 14:10:45 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 16 Nov 2018 14:10:46 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 16 Nov 2018 14:10:47 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 16 Nov 2018 14:15:21 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 14:15:21 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 16 Nov 2018 14:15:22 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 29 Nov 2018 13:09:07 GMT
RUN set -eux; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Thu, 29 Nov 2018 13:09:09 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Thu, 29 Nov 2018 13:09:14 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Thu, 29 Nov 2018 13:09:15 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Thu, 29 Nov 2018 13:09:15 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Thu, 29 Nov 2018 13:09:15 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 29 Nov 2018 13:09:16 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 29 Nov 2018 13:09:16 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 29 Nov 2018 13:17:00 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Tue, 11 Dec 2018 13:37:22 GMT
ENV PHP_VERSION=7.1.25
# Tue, 11 Dec 2018 13:37:23 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.25.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.25.tar.xz.asc/from/this/mirror
# Tue, 11 Dec 2018 13:37:23 GMT
ENV PHP_SHA256=0fd8dad1903cd0b2d615a1fe4209f99e53b7292403c8ffa1919c0f4dd1eada88 PHP_MD5=
# Tue, 11 Dec 2018 13:37:36 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 11 Dec 2018 13:37:37 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 11 Dec 2018 13:40:15 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 11 Dec 2018 13:40:16 GMT
COPY multi:8718fd7f22548816d6fa68aef1cb96dedf8a138235da40c40a2899e248c8d4de in /usr/local/bin/ 
# Tue, 11 Dec 2018 13:40:17 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 11 Dec 2018 13:40:17 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 11 Dec 2018 13:40:18 GMT
WORKDIR /var/www/html
# Tue, 11 Dec 2018 13:40:18 GMT
EXPOSE 80/tcp
# Tue, 11 Dec 2018 13:40:19 GMT
CMD ["apache2-foreground"]
# Tue, 11 Dec 2018 16:33:47 GMT
LABEL maintainer=Michael Babker <michael.babker@joomla.org> (@mbabker)
# Tue, 11 Dec 2018 16:33:47 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Tue, 11 Dec 2018 16:33:49 GMT
RUN a2enmod rewrite
# Wed, 26 Dec 2018 13:01:01 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libbz2-dev 		libjpeg-dev 		libldap2-dev 		libmcrypt-dev 		libmemcached-dev 		libpng-dev 		libpq-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install 		bz2 		gd 		ldap 		mcrypt 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 		pecl install APCu-5.1.16; 	pecl install memcached-3.1.2; 	pecl install redis-4.2.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 13:01:02 GMT
VOLUME [/var/www/html]
# Wed, 26 Dec 2018 13:01:02 GMT
ENV JOOMLA_VERSION=3.9.1
# Wed, 26 Dec 2018 13:01:03 GMT
ENV JOOMLA_SHA1=aec0f602f93064d55cc06917329abdeef2e0f820
# Wed, 26 Dec 2018 13:01:12 GMT
RUN curl -o joomla.tar.bz2 -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.tar.bz2 	&& echo "$JOOMLA_SHA1 *joomla.tar.bz2" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& tar -xf joomla.tar.bz2 -C /usr/src/joomla 	&& rm joomla.tar.bz2 	&& chown -R www-data:www-data /usr/src/joomla
# Wed, 26 Dec 2018 13:01:13 GMT
COPY file:fcc18c5b9c2d514cfb965bab84e10b4f924a39a5f202055df75d7990da099d8f in /entrypoint.sh 
# Wed, 26 Dec 2018 13:01:14 GMT
COPY file:5a85d779aaae74cfa3ab6228df0f24236d4d5ad9097e2a1b277e3daea0d6d3dc in /makedb.php 
# Wed, 26 Dec 2018 13:01:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 26 Dec 2018 13:01:14 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:88950d48cb7db5e5f329d377a3f7f1260b31f4e0f2d7202fbfc08f7685b41580`  
		Last Modified: Fri, 16 Nov 2018 13:22:02 GMT  
		Size: 19.3 MB (19270059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21355781a0f0ae4258b9daa067e907f606ea30be39b2232a07920da1b3bf8fec`  
		Last Modified: Fri, 16 Nov 2018 16:33:58 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dac5b67a930b7b63a87e2bc220495f2d0f4096ecfe1260237df5b3f716c165b9`  
		Last Modified: Fri, 16 Nov 2018 16:34:15 GMT  
		Size: 53.6 MB (53562566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50bde8d59f01aab8d0c195f72026b4b79966994a188978b0bc3d450b17a9bb9b`  
		Last Modified: Fri, 16 Nov 2018 16:33:57 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01cb553977d55b9576320b992286a7c3cd1c1317e1afe041db8a86e9e3d2f04b`  
		Last Modified: Fri, 16 Nov 2018 16:36:09 GMT  
		Size: 16.2 MB (16162454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5724cfb0e89c297bf7c0e83791f9a4bd08999d9803bd16b387acd67e36a83d56`  
		Last Modified: Thu, 29 Nov 2018 13:43:12 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:105544796183683d68dacb0672ae808d59aa0437fdc2e1f2894278fdeecfdf07`  
		Last Modified: Thu, 29 Nov 2018 13:43:12 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e649c885ed6324dc65d63c621c58ef7ad759b324b15897ce069cc8bb485773b6`  
		Last Modified: Thu, 29 Nov 2018 13:43:12 GMT  
		Size: 516.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0610e2dd4862aeeaa260362fb5f25fc4863f99e33bbd33fafb2800acde63336c`  
		Last Modified: Tue, 11 Dec 2018 15:22:44 GMT  
		Size: 12.6 MB (12553999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7c8eb220e18a773089ed365ba0d732bccffd6597ef46016f8b3fcfd44064696`  
		Last Modified: Tue, 11 Dec 2018 15:22:42 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e345a5ad3b4f73a4fd13dfbce25e3cc51b24bc22bb4ab4aa28b96a98cd4edd6a`  
		Last Modified: Tue, 11 Dec 2018 15:22:46 GMT  
		Size: 13.9 MB (13895883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42eaf40f1a00f2b9d7e9223b021429053001e085ef7f1f531ad4b7cb67f2128a`  
		Last Modified: Tue, 11 Dec 2018 15:22:42 GMT  
		Size: 2.2 KB (2197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:577606bfea618fc0c4001d5afd4cea4684777d810666d8a2d02208a8cafabadb`  
		Last Modified: Tue, 11 Dec 2018 15:22:42 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:461fb94b118ed229509804cda4d4c4eca1bf484607d530f5fa5ac05ec6429129`  
		Last Modified: Tue, 11 Dec 2018 16:53:53 GMT  
		Size: 316.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82dd0ac818ad94d38d0ba175564b70e6ada5229dae3e0e55f27424ba8fec4c10`  
		Last Modified: Wed, 26 Dec 2018 13:20:02 GMT  
		Size: 2.8 MB (2824578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4c6e51b588379b62e34ee685e21514095d62f187d66dd6bd2e9aaa1ae6eac93`  
		Last Modified: Wed, 26 Dec 2018 13:20:06 GMT  
		Size: 9.6 MB (9568798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbf824c881bf0552687e4929471806d951663b42ef07ab607c2bdc156da5955a`  
		Last Modified: Wed, 26 Dec 2018 13:20:00 GMT  
		Size: 1.2 KB (1171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91f2225e5ff5ec791ce623b60a2278e00dabf9659458bfff06a7d959fb3476fa`  
		Last Modified: Wed, 26 Dec 2018 13:20:01 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `joomla:3-php7.1` - linux; arm64 variant v8

```console
$ docker pull joomla@sha256:3d67379725f0a91d66b9a0bbe4b1904ae83fc08c3e8bd58af1e3414c4ca6a07c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.3 MB (134263002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df322b822415ac6d4430ac3ba117e8c2fdc0bc49a5653180293b3a50ad3a0f48`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

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
# Fri, 16 Nov 2018 14:35:13 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 14:35:14 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 16 Nov 2018 14:35:15 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 29 Nov 2018 11:06:40 GMT
RUN set -eux; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Thu, 29 Nov 2018 11:06:43 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Thu, 29 Nov 2018 11:06:44 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Thu, 29 Nov 2018 11:06:45 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Thu, 29 Nov 2018 11:06:46 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Thu, 29 Nov 2018 11:06:46 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 29 Nov 2018 11:06:47 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 29 Nov 2018 11:06:48 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 29 Nov 2018 11:21:04 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Tue, 11 Dec 2018 12:44:04 GMT
ENV PHP_VERSION=7.1.25
# Tue, 11 Dec 2018 12:44:04 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.25.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.25.tar.xz.asc/from/this/mirror
# Tue, 11 Dec 2018 12:44:05 GMT
ENV PHP_SHA256=0fd8dad1903cd0b2d615a1fe4209f99e53b7292403c8ffa1919c0f4dd1eada88 PHP_MD5=
# Tue, 11 Dec 2018 12:44:38 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 11 Dec 2018 12:44:39 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 11 Dec 2018 12:49:55 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 11 Dec 2018 12:49:56 GMT
COPY multi:8718fd7f22548816d6fa68aef1cb96dedf8a138235da40c40a2899e248c8d4de in /usr/local/bin/ 
# Tue, 11 Dec 2018 12:49:57 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 11 Dec 2018 12:49:57 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 11 Dec 2018 12:49:58 GMT
WORKDIR /var/www/html
# Tue, 11 Dec 2018 12:49:59 GMT
EXPOSE 80/tcp
# Tue, 11 Dec 2018 12:49:59 GMT
CMD ["apache2-foreground"]
# Tue, 11 Dec 2018 18:32:27 GMT
LABEL maintainer=Michael Babker <michael.babker@joomla.org> (@mbabker)
# Tue, 11 Dec 2018 18:32:28 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Tue, 11 Dec 2018 18:32:30 GMT
RUN a2enmod rewrite
# Wed, 26 Dec 2018 09:46:07 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libbz2-dev 		libjpeg-dev 		libldap2-dev 		libmcrypt-dev 		libmemcached-dev 		libpng-dev 		libpq-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install 		bz2 		gd 		ldap 		mcrypt 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 		pecl install APCu-5.1.16; 	pecl install memcached-3.1.2; 	pecl install redis-4.2.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 09:46:08 GMT
VOLUME [/var/www/html]
# Wed, 26 Dec 2018 09:46:08 GMT
ENV JOOMLA_VERSION=3.9.1
# Wed, 26 Dec 2018 09:46:09 GMT
ENV JOOMLA_SHA1=aec0f602f93064d55cc06917329abdeef2e0f820
# Wed, 26 Dec 2018 09:46:20 GMT
RUN curl -o joomla.tar.bz2 -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.tar.bz2 	&& echo "$JOOMLA_SHA1 *joomla.tar.bz2" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& tar -xf joomla.tar.bz2 -C /usr/src/joomla 	&& rm joomla.tar.bz2 	&& chown -R www-data:www-data /usr/src/joomla
# Wed, 26 Dec 2018 09:46:21 GMT
COPY file:fcc18c5b9c2d514cfb965bab84e10b4f924a39a5f202055df75d7990da099d8f in /entrypoint.sh 
# Wed, 26 Dec 2018 09:46:21 GMT
COPY file:5a85d779aaae74cfa3ab6228df0f24236d4d5ad9097e2a1b277e3daea0d6d3dc in /makedb.php 
# Wed, 26 Dec 2018 09:46:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 26 Dec 2018 09:46:23 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:c4edaebe80dfcb15f9f5d80206772015527026f75c57982a55de3afae49169aa`  
		Last Modified: Fri, 16 Nov 2018 19:18:49 GMT  
		Size: 16.7 MB (16711423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd0bf9610978428c046b6051cd2c7b03324916fd4b02ae0a9fada265f48bf1ec`  
		Last Modified: Thu, 29 Nov 2018 11:41:37 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3799635d53177ac90c53583e7f41f722ef02ff93a53b762d19acdfd067edc275`  
		Last Modified: Thu, 29 Nov 2018 11:41:37 GMT  
		Size: 439.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fc9185af5d0f1b9717e426c2e93cb2f7c8ec426f8671b3ed4cd40594d9821d0`  
		Last Modified: Thu, 29 Nov 2018 11:41:37 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:760b25f1864f6030a75b82f9a3769e3d9422c683fde389885ba52293a24b362c`  
		Last Modified: Tue, 11 Dec 2018 15:28:50 GMT  
		Size: 12.6 MB (12554571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b9289f6c8013743f65d910372ffff582158f885e4ae66615bbd37bdc4245c91`  
		Last Modified: Tue, 11 Dec 2018 15:28:48 GMT  
		Size: 503.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3141636b1cbef05db315a9ed3c5492cb4e47efe1561842b8dc1e4e64412bec8a`  
		Last Modified: Tue, 11 Dec 2018 15:28:54 GMT  
		Size: 14.6 MB (14568172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7626125e8fe76cca89b7b4b76e45f55f3a3793a822e5e220525c38915736bb3`  
		Last Modified: Tue, 11 Dec 2018 15:28:49 GMT  
		Size: 2.2 KB (2196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9680e7bdbaf150165b4ebc5a6d7e65028c6dbdd2fe9998d585a55ccc9f4c3ed9`  
		Last Modified: Tue, 11 Dec 2018 15:28:48 GMT  
		Size: 906.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de8165f98f35394152ba2ed267c8ba7c88cae3d99749486aef75a2dc34c99634`  
		Last Modified: Tue, 11 Dec 2018 19:09:28 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c47e207203436c9d623304193643b29336800ddc739faab9ef51b8b9009c95c`  
		Last Modified: Wed, 26 Dec 2018 10:32:05 GMT  
		Size: 2.9 MB (2926258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:405f6ceec125402a3b2d3a197c8c5b31823b26008dc1c20bfb1ad15d81634f77`  
		Last Modified: Wed, 26 Dec 2018 10:32:10 GMT  
		Size: 9.6 MB (9568729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac1a371994c987ace6a24d820f0d573479f2d74dd47f9eeb9e3033e62231fdd3`  
		Last Modified: Wed, 26 Dec 2018 10:32:04 GMT  
		Size: 1.2 KB (1172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4d06400ba56ed8c60a123495389176e00a03b23807cf5123366dd2e3bc8f728`  
		Last Modified: Wed, 26 Dec 2018 10:32:04 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `joomla:3-php7.1` - linux; 386

```console
$ docker pull joomla@sha256:17150015cb6b6d5beb8a7c9c7965a35a458bf1c5d29075c0802a831479bd9606
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.5 MB (153495739 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcfb9a22cd6012fc30bff43ec5d66e41238e083ef61eed16c3ff4ad8d481361a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 16 Nov 2018 12:37:07 GMT
ADD file:e79bc0c504d8730048ef2ccae209fa270a0e3785a4029777112a397261336279 in / 
# Fri, 16 Nov 2018 12:37:08 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:15:50 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Fri, 16 Nov 2018 18:15:51 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 16 Nov 2018 18:16:49 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:16:49 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 16 Nov 2018 18:16:50 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 16 Nov 2018 18:28:37 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:28:38 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 16 Nov 2018 18:28:38 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 29 Nov 2018 12:46:01 GMT
RUN set -eux; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Thu, 29 Nov 2018 12:46:02 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Thu, 29 Nov 2018 12:46:03 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Thu, 29 Nov 2018 12:46:03 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Thu, 29 Nov 2018 12:46:03 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Thu, 29 Nov 2018 12:46:03 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 29 Nov 2018 12:46:03 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 29 Nov 2018 12:46:04 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 29 Nov 2018 12:55:34 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Tue, 11 Dec 2018 13:05:57 GMT
ENV PHP_VERSION=7.1.25
# Tue, 11 Dec 2018 13:05:57 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.25.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.25.tar.xz.asc/from/this/mirror
# Tue, 11 Dec 2018 13:05:57 GMT
ENV PHP_SHA256=0fd8dad1903cd0b2d615a1fe4209f99e53b7292403c8ffa1919c0f4dd1eada88 PHP_MD5=
# Tue, 11 Dec 2018 13:06:07 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 11 Dec 2018 13:06:07 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 11 Dec 2018 13:09:13 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 11 Dec 2018 13:09:14 GMT
COPY multi:8718fd7f22548816d6fa68aef1cb96dedf8a138235da40c40a2899e248c8d4de in /usr/local/bin/ 
# Tue, 11 Dec 2018 13:09:14 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 11 Dec 2018 13:09:14 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 11 Dec 2018 13:09:15 GMT
WORKDIR /var/www/html
# Tue, 11 Dec 2018 13:09:15 GMT
EXPOSE 80/tcp
# Tue, 11 Dec 2018 13:09:15 GMT
CMD ["apache2-foreground"]
# Tue, 11 Dec 2018 20:26:25 GMT
LABEL maintainer=Michael Babker <michael.babker@joomla.org> (@mbabker)
# Tue, 11 Dec 2018 20:26:26 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Tue, 11 Dec 2018 20:26:26 GMT
RUN a2enmod rewrite
# Wed, 26 Dec 2018 11:47:55 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libbz2-dev 		libjpeg-dev 		libldap2-dev 		libmcrypt-dev 		libmemcached-dev 		libpng-dev 		libpq-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install 		bz2 		gd 		ldap 		mcrypt 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 		pecl install APCu-5.1.16; 	pecl install memcached-3.1.2; 	pecl install redis-4.2.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 11:47:55 GMT
VOLUME [/var/www/html]
# Wed, 26 Dec 2018 11:47:55 GMT
ENV JOOMLA_VERSION=3.9.1
# Wed, 26 Dec 2018 11:47:55 GMT
ENV JOOMLA_SHA1=aec0f602f93064d55cc06917329abdeef2e0f820
# Wed, 26 Dec 2018 11:48:00 GMT
RUN curl -o joomla.tar.bz2 -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.tar.bz2 	&& echo "$JOOMLA_SHA1 *joomla.tar.bz2" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& tar -xf joomla.tar.bz2 -C /usr/src/joomla 	&& rm joomla.tar.bz2 	&& chown -R www-data:www-data /usr/src/joomla
# Wed, 26 Dec 2018 11:48:01 GMT
COPY file:fcc18c5b9c2d514cfb965bab84e10b4f924a39a5f202055df75d7990da099d8f in /entrypoint.sh 
# Wed, 26 Dec 2018 11:48:01 GMT
COPY file:5a85d779aaae74cfa3ab6228df0f24236d4d5ad9097e2a1b277e3daea0d6d3dc in /makedb.php 
# Wed, 26 Dec 2018 11:48:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 26 Dec 2018 11:48:01 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:137021d63f76f1d8c7a7bcdd4c59e1a909b9d440414a2623b215f830920128e4`  
		Last Modified: Thu, 15 Nov 2018 01:55:24 GMT  
		Size: 23.1 MB (23126776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4aebce9236da836da0da39112d9cf2d2c9ff837127af39bf38ee80f7fbceee9`  
		Last Modified: Sat, 17 Nov 2018 01:30:51 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4a806383cab0029a02e0165ccafdd761706ba5a4b24639db005626c764a3fab`  
		Last Modified: Sat, 17 Nov 2018 01:31:18 GMT  
		Size: 71.5 MB (71484757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47aac9c096cb4eec16074c6101d1461b4078b88562471628eda20bc601ca139e`  
		Last Modified: Sat, 17 Nov 2018 01:30:51 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db8c3377e77cc20e036e9f41dc3fb933059e75d4d35e52deb0c81cfc4c90d082`  
		Last Modified: Sat, 17 Nov 2018 01:34:56 GMT  
		Size: 17.6 MB (17561970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:282af8a976e754b45b4ad6edf54f3dac8f01be37a7ab9975da7b4570b7e060cc`  
		Last Modified: Thu, 29 Nov 2018 13:24:02 GMT  
		Size: 1.3 KB (1341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57dba450f4a2515f6d3edd58f39fe0e323eee555472e00ee649e17b1cb45e373`  
		Last Modified: Thu, 29 Nov 2018 13:24:02 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28da0f2bce6158d85ec36739015b8ac3aa5c8e7cc3df1f0f3f7887c5b5d7c460`  
		Last Modified: Thu, 29 Nov 2018 13:24:02 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe321926fe03edeb35a42c2bee022dc734971cdcb0a0bd239896f325c7a7c361`  
		Last Modified: Tue, 11 Dec 2018 16:29:05 GMT  
		Size: 12.6 MB (12555543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0ae59ab87df79999dd3f75422fa02987857670804e3160fc56628033ef74775`  
		Last Modified: Tue, 11 Dec 2018 16:29:04 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec4a2b8ba97eab910007e538ef47eee304e4e86e52f5d1a627d16050222fc7ec`  
		Last Modified: Tue, 11 Dec 2018 16:29:09 GMT  
		Size: 16.2 MB (16164051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca24e665c5b2ad1ce3907a97050b6e3242c53b935835a80404176c153c3f3378`  
		Last Modified: Tue, 11 Dec 2018 16:29:04 GMT  
		Size: 2.2 KB (2199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2813fe42e398b52858ff03f3368651ef9ad8f094e4d509ac961b632929939837`  
		Last Modified: Tue, 11 Dec 2018 16:29:03 GMT  
		Size: 906.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb17ab6722a24369553159ea16fcd278600d4bfb50f96ba581040ddac9336351`  
		Last Modified: Tue, 11 Dec 2018 20:52:27 GMT  
		Size: 316.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7252d34d0d6474a98bd35390d2431b9c6069079b87b7a56ad1c515d01aee8dc8`  
		Last Modified: Wed, 26 Dec 2018 12:04:51 GMT  
		Size: 3.0 MB (3026489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10de9e1b82b192b16fc57f2cf6e8e36ce9d03ae54938e74c91630bf522c17baf`  
		Last Modified: Wed, 26 Dec 2018 12:04:54 GMT  
		Size: 9.6 MB (9567775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c4c22a4e69707d43ebfa3f543d90252cd312ef6c90992622d31235bd883aa79`  
		Last Modified: Wed, 26 Dec 2018 12:04:50 GMT  
		Size: 1.2 KB (1172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae1e2eaf44978b7886e5959cdd7127722b13940a34b4797f975de64a9d9b2d45`  
		Last Modified: Wed, 26 Dec 2018 12:04:50 GMT  
		Size: 612.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `joomla:3-php7.1` - linux; ppc64le

```console
$ docker pull joomla@sha256:8d13cad196b844acf464335518673b1f478699451d8d85b1004d4541d7567a32
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.1 MB (141120267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4e2d48c301c5b1362cec9336723a20f6d505fb9c2dbc1284369d2057e9b9859`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

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
# Sat, 29 Dec 2018 13:12:08 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:12:10 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Sat, 29 Dec 2018 13:12:12 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Sat, 29 Dec 2018 13:12:16 GMT
RUN set -eux; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Sat, 29 Dec 2018 13:12:21 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Sat, 29 Dec 2018 13:12:26 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Sat, 29 Dec 2018 13:12:28 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Sat, 29 Dec 2018 13:12:30 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Sat, 29 Dec 2018 13:12:32 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 13:12:34 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 13:12:36 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 29 Dec 2018 14:01:42 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Sat, 29 Dec 2018 14:01:44 GMT
ENV PHP_VERSION=7.1.25
# Sat, 29 Dec 2018 14:01:46 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.25.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.25.tar.xz.asc/from/this/mirror
# Sat, 29 Dec 2018 14:01:48 GMT
ENV PHP_SHA256=0fd8dad1903cd0b2d615a1fe4209f99e53b7292403c8ffa1919c0f4dd1eada88 PHP_MD5=
# Sat, 29 Dec 2018 14:02:23 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 29 Dec 2018 14:02:24 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 29 Dec 2018 14:06:57 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 29 Dec 2018 14:06:59 GMT
COPY multi:0a6fe33cb39694994fa567c75b399b9aa5e477c8770caa9f731607a72819b457 in /usr/local/bin/ 
# Sat, 29 Dec 2018 14:07:01 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 29 Dec 2018 14:07:02 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Sat, 29 Dec 2018 14:07:04 GMT
WORKDIR /var/www/html
# Sat, 29 Dec 2018 14:07:07 GMT
EXPOSE 80
# Sat, 29 Dec 2018 14:07:09 GMT
CMD ["apache2-foreground"]
# Sat, 29 Dec 2018 20:19:44 GMT
LABEL maintainer=Michael Babker <michael.babker@joomla.org> (@mbabker)
# Sat, 29 Dec 2018 20:19:46 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Sat, 29 Dec 2018 20:19:51 GMT
RUN a2enmod rewrite
# Sat, 29 Dec 2018 20:22:56 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libbz2-dev 		libjpeg-dev 		libldap2-dev 		libmcrypt-dev 		libmemcached-dev 		libpng-dev 		libpq-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install 		bz2 		gd 		ldap 		mcrypt 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 		pecl install APCu-5.1.16; 	pecl install memcached-3.1.2; 	pecl install redis-4.2.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 20:22:58 GMT
VOLUME [/var/www/html]
# Sat, 29 Dec 2018 20:23:00 GMT
ENV JOOMLA_VERSION=3.9.1
# Sat, 29 Dec 2018 20:23:01 GMT
ENV JOOMLA_SHA1=aec0f602f93064d55cc06917329abdeef2e0f820
# Sat, 29 Dec 2018 20:23:11 GMT
RUN curl -o joomla.tar.bz2 -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.tar.bz2 	&& echo "$JOOMLA_SHA1 *joomla.tar.bz2" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& tar -xf joomla.tar.bz2 -C /usr/src/joomla 	&& rm joomla.tar.bz2 	&& chown -R www-data:www-data /usr/src/joomla
# Sat, 29 Dec 2018 20:23:13 GMT
COPY file:fcc18c5b9c2d514cfb965bab84e10b4f924a39a5f202055df75d7990da099d8f in /entrypoint.sh 
# Sat, 29 Dec 2018 20:23:14 GMT
COPY file:5a85d779aaae74cfa3ab6228df0f24236d4d5ad9097e2a1b277e3daea0d6d3dc in /makedb.php 
# Sat, 29 Dec 2018 20:23:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 29 Dec 2018 20:23:19 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:f3209a003a83f58a4c0b0b6d647aab82cf58aac4488fbea658f96c9340ff4a9d`  
		Last Modified: Sat, 29 Dec 2018 15:03:36 GMT  
		Size: 17.3 MB (17348586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0792d92b3fe4333eec429cc7e973c9758702823c0f9cc84cd02777049c72d16d`  
		Last Modified: Sat, 29 Dec 2018 15:03:28 GMT  
		Size: 1.4 KB (1370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:594e55fae66c4e49f0a9d148262bd186dea8241009a7ebf4ac3ac37b9f04944a`  
		Last Modified: Sat, 29 Dec 2018 15:03:28 GMT  
		Size: 473.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7e36bda981ae059f48a8253566f80ac2c45f8d7490de6f2a6693f68e1c964b2`  
		Last Modified: Sat, 29 Dec 2018 15:03:28 GMT  
		Size: 518.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e133410b10872e238b4d24dcf9f5add482e714b00b3a136ac8a450d83128dab`  
		Last Modified: Sat, 29 Dec 2018 15:08:21 GMT  
		Size: 12.6 MB (12554565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3356432743d5997ce4a377b3c1c4a10dd127d3b4a6c058f886c8f8f42c25e840`  
		Last Modified: Sat, 29 Dec 2018 15:08:19 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b29815beabaef6d749dcb9dc3b403e447b61611fd01f398ebbe749304cec981b`  
		Last Modified: Sat, 29 Dec 2018 15:08:24 GMT  
		Size: 14.0 MB (14006897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3f3f23c5faf05cf25098cfa802723204b93537f270f1696006f31243d251d92`  
		Last Modified: Sat, 29 Dec 2018 15:08:19 GMT  
		Size: 2.2 KB (2197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:134add87c874cbca4e0c23557af0b5f701a3353ad9d98a9315ab02f50c2c2f0b`  
		Last Modified: Sat, 29 Dec 2018 15:08:19 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58b5c96c70e3a6515dc402323e33540a9b7a4d45109963f70ae1251d846559b1`  
		Last Modified: Sat, 29 Dec 2018 20:46:42 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fed3178765d02dd89b84f506832d463c3bbd56891dc98f5c0cf7e0efdaeb4a0f`  
		Last Modified: Sat, 29 Dec 2018 20:46:43 GMT  
		Size: 3.1 MB (3053152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86474e9a84efb98d5a5ed580cd1d8a1c1d765891b8c7ac4adc89e37af3c74799`  
		Last Modified: Sat, 29 Dec 2018 20:46:45 GMT  
		Size: 9.6 MB (9568663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9853dba757867dfdc008bee8d52ee2c41735d5d75a3ff35291960dbbe5267c40`  
		Last Modified: Sat, 29 Dec 2018 20:46:41 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbff580c88b4cab8be158605fdf2d5ba033b3051c06095c0d338e76ded70ce1e`  
		Last Modified: Sat, 29 Dec 2018 20:46:41 GMT  
		Size: 616.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `joomla:3-php7.1` - linux; s390x

```console
$ docker pull joomla@sha256:a6c763720e27897f89a9f04600f5733dea5921e0a8513072f9989ccaefcfe6a0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.0 MB (134978081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d9bb9388cf225417dc2116adeda562f3ca0ff3c4e7ee32cac4b352fb386fcce`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

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
# Sat, 29 Dec 2018 13:10:13 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:10:14 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Sat, 29 Dec 2018 13:10:14 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Sat, 29 Dec 2018 13:10:15 GMT
RUN set -eux; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Sat, 29 Dec 2018 13:10:16 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Sat, 29 Dec 2018 13:10:17 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Sat, 29 Dec 2018 13:10:17 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Sat, 29 Dec 2018 13:10:18 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Sat, 29 Dec 2018 13:10:18 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 13:10:18 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 13:10:18 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 29 Dec 2018 13:10:19 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Sat, 29 Dec 2018 13:10:19 GMT
ENV PHP_VERSION=7.1.25
# Sat, 29 Dec 2018 13:10:19 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.25.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.25.tar.xz.asc/from/this/mirror
# Sat, 29 Dec 2018 13:10:19 GMT
ENV PHP_SHA256=0fd8dad1903cd0b2d615a1fe4209f99e53b7292403c8ffa1919c0f4dd1eada88 PHP_MD5=
# Sat, 29 Dec 2018 13:10:34 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 29 Dec 2018 13:10:34 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 29 Dec 2018 13:13:30 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 29 Dec 2018 13:13:30 GMT
COPY multi:0a6fe33cb39694994fa567c75b399b9aa5e477c8770caa9f731607a72819b457 in /usr/local/bin/ 
# Sat, 29 Dec 2018 13:13:30 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 29 Dec 2018 13:13:31 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Sat, 29 Dec 2018 13:13:31 GMT
WORKDIR /var/www/html
# Sat, 29 Dec 2018 13:13:31 GMT
EXPOSE 80
# Sat, 29 Dec 2018 13:13:31 GMT
CMD ["apache2-foreground"]
# Sat, 29 Dec 2018 16:23:51 GMT
LABEL maintainer=Michael Babker <michael.babker@joomla.org> (@mbabker)
# Sat, 29 Dec 2018 16:23:51 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Sat, 29 Dec 2018 16:23:52 GMT
RUN a2enmod rewrite
# Sat, 29 Dec 2018 16:25:58 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libbz2-dev 		libjpeg-dev 		libldap2-dev 		libmcrypt-dev 		libmemcached-dev 		libpng-dev 		libpq-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install 		bz2 		gd 		ldap 		mcrypt 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 		pecl install APCu-5.1.16; 	pecl install memcached-3.1.2; 	pecl install redis-4.2.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 16:25:59 GMT
VOLUME [/var/www/html]
# Sat, 29 Dec 2018 16:25:59 GMT
ENV JOOMLA_VERSION=3.9.1
# Sat, 29 Dec 2018 16:25:59 GMT
ENV JOOMLA_SHA1=aec0f602f93064d55cc06917329abdeef2e0f820
# Sat, 29 Dec 2018 16:26:05 GMT
RUN curl -o joomla.tar.bz2 -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.tar.bz2 	&& echo "$JOOMLA_SHA1 *joomla.tar.bz2" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& tar -xf joomla.tar.bz2 -C /usr/src/joomla 	&& rm joomla.tar.bz2 	&& chown -R www-data:www-data /usr/src/joomla
# Sat, 29 Dec 2018 16:26:05 GMT
COPY file:fcc18c5b9c2d514cfb965bab84e10b4f924a39a5f202055df75d7990da099d8f in /entrypoint.sh 
# Sat, 29 Dec 2018 16:26:05 GMT
COPY file:5a85d779aaae74cfa3ab6228df0f24236d4d5ad9097e2a1b277e3daea0d6d3dc in /makedb.php 
# Sat, 29 Dec 2018 16:26:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 29 Dec 2018 16:26:06 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:d071a3018739a83b7e26e6bc71ec9f92f5ba61396b60aa5496835811158c950c`  
		Last Modified: Sat, 29 Dec 2018 14:19:25 GMT  
		Size: 17.3 MB (17251764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5df2a7f0ae48e06337f325e35665928565059ed54aeaad38587ccdfcc34ad459`  
		Last Modified: Sat, 29 Dec 2018 14:19:21 GMT  
		Size: 1.3 KB (1341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9403ff8d2250f336082fd8ab52d6dc057dfb423c144ba337a9a4fda15dd8d758`  
		Last Modified: Sat, 29 Dec 2018 14:19:21 GMT  
		Size: 434.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8355af21ac3ff646a6d03d0ddfeb09224896566c5477e7e07197170c36a5d20`  
		Last Modified: Sat, 29 Dec 2018 14:19:21 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5216c46d209165de1735e09b8e55a0a508cd21af45d4617b9b6a10ec6d83e4e3`  
		Last Modified: Sat, 29 Dec 2018 14:19:20 GMT  
		Size: 12.6 MB (12553468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22e6a5298f9e9707a6293be5c73a6aa331c2d8dc6ea73482e84da7842e058484`  
		Last Modified: Sat, 29 Dec 2018 14:19:20 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:760e638ced6d1d2e60f1351d2745fe82defe105e6717c253e39697499f390c1e`  
		Last Modified: Sat, 29 Dec 2018 14:19:23 GMT  
		Size: 14.4 MB (14372725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a15ecd30b4fe848bf01d16c9d958c320d72d5ae6f5d5c359e5d603f096040510`  
		Last Modified: Sat, 29 Dec 2018 14:19:20 GMT  
		Size: 2.2 KB (2197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f697972dc09c518cc7c2e6f00b1e3c77026962381fd80e01ea30bb373324ccea`  
		Last Modified: Sat, 29 Dec 2018 14:19:20 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5231bca5cd1065b917cf2d9d339f5cd513340b756fe804248f60691fa37582c7`  
		Last Modified: Sat, 29 Dec 2018 16:28:49 GMT  
		Size: 310.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceee4593f8fa9436cc7a12be4221ce21a7e92f3c9c8577e65d074dbba728ebc0`  
		Last Modified: Sat, 29 Dec 2018 16:28:50 GMT  
		Size: 3.1 MB (3094841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77d634ffade49c1555cc964ab94036fed1568d37246d5014cf0c2f41477ac12d`  
		Last Modified: Sat, 29 Dec 2018 16:28:52 GMT  
		Size: 9.6 MB (9568469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbbe3930c078f8d499545ce87b4820a5528155bdc94d05b72a5bdecd390d9ccf`  
		Last Modified: Sat, 29 Dec 2018 16:28:49 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b98cda75d50c504c2f1636aa70baa09643de5ead5ee92244b7cb3e07c7826aa3`  
		Last Modified: Sat, 29 Dec 2018 16:28:49 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
