## `php:5-apache-jessie`

```console
$ docker pull php@sha256:9ed9a312bb06b9fcf200fac086273868692af9f281aeabd1302d5a2ca4faf0b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php:5-apache-jessie` - linux; amd64

```console
$ docker pull php@sha256:bf7ab83765d4316034a17c79680972700e50e42eceef8d9e2c5220e7abf5517f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.9 MB (155937275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a23a2f270f4254d2cd3d5bd93eaafaf0f3505f89f56710da855b37418f5be3a`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 22:07:39 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Mon, 30 Apr 2018 22:07:39 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Mon, 30 Apr 2018 22:08:18 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Mon, 30 Apr 2018 22:08:18 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 30 Apr 2018 22:08:19 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Mon, 30 Apr 2018 22:23:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Mon, 30 Apr 2018 22:23:10 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Mon, 30 Apr 2018 22:23:11 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Mon, 30 Apr 2018 22:23:11 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Mon, 30 Apr 2018 22:23:12 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Mon, 30 Apr 2018 22:23:13 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Mon, 30 Apr 2018 22:23:14 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Mon, 30 Apr 2018 22:23:14 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Mon, 30 Apr 2018 22:23:14 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Mon, 30 Apr 2018 22:23:15 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Mon, 30 Apr 2018 22:23:15 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Mon, 30 Apr 2018 22:23:15 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 01 May 2018 00:27:00 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Sat, 05 May 2018 02:06:23 GMT
ENV PHP_VERSION=5.6.36
# Sat, 05 May 2018 02:06:23 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.36.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.36.tar.xz.asc/from/this/mirror
# Sat, 05 May 2018 02:06:23 GMT
ENV PHP_SHA256=18f536bf548e909b4e980379d0c4e56d024b2b1eb1c9768fd169360491f1d6dd PHP_MD5=
# Sat, 05 May 2018 02:06:46 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 05 May 2018 02:06:47 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 05 May 2018 02:09:17 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--disable-cgi 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 05 May 2018 02:09:17 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Sat, 05 May 2018 02:09:17 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 05 May 2018 02:09:18 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 05 May 2018 02:09:18 GMT
WORKDIR /var/www/html
# Sat, 05 May 2018 02:09:18 GMT
EXPOSE 80/tcp
# Sat, 05 May 2018 02:09:19 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32bfdb6043a841abdd5bc9f7efcfa1281cc517fc2112f99db013793d2df9e9d7`  
		Last Modified: Tue, 01 May 2018 02:38:26 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:327a3b8246c6014487246bf899947e96eeaff0e29d81cb620ea3e029a54d7111`  
		Last Modified: Tue, 01 May 2018 02:38:42 GMT  
		Size: 74.7 MB (74660760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3b73e77223911e268897f6a159b4df1c493624c5edf2d4d17cf8fddf9d0540`  
		Last Modified: Tue, 01 May 2018 02:38:24 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1d8f2630b58471dbbfa1aaa1874e597d8fe1678edc9802287ef6a2a454dd9bc`  
		Last Modified: Tue, 01 May 2018 02:51:53 GMT  
		Size: 4.5 MB (4467149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5599b03aa14f59d4333b651fa56dd6d60785caf3201bf72cbbb1f5dfcc1b01b2`  
		Last Modified: Tue, 01 May 2018 02:51:50 GMT  
		Size: 1.2 KB (1246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13b5cca3ce534c7f00f42788cd703b7f6db116e75ddea4bf668bab2310373268`  
		Last Modified: Tue, 01 May 2018 02:51:49 GMT  
		Size: 429.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2946903117b36efdd86a74223d1813ea776ab9462f83d90cd516410d478c4eeb`  
		Last Modified: Tue, 01 May 2018 02:51:49 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4e5ea64a21b12488c6dd300615067f4dc5c0e6275ccd256c449965a5ce1336`  
		Last Modified: Tue, 01 May 2018 02:51:49 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92a5dfaa9861d3d30caa8bc4d4b4824d26f37c41e20b9d1ef3a08939197e36c9`  
		Last Modified: Sat, 05 May 2018 02:47:01 GMT  
		Size: 12.8 MB (12820047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bb8b839d25255d6cd8636be3615a9e248ad463aff34136fdc75837517591a38`  
		Last Modified: Sat, 05 May 2018 02:47:00 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c736eb6b8cedc0c1b36f8e665ed94ff6dbd4c53f65b257145f20af8410b1da9e`  
		Last Modified: Sat, 05 May 2018 02:47:02 GMT  
		Size: 9.7 MB (9720360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa2df47c291237edd7c26299446f940363801aef0fcfe26a7d885f51c53662e1`  
		Last Modified: Sat, 05 May 2018 02:47:00 GMT  
		Size: 2.2 KB (2194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:851b4d97812a7e155b4eda7b439987823e1891095dbdc6535967708ba5ae92af`  
		Last Modified: Sat, 05 May 2018 02:47:00 GMT  
		Size: 905.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
