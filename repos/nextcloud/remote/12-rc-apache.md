## `nextcloud:12-rc-apache`

```console
$ docker pull nextcloud@sha256:96c568aa787f33a42e3a31af91d9f49c966c25395dc948cff49e6c655bf47e29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `nextcloud:12-rc-apache` - linux; arm variant v5

```console
$ docker pull nextcloud@sha256:d3304329e4c6ac0035ac3597f3013024182f3ffa0163feb7a7d64c0eab45e8e7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.2 MB (177239058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a665f637747602d6ac5609e91f76b2ce36fef604b72a49fd6d1c31f336929b13`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Sat, 28 Apr 2018 08:53:29 GMT
ADD file:ca564f3cd7bd0fee7f6e56d1a55f5f92da6d4bf55ce3bf20ca398e9e95cdf8df in / 
# Sat, 28 Apr 2018 08:53:30 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 09:35:15 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Sat, 28 Apr 2018 09:35:15 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Sat, 28 Apr 2018 09:35:48 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 28 Apr 2018 09:35:49 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 28 Apr 2018 09:35:49 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 28 Apr 2018 09:40:04 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 09:40:05 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Sat, 28 Apr 2018 09:40:05 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Sat, 28 Apr 2018 09:40:06 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Sat, 28 Apr 2018 09:40:07 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Sat, 28 Apr 2018 09:40:08 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Sat, 28 Apr 2018 09:40:12 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Sat, 28 Apr 2018 09:40:17 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Sat, 28 Apr 2018 09:40:17 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Sat, 28 Apr 2018 09:40:17 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 28 Apr 2018 09:40:17 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 28 Apr 2018 09:40:18 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 24 May 2018 08:56:06 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Thu, 31 May 2018 08:52:57 GMT
ENV PHP_VERSION=7.1.18
# Thu, 31 May 2018 08:52:57 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.18.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.18.tar.xz.asc/from/this/mirror
# Thu, 31 May 2018 08:52:58 GMT
ENV PHP_SHA256=8bd91cea072ea5b368cc9b4533a1a683eb426abdacbf024bb6ffa9b799cd3b01 PHP_MD5=
# Thu, 31 May 2018 08:53:11 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Thu, 31 May 2018 08:53:11 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 31 May 2018 08:55:47 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--disable-cgi 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Thu, 31 May 2018 08:55:49 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Thu, 31 May 2018 08:55:49 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 31 May 2018 08:55:50 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Thu, 31 May 2018 08:55:50 GMT
WORKDIR /var/www/html
# Thu, 31 May 2018 08:55:50 GMT
EXPOSE 80/tcp
# Thu, 31 May 2018 08:55:51 GMT
CMD ["apache2-foreground"]
# Thu, 31 May 2018 10:01:41 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         rsync         bzip2         busybox-static     ;     rm -rf /var/lib/apt/lists/*;         mkdir -p /var/spool/cron/crontabs;     echo '*/15 * * * * php -f /var/www/html/cron.php' > /var/spool/cron/crontabs/www-data
# Thu, 31 May 2018 10:06:26 GMT
RUN set -ex;         savedAptMark="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         libcurl4-openssl-dev         libfreetype6-dev         libicu-dev         libjpeg-dev         libldap2-dev         libmcrypt-dev         libmemcached-dev         libpng-dev         libpq-dev         libxml2-dev     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";     docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr;     docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch";     docker-php-ext-install         exif         gd         intl         ldap         mcrypt         opcache         pcntl         pdo_mysql         pdo_pgsql         zip     ;     pecl install         APCu-5.1.11         memcached-3.0.4         redis-3.1.6     ;     docker-php-ext-enable         apcu         memcached         redis     ;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { print $3 }'         | sort -u         | xargs -r dpkg-query -S         | cut -d: -f1         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*
# Thu, 31 May 2018 10:06:27 GMT
RUN {         echo 'opcache.enable=1';         echo 'opcache.enable_cli=1';         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=128';         echo 'opcache.save_comments=1';         echo 'opcache.revalidate_freq=1';     } > /usr/local/etc/php/conf.d/opcache-recommended.ini;         mkdir /var/www/data;     chown -R www-data:root /var/www;     chmod -R g=u /var/www
# Thu, 31 May 2018 10:06:27 GMT
VOLUME [/var/www/html]
# Thu, 31 May 2018 10:06:29 GMT
RUN a2enmod rewrite remoteip ;    {     echo RemoteIPHeader X-Real-IP ;     echo RemoteIPTrustedProxy 10.0.0.0/8 ;     echo RemoteIPTrustedProxy 172.16.0.0/12 ;     echo RemoteIPTrustedProxy 192.168.0.0/16 ;    } > /etc/apache2/conf-available/remoteip.conf;    a2enconf remoteip
# Sat, 02 Jun 2018 08:50:19 GMT
ENV NEXTCLOUD_VERSION=12.0.8RC1
# Sat, 02 Jun 2018 08:50:53 GMT
RUN set -ex;     fetchDeps="         gnupg         dirmngr     ";     apt-get update;     apt-get install -y --no-install-recommends $fetchDeps;         curl -fsSL -o nextcloud.tar.bz2         "https://download.nextcloud.com/server/prereleases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2";     curl -fsSL -o nextcloud.tar.bz2.asc         "https://download.nextcloud.com/server/prereleases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A;     gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2;     tar -xjf nextcloud.tar.bz2 -C /usr/src/;     rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc nextcloud.tar.bz2;     rm -rf /usr/src/nextcloud/updater;     mkdir -p /usr/src/nextcloud/data;     mkdir -p /usr/src/nextcloud/custom_apps;     chmod +x /usr/src/nextcloud/occ;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps;     rm -rf /var/lib/apt/lists/*
# Sat, 02 Jun 2018 08:50:58 GMT
COPY multi:60e3cd03e05bfb8b6202821a8e0d4fcac7ec23796138bf6c73774235efb566e1 in / 
# Sat, 02 Jun 2018 08:50:59 GMT
COPY multi:a4ce16f733fa0a4cb4b62b3fe3229e71f5a6b970a03b912772780cdb452098f4 in /usr/src/nextcloud/config/ 
# Sat, 02 Jun 2018 08:50:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 02 Jun 2018 08:51:00 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:b2a4458ef3b9777a47503028af324e4890546ca8e24a86697b3219a6e3069450`  
		Last Modified: Sat, 28 Apr 2018 09:02:15 GMT  
		Size: 21.2 MB (21175666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f281a3d800a8fe76433bde7ada6b5349c9ed4224b651945ceb6f50a305131d`  
		Last Modified: Sat, 28 Apr 2018 10:41:40 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a16d3f8b6713898fb71b3128b8f86eb9a6c73cf471525583bd26de5e838ec7ea`  
		Last Modified: Sat, 28 Apr 2018 10:41:57 GMT  
		Size: 57.5 MB (57490283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b5b65c14ba3c3d998f9945e981ee3e5bc15d753b8eda638724294e336730a92`  
		Last Modified: Sat, 28 Apr 2018 10:41:38 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b38e7d18cbf8249e01df352ef5f12d2f6456a751827d6f36eef0826fa6bea69`  
		Last Modified: Sat, 28 Apr 2018 10:43:35 GMT  
		Size: 16.7 MB (16651468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:315e88309bc637763365c947f1e53e91f70e282374b06b60c4a6927248c5f861`  
		Last Modified: Sat, 28 Apr 2018 10:43:30 GMT  
		Size: 1.3 KB (1272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cab98ea4932765a54d9c4ac9a130df4d966a89c23627f0aeb5af4e053d4c125`  
		Last Modified: Sat, 28 Apr 2018 10:43:29 GMT  
		Size: 467.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e6e0887a7b2f222969c7090f7c9ad899108001ce87daa19a851739db4b5bab4`  
		Last Modified: Sat, 28 Apr 2018 10:43:29 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1ad7366ffdc8dc66bdfe3f20139e39ec9d3d932d9c7bfc7655a7cb7371afecc`  
		Last Modified: Sat, 28 Apr 2018 10:43:29 GMT  
		Size: 512.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:603167adfa37dd96ab135a4b02a6d00c3f9d7ebc052a1b5b4726fcdf29c11b60`  
		Last Modified: Thu, 31 May 2018 09:24:33 GMT  
		Size: 12.6 MB (12560638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9969715ca732a96a73c1324f26883a965b0eac3c3a35807ee4fcc39357538bda`  
		Last Modified: Thu, 31 May 2018 09:24:31 GMT  
		Size: 502.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09e0d44f6246395da9fcdc645c047ae4c8e2aef3afc6b313dc2d7fda4e0eef6f`  
		Last Modified: Thu, 31 May 2018 09:24:35 GMT  
		Size: 13.9 MB (13880049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fa8d80af73a1ea7b166a307efa8cda486e8e40d68c41e4f11e1641d3f5d2b18`  
		Last Modified: Thu, 31 May 2018 09:24:32 GMT  
		Size: 2.2 KB (2196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d889139a13c03a170713a723dd34c69df62db8639dd55667813885145e0d3fa8`  
		Last Modified: Thu, 31 May 2018 09:24:31 GMT  
		Size: 906.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b735d15f542d0113cd7c0dad82a183d3ba5a190ae03f7899d34ef50c296d68c`  
		Last Modified: Thu, 31 May 2018 10:15:38 GMT  
		Size: 1.6 MB (1581580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90663423b15c907b075d8aa338c6da83e13b45df69a388891fc37413368d9b85`  
		Last Modified: Thu, 31 May 2018 10:15:39 GMT  
		Size: 3.9 MB (3892296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7762e11a9b5d4d97f82ae5b1fafb5bfa76256858a1739c97a47fd15405a9446`  
		Last Modified: Thu, 31 May 2018 10:15:37 GMT  
		Size: 462.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1e7f84c02b7dcfe73ee013bafcffa51a30f022a27c06695cd342e72413a1135`  
		Last Modified: Thu, 31 May 2018 10:15:37 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10cb03d7e42e091673712f75e5f5261a7c5dee0fd36f2648b79528b22594aa3f`  
		Last Modified: Sat, 02 Jun 2018 08:58:51 GMT  
		Size: 50.0 MB (49997680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a97e56ca443c6b4914ccee8dc113561e694875f4a55772e9f2322c1ad28b5f44`  
		Last Modified: Sat, 02 Jun 2018 08:58:34 GMT  
		Size: 1.0 KB (1015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e711d5d76639d2c4430c1ae11679a200f9974c99829cd24b7d02eb5ad47fa08`  
		Last Modified: Sat, 02 Jun 2018 08:58:34 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nextcloud:12-rc-apache` - linux; arm variant v7

```console
$ docker pull nextcloud@sha256:49ccbf7f47fea8fd6effd06260849ff64068956c3666f58917315cf6a92c5de0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.8 MB (169841761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3f75562736fec666a5655a72bff133baf492ccec6b00eeddb840533b32c5493`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Sat, 28 Apr 2018 12:04:59 GMT
ADD file:f8bb9e9954bfe2f550e8a786c4be1dd5fca4a373b82b372b80c163e5640bd5a4 in / 
# Sat, 28 Apr 2018 12:05:00 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:46:21 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Sat, 28 Apr 2018 12:46:21 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Sat, 28 Apr 2018 12:46:47 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:46:48 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 28 Apr 2018 12:46:49 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 28 Apr 2018 12:51:41 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:51:41 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Sat, 28 Apr 2018 12:51:42 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Sat, 28 Apr 2018 12:51:43 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Sat, 28 Apr 2018 12:51:44 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Sat, 28 Apr 2018 12:51:45 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Sat, 28 Apr 2018 12:51:47 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Sat, 28 Apr 2018 12:51:47 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Sat, 28 Apr 2018 12:51:47 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Sat, 28 Apr 2018 12:51:48 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 28 Apr 2018 12:51:48 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 28 Apr 2018 12:51:48 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 24 May 2018 12:13:27 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Thu, 31 May 2018 12:13:21 GMT
ENV PHP_VERSION=7.1.18
# Thu, 31 May 2018 12:13:22 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.18.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.18.tar.xz.asc/from/this/mirror
# Thu, 31 May 2018 12:13:22 GMT
ENV PHP_SHA256=8bd91cea072ea5b368cc9b4533a1a683eb426abdacbf024bb6ffa9b799cd3b01 PHP_MD5=
# Thu, 31 May 2018 12:13:33 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Thu, 31 May 2018 12:13:33 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 31 May 2018 12:15:56 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--disable-cgi 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Thu, 31 May 2018 12:15:58 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Thu, 31 May 2018 12:15:58 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 31 May 2018 12:15:59 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Thu, 31 May 2018 12:15:59 GMT
WORKDIR /var/www/html
# Thu, 31 May 2018 12:16:00 GMT
EXPOSE 80/tcp
# Thu, 31 May 2018 12:16:00 GMT
CMD ["apache2-foreground"]
# Thu, 31 May 2018 13:22:24 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         rsync         bzip2         busybox-static     ;     rm -rf /var/lib/apt/lists/*;         mkdir -p /var/spool/cron/crontabs;     echo '*/15 * * * * php -f /var/www/html/cron.php' > /var/spool/cron/crontabs/www-data
# Thu, 31 May 2018 13:26:29 GMT
RUN set -ex;         savedAptMark="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         libcurl4-openssl-dev         libfreetype6-dev         libicu-dev         libjpeg-dev         libldap2-dev         libmcrypt-dev         libmemcached-dev         libpng-dev         libpq-dev         libxml2-dev     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";     docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr;     docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch";     docker-php-ext-install         exif         gd         intl         ldap         mcrypt         opcache         pcntl         pdo_mysql         pdo_pgsql         zip     ;     pecl install         APCu-5.1.11         memcached-3.0.4         redis-3.1.6     ;     docker-php-ext-enable         apcu         memcached         redis     ;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { print $3 }'         | sort -u         | xargs -r dpkg-query -S         | cut -d: -f1         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*
# Thu, 31 May 2018 13:26:36 GMT
RUN {         echo 'opcache.enable=1';         echo 'opcache.enable_cli=1';         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=128';         echo 'opcache.save_comments=1';         echo 'opcache.revalidate_freq=1';     } > /usr/local/etc/php/conf.d/opcache-recommended.ini;         mkdir /var/www/data;     chown -R www-data:root /var/www;     chmod -R g=u /var/www
# Thu, 31 May 2018 13:26:36 GMT
VOLUME [/var/www/html]
# Thu, 31 May 2018 13:26:38 GMT
RUN a2enmod rewrite remoteip ;    {     echo RemoteIPHeader X-Real-IP ;     echo RemoteIPTrustedProxy 10.0.0.0/8 ;     echo RemoteIPTrustedProxy 172.16.0.0/12 ;     echo RemoteIPTrustedProxy 192.168.0.0/16 ;    } > /etc/apache2/conf-available/remoteip.conf;    a2enconf remoteip
# Sat, 02 Jun 2018 12:00:47 GMT
ENV NEXTCLOUD_VERSION=12.0.8RC1
# Sat, 02 Jun 2018 12:01:18 GMT
RUN set -ex;     fetchDeps="         gnupg         dirmngr     ";     apt-get update;     apt-get install -y --no-install-recommends $fetchDeps;         curl -fsSL -o nextcloud.tar.bz2         "https://download.nextcloud.com/server/prereleases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2";     curl -fsSL -o nextcloud.tar.bz2.asc         "https://download.nextcloud.com/server/prereleases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A;     gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2;     tar -xjf nextcloud.tar.bz2 -C /usr/src/;     rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc nextcloud.tar.bz2;     rm -rf /usr/src/nextcloud/updater;     mkdir -p /usr/src/nextcloud/data;     mkdir -p /usr/src/nextcloud/custom_apps;     chmod +x /usr/src/nextcloud/occ;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps;     rm -rf /var/lib/apt/lists/*
# Sat, 02 Jun 2018 12:01:28 GMT
COPY multi:60e3cd03e05bfb8b6202821a8e0d4fcac7ec23796138bf6c73774235efb566e1 in / 
# Sat, 02 Jun 2018 12:01:29 GMT
COPY multi:a4ce16f733fa0a4cb4b62b3fe3229e71f5a6b970a03b912772780cdb452098f4 in /usr/src/nextcloud/config/ 
# Sat, 02 Jun 2018 12:01:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 02 Jun 2018 12:01:30 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:6c8a025e90b325dd5af06b0297cc1608120a47d4ab0e1cedb26c8cda811091d6`  
		Last Modified: Sat, 28 Apr 2018 12:16:08 GMT  
		Size: 19.3 MB (19286790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf07548fd702c25f6a37417857c3d37adf8a5883c1d45a75060d8dbc2a151b41`  
		Last Modified: Sat, 28 Apr 2018 14:00:07 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b125fcadb4bb2739042584cd3c0843a7175feeb33ebb69a1d5e74c8508fbc3bd`  
		Last Modified: Sat, 28 Apr 2018 14:00:23 GMT  
		Size: 53.6 MB (53598529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5917ec501eba175683cdecbb15957cb7c3caa4de3d15f1c22950549bedd633fd`  
		Last Modified: Sat, 28 Apr 2018 14:00:05 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdc683c1090c547c06b76a41185c39edb50e23140c955c0b7684aec5238d6cfc`  
		Last Modified: Sat, 28 Apr 2018 14:03:37 GMT  
		Size: 16.2 MB (16159123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20e90356d39fd532ac0356418dbe342dbd7e4934f00a10f583292266e7a30c83`  
		Last Modified: Sat, 28 Apr 2018 14:03:31 GMT  
		Size: 1.3 KB (1272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6676e699036f92007c420a68757c9f044d421caa6bbad03aae425ac9c608dad4`  
		Last Modified: Sat, 28 Apr 2018 14:03:31 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1972df07745bb764d4cfeddd32a4dfa32c78eb805c91a076689ba64fedd495b0`  
		Last Modified: Sat, 28 Apr 2018 14:03:31 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bbba5ba2d1fda9b0da359c91a3883bbebae07351537729a8beacb58b11b0b5f`  
		Last Modified: Sat, 28 Apr 2018 14:03:30 GMT  
		Size: 512.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:345c7e29bd894633dd2255653c765f911b4bfaa9b2cbaed9ce6a8a08f296eef9`  
		Last Modified: Thu, 31 May 2018 12:45:26 GMT  
		Size: 12.6 MB (12560563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ac60fb73e7809f2a382ed875a087ec8ecb9dfa9a000c243f479824b11b2098c`  
		Last Modified: Thu, 31 May 2018 12:45:23 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f561cd782228d9c08b3bfc0df3d3daa2a4bdce72647a8f365168aaddd5a5633`  
		Last Modified: Thu, 31 May 2018 12:45:27 GMT  
		Size: 13.1 MB (13056405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e9715b263d19384a810236ae7508205cd498f925c45a3f650139608a90a694d`  
		Last Modified: Thu, 31 May 2018 12:45:24 GMT  
		Size: 2.2 KB (2194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c783deecbe505919776558dfb84e296692521f9d16407c5c304667db689abcde`  
		Last Modified: Thu, 31 May 2018 12:45:24 GMT  
		Size: 903.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:610444b0be3d3e92d5b3eb9e3c7fa3475aa683cd8f489ca2e073598a8fb9d0f9`  
		Last Modified: Thu, 31 May 2018 13:38:17 GMT  
		Size: 1.4 MB (1429508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72816bcd93dcca3f741be46ee420981734678cfe65bd2bcceac126dda243549c`  
		Last Modified: Thu, 31 May 2018 13:38:18 GMT  
		Size: 3.7 MB (3743879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:510fd544d119b66d6e1c45b77362a9b44889299960f991723d2b04c9fb3ef845`  
		Last Modified: Thu, 31 May 2018 13:38:15 GMT  
		Size: 461.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:950ce13aa8a49bec20a70baf3cbfe1db320603dc7fb6eb4cf7c5b65c3229349d`  
		Last Modified: Thu, 31 May 2018 13:38:15 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7747089bed39f29a1b437f6947fd7e96585741463b1ad93f746001c33f4d203d`  
		Last Modified: Sat, 02 Jun 2018 12:09:23 GMT  
		Size: 50.0 MB (49997573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e5d83d2f6c2e10429ca02602ec9bc06cf068c84ae3bf4aad51e128ed23f836e`  
		Last Modified: Sat, 02 Jun 2018 12:09:04 GMT  
		Size: 1.0 KB (1015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09028bad1f0283be1499667f987a14ef6b553c61c4bc8c41e57eb5cd445eb451`  
		Last Modified: Sat, 02 Jun 2018 12:09:04 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nextcloud:12-rc-apache` - linux; 386

```console
$ docker pull nextcloud@sha256:55d7996f476994e4bdf6f6e62ad63d922e14942cc7444ad761b0ce9291a782e4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.1 MB (195137965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a91592b89f7c7242e6730918f376e483ed3787f3dd5d4530ac025039c3049e6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Sat, 28 Apr 2018 10:41:49 GMT
ADD file:9e45c98885c63b1f77e50324055758088ca38203260e2305cca24b13fbeb23cf in / 
# Sat, 28 Apr 2018 10:41:49 GMT
CMD ["bash"]
# Thu, 31 May 2018 06:51:07 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Thu, 31 May 2018 06:51:07 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 31 May 2018 06:51:56 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 31 May 2018 06:51:57 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 31 May 2018 06:51:57 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 31 May 2018 06:56:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Thu, 31 May 2018 06:56:46 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 31 May 2018 06:56:46 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 31 May 2018 06:56:47 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Thu, 31 May 2018 06:56:48 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Thu, 31 May 2018 06:56:48 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Thu, 31 May 2018 06:56:49 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Thu, 31 May 2018 06:56:49 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Thu, 31 May 2018 06:56:49 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Thu, 31 May 2018 06:56:50 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 31 May 2018 06:56:50 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 31 May 2018 06:56:50 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 31 May 2018 07:26:48 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Thu, 31 May 2018 07:26:48 GMT
ENV PHP_VERSION=7.1.18
# Thu, 31 May 2018 07:26:48 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.18.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.18.tar.xz.asc/from/this/mirror
# Thu, 31 May 2018 07:26:48 GMT
ENV PHP_SHA256=8bd91cea072ea5b368cc9b4533a1a683eb426abdacbf024bb6ffa9b799cd3b01 PHP_MD5=
# Thu, 31 May 2018 07:27:24 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Thu, 31 May 2018 07:27:24 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 31 May 2018 07:30:02 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--disable-cgi 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Thu, 31 May 2018 07:30:02 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Thu, 31 May 2018 07:30:02 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 31 May 2018 07:30:03 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Thu, 31 May 2018 07:30:03 GMT
WORKDIR /var/www/html
# Thu, 31 May 2018 07:30:03 GMT
EXPOSE 80/tcp
# Thu, 31 May 2018 07:30:03 GMT
CMD ["apache2-foreground"]
# Thu, 31 May 2018 13:51:38 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         rsync         bzip2         busybox-static     ;     rm -rf /var/lib/apt/lists/*;         mkdir -p /var/spool/cron/crontabs;     echo '*/15 * * * * php -f /var/www/html/cron.php' > /var/spool/cron/crontabs/www-data
# Thu, 31 May 2018 13:56:41 GMT
RUN set -ex;         savedAptMark="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         libcurl4-openssl-dev         libfreetype6-dev         libicu-dev         libjpeg-dev         libldap2-dev         libmcrypt-dev         libmemcached-dev         libpng-dev         libpq-dev         libxml2-dev     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";     docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr;     docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch";     docker-php-ext-install         exif         gd         intl         ldap         mcrypt         opcache         pcntl         pdo_mysql         pdo_pgsql         zip     ;     pecl install         APCu-5.1.11         memcached-3.0.4         redis-3.1.6     ;     docker-php-ext-enable         apcu         memcached         redis     ;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { print $3 }'         | sort -u         | xargs -r dpkg-query -S         | cut -d: -f1         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*
# Thu, 31 May 2018 13:56:42 GMT
RUN {         echo 'opcache.enable=1';         echo 'opcache.enable_cli=1';         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=128';         echo 'opcache.save_comments=1';         echo 'opcache.revalidate_freq=1';     } > /usr/local/etc/php/conf.d/opcache-recommended.ini;         mkdir /var/www/data;     chown -R www-data:root /var/www;     chmod -R g=u /var/www
# Thu, 31 May 2018 13:56:42 GMT
VOLUME [/var/www/html]
# Thu, 31 May 2018 13:56:43 GMT
RUN a2enmod rewrite remoteip ;    {     echo RemoteIPHeader X-Real-IP ;     echo RemoteIPTrustedProxy 10.0.0.0/8 ;     echo RemoteIPTrustedProxy 172.16.0.0/12 ;     echo RemoteIPTrustedProxy 192.168.0.0/16 ;    } > /etc/apache2/conf-available/remoteip.conf;    a2enconf remoteip
# Sat, 02 Jun 2018 10:48:10 GMT
ENV NEXTCLOUD_VERSION=12.0.8RC1
# Sat, 02 Jun 2018 10:50:09 GMT
RUN set -ex;     fetchDeps="         gnupg         dirmngr     ";     apt-get update;     apt-get install -y --no-install-recommends $fetchDeps;         curl -fsSL -o nextcloud.tar.bz2         "https://download.nextcloud.com/server/prereleases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2";     curl -fsSL -o nextcloud.tar.bz2.asc         "https://download.nextcloud.com/server/prereleases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A;     gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2;     tar -xjf nextcloud.tar.bz2 -C /usr/src/;     rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc nextcloud.tar.bz2;     rm -rf /usr/src/nextcloud/updater;     mkdir -p /usr/src/nextcloud/data;     mkdir -p /usr/src/nextcloud/custom_apps;     chmod +x /usr/src/nextcloud/occ;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps;     rm -rf /var/lib/apt/lists/*
# Sat, 02 Jun 2018 10:50:10 GMT
COPY multi:60e3cd03e05bfb8b6202821a8e0d4fcac7ec23796138bf6c73774235efb566e1 in / 
# Sat, 02 Jun 2018 10:50:11 GMT
COPY multi:a4ce16f733fa0a4cb4b62b3fe3229e71f5a6b970a03b912772780cdb452098f4 in /usr/src/nextcloud/config/ 
# Sat, 02 Jun 2018 10:50:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 02 Jun 2018 10:50:11 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:23510c5166fc980d20c6b002b2a7bbdde547dfc6195bbfcb7e0f2a39c590a210`  
		Last Modified: Sat, 28 Apr 2018 10:49:34 GMT  
		Size: 23.1 MB (23138515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c17bd1509be66cc4aeb270fa4bbb6d7896acd5659adc984f15c01bdee0a6cc6`  
		Last Modified: Thu, 31 May 2018 09:23:19 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d0bf0c232bdd33993f98575df190f8e4a00017547757974775215cc8be52cd`  
		Last Modified: Thu, 31 May 2018 09:23:51 GMT  
		Size: 71.5 MB (71518351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe16e39a6d4b455c604a4f4e6cfbf1ede9b988cf077c590e05c9b45754fdc0d1`  
		Last Modified: Thu, 31 May 2018 09:23:17 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae4a7e830b72fe2023f43643dea8dcb8eafd3c01a823a260bf9e7128329ff215`  
		Last Modified: Thu, 31 May 2018 09:25:13 GMT  
		Size: 17.6 MB (17558731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95c38b5eb3e3dde14ed26bf438307f90fef7b54d28b393e4bdf60eac8013637f`  
		Last Modified: Thu, 31 May 2018 09:25:05 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f852d5193ef9711064338d260cd328851109e218b4711afe75a67f2cdd679fd`  
		Last Modified: Thu, 31 May 2018 09:25:04 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fefde80318f03a6b673ff75af2aa7b1f40fc34fdd80e53f5f1e2f49b4a04b57`  
		Last Modified: Thu, 31 May 2018 09:25:03 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c9583b50b0bfe504e603c8774c41d903c139d1dce517e33b289f5ca3e6d4e87`  
		Last Modified: Thu, 31 May 2018 09:25:03 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c63d49626f1710cbe25d6b981b1be7a8618f537c3a528417caae1e3268598da`  
		Last Modified: Thu, 31 May 2018 09:30:01 GMT  
		Size: 12.6 MB (12562189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef600506fc537fc351e0c91c9024a86f4d22fdd8a4b558c62b676456b6d6c297`  
		Last Modified: Thu, 31 May 2018 09:29:57 GMT  
		Size: 503.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa32477b192384102cc5c1f9daab117a7376ae57de6c97947b564571826cae78`  
		Last Modified: Thu, 31 May 2018 09:30:05 GMT  
		Size: 14.7 MB (14675130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d787b9aca110f65a73f3617910622ab64b95320e461c623880a2c91afc78141`  
		Last Modified: Thu, 31 May 2018 09:29:57 GMT  
		Size: 2.2 KB (2192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7737889a8331b2ed5eb7e9d0692cb95fa503ec2e36bf983ccd4c53085626534d`  
		Last Modified: Thu, 31 May 2018 09:29:59 GMT  
		Size: 905.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67b58d82ef1cedf245a1c4d36ddf60460caca5d893228a27f346cec5c8cad6e2`  
		Last Modified: Thu, 31 May 2018 14:20:07 GMT  
		Size: 1.6 MB (1611780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36991a9c728d377b22a657fd5fe9e8b10be1c2a8bed9f9cbf498b93338f64b42`  
		Last Modified: Thu, 31 May 2018 14:20:08 GMT  
		Size: 4.1 MB (4064690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2fd22ef92001fc207d74a1b792b485a446ce70afed5ff0b4b2fb448a1228b52`  
		Last Modified: Thu, 31 May 2018 14:20:04 GMT  
		Size: 431.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd30a5daaee1142a26b144b0e3947226c61a2e81d5e5aea44d0256ca055eaa7c`  
		Last Modified: Thu, 31 May 2018 14:20:04 GMT  
		Size: 540.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6e83f9a70f80b89cc4f866b5013b4eea4ddbf040ae6983b59c37e58a7e5d997`  
		Last Modified: Sat, 02 Jun 2018 11:12:03 GMT  
		Size: 50.0 MB (49999336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b327a4fa827b25a880e06b851f711e14db9c5b5e1c5547021a19ee56bc1896af`  
		Last Modified: Sat, 02 Jun 2018 11:11:41 GMT  
		Size: 1.0 KB (1015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78af057341d79bb02b4a9a08e529694828a98c6833819f149693eff44cb92ae0`  
		Last Modified: Sat, 02 Jun 2018 11:11:41 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nextcloud:12-rc-apache` - linux; ppc64le

```console
$ docker pull nextcloud@sha256:b11dd16e03c91990badb91e3d287b99644474c9017757393246d13d1acd5d707
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.5 MB (184531265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cd8d6688e90d0936287b6f81b55a3b5b038b374537f9053d74205654c5aafe8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Sat, 28 Apr 2018 08:20:54 GMT
ADD file:c561a92d41ab01d60c88efa7b21fd9b48e6c0c96fb8d2552f4cebbed3df42bca in / 
# Sat, 28 Apr 2018 08:20:55 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 10:19:08 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Sat, 28 Apr 2018 10:19:08 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Sat, 28 Apr 2018 10:20:05 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 28 Apr 2018 10:20:06 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 28 Apr 2018 10:20:09 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 28 Apr 2018 10:26:03 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 10:26:03 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Sat, 28 Apr 2018 10:26:04 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Sat, 28 Apr 2018 10:26:06 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Sat, 28 Apr 2018 10:26:07 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Sat, 28 Apr 2018 10:26:09 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Sat, 28 Apr 2018 10:26:11 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Sat, 28 Apr 2018 10:26:14 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Sat, 28 Apr 2018 10:26:16 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Sat, 28 Apr 2018 10:26:16 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 28 Apr 2018 10:26:16 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 28 Apr 2018 10:26:17 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 24 May 2018 08:29:33 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Thu, 31 May 2018 08:44:46 GMT
ENV PHP_VERSION=7.1.18
# Thu, 31 May 2018 08:44:47 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.18.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.18.tar.xz.asc/from/this/mirror
# Thu, 31 May 2018 08:44:48 GMT
ENV PHP_SHA256=8bd91cea072ea5b368cc9b4533a1a683eb426abdacbf024bb6ffa9b799cd3b01 PHP_MD5=
# Thu, 31 May 2018 08:45:19 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Thu, 31 May 2018 08:45:20 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 31 May 2018 08:53:27 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--disable-cgi 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Thu, 31 May 2018 08:53:29 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Thu, 31 May 2018 08:53:30 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 31 May 2018 08:53:31 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Thu, 31 May 2018 08:53:32 GMT
WORKDIR /var/www/html
# Thu, 31 May 2018 08:53:33 GMT
EXPOSE 80/tcp
# Thu, 31 May 2018 08:53:35 GMT
CMD ["apache2-foreground"]
# Thu, 31 May 2018 10:34:58 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         rsync         bzip2         busybox-static     ;     rm -rf /var/lib/apt/lists/*;         mkdir -p /var/spool/cron/crontabs;     echo '*/15 * * * * php -f /var/www/html/cron.php' > /var/spool/cron/crontabs/www-data
# Thu, 31 May 2018 10:41:17 GMT
RUN set -ex;         savedAptMark="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         libcurl4-openssl-dev         libfreetype6-dev         libicu-dev         libjpeg-dev         libldap2-dev         libmcrypt-dev         libmemcached-dev         libpng-dev         libpq-dev         libxml2-dev     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";     docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr;     docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch";     docker-php-ext-install         exif         gd         intl         ldap         mcrypt         opcache         pcntl         pdo_mysql         pdo_pgsql         zip     ;     pecl install         APCu-5.1.11         memcached-3.0.4         redis-3.1.6     ;     docker-php-ext-enable         apcu         memcached         redis     ;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { print $3 }'         | sort -u         | xargs -r dpkg-query -S         | cut -d: -f1         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*
# Thu, 31 May 2018 10:41:21 GMT
RUN {         echo 'opcache.enable=1';         echo 'opcache.enable_cli=1';         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=128';         echo 'opcache.save_comments=1';         echo 'opcache.revalidate_freq=1';     } > /usr/local/etc/php/conf.d/opcache-recommended.ini;         mkdir /var/www/data;     chown -R www-data:root /var/www;     chmod -R g=u /var/www
# Thu, 31 May 2018 10:41:22 GMT
VOLUME [/var/www/html]
# Thu, 31 May 2018 10:41:24 GMT
RUN a2enmod rewrite remoteip ;    {     echo RemoteIPHeader X-Real-IP ;     echo RemoteIPTrustedProxy 10.0.0.0/8 ;     echo RemoteIPTrustedProxy 172.16.0.0/12 ;     echo RemoteIPTrustedProxy 192.168.0.0/16 ;    } > /etc/apache2/conf-available/remoteip.conf;    a2enconf remoteip
# Sat, 02 Jun 2018 08:21:14 GMT
ENV NEXTCLOUD_VERSION=12.0.8RC1
# Sat, 02 Jun 2018 08:21:56 GMT
RUN set -ex;     fetchDeps="         gnupg         dirmngr     ";     apt-get update;     apt-get install -y --no-install-recommends $fetchDeps;         curl -fsSL -o nextcloud.tar.bz2         "https://download.nextcloud.com/server/prereleases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2";     curl -fsSL -o nextcloud.tar.bz2.asc         "https://download.nextcloud.com/server/prereleases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A;     gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2;     tar -xjf nextcloud.tar.bz2 -C /usr/src/;     rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc nextcloud.tar.bz2;     rm -rf /usr/src/nextcloud/updater;     mkdir -p /usr/src/nextcloud/data;     mkdir -p /usr/src/nextcloud/custom_apps;     chmod +x /usr/src/nextcloud/occ;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps;     rm -rf /var/lib/apt/lists/*
# Sat, 02 Jun 2018 08:21:58 GMT
COPY multi:60e3cd03e05bfb8b6202821a8e0d4fcac7ec23796138bf6c73774235efb566e1 in / 
# Sat, 02 Jun 2018 08:21:59 GMT
COPY multi:a4ce16f733fa0a4cb4b62b3fe3229e71f5a6b970a03b912772780cdb452098f4 in /usr/src/nextcloud/config/ 
# Sat, 02 Jun 2018 08:22:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 02 Jun 2018 08:22:01 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:39214b2a7dd7dd2d1069dd155ce8ab2206bb1fda22be8136b88451c8be20e82f`  
		Last Modified: Sat, 28 Apr 2018 08:30:28 GMT  
		Size: 22.8 MB (22753096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80d8863ba8492f42b5b9324cbbb6571f6ea2041966f83d18761e73dae56c5e82`  
		Last Modified: Sat, 28 Apr 2018 12:02:26 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79353628a1130a700546ed5aa5fe7c79df2a3d24ac1b0e92ec59f368a072370b`  
		Last Modified: Sat, 28 Apr 2018 12:03:07 GMT  
		Size: 61.8 MB (61845345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fdc994aa5cf758463aae69d146af6eb0e052c04e501023cac6794c9c7a2781b`  
		Last Modified: Sat, 28 Apr 2018 12:02:21 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a5c55adece55ab7e4cfe7c4332670d2c2f08a5ec597d181acbb31ffc08f73f4`  
		Last Modified: Sat, 28 Apr 2018 12:06:12 GMT  
		Size: 17.3 MB (17334913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:756706846416f165691c2d4da04c8c63f07adb4f5e32d09668872420f0bdbf2a`  
		Last Modified: Sat, 28 Apr 2018 12:05:57 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cb00ba32a484b66a69ba72723582983c736f0e019fa89ba33b13c89d69be47c`  
		Last Modified: Sat, 28 Apr 2018 12:05:52 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8daa9bf15791328128efe887d0dbfa2e2287c38e6ae759778afb80be6b5e6fed`  
		Last Modified: Sat, 28 Apr 2018 12:05:39 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d17aaabd3958129f241323b066b577888c561623522e2fb2123d445f4de519ac`  
		Last Modified: Sat, 28 Apr 2018 12:05:24 GMT  
		Size: 516.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e27f516fa369cb627b4d125b7fa583699f14c983cd01ef55d27ac95105d4bb9`  
		Last Modified: Thu, 31 May 2018 09:55:48 GMT  
		Size: 12.6 MB (12560979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5e94815890b787e95f29d29e480344bb65908de0ffbb333d1741f1c424c714d`  
		Last Modified: Thu, 31 May 2018 09:55:45 GMT  
		Size: 502.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aef309cee70d3c36b53a44bbe1fdd303389ff5a67df7d058eae26c5724835622`  
		Last Modified: Thu, 31 May 2018 09:55:50 GMT  
		Size: 14.3 MB (14324676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f23efbe7420aad5e01ab67e855b2081002fd3aa3c8b2fd5f705ce60d54bd56b7`  
		Last Modified: Thu, 31 May 2018 09:55:45 GMT  
		Size: 2.2 KB (2197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c855efb845a98a37ea47ae4d77eeb73d3ed90aa8b8e62f7731b12972011dfb8`  
		Last Modified: Thu, 31 May 2018 09:55:45 GMT  
		Size: 907.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ac844636b2becbb93f3eab010795b2b78d95bbfcc31a007e6badad5afa69e73`  
		Last Modified: Thu, 31 May 2018 10:56:06 GMT  
		Size: 1.6 MB (1634282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a21e6251e4e0e89f4ab9f8bcfeac407debdb42e50762fa9a0f49633b6f8ee754`  
		Last Modified: Thu, 31 May 2018 10:56:07 GMT  
		Size: 4.1 MB (4069527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e8956f416b7c0402fb405a9dec0ca363c3d9df02b64bb7de891f0c1187efc6c`  
		Last Modified: Thu, 31 May 2018 10:56:04 GMT  
		Size: 465.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de9943dde30103c32ad8c6ea2342004fa328ee6ce85e95e0c54e787eb42fdeec`  
		Last Modified: Thu, 31 May 2018 10:56:03 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6330700a177a49c0525ef639aa8b48251cccdc8991e1b5f7cc2393ec2d485285`  
		Last Modified: Sat, 02 Jun 2018 08:35:26 GMT  
		Size: 50.0 MB (49999021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14426d01f1eb63f19a63a24a4fd01d835bd51e5c38d08d7d4e823da55e2fda01`  
		Last Modified: Sat, 02 Jun 2018 08:34:58 GMT  
		Size: 1.0 KB (1015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ad4136dec60e38f7dba41430f188faf0951bd7e570c441efee552741275292d`  
		Last Modified: Sat, 02 Jun 2018 08:34:58 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nextcloud:12-rc-apache` - linux; s390x

```console
$ docker pull nextcloud@sha256:890c3fbb720c841cb6db3096fd74ea0df6a6659476b60db428ec80ffef7296e6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.1 MB (178052490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c51b6cbf5ef5ccf7aa484917ef3924bb3bed138118682b1adce30f6c7c8eb02`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Sat, 28 Apr 2018 11:45:29 GMT
ADD file:89223bc6886b09479a52e6d05479980ad8e46c8c707ac40cd81b664fe9827428 in / 
# Sat, 28 Apr 2018 11:45:29 GMT
CMD ["bash"]
# Thu, 24 May 2018 11:47:53 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Thu, 24 May 2018 11:47:53 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 24 May 2018 11:48:21 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 24 May 2018 11:48:21 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 24 May 2018 11:48:22 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 24 May 2018 11:52:41 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Thu, 24 May 2018 11:52:41 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 24 May 2018 11:52:41 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 24 May 2018 11:52:42 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Thu, 24 May 2018 11:52:43 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Thu, 24 May 2018 11:52:43 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Thu, 24 May 2018 11:52:44 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Thu, 24 May 2018 11:52:44 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Thu, 24 May 2018 11:52:44 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Thu, 24 May 2018 11:52:44 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 24 May 2018 11:52:45 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 24 May 2018 11:52:45 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 24 May 2018 11:52:45 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Thu, 31 May 2018 12:36:12 GMT
ENV PHP_VERSION=7.1.18
# Thu, 31 May 2018 12:36:12 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.18.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.18.tar.xz.asc/from/this/mirror
# Thu, 31 May 2018 12:36:12 GMT
ENV PHP_SHA256=8bd91cea072ea5b368cc9b4533a1a683eb426abdacbf024bb6ffa9b799cd3b01 PHP_MD5=
# Thu, 31 May 2018 12:36:21 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Thu, 31 May 2018 12:36:22 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 31 May 2018 12:40:44 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--disable-cgi 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Thu, 31 May 2018 12:40:45 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Thu, 31 May 2018 12:40:45 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 31 May 2018 12:40:46 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Thu, 31 May 2018 12:40:46 GMT
WORKDIR /var/www/html
# Thu, 31 May 2018 12:40:47 GMT
EXPOSE 80/tcp
# Thu, 31 May 2018 12:40:47 GMT
CMD ["apache2-foreground"]
# Thu, 31 May 2018 14:50:48 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         rsync         bzip2         busybox-static     ;     rm -rf /var/lib/apt/lists/*;         mkdir -p /var/spool/cron/crontabs;     echo '*/15 * * * * php -f /var/www/html/cron.php' > /var/spool/cron/crontabs/www-data
# Thu, 31 May 2018 14:53:01 GMT
RUN set -ex;         savedAptMark="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         libcurl4-openssl-dev         libfreetype6-dev         libicu-dev         libjpeg-dev         libldap2-dev         libmcrypt-dev         libmemcached-dev         libpng-dev         libpq-dev         libxml2-dev     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";     docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr;     docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch";     docker-php-ext-install         exif         gd         intl         ldap         mcrypt         opcache         pcntl         pdo_mysql         pdo_pgsql         zip     ;     pecl install         APCu-5.1.11         memcached-3.0.4         redis-3.1.6     ;     docker-php-ext-enable         apcu         memcached         redis     ;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { print $3 }'         | sort -u         | xargs -r dpkg-query -S         | cut -d: -f1         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*
# Thu, 31 May 2018 14:53:02 GMT
RUN {         echo 'opcache.enable=1';         echo 'opcache.enable_cli=1';         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=128';         echo 'opcache.save_comments=1';         echo 'opcache.revalidate_freq=1';     } > /usr/local/etc/php/conf.d/opcache-recommended.ini;         mkdir /var/www/data;     chown -R www-data:root /var/www;     chmod -R g=u /var/www
# Thu, 31 May 2018 14:53:02 GMT
VOLUME [/var/www/html]
# Thu, 31 May 2018 14:53:03 GMT
RUN a2enmod rewrite remoteip ;    {     echo RemoteIPHeader X-Real-IP ;     echo RemoteIPTrustedProxy 10.0.0.0/8 ;     echo RemoteIPTrustedProxy 172.16.0.0/12 ;     echo RemoteIPTrustedProxy 192.168.0.0/16 ;    } > /etc/apache2/conf-available/remoteip.conf;    a2enconf remoteip
# Sat, 02 Jun 2018 11:47:46 GMT
ENV NEXTCLOUD_VERSION=12.0.8RC1
# Sat, 02 Jun 2018 11:48:06 GMT
RUN set -ex;     fetchDeps="         gnupg         dirmngr     ";     apt-get update;     apt-get install -y --no-install-recommends $fetchDeps;         curl -fsSL -o nextcloud.tar.bz2         "https://download.nextcloud.com/server/prereleases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2";     curl -fsSL -o nextcloud.tar.bz2.asc         "https://download.nextcloud.com/server/prereleases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A;     gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2;     tar -xjf nextcloud.tar.bz2 -C /usr/src/;     rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc nextcloud.tar.bz2;     rm -rf /usr/src/nextcloud/updater;     mkdir -p /usr/src/nextcloud/data;     mkdir -p /usr/src/nextcloud/custom_apps;     chmod +x /usr/src/nextcloud/occ;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps;     rm -rf /var/lib/apt/lists/*
# Sat, 02 Jun 2018 11:48:07 GMT
COPY multi:60e3cd03e05bfb8b6202821a8e0d4fcac7ec23796138bf6c73774235efb566e1 in / 
# Sat, 02 Jun 2018 11:48:08 GMT
COPY multi:a4ce16f733fa0a4cb4b62b3fe3229e71f5a6b970a03b912772780cdb452098f4 in /usr/src/nextcloud/config/ 
# Sat, 02 Jun 2018 11:48:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 02 Jun 2018 11:48:08 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:39cbaa616b05fb96ca4be9aac8b4d99ba8bf573e07a754a8c43dbec7ff518bbb`  
		Last Modified: Sat, 28 Apr 2018 11:51:43 GMT  
		Size: 22.3 MB (22349898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86dcdc8fe8a33134e7e10aa57d9a2c3a2c0ccf3353c09cab1f1299f9b4d43b70`  
		Last Modified: Thu, 24 May 2018 13:02:22 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ed0d36d03e06a15d464aba57b499c8c85e2ffa3cb711ed7a8f93302f97f9d13`  
		Last Modified: Thu, 24 May 2018 13:02:37 GMT  
		Size: 55.8 MB (55796693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7dd09be41fa5101b260a14276ed4da4a08ab108f4712b5a0be4336856fdb60e`  
		Last Modified: Thu, 24 May 2018 13:02:21 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b35e63e3e89f633d6985ddf0e9e5ed2cb00e04a8e0a3ba462c639cc28dab28ca`  
		Last Modified: Thu, 24 May 2018 13:03:47 GMT  
		Size: 17.3 MB (17256602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b36915cd1f4de37896f3ffe317915eebd30d01602ca5f8ed93340fdf1ae1584c`  
		Last Modified: Thu, 24 May 2018 13:03:43 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e26f1e35f2c9bd9f6701b21698b702c52d943d4d86938274f24d3c7638b410e7`  
		Last Modified: Thu, 24 May 2018 13:03:42 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cb87dccca736216fdf2833b2e65a3433ffc651cd5eb14aecdbddb17177c2aae`  
		Last Modified: Thu, 24 May 2018 13:03:42 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3578a6315ac0b63c280665ebc19a8dfa7740b2447d8a8f4496d355962892c26`  
		Last Modified: Thu, 24 May 2018 13:03:41 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b297dcbafdb5ea63dcf3cbcc19ae4c2089d95b1ed99a3ca97a89c1dd67ef384`  
		Last Modified: Thu, 31 May 2018 14:21:39 GMT  
		Size: 12.6 MB (12560224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22a03f95a1bf2bb1882973ec4cace70ee2e19fd3604c8ea5ff5220a55ce0cda8`  
		Last Modified: Thu, 31 May 2018 14:21:38 GMT  
		Size: 503.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a008e6d88526158605ee86ef6713415c099e3d650f833d1b9dce2a4cfd70f7a`  
		Last Modified: Thu, 31 May 2018 14:21:41 GMT  
		Size: 14.3 MB (14328609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a2999b70489f8afcaa50c8cbf794aa86ce52b67fcf64af45073addf0c7241f6`  
		Last Modified: Thu, 31 May 2018 14:21:38 GMT  
		Size: 2.2 KB (2193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e19074c91915d5c542b05f12fe1003b1a026894bfabc523fba9a210578c03bf`  
		Last Modified: Thu, 31 May 2018 14:21:38 GMT  
		Size: 906.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f83dd107187ce6793c2abd80f7ed086b294c2726db6248f075deccc62fc3633e`  
		Last Modified: Thu, 31 May 2018 14:59:00 GMT  
		Size: 1.6 MB (1619916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7aa2c1714a55044187d76e96228be3fef22e4941db2463a929dc0c3f718119a8`  
		Last Modified: Thu, 31 May 2018 14:59:00 GMT  
		Size: 4.1 MB (4134107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c504775f921b0c0b04ca99af1aa6df1c25ed567fe7ace87f625fbd57721ac5c`  
		Last Modified: Thu, 31 May 2018 14:58:58 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:115daa2273f684b850fe4e9ef9b884ba4385064899209ec0b773f8bea0d5e039`  
		Last Modified: Thu, 31 May 2018 14:58:58 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:269334b647ed8ac56dc2ba500791628cfc8621902540cb3d2f25aeabfc1ef25b`  
		Last Modified: Sat, 02 Jun 2018 11:53:25 GMT  
		Size: 50.0 MB (49997195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c29c6ac429359d41311aa453c2ad95b0934cf0367b374707d61bdbe2d9ef001`  
		Last Modified: Sat, 02 Jun 2018 11:53:16 GMT  
		Size: 1.0 KB (1015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04a416c8eca9314eb503842bc60cc9b9ef79aa2ca89f0fbeeded5f5344b787ec`  
		Last Modified: Sat, 02 Jun 2018 11:53:15 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
