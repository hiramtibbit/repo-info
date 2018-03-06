## `nextcloud:11-apache`

```console
$ docker pull nextcloud@sha256:9e0f6cc675dcaf3545b7b5c884d85b8769dd6693dd670c2eecc3634c65f4f98d
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

### `nextcloud:11-apache` - linux; amd64

```console
$ docker pull nextcloud@sha256:3d0b275990130c8324053ba2385a529d24a33a4791acc5350bea774294ae3721
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.9 MB (229865701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:214b0d7d3bc87fb3b47ea7da8d6c17769f770122e4197a731c2a39482f442d25`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Thu, 15 Feb 2018 01:42:14 GMT
ADD file:f1509ab9c2cd3810736e26739fa0f78ee1ba942e14498ba5f266d8a78e664acc in / 
# Thu, 15 Feb 2018 01:42:14 GMT
CMD ["bash"]
# Sat, 17 Feb 2018 00:13:55 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Sat, 17 Feb 2018 00:13:55 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Sat, 17 Feb 2018 00:14:23 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 17 Feb 2018 00:14:24 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 17 Feb 2018 00:14:25 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 17 Feb 2018 00:31:00 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 00:31:01 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Sat, 17 Feb 2018 00:31:01 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Sat, 17 Feb 2018 00:31:14 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Sat, 17 Feb 2018 00:31:15 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Sat, 17 Feb 2018 00:31:16 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Sat, 17 Feb 2018 00:31:16 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Sat, 17 Feb 2018 00:31:17 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Sat, 17 Feb 2018 00:31:17 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Sat, 17 Feb 2018 00:31:17 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 17 Feb 2018 00:31:17 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 17 Feb 2018 00:31:18 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 17 Feb 2018 00:31:18 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Mon, 05 Mar 2018 22:12:35 GMT
ENV PHP_VERSION=7.1.15
# Mon, 05 Mar 2018 22:12:35 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.15.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.15.tar.xz.asc/from/this/mirror
# Mon, 05 Mar 2018 22:12:35 GMT
ENV PHP_SHA256=0e17192fb43532e4ebaa190ecec9c7e59deea7dadb7dab67b19c2081a68bd817 PHP_MD5=
# Mon, 05 Mar 2018 22:13:07 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Mon, 05 Mar 2018 22:13:07 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 05 Mar 2018 22:15:57 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Mon, 05 Mar 2018 22:15:58 GMT
COPY multi:cb6c9a453a971f0ed6bdf30b12bc250bbe068005b3c3b084f5048cbf9787fb8d in /usr/local/bin/ 
# Mon, 05 Mar 2018 22:15:58 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 05 Mar 2018 22:15:58 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Mon, 05 Mar 2018 22:15:59 GMT
WORKDIR /var/www/html
# Mon, 05 Mar 2018 22:15:59 GMT
EXPOSE 80/tcp
# Mon, 05 Mar 2018 22:15:59 GMT
CMD ["apache2-foreground"]
# Tue, 06 Mar 2018 02:38:15 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         rsync         bzip2         busybox-static     ;     mkdir -p /var/spool/cron/crontabs;     echo '*/15 * * * * php -f /var/www/html/cron.php' > /var/spool/cron/crontabs/www-data;         savedAptMark="$(apt-mark showmanual)";         apt-get install -y --no-install-recommends         libcurl4-openssl-dev         libfreetype6-dev         libicu-dev         libjpeg-dev         libldap2-dev         libmcrypt-dev         libmemcached-dev         libpng12-dev         libpq-dev         libxml2-dev     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";     docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr;     docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch";     docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip pcntl;     pecl install APCu-5.1.10;     pecl install memcached-3.0.4;     pecl install redis-3.1.6;     docker-php-ext-enable apcu redis memcached;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { print $3 }'         | sort -u         | xargs -r dpkg-query -S         | cut -d: -f1         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;         {         echo 'opcache.enable=1';         echo 'opcache.enable_cli=1';         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=128';         echo 'opcache.save_comments=1';         echo 'opcache.revalidate_freq=1';     } > /usr/local/etc/php/conf.d/opcache-recommended.ini;         chown -R www-data:root /var/www/html;     chmod -R g=u /var/www/html
# Tue, 06 Mar 2018 02:38:16 GMT
VOLUME [/var/www/html]
# Tue, 06 Mar 2018 02:38:17 GMT
RUN a2enmod rewrite
# Tue, 06 Mar 2018 02:38:17 GMT
ENV NEXTCLOUD_VERSION=11.0.7
# Tue, 06 Mar 2018 02:38:31 GMT
RUN set -ex;     curl -fsSL -o nextcloud.tar.bz2         "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2";     curl -fsSL -o nextcloud.tar.bz2.asc         "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A;     gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2;     rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc;     tar -xjf nextcloud.tar.bz2 -C /usr/src/;     rm nextcloud.tar.bz2;     rm -rf /usr/src/nextcloud/updater;     mkdir -p /usr/src/nextcloud/data;     mkdir -p /usr/src/nextcloud/custom_apps;     chmod +x /usr/src/nextcloud/occ
# Tue, 06 Mar 2018 02:38:32 GMT
COPY multi:b680850547a7d6e3b427bb289061cea91ea149b388bd13c63f961d11b2eda4c9 in / 
# Tue, 06 Mar 2018 02:38:33 GMT
COPY multi:a4ce16f733fa0a4cb4b62b3fe3229e71f5a6b970a03b912772780cdb452098f4 in /usr/src/nextcloud/config/ 
# Tue, 06 Mar 2018 02:38:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 06 Mar 2018 02:38:33 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:4176fe04cefee66d80f83003fd4166373f83cb552d1d01bb3b29a0ac45a48c50`  
		Last Modified: Thu, 15 Feb 2018 02:17:07 GMT  
		Size: 52.6 MB (52608285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68183217183fd3c036888ae07d87a7644d4bc95f2834573a85d1438a71954c14`  
		Last Modified: Sat, 17 Feb 2018 04:49:54 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecf543bebf498c198aa11a3182defa1ca2755c23cf53df04d822d68fe74e7c09`  
		Last Modified: Sat, 17 Feb 2018 04:50:16 GMT  
		Size: 80.2 MB (80245806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4009289aa349a9afbbb2f2200dfebd98034075c5f55c4bf22190fd4c3428f4c2`  
		Last Modified: Sat, 17 Feb 2018 04:49:51 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77ffaad61dbdeea7186c3669ba764ec38be2ec30cc771682ea5f0ad1a762f69d`  
		Last Modified: Sat, 17 Feb 2018 05:08:30 GMT  
		Size: 4.5 MB (4466505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01a0b17969feef12ca422e57521a505b49ae88e5e0caf8a763b2ec67b469299f`  
		Last Modified: Sat, 17 Feb 2018 05:08:27 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8df080430d3662db140146b88411bf5f21906672cfbabd6ca13e07d23290e311`  
		Last Modified: Sat, 17 Feb 2018 05:08:25 GMT  
		Size: 428.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43c2454bf1cdb15352157928c0201b143339deea1d7c227b19c4bf34cad05ae1`  
		Last Modified: Sat, 17 Feb 2018 05:08:25 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99b26992a14baa842a11b21f4b2c8f04529cc44aab142144fa3b77919e217fef`  
		Last Modified: Sat, 17 Feb 2018 05:08:25 GMT  
		Size: 481.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f1509d07a58ab7b9ac0ecdb536e485f6786292888b0025c573b5c7a264bb010`  
		Last Modified: Tue, 06 Mar 2018 00:16:18 GMT  
		Size: 12.6 MB (12553756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d30daf9bcabfcd2badc9ab3df2e5e376fa608e1dc40253f0d59867686048068b`  
		Last Modified: Tue, 06 Mar 2018 00:16:18 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c3ae74ad8193e40279d9e39ff8b51f27bfd26f11c0951658365426c730deba5`  
		Last Modified: Tue, 06 Mar 2018 00:16:20 GMT  
		Size: 14.2 MB (14206622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdcddec5fc3bcf4b826715a58b46b47b69b15ee09b2c59de44788053988f2d24`  
		Last Modified: Tue, 06 Mar 2018 00:16:17 GMT  
		Size: 2.2 KB (2188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f83bf90b377383f5f41812a44e970fc34df8a527f06bf79a69e4f9051e0b27b5`  
		Last Modified: Tue, 06 Mar 2018 00:16:17 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91af3c35ea235666e4379ffa0d461074850f42339b4f125b1d8493ea9b4e467f`  
		Last Modified: Tue, 06 Mar 2018 02:45:34 GMT  
		Size: 18.0 MB (18022473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51cd16338103320e1ac371a80e438984de225ddfd3671baa4d4e4861388e7059`  
		Last Modified: Tue, 06 Mar 2018 02:45:30 GMT  
		Size: 313.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd37a63f6937397df4420895f82bbddd805ba8558af391f9dcc33c202e5e0f2a`  
		Last Modified: Tue, 06 Mar 2018 02:45:43 GMT  
		Size: 47.8 MB (47753709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c8886721e6a38756c6abc3ef8cf15368914804284c47f7ac202659c7c474f11`  
		Last Modified: Tue, 06 Mar 2018 02:45:30 GMT  
		Size: 998.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1f5e15fc99c9051024de0346f39b6877e4c17c58a61614014c9ada2ffb0d40b`  
		Last Modified: Tue, 06 Mar 2018 02:45:30 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nextcloud:11-apache` - linux; arm variant v5

```console
$ docker pull nextcloud@sha256:25e423dc90bfa77d2996aa5ee20b36d62aeea5e318daa74643f626ec9c801a5f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.0 MB (207992415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7ee52fab170913148bb265f51fb83c6dedd9f3d4aaca797feefe2995c7a315c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Thu, 15 Feb 2018 20:55:58 GMT
ADD file:1a16d6f6cb75aeb553c6b7777d0056b1a68f89295b25c0225c65c2e7dcac08e3 in / 
# Thu, 15 Feb 2018 20:55:59 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 22:52:07 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Thu, 15 Feb 2018 22:52:07 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 15 Feb 2018 22:53:08 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:53:08 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 15 Feb 2018 22:53:09 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 15 Feb 2018 22:58:17 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:58:17 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 15 Feb 2018 22:58:17 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 15 Feb 2018 22:58:18 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Thu, 15 Feb 2018 22:58:19 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Thu, 15 Feb 2018 22:58:20 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Thu, 15 Feb 2018 22:58:21 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Thu, 15 Feb 2018 22:58:21 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Thu, 15 Feb 2018 22:58:21 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Thu, 15 Feb 2018 22:58:22 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 15 Feb 2018 22:58:22 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 15 Feb 2018 22:58:22 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 15 Feb 2018 22:58:23 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Thu, 15 Feb 2018 22:58:23 GMT
ENV PHP_VERSION=7.1.14
# Thu, 15 Feb 2018 22:58:23 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.14.tar.xz.asc/from/this/mirror
# Thu, 15 Feb 2018 22:58:23 GMT
ENV PHP_SHA256=c09f0c1074f5689b492d79034adb84e6a6c6d08c6763c02282e6318d41156779 PHP_MD5=
# Thu, 15 Feb 2018 22:58:59 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Thu, 15 Feb 2018 22:59:00 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 15 Feb 2018 23:01:58 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Thu, 15 Feb 2018 23:01:59 GMT
COPY multi:cb6c9a453a971f0ed6bdf30b12bc250bbe068005b3c3b084f5048cbf9787fb8d in /usr/local/bin/ 
# Thu, 15 Feb 2018 23:02:00 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 15 Feb 2018 23:02:00 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Thu, 15 Feb 2018 23:02:00 GMT
WORKDIR /var/www/html
# Thu, 15 Feb 2018 23:02:01 GMT
EXPOSE 80/tcp
# Thu, 15 Feb 2018 23:02:01 GMT
CMD ["apache2-foreground"]
# Fri, 23 Feb 2018 03:31:39 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         rsync         bzip2         busybox-static     ;     mkdir -p /var/spool/cron/crontabs;     echo '*/15 * * * * php -f /var/www/html/cron.php' > /var/spool/cron/crontabs/www-data;         savedAptMark="$(apt-mark showmanual)";         apt-get install -y --no-install-recommends         libcurl4-openssl-dev         libfreetype6-dev         libicu-dev         libjpeg-dev         libldap2-dev         libmcrypt-dev         libmemcached-dev         libpng12-dev         libpq-dev         libxml2-dev     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";     docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr;     docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch";     docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip pcntl;     pecl install APCu-5.1.10;     pecl install memcached-3.0.4;     pecl install redis-3.1.6;     docker-php-ext-enable apcu redis memcached;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { print $3 }'         | sort -u         | xargs -r dpkg-query -S         | cut -d: -f1         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;         {         echo 'opcache.enable=1';         echo 'opcache.enable_cli=1';         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=128';         echo 'opcache.save_comments=1';         echo 'opcache.revalidate_freq=1';     } > /usr/local/etc/php/conf.d/opcache-recommended.ini;         chown -R www-data:root /var/www/html;     chmod -R g=u /var/www/html
# Fri, 23 Feb 2018 03:31:39 GMT
VOLUME [/var/www/html]
# Fri, 23 Feb 2018 03:31:40 GMT
RUN a2enmod rewrite
# Fri, 23 Feb 2018 03:31:40 GMT
ENV NEXTCLOUD_VERSION=11.0.7
# Fri, 23 Feb 2018 03:32:02 GMT
RUN set -ex;     curl -fsSL -o nextcloud.tar.bz2         "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2";     curl -fsSL -o nextcloud.tar.bz2.asc         "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A;     gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2;     rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc;     tar -xjf nextcloud.tar.bz2 -C /usr/src/;     rm nextcloud.tar.bz2;     rm -rf /usr/src/nextcloud/updater;     mkdir -p /usr/src/nextcloud/data;     mkdir -p /usr/src/nextcloud/custom_apps;     chmod +x /usr/src/nextcloud/occ
# Fri, 23 Feb 2018 03:32:04 GMT
COPY multi:b680850547a7d6e3b427bb289061cea91ea149b388bd13c63f961d11b2eda4c9 in / 
# Fri, 23 Feb 2018 03:32:04 GMT
COPY multi:a4ce16f733fa0a4cb4b62b3fe3229e71f5a6b970a03b912772780cdb452098f4 in /usr/src/nextcloud/config/ 
# Fri, 23 Feb 2018 03:32:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 23 Feb 2018 03:32:05 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:75ec46627298b11174762e9bae59bb036d4f3bfaace1da7614a2eb4881ed97d4`  
		Last Modified: Thu, 15 Feb 2018 21:04:30 GMT  
		Size: 50.9 MB (50889623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d3578d1788a426771b3d546f87fa16e4dc68993bb08d07182ee6b82e7ff2160`  
		Last Modified: Thu, 15 Feb 2018 23:51:26 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f43bdf794581fff8cd4c38d34a0175b9c43d2974eeeebaba6700b4bea76c6c8`  
		Last Modified: Thu, 15 Feb 2018 23:51:43 GMT  
		Size: 61.4 MB (61428567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb888e4227beada3ac449871b89189f005b1306a8782cd5ad19d6b1c670d9370`  
		Last Modified: Thu, 15 Feb 2018 23:51:24 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fad4c128addf4b34139687f33e82613901e81f525ec695bd2f212413832c4f7`  
		Last Modified: Thu, 15 Feb 2018 23:52:57 GMT  
		Size: 4.2 MB (4182857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94a390a3931b95eb12f5067e58e4c22c87bc8f3d45d7f7b2ab66ee429740998a`  
		Last Modified: Thu, 15 Feb 2018 23:52:56 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2451e50f76ec83dbdaf3ed5c607f8b012adcfdbfbffdd5f62872a7851cb8631b`  
		Last Modified: Thu, 15 Feb 2018 23:52:55 GMT  
		Size: 472.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d7897fa16df876a7e112861c566df8d44ddda01a36d694f9b0cdfdfbacf79a4`  
		Last Modified: Thu, 15 Feb 2018 23:52:55 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77b80015427230659951b1ed2bd574eb1ce305a446ce72b6d5e6453e2b4c80f0`  
		Last Modified: Thu, 15 Feb 2018 23:52:55 GMT  
		Size: 512.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1abbdb2b33cdde66de601738484b7a9cab69cd22339184714647d50f5fcda816`  
		Last Modified: Thu, 15 Feb 2018 23:52:54 GMT  
		Size: 12.5 MB (12549450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92aa82ad21fbeef30341617e5edcd98078a53aa4e7f95dda3c6451735ce9e304`  
		Last Modified: Thu, 15 Feb 2018 23:52:53 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55395dd1a4ff9677d9da8438d28c4c484ba5789b80a4e600f8c9778d5a5528c2`  
		Last Modified: Thu, 15 Feb 2018 23:52:57 GMT  
		Size: 13.5 MB (13518961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f56825c9b084a6ea1f6813f69be4cf02161d8478653d1564367fba49aafd14c8`  
		Last Modified: Thu, 15 Feb 2018 23:52:53 GMT  
		Size: 2.2 KB (2185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f745fbfc383ab2e344235ec8d995a5b208825e45c3bb9aa49dff7ae681767fe1`  
		Last Modified: Thu, 15 Feb 2018 23:52:53 GMT  
		Size: 901.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11a7c44cfd3ca2ac1deab0ca3d6ba6a2ed9a624cf11606f3cbdef42cb8dd8373`  
		Last Modified: Fri, 23 Feb 2018 03:42:31 GMT  
		Size: 17.7 MB (17660665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:580dbda0077f495884c142b4f6b759a67e3808b532ff32866ec0b599488fd114`  
		Last Modified: Fri, 23 Feb 2018 03:42:26 GMT  
		Size: 311.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bae2d680a802952b97d261e1304f6e7157fda5413266a34e1f2c69ee6ef36e43`  
		Last Modified: Fri, 23 Feb 2018 03:42:42 GMT  
		Size: 47.8 MB (47753607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:781fbfc7d345198ef93511caa5fb5f5e5e917968a68c70f75e7eb8185f4ad425`  
		Last Modified: Fri, 23 Feb 2018 03:42:26 GMT  
		Size: 998.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:096cbc255bd7afc957a5ce0521126cc537c7188f92f8a354100f5279982295f1`  
		Last Modified: Fri, 23 Feb 2018 03:42:26 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nextcloud:11-apache` - linux; arm variant v7

```console
$ docker pull nextcloud@sha256:a8ff9c336111dbc4be10e234054bd53a92ca0bceb5f80e2097817e2f2e863c1c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.8 MB (204831234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f454025583f146b6f01526fd40bda00bdb328c6feecf79316764aedd8975966a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Thu, 15 Feb 2018 13:26:29 GMT
ADD file:eb41e6f5be28a0581f56f72301ee93af1a27010f58b8eb6a759af7d673cc37f8 in / 
# Thu, 15 Feb 2018 13:26:30 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 15:00:19 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Thu, 15 Feb 2018 15:00:19 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 15 Feb 2018 15:01:09 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 15 Feb 2018 15:01:10 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 15 Feb 2018 15:01:11 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 15 Feb 2018 15:06:05 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 15:06:06 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 15 Feb 2018 15:06:06 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 15 Feb 2018 15:06:07 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Thu, 15 Feb 2018 15:06:08 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Thu, 15 Feb 2018 15:06:09 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Thu, 15 Feb 2018 15:06:11 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Thu, 15 Feb 2018 15:06:17 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Thu, 15 Feb 2018 15:06:17 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Thu, 15 Feb 2018 15:06:18 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 15 Feb 2018 15:06:18 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 15 Feb 2018 15:06:19 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 15 Feb 2018 15:06:19 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Tue, 06 Mar 2018 13:02:04 GMT
ENV PHP_VERSION=7.1.15
# Tue, 06 Mar 2018 13:02:04 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.15.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.15.tar.xz.asc/from/this/mirror
# Tue, 06 Mar 2018 13:02:04 GMT
ENV PHP_SHA256=0e17192fb43532e4ebaa190ecec9c7e59deea7dadb7dab67b19c2081a68bd817 PHP_MD5=
# Tue, 06 Mar 2018 13:02:41 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 06 Mar 2018 13:02:42 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 06 Mar 2018 13:05:27 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 06 Mar 2018 13:05:28 GMT
COPY multi:cb6c9a453a971f0ed6bdf30b12bc250bbe068005b3c3b084f5048cbf9787fb8d in /usr/local/bin/ 
# Tue, 06 Mar 2018 13:05:28 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 06 Mar 2018 13:05:29 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 06 Mar 2018 13:05:29 GMT
WORKDIR /var/www/html
# Tue, 06 Mar 2018 13:05:29 GMT
EXPOSE 80/tcp
# Tue, 06 Mar 2018 13:05:29 GMT
CMD ["apache2-foreground"]
# Tue, 06 Mar 2018 14:42:24 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         rsync         bzip2         busybox-static     ;     mkdir -p /var/spool/cron/crontabs;     echo '*/15 * * * * php -f /var/www/html/cron.php' > /var/spool/cron/crontabs/www-data;         savedAptMark="$(apt-mark showmanual)";         apt-get install -y --no-install-recommends         libcurl4-openssl-dev         libfreetype6-dev         libicu-dev         libjpeg-dev         libldap2-dev         libmcrypt-dev         libmemcached-dev         libpng12-dev         libpq-dev         libxml2-dev     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";     docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr;     docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch";     docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip pcntl;     pecl install APCu-5.1.10;     pecl install memcached-3.0.4;     pecl install redis-3.1.6;     docker-php-ext-enable apcu redis memcached;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { print $3 }'         | sort -u         | xargs -r dpkg-query -S         | cut -d: -f1         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;         {         echo 'opcache.enable=1';         echo 'opcache.enable_cli=1';         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=128';         echo 'opcache.save_comments=1';         echo 'opcache.revalidate_freq=1';     } > /usr/local/etc/php/conf.d/opcache-recommended.ini;         chown -R www-data:root /var/www/html;     chmod -R g=u /var/www/html
# Tue, 06 Mar 2018 14:42:24 GMT
VOLUME [/var/www/html]
# Tue, 06 Mar 2018 14:42:25 GMT
RUN a2enmod rewrite
# Tue, 06 Mar 2018 14:42:26 GMT
ENV NEXTCLOUD_VERSION=11.0.7
# Tue, 06 Mar 2018 14:42:46 GMT
RUN set -ex;     curl -fsSL -o nextcloud.tar.bz2         "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2";     curl -fsSL -o nextcloud.tar.bz2.asc         "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A;     gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2;     rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc;     tar -xjf nextcloud.tar.bz2 -C /usr/src/;     rm nextcloud.tar.bz2;     rm -rf /usr/src/nextcloud/updater;     mkdir -p /usr/src/nextcloud/data;     mkdir -p /usr/src/nextcloud/custom_apps;     chmod +x /usr/src/nextcloud/occ
# Tue, 06 Mar 2018 14:42:48 GMT
COPY multi:b680850547a7d6e3b427bb289061cea91ea149b388bd13c63f961d11b2eda4c9 in / 
# Tue, 06 Mar 2018 14:42:49 GMT
COPY multi:a4ce16f733fa0a4cb4b62b3fe3229e71f5a6b970a03b912772780cdb452098f4 in /usr/src/nextcloud/config/ 
# Tue, 06 Mar 2018 14:42:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 06 Mar 2018 14:42:50 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:6b0aacdd0080a4b5904034a1714e4c1553acbed305ce7a3b1689a35d0bb6e4a0`  
		Last Modified: Thu, 15 Feb 2018 13:35:36 GMT  
		Size: 48.7 MB (48701400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9924463a0695d1c94b95c08799f8e7c8414f5a2a9eac4fb24ed408591f27ea71`  
		Last Modified: Thu, 15 Feb 2018 16:01:37 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e9e3576d748b7b0a89106b959273e9e42ce52bf506fd404afc361493507c681`  
		Last Modified: Thu, 15 Feb 2018 16:01:53 GMT  
		Size: 61.8 MB (61828451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:953402aaa2017b5cf38864c9b7f7ab3e63e0f725adbcc827a16f71445c7e5ffc`  
		Last Modified: Thu, 15 Feb 2018 16:01:33 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2169d2e870bd4dbbb626e7fcdeacc6f100d4074c6027e036ebab02b90ab8762`  
		Last Modified: Thu, 15 Feb 2018 16:03:47 GMT  
		Size: 3.9 MB (3937257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92d5cc715270773f25d11d7c93840e77ce14b51d58dd00a32b6bc629030e2dd1`  
		Last Modified: Thu, 15 Feb 2018 16:03:45 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfbecec8258e5c23f1966fa4408ae244de1ec1e98e6ebfc68dbd21335c25efd3`  
		Last Modified: Thu, 15 Feb 2018 16:03:44 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bfa5fae5bd14ed2b1bfc13b153144273e6fb322839bd7103b569e7950e9028a`  
		Last Modified: Thu, 15 Feb 2018 16:03:43 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70b22f01924f834c07a9956a920e743b1b06f33dd9508d6d536c7d61a94d84d5`  
		Last Modified: Thu, 15 Feb 2018 16:03:42 GMT  
		Size: 513.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b79f56e9710a68f470754f775aa6573cf49c88aefbb4b49e5c642149984c955`  
		Last Modified: Tue, 06 Mar 2018 13:51:09 GMT  
		Size: 12.6 MB (12551965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f9b87df874d636503136b95367d7f026e124e84ce483e02e2a5ea9198e27d7b`  
		Last Modified: Tue, 06 Mar 2018 13:51:06 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1dd7525ed08233155309c9f365ff4f273ed9f9aa696e6ae36fc9297700f4013`  
		Last Modified: Tue, 06 Mar 2018 13:51:10 GMT  
		Size: 12.8 MB (12812959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e0df5fd6d0524e94b41c9b96c5ab81a6b107b263642220d08e70fb283ae4743`  
		Last Modified: Tue, 06 Mar 2018 13:51:06 GMT  
		Size: 2.2 KB (2187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf4631b51ec555cbe6c7d1553500c338e130d08c846dcf87cc581304ced9fdf0`  
		Last Modified: Tue, 06 Mar 2018 13:51:07 GMT  
		Size: 903.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bc022fc2395a4f0f23fdc0bc3d5628955c73c07d9561cdcf0844afe01ce8da6`  
		Last Modified: Tue, 06 Mar 2018 14:54:49 GMT  
		Size: 17.2 MB (17236933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52eead5dcb8902c7042a883d63475f9ba1959a40f0f6ef6fbda2e0085f9b8cf6`  
		Last Modified: Tue, 06 Mar 2018 14:54:44 GMT  
		Size: 314.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80ae6380fe1b0894cebb53764f38c35d5d0744fd610add4f26ef5e5cf3c9784d`  
		Last Modified: Tue, 06 Mar 2018 14:55:01 GMT  
		Size: 47.8 MB (47753589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e89f6d069efbf77e503364a24798cdd76dc9430eee3ef77ef52c7f6e5ded6e0e`  
		Last Modified: Tue, 06 Mar 2018 14:54:44 GMT  
		Size: 998.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1db7a25d9d9a225b3d0e0240925ae398802cb9957f19cefaba103e7e7161737`  
		Last Modified: Tue, 06 Mar 2018 14:54:45 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nextcloud:11-apache` - linux; arm64 variant v8

```console
$ docker pull nextcloud@sha256:de7d4a26ceb10c104c3ddf984bfbe771d4665e5c89129e8b1a940e8fd4957ee8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.0 MB (208046122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:901f0d9f5d78c8ebd405306e6a23041b51c031b016fcd81d5b9a89d0771f4d17`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Thu, 15 Feb 2018 18:23:58 GMT
ADD file:bc24a2abea1b7b5e19cc422c33c0a175e9ea5dea4dd916445f3f6a41120168bc in / 
# Thu, 15 Feb 2018 18:23:59 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 00:13:32 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Fri, 16 Feb 2018 00:13:33 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 16 Feb 2018 00:15:06 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 16 Feb 2018 00:15:07 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 16 Feb 2018 00:15:09 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 16 Feb 2018 00:26:34 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 00:26:35 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 16 Feb 2018 00:26:36 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 16 Feb 2018 00:26:39 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Fri, 16 Feb 2018 00:26:41 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 16 Feb 2018 00:26:43 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Fri, 16 Feb 2018 00:26:45 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 16 Feb 2018 00:26:46 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 16 Feb 2018 00:26:47 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Fri, 16 Feb 2018 00:26:48 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 16 Feb 2018 00:26:49 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 16 Feb 2018 00:26:50 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 16 Feb 2018 00:26:51 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Tue, 06 Mar 2018 04:10:08 GMT
ENV PHP_VERSION=7.1.15
# Tue, 06 Mar 2018 04:10:08 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.15.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.15.tar.xz.asc/from/this/mirror
# Tue, 06 Mar 2018 04:10:09 GMT
ENV PHP_SHA256=0e17192fb43532e4ebaa190ecec9c7e59deea7dadb7dab67b19c2081a68bd817 PHP_MD5=
# Tue, 06 Mar 2018 04:10:45 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 06 Mar 2018 04:10:45 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 06 Mar 2018 04:15:59 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 06 Mar 2018 04:16:00 GMT
COPY multi:cb6c9a453a971f0ed6bdf30b12bc250bbe068005b3c3b084f5048cbf9787fb8d in /usr/local/bin/ 
# Tue, 06 Mar 2018 04:16:01 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 06 Mar 2018 04:16:01 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 06 Mar 2018 04:16:02 GMT
WORKDIR /var/www/html
# Tue, 06 Mar 2018 04:16:03 GMT
EXPOSE 80/tcp
# Tue, 06 Mar 2018 04:16:03 GMT
CMD ["apache2-foreground"]
# Tue, 06 Mar 2018 06:38:07 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         rsync         bzip2         busybox-static     ;     mkdir -p /var/spool/cron/crontabs;     echo '*/15 * * * * php -f /var/www/html/cron.php' > /var/spool/cron/crontabs/www-data;         savedAptMark="$(apt-mark showmanual)";         apt-get install -y --no-install-recommends         libcurl4-openssl-dev         libfreetype6-dev         libicu-dev         libjpeg-dev         libldap2-dev         libmcrypt-dev         libmemcached-dev         libpng12-dev         libpq-dev         libxml2-dev     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";     docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr;     docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch";     docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip pcntl;     pecl install APCu-5.1.10;     pecl install memcached-3.0.4;     pecl install redis-3.1.6;     docker-php-ext-enable apcu redis memcached;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { print $3 }'         | sort -u         | xargs -r dpkg-query -S         | cut -d: -f1         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;         {         echo 'opcache.enable=1';         echo 'opcache.enable_cli=1';         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=128';         echo 'opcache.save_comments=1';         echo 'opcache.revalidate_freq=1';     } > /usr/local/etc/php/conf.d/opcache-recommended.ini;         chown -R www-data:root /var/www/html;     chmod -R g=u /var/www/html
# Tue, 06 Mar 2018 06:38:08 GMT
VOLUME [/var/www/html]
# Tue, 06 Mar 2018 06:38:10 GMT
RUN a2enmod rewrite
# Tue, 06 Mar 2018 06:38:11 GMT
ENV NEXTCLOUD_VERSION=11.0.7
# Tue, 06 Mar 2018 06:38:42 GMT
RUN set -ex;     curl -fsSL -o nextcloud.tar.bz2         "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2";     curl -fsSL -o nextcloud.tar.bz2.asc         "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A;     gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2;     rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc;     tar -xjf nextcloud.tar.bz2 -C /usr/src/;     rm nextcloud.tar.bz2;     rm -rf /usr/src/nextcloud/updater;     mkdir -p /usr/src/nextcloud/data;     mkdir -p /usr/src/nextcloud/custom_apps;     chmod +x /usr/src/nextcloud/occ
# Tue, 06 Mar 2018 06:38:43 GMT
COPY multi:b680850547a7d6e3b427bb289061cea91ea149b388bd13c63f961d11b2eda4c9 in / 
# Tue, 06 Mar 2018 06:38:45 GMT
COPY multi:a4ce16f733fa0a4cb4b62b3fe3229e71f5a6b970a03b912772780cdb452098f4 in /usr/src/nextcloud/config/ 
# Tue, 06 Mar 2018 06:38:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 06 Mar 2018 06:38:47 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:3e4fb67aa3162ae58c4f79ecce148cc1933ef5c5736a971149ebf1412aba927d`  
		Last Modified: Thu, 15 Feb 2018 00:51:48 GMT  
		Size: 49.9 MB (49933846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b49e9ef3cbf9baa447b668c20b563d7dec600e0fbd3b478d458a194d80154ab5`  
		Last Modified: Fri, 16 Feb 2018 02:19:51 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bee21f0931f1d32487cfeacd0321cb07d2bc7ae9ae318d01125340a31460202`  
		Last Modified: Fri, 16 Feb 2018 02:20:10 GMT  
		Size: 62.5 MB (62545544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8720a8696cb6baea119161a3931e8da4a22918f097d5739c188b6d45637b82c`  
		Last Modified: Fri, 16 Feb 2018 02:19:49 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc81b87a93dfeaa28357d32f3fff1fefb4cfe57a3b76156e7fe4a492a6ec78c5`  
		Last Modified: Fri, 16 Feb 2018 02:22:07 GMT  
		Size: 4.1 MB (4124545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3b3485f114d0950a280e8437aaf3c64972b6062fe9d0e0ecc2a0f2ce755e4f6`  
		Last Modified: Fri, 16 Feb 2018 02:22:05 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ac7a4db7dbebffe9355fb5c853a0122e616343e8288d080515a59a3412720db`  
		Last Modified: Fri, 16 Feb 2018 02:22:04 GMT  
		Size: 436.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df79c52fe31c1535429a8e8510c7480c627fb2103dcef1315c5a1ee9753e992d`  
		Last Modified: Fri, 16 Feb 2018 02:22:04 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:481469cdffd7da5e9484322340dcf22b55e3c4498ce61261188a0ecfa9fa6905`  
		Last Modified: Fri, 16 Feb 2018 02:22:04 GMT  
		Size: 493.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f6b5477c41e678140d31f19706c463a859253a0de907de55d1fce904def505f`  
		Last Modified: Tue, 06 Mar 2018 05:54:32 GMT  
		Size: 12.6 MB (12551823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d18ad62a0440d266aac3a8cae85831d8b42f43efa2027c584890d1a26db5ba2`  
		Last Modified: Tue, 06 Mar 2018 05:54:31 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:869557fdd68429f5cc122477423ff20e8840c47f8e7e5b346f15eae23244f933`  
		Last Modified: Tue, 06 Mar 2018 05:54:36 GMT  
		Size: 13.3 MB (13298179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2727ae7241e31a55c75a4ec7f196f9174963916c8863e8a49bc8dd5309234105`  
		Last Modified: Tue, 06 Mar 2018 05:54:31 GMT  
		Size: 2.2 KB (2185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fbc91d587608bf45765770d17250291c2cd920de6e1f4f473c1572b815b6d3d`  
		Last Modified: Tue, 06 Mar 2018 05:54:31 GMT  
		Size: 905.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aae9978b1372c13456b2b0ea64d56c0b67e3662502c20812786672d102716a2`  
		Last Modified: Tue, 06 Mar 2018 06:55:39 GMT  
		Size: 17.8 MB (17829869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:def332593866c000f5859a0d92741dc3d15c97d1196c3a7630ce5bd1f754fb3d`  
		Last Modified: Tue, 06 Mar 2018 06:55:32 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:365cfeb000d57d884765736cb553367e3ed637439e42c0e1a97320059189c010`  
		Last Modified: Tue, 06 Mar 2018 06:55:52 GMT  
		Size: 47.8 MB (47753730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f93f6f290a1f9fd207fa23f0f4c4c961e3b4f8f8abb9555470c1f9c694ac986f`  
		Last Modified: Tue, 06 Mar 2018 06:55:32 GMT  
		Size: 998.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fda8d8d1cb9c7e8f5454168cd12d4774c5880aae1ef634f7c048bc91a95a230d`  
		Last Modified: Tue, 06 Mar 2018 06:55:33 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nextcloud:11-apache` - linux; 386

```console
$ docker pull nextcloud@sha256:fc63013a221488b1e16e3b9d2c47789d76d0cfaac3a59ee158e58a378df2092c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.7 MB (232690556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92c2afc6cad7958a7a615185901a7786cf305e1aeeac5427eb3db269dfea3e3a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Thu, 15 Feb 2018 14:52:22 GMT
ADD file:70b1b536b382f6ba9443ccb8fb1cb7156dd4952a194d4a232be4756ce973c27b in / 
# Thu, 15 Feb 2018 14:52:23 GMT
CMD ["bash"]
# Tue, 20 Feb 2018 07:48:35 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 20 Feb 2018 07:48:36 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 20 Feb 2018 07:49:31 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 20 Feb 2018 07:49:31 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 20 Feb 2018 07:49:32 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 20 Feb 2018 08:07:14 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Feb 2018 08:07:14 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 20 Feb 2018 08:07:15 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 20 Feb 2018 08:07:15 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 20 Feb 2018 08:07:16 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 20 Feb 2018 08:07:17 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 20 Feb 2018 08:07:18 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 20 Feb 2018 08:07:18 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 20 Feb 2018 08:07:18 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 20 Feb 2018 08:07:19 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 20 Feb 2018 08:07:19 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 20 Feb 2018 08:07:19 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 20 Feb 2018 08:07:19 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Tue, 20 Feb 2018 08:07:20 GMT
ENV PHP_VERSION=7.1.14
# Tue, 20 Feb 2018 08:07:20 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.14.tar.xz.asc/from/this/mirror
# Tue, 20 Feb 2018 08:07:20 GMT
ENV PHP_SHA256=c09f0c1074f5689b492d79034adb84e6a6c6d08c6763c02282e6318d41156779 PHP_MD5=
# Tue, 20 Feb 2018 08:07:50 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 20 Feb 2018 08:07:51 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 20 Feb 2018 08:11:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 20 Feb 2018 08:11:07 GMT
COPY multi:cb6c9a453a971f0ed6bdf30b12bc250bbe068005b3c3b084f5048cbf9787fb8d in /usr/local/bin/ 
# Tue, 20 Feb 2018 08:11:07 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 20 Feb 2018 08:11:08 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 20 Feb 2018 08:11:08 GMT
WORKDIR /var/www/html
# Tue, 20 Feb 2018 08:11:08 GMT
EXPOSE 80/tcp
# Tue, 20 Feb 2018 08:11:08 GMT
CMD ["apache2-foreground"]
# Sat, 24 Feb 2018 04:45:00 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         rsync         bzip2         busybox-static     ;     mkdir -p /var/spool/cron/crontabs;     echo '*/15 * * * * php -f /var/www/html/cron.php' > /var/spool/cron/crontabs/www-data;         savedAptMark="$(apt-mark showmanual)";         apt-get install -y --no-install-recommends         libcurl4-openssl-dev         libfreetype6-dev         libicu-dev         libjpeg-dev         libldap2-dev         libmcrypt-dev         libmemcached-dev         libpng12-dev         libpq-dev         libxml2-dev     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";     docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr;     docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch";     docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip pcntl;     pecl install APCu-5.1.10;     pecl install memcached-3.0.4;     pecl install redis-3.1.6;     docker-php-ext-enable apcu redis memcached;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { print $3 }'         | sort -u         | xargs -r dpkg-query -S         | cut -d: -f1         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;         {         echo 'opcache.enable=1';         echo 'opcache.enable_cli=1';         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=128';         echo 'opcache.save_comments=1';         echo 'opcache.revalidate_freq=1';     } > /usr/local/etc/php/conf.d/opcache-recommended.ini;         chown -R www-data:root /var/www/html;     chmod -R g=u /var/www/html
# Sat, 24 Feb 2018 04:45:01 GMT
VOLUME [/var/www/html]
# Sat, 24 Feb 2018 04:45:02 GMT
RUN a2enmod rewrite
# Sat, 24 Feb 2018 04:45:02 GMT
ENV NEXTCLOUD_VERSION=11.0.7
# Sat, 24 Feb 2018 04:45:20 GMT
RUN set -ex;     curl -fsSL -o nextcloud.tar.bz2         "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2";     curl -fsSL -o nextcloud.tar.bz2.asc         "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A;     gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2;     rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc;     tar -xjf nextcloud.tar.bz2 -C /usr/src/;     rm nextcloud.tar.bz2;     rm -rf /usr/src/nextcloud/updater;     mkdir -p /usr/src/nextcloud/data;     mkdir -p /usr/src/nextcloud/custom_apps;     chmod +x /usr/src/nextcloud/occ
# Sat, 24 Feb 2018 04:45:21 GMT
COPY multi:b680850547a7d6e3b427bb289061cea91ea149b388bd13c63f961d11b2eda4c9 in / 
# Sat, 24 Feb 2018 04:45:22 GMT
COPY multi:a4ce16f733fa0a4cb4b62b3fe3229e71f5a6b970a03b912772780cdb452098f4 in /usr/src/nextcloud/config/ 
# Sat, 24 Feb 2018 04:45:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 24 Feb 2018 04:45:23 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:d854f909180418fb64a87463d4061a8a8cac25c45b4fb7bc2f1e14f7332ecd7a`  
		Last Modified: Thu, 15 Feb 2018 00:53:24 GMT  
		Size: 52.8 MB (52787712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89df980a1d78d4953156d3a62b9e9490cee71d8851c7f60c3237a38696c26965`  
		Last Modified: Tue, 20 Feb 2018 13:12:02 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c95a1a1b34489fafd8aabec8cb01c39bccbed437f9536087234e05bdca123697`  
		Last Modified: Tue, 20 Feb 2018 13:12:31 GMT  
		Size: 82.2 MB (82170152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bed8871fd90c23e492b82542dd15b576953bd71d9620799b2e9a2aad905cd987`  
		Last Modified: Tue, 20 Feb 2018 13:12:02 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b753fe7aae8a6dc03e261a204a9673c6a9e7d83e70270b134960c6877aeab5fd`  
		Last Modified: Tue, 20 Feb 2018 13:42:14 GMT  
		Size: 4.7 MB (4650595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8ff8efa835c962a59e7f14547cbf1bd0d4b99a27a2b047d9aaca32e6b4f0c7a`  
		Last Modified: Tue, 20 Feb 2018 13:42:10 GMT  
		Size: 1.2 KB (1246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ecaab16cf5734578ebc1b462c243123e9f01604a521b0a204e78ea633f7aac6`  
		Last Modified: Tue, 20 Feb 2018 13:42:10 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d74f5cc52cae58ee4c32f95e1f1c5cc601bb22dd5d6e4de3449dca4ad78de77`  
		Last Modified: Tue, 20 Feb 2018 13:42:10 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be4ae1e33e82d42e7dbf2175aa7786912cabc839081494424b96810252fb639d`  
		Last Modified: Tue, 20 Feb 2018 13:42:10 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a626212b3a70ff0511a09c292daf4ca37d11e08e06c99c0e27580d19178a04d2`  
		Last Modified: Tue, 20 Feb 2018 13:42:12 GMT  
		Size: 12.6 MB (12551101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5309312a4cd03d4f8c0d1eea1fbda18d5ccc84e471d76f1fae724d342622ccde`  
		Last Modified: Tue, 20 Feb 2018 13:42:10 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae236e09f8d9241a0bf39a27499d3ed62b1328826a621f871807f70d2d974d85`  
		Last Modified: Tue, 20 Feb 2018 13:42:18 GMT  
		Size: 14.7 MB (14656871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bda281465905883bd2f772c261ec33aa50ef9dc9e3031a8dd941d90b724d19ab`  
		Last Modified: Tue, 20 Feb 2018 13:42:10 GMT  
		Size: 2.2 KB (2189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df9e15f36141eec1898a2bb07e009e9be9796d88ea65c30b48c35be1bff15384`  
		Last Modified: Tue, 20 Feb 2018 13:42:10 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5953437cf7368d7c8f1eb3090d858a5e523aab09f0093df94727c4bd653b0cd0`  
		Last Modified: Sat, 24 Feb 2018 06:07:53 GMT  
		Size: 18.1 MB (18111829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ad370cb2ae3b792a55a0af635dd1d58e308155aced54bca46468b4bbdb0dfeb`  
		Last Modified: Sat, 24 Feb 2018 06:07:47 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:229ccdd924b5441b438fb3a091e9f8d1fceb33bbc4409d942c1ff1c774677119`  
		Last Modified: Sat, 24 Feb 2018 06:08:10 GMT  
		Size: 47.8 MB (47753730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a26fd9bcaf1be9f0909f07423735e0f7745686d917cf35cf6265269fa6c372e3`  
		Last Modified: Sat, 24 Feb 2018 06:07:47 GMT  
		Size: 998.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a10569aed888eb2847d50d656c6771aa60a625b620dadf7c0ce6f526d01b8e8`  
		Last Modified: Sat, 24 Feb 2018 06:07:47 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nextcloud:11-apache` - linux; ppc64le

```console
$ docker pull nextcloud@sha256:46023117ac47c49f1be64457d7a85561aca18c5f6bae4b82589c64512a7b9a55
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.8 MB (216801177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11ae0147ed181985b3bc4b1361eb1557495f98851757194f20d6e0b56c3f6dfa`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Thu, 15 Feb 2018 01:33:26 GMT
ADD file:c270c96a992cc36fd902f3afd3089df6f15461ed3cc58d8b9a2f77451383db39 in / 
# Thu, 15 Feb 2018 01:33:38 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 05:20:09 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Thu, 15 Feb 2018 05:20:13 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 15 Feb 2018 05:22:32 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 15 Feb 2018 05:22:34 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 15 Feb 2018 05:22:46 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 15 Feb 2018 05:25:20 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 05:25:22 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 15 Feb 2018 05:25:24 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 15 Feb 2018 05:25:31 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Thu, 15 Feb 2018 05:25:37 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Thu, 15 Feb 2018 05:25:43 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Thu, 15 Feb 2018 05:25:54 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Thu, 15 Feb 2018 05:26:09 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Thu, 15 Feb 2018 05:26:11 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Thu, 15 Feb 2018 05:26:14 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 15 Feb 2018 05:26:17 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 15 Feb 2018 05:26:20 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 15 Feb 2018 05:26:22 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Tue, 06 Mar 2018 10:42:43 GMT
ENV PHP_VERSION=7.1.15
# Tue, 06 Mar 2018 10:42:45 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.15.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.15.tar.xz.asc/from/this/mirror
# Tue, 06 Mar 2018 10:42:47 GMT
ENV PHP_SHA256=0e17192fb43532e4ebaa190ecec9c7e59deea7dadb7dab67b19c2081a68bd817 PHP_MD5=
# Tue, 06 Mar 2018 10:43:28 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 06 Mar 2018 10:43:29 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 06 Mar 2018 10:47:36 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 06 Mar 2018 10:47:38 GMT
COPY multi:cb6c9a453a971f0ed6bdf30b12bc250bbe068005b3c3b084f5048cbf9787fb8d in /usr/local/bin/ 
# Tue, 06 Mar 2018 10:47:39 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 06 Mar 2018 10:47:41 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 06 Mar 2018 10:47:42 GMT
WORKDIR /var/www/html
# Tue, 06 Mar 2018 10:47:43 GMT
EXPOSE 80/tcp
# Tue, 06 Mar 2018 10:47:44 GMT
CMD ["apache2-foreground"]
# Tue, 06 Mar 2018 12:19:45 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         rsync         bzip2         busybox-static     ;     mkdir -p /var/spool/cron/crontabs;     echo '*/15 * * * * php -f /var/www/html/cron.php' > /var/spool/cron/crontabs/www-data;         savedAptMark="$(apt-mark showmanual)";         apt-get install -y --no-install-recommends         libcurl4-openssl-dev         libfreetype6-dev         libicu-dev         libjpeg-dev         libldap2-dev         libmcrypt-dev         libmemcached-dev         libpng12-dev         libpq-dev         libxml2-dev     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";     docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr;     docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch";     docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip pcntl;     pecl install APCu-5.1.10;     pecl install memcached-3.0.4;     pecl install redis-3.1.6;     docker-php-ext-enable apcu redis memcached;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { print $3 }'         | sort -u         | xargs -r dpkg-query -S         | cut -d: -f1         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;         {         echo 'opcache.enable=1';         echo 'opcache.enable_cli=1';         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=128';         echo 'opcache.save_comments=1';         echo 'opcache.revalidate_freq=1';     } > /usr/local/etc/php/conf.d/opcache-recommended.ini;         chown -R www-data:root /var/www/html;     chmod -R g=u /var/www/html
# Tue, 06 Mar 2018 12:19:47 GMT
VOLUME [/var/www/html]
# Tue, 06 Mar 2018 12:19:50 GMT
RUN a2enmod rewrite
# Tue, 06 Mar 2018 12:19:52 GMT
ENV NEXTCLOUD_VERSION=11.0.7
# Tue, 06 Mar 2018 12:20:20 GMT
RUN set -ex;     curl -fsSL -o nextcloud.tar.bz2         "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2";     curl -fsSL -o nextcloud.tar.bz2.asc         "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A;     gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2;     rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc;     tar -xjf nextcloud.tar.bz2 -C /usr/src/;     rm nextcloud.tar.bz2;     rm -rf /usr/src/nextcloud/updater;     mkdir -p /usr/src/nextcloud/data;     mkdir -p /usr/src/nextcloud/custom_apps;     chmod +x /usr/src/nextcloud/occ
# Tue, 06 Mar 2018 12:20:24 GMT
COPY multi:b680850547a7d6e3b427bb289061cea91ea149b388bd13c63f961d11b2eda4c9 in / 
# Tue, 06 Mar 2018 12:20:32 GMT
COPY multi:a4ce16f733fa0a4cb4b62b3fe3229e71f5a6b970a03b912772780cdb452098f4 in /usr/src/nextcloud/config/ 
# Tue, 06 Mar 2018 12:20:36 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 06 Mar 2018 12:20:40 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:8eaeb68187e190599df608fc805a2c2d9999ccc46a6ec9a48611b0aca5de945e`  
		Last Modified: Thu, 15 Feb 2018 01:41:55 GMT  
		Size: 51.8 MB (51817072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b18160df76743482c104e0424428a95a1ef69ba2124665a354ada6adc6b5395`  
		Last Modified: Thu, 15 Feb 2018 06:40:07 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91967a08dfb8903e319b5d2f36ef7e5c0afa6ad9198ddae9fb5099fdeac8aaa5`  
		Last Modified: Thu, 15 Feb 2018 06:40:22 GMT  
		Size: 67.9 MB (67863484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4da311ba705bb75dff0a34db039a5718c0f61644ec69b4679bd2a1fda6a84cd`  
		Last Modified: Thu, 15 Feb 2018 06:40:04 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2968359e05b4c7b5c8f2a9926f834acbb6f71d1615753782f617b82211211978`  
		Last Modified: Thu, 15 Feb 2018 06:40:05 GMT  
		Size: 4.3 MB (4332537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c02d848246eb297b8568e8482e0649d59fca9fbcb7eae02b5e62641bd50af356`  
		Last Modified: Thu, 15 Feb 2018 06:40:03 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6faa7d034a646b4c07256bb13490948d681c23aba40f1308216e80a179b7fb95`  
		Last Modified: Thu, 15 Feb 2018 06:40:01 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f7a07d6d4bbe6f94187fdfb853c67432abe6cdbe027b21688d33c6a58c3600a`  
		Last Modified: Thu, 15 Feb 2018 06:40:01 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e66e8f2c1fc550773eda72b2880b040cec147ea9cbde97b67363da18652ab43e`  
		Last Modified: Thu, 15 Feb 2018 06:40:11 GMT  
		Size: 517.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e2cc6149e401f9fa45cd9e26f12f500196a845003baf04f357073efa5bce058`  
		Last Modified: Tue, 06 Mar 2018 11:49:16 GMT  
		Size: 12.6 MB (12552100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:619f2d7824aea33069d61e0f0cd8db0802a34f8814b9a2483d573e57520b8a21`  
		Last Modified: Tue, 06 Mar 2018 11:49:12 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a03e1b018987ffbb1293809e6909a12c95e036bd7673ece5563db570ae47032`  
		Last Modified: Tue, 06 Mar 2018 11:49:16 GMT  
		Size: 14.1 MB (14120783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cadcd9d14b8ba23062bc0ef3905cb3c40cd2f18094ad0ee3012e8e666aff0a6c`  
		Last Modified: Tue, 06 Mar 2018 11:49:13 GMT  
		Size: 2.2 KB (2188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe873ae9921132ee3eb3ec30f6320ae81c971f2aaef5827c5cf279eaf7865fae`  
		Last Modified: Tue, 06 Mar 2018 11:49:12 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93033c44c68ac3a852832e1ff4eadeb780989abc5c464f88126fa5b9ca865a25`  
		Last Modified: Tue, 06 Mar 2018 12:32:31 GMT  
		Size: 18.4 MB (18352890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8691220320019f930be107554fb8b0bc9f1a55fbe8c6b67f7a8fa8baf67c558`  
		Last Modified: Tue, 06 Mar 2018 12:32:26 GMT  
		Size: 316.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c1bfcf5b63f2b2f0be7d2733e0daaeae07dec7add9ac92b29ad1335bc42893`  
		Last Modified: Tue, 06 Mar 2018 12:32:46 GMT  
		Size: 47.8 MB (47753606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c3f838b970334d8134bf500f9a6a0e593b4a294e4ff9c4a96f0868c6abd3f98`  
		Last Modified: Tue, 06 Mar 2018 12:32:27 GMT  
		Size: 999.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4acefe139eb64792d9568c86714b6fec247b0402a58e69cf0c5fcb501e8fc34`  
		Last Modified: Tue, 06 Mar 2018 12:32:27 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nextcloud:11-apache` - linux; s390x

```console
$ docker pull nextcloud@sha256:13fe8b8468d1f75c545d3b566f4705f8f246d5b4e0a0edd9f1b4afcd6ea74687
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.2 MB (212243576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0c8e2109656b7dc3bb34a3b60d143c48ad8c2ad5f7846f8a6259f583768283e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Thu, 15 Feb 2018 06:22:37 GMT
ADD file:aa3302b8380a38a7e51533d16a139a3cc5604bde2e860a555777b2f2d1fc1fec in / 
# Thu, 15 Feb 2018 06:22:37 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:20:33 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Thu, 15 Feb 2018 07:20:33 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 15 Feb 2018 07:20:58 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:20:58 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 15 Feb 2018 07:20:58 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 15 Feb 2018 07:24:51 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:24:51 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 15 Feb 2018 07:24:51 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 15 Feb 2018 07:24:51 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Thu, 15 Feb 2018 07:24:52 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Thu, 15 Feb 2018 07:24:52 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Thu, 15 Feb 2018 07:24:53 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Thu, 15 Feb 2018 07:24:53 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Thu, 15 Feb 2018 07:24:53 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Thu, 15 Feb 2018 07:24:53 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 15 Feb 2018 07:24:54 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 15 Feb 2018 07:24:54 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 15 Feb 2018 07:24:54 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Thu, 15 Feb 2018 07:24:54 GMT
ENV PHP_VERSION=7.1.14
# Thu, 15 Feb 2018 07:24:54 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.14.tar.xz.asc/from/this/mirror
# Thu, 15 Feb 2018 07:24:54 GMT
ENV PHP_SHA256=c09f0c1074f5689b492d79034adb84e6a6c6d08c6763c02282e6318d41156779 PHP_MD5=
# Thu, 15 Feb 2018 07:25:08 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Thu, 15 Feb 2018 07:25:08 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 15 Feb 2018 07:27:12 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Thu, 15 Feb 2018 07:27:13 GMT
COPY multi:cb6c9a453a971f0ed6bdf30b12bc250bbe068005b3c3b084f5048cbf9787fb8d in /usr/local/bin/ 
# Thu, 15 Feb 2018 07:27:13 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 15 Feb 2018 07:27:13 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Thu, 15 Feb 2018 07:27:13 GMT
WORKDIR /var/www/html
# Thu, 15 Feb 2018 07:27:13 GMT
EXPOSE 80/tcp
# Thu, 15 Feb 2018 07:27:13 GMT
CMD ["apache2-foreground"]
# Fri, 23 Feb 2018 00:03:52 GMT
RUN set -ex;     apt-get update;     apt-get install -y --no-install-recommends         rsync         bzip2         busybox-static     ;     mkdir -p /var/spool/cron/crontabs;     echo '*/15 * * * * php -f /var/www/html/cron.php' > /var/spool/cron/crontabs/www-data;         savedAptMark="$(apt-mark showmanual)";         apt-get install -y --no-install-recommends         libcurl4-openssl-dev         libfreetype6-dev         libicu-dev         libjpeg-dev         libldap2-dev         libmcrypt-dev         libmemcached-dev         libpng12-dev         libpq-dev         libxml2-dev     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";     docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr;     docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch";     docker-php-ext-install gd exif intl mbstring mcrypt ldap mysqli opcache pdo_mysql pdo_pgsql pgsql zip pcntl;     pecl install APCu-5.1.10;     pecl install memcached-3.0.4;     pecl install redis-3.1.6;     docker-php-ext-enable apcu redis memcached;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { print $3 }'         | sort -u         | xargs -r dpkg-query -S         | cut -d: -f1         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;         {         echo 'opcache.enable=1';         echo 'opcache.enable_cli=1';         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=128';         echo 'opcache.save_comments=1';         echo 'opcache.revalidate_freq=1';     } > /usr/local/etc/php/conf.d/opcache-recommended.ini;         chown -R www-data:root /var/www/html;     chmod -R g=u /var/www/html
# Fri, 23 Feb 2018 00:03:52 GMT
VOLUME [/var/www/html]
# Fri, 23 Feb 2018 00:03:53 GMT
RUN a2enmod rewrite
# Fri, 23 Feb 2018 00:03:53 GMT
ENV NEXTCLOUD_VERSION=11.0.7
# Fri, 23 Feb 2018 00:05:43 GMT
RUN set -ex;     curl -fsSL -o nextcloud.tar.bz2         "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2";     curl -fsSL -o nextcloud.tar.bz2.asc         "https://download.nextcloud.com/server/releases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A;     gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2;     rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc;     tar -xjf nextcloud.tar.bz2 -C /usr/src/;     rm nextcloud.tar.bz2;     rm -rf /usr/src/nextcloud/updater;     mkdir -p /usr/src/nextcloud/data;     mkdir -p /usr/src/nextcloud/custom_apps;     chmod +x /usr/src/nextcloud/occ
# Fri, 23 Feb 2018 00:05:44 GMT
COPY multi:b680850547a7d6e3b427bb289061cea91ea149b388bd13c63f961d11b2eda4c9 in / 
# Fri, 23 Feb 2018 00:05:44 GMT
COPY multi:a4ce16f733fa0a4cb4b62b3fe3229e71f5a6b970a03b912772780cdb452098f4 in /usr/src/nextcloud/config/ 
# Fri, 23 Feb 2018 00:05:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 23 Feb 2018 00:05:45 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:9c41e82a505c62c52ff8e8d0b157b438dad9642bc97d4389c8156b3dd4ae3b9e`  
		Last Modified: Thu, 15 Feb 2018 00:56:06 GMT  
		Size: 52.8 MB (52794833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96005eba8a61ab393ddfeb5b2e0b93b1de59d2966ce4de5f11fb615932845dfd`  
		Last Modified: Thu, 15 Feb 2018 08:00:28 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d923a0cf59f25f60f52e4beeb8d299d0eaf78d0bbd936a2a4919e7a582422e59`  
		Last Modified: Thu, 15 Feb 2018 08:00:39 GMT  
		Size: 61.8 MB (61798119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d50f7a8712f563bbb8850e19e2f52a9046bc26aef8df4c7036564de9d93ebe59`  
		Last Modified: Thu, 15 Feb 2018 08:00:26 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f64c9b5641b6f2c7345c196655eca94c5912f8e3e0378bf2bcd83c214562d703`  
		Last Modified: Thu, 15 Feb 2018 08:01:07 GMT  
		Size: 4.5 MB (4487782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:397515e078de583b02fbcb0b366bf1eb5c434b0cb1790ca8392c01be1d6d0626`  
		Last Modified: Thu, 15 Feb 2018 08:01:07 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aaa58f474cb93c6a3152edd858caa5609ccd4c605b88735d3cd0c0d8798cba0`  
		Last Modified: Thu, 15 Feb 2018 08:01:05 GMT  
		Size: 427.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d4c470e6bb51c9f993c2a4a9c50895696c753bde07bd37bdbf4f237b8b94efb`  
		Last Modified: Thu, 15 Feb 2018 08:01:05 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:423b6e75f53316c6615c86efdefe3492ef8c54dd96997766f7b7000519e34dbb`  
		Last Modified: Thu, 15 Feb 2018 08:01:06 GMT  
		Size: 485.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab99248c0383b90aa99cb751fd7c8fa5b9cd2e049e09089222417dfe785a63e5`  
		Last Modified: Thu, 15 Feb 2018 08:01:06 GMT  
		Size: 12.5 MB (12548690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be64e88291a2678d160a7933735b8609b3afb5fd3979b3ca9b8957f5b17afc25`  
		Last Modified: Thu, 15 Feb 2018 08:01:04 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86036a519c51d809348983d51b49575fa43e596efa23943ed1563bf6a5b46535`  
		Last Modified: Thu, 15 Feb 2018 08:01:08 GMT  
		Size: 14.5 MB (14507588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18831bb885bc8d8adf76faed771df16b8d26a069c820b19bf165173d58fea197`  
		Last Modified: Thu, 15 Feb 2018 08:01:04 GMT  
		Size: 2.2 KB (2188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63e4b7fd9b8b5316b528c500687258bd5992d59f96ef2fa62c91a3eb3ec5171b`  
		Last Modified: Thu, 15 Feb 2018 08:01:04 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed04753caa05e3183047072e1725cd4dbc6209bc69121ad9559640ad7ffbe4cd`  
		Last Modified: Fri, 23 Feb 2018 00:20:04 GMT  
		Size: 18.3 MB (18344354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a129fa015352d8729f496ed357fa1ee27d5e0f3d6b07467fba8c4038aa8e1d3`  
		Last Modified: Fri, 23 Feb 2018 00:20:00 GMT  
		Size: 309.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d63e60382bcd22025ce62471ef6b68c1c712c9e57225547dee029b91d87b7b91`  
		Last Modified: Fri, 23 Feb 2018 00:20:08 GMT  
		Size: 47.8 MB (47753669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adf9a500668c1cf5daf3b72b2fb0cc9c182952675e240e1d08a5f83574ab79fb`  
		Last Modified: Fri, 23 Feb 2018 00:20:00 GMT  
		Size: 998.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:837cd4482652033a1197b942a390a098bd4313878f047cac573cdd195866b1a7`  
		Last Modified: Fri, 23 Feb 2018 00:20:00 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
