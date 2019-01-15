## `php:5-apache-stretch`

```console
$ docker pull php@sha256:f605a8cf1f0dde343b94832148e86258b18d89d322b8932f5c55884743e417e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php:5-apache-stretch` - linux; amd64

```console
$ docker pull php@sha256:160590c61ea5021ac82766dc1a9d4c95fbea929bc28f66e830d2bb70e2eb77f9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.6 MB (129620866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a62c5acfd6c59a941d1828fd2c7f502af6c81657cda7e2f40f7c02c18d0e23bb`
-	Entrypoint: `["docker-php-entrypoint"]`
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
# Sat, 29 Dec 2018 07:51:12 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Mon, 14 Jan 2019 21:25:29 GMT
ENV PHP_VERSION=5.6.40
# Mon, 14 Jan 2019 21:25:29 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.40.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.40.tar.xz.asc/from/this/mirror
# Mon, 14 Jan 2019 21:25:29 GMT
ENV PHP_SHA256=1369a51eee3995d7fbd1c5342e5cc917760e276d561595b6052b21ace2656d1c PHP_MD5=
# Mon, 14 Jan 2019 21:25:56 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Mon, 14 Jan 2019 21:25:56 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Mon, 14 Jan 2019 21:28:35 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl1.0-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Mon, 14 Jan 2019 21:28:36 GMT
COPY multi:0a6fe33cb39694994fa567c75b399b9aa5e477c8770caa9f731607a72819b457 in /usr/local/bin/ 
# Mon, 14 Jan 2019 21:28:36 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 14 Jan 2019 21:28:36 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Mon, 14 Jan 2019 21:28:36 GMT
WORKDIR /var/www/html
# Mon, 14 Jan 2019 21:28:36 GMT
EXPOSE 80
# Mon, 14 Jan 2019 21:28:37 GMT
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
	-	`sha256:a467410f988d94412a96a85e4d7b2917cf61a5d3f3a8f94f0b39109fbd8c398a`  
		Last Modified: Mon, 14 Jan 2019 22:26:16 GMT  
		Size: 12.8 MB (12821864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2f29fe53ec1903a5aa402b0a73d3799f8f8050d7cff0ffd6dadd7e3a44ac41b`  
		Last Modified: Mon, 14 Jan 2019 22:26:15 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a31295032d971678bd4319c35bc1982be769740599b1ea4980e8582ae388cab9`  
		Last Modified: Mon, 14 Jan 2019 22:26:17 GMT  
		Size: 9.7 MB (9729150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a80914556e13f62d120460ba23741fc2f5094bd3fdf281b486ea06934b16b5f7`  
		Last Modified: Mon, 14 Jan 2019 22:26:15 GMT  
		Size: 2.2 KB (2194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b0aa45a76fb7bae454b11ae4095c465dcd922074f5d1056bfa26c99d629905c`  
		Last Modified: Mon, 14 Jan 2019 22:26:15 GMT  
		Size: 901.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
