## `yourls:1-apache`

```console
$ docker pull yourls@sha256:d8e6c60fd37016f6548edbe320d4005c5f704971637a0a80b07a1a55d329b6be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `yourls:1-apache` - linux; amd64

```console
$ docker pull yourls@sha256:97f136a5c30b273ef7a56d2c566b79fe1b40769d521f3e61792bd94c04e2a605
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.6 MB (137623206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3716b075c98f13609108d55e95cc589848a0e236c773c08ae094efa9e17b303b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:23 GMT
ADD file:5ffb798d64089418ef4d3a261df5ad7cfa038eb2ef778db2b92604ac87228d99 in / 
# Mon, 10 Jun 2019 23:24:23 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 01:35:28 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 11 Jun 2019 01:35:28 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 11 Jun 2019 01:36:10 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 11 Jun 2019 01:36:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 11 Jun 2019 01:36:12 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Tue, 11 Jun 2019 01:46:18 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 11 Jun 2019 01:46:18 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 11 Jun 2019 01:46:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Tue, 11 Jun 2019 01:46:36 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 11 Jun 2019 01:46:37 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 11 Jun 2019 01:46:37 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 11 Jun 2019 01:46:37 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Tue, 11 Jun 2019 01:46:37 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 11 Jun 2019 01:46:38 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 11 Jun 2019 01:46:38 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 11 Jun 2019 02:24:21 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Tue, 11 Jun 2019 02:24:21 GMT
ENV PHP_VERSION=7.2.19
# Tue, 11 Jun 2019 02:24:21 GMT
ENV PHP_URL=https://www.php.net/get/php-7.2.19.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.2.19.tar.xz.asc/from/this/mirror
# Tue, 11 Jun 2019 02:24:21 GMT
ENV PHP_SHA256=4ffa2404a88d60e993a9fe69f829ebec3eb1e006de41b6048ce5e91bbeaa9282 PHP_MD5=
# Tue, 11 Jun 2019 02:24:31 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 11 Jun 2019 02:24:32 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Tue, 11 Jun 2019 02:29:16 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Thu, 13 Jun 2019 00:21:04 GMT
COPY multi:99e4ad617c6193834e78d12470f6dde09f70f4d40463009c5724954902e60676 in /usr/local/bin/ 
# Thu, 13 Jun 2019 00:21:05 GMT
RUN docker-php-ext-enable sodium
# Thu, 13 Jun 2019 00:21:05 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 13 Jun 2019 00:21:05 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Thu, 13 Jun 2019 00:21:05 GMT
WORKDIR /var/www/html
# Thu, 13 Jun 2019 00:21:06 GMT
EXPOSE 80
# Thu, 13 Jun 2019 00:21:06 GMT
CMD ["apache2-foreground"]
# Thu, 13 Jun 2019 01:24:37 GMT
RUN set -ex;     docker-php-ext-install opcache pdo_mysql mysqli
# Thu, 13 Jun 2019 01:24:37 GMT
RUN {         echo 'opcache.memory_consumption=128';         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=4000';         echo 'opcache.revalidate_freq=60';         echo 'opcache.fast_shutdown=1';         echo 'opcache.enable_cli=1';     } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 13 Jun 2019 01:24:38 GMT
RUN a2enmod rewrite expires
# Thu, 13 Jun 2019 01:24:38 GMT
VOLUME [/var/www/html]
# Thu, 13 Jun 2019 01:24:39 GMT
ENV YOURLS_VERSION=1.7.3
# Thu, 13 Jun 2019 01:24:39 GMT
ENV YOURLS_SHA256=301ed5b0bfd63cfaeeafe40de056661302e786542002f479886fcf601bfb9dc4
# Thu, 13 Jun 2019 01:24:41 GMT
RUN set -ex;     curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz";     echo "$YOURLS_SHA256 *yourls.tar.gz" | sha256sum -c -;     tar -xzf yourls.tar.gz -C /usr/src/;     mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls;     rm yourls.tar.gz;     chown -R www-data:www-data /usr/src/yourls
# Thu, 13 Jun 2019 01:24:41 GMT
COPY file:dae29f9c1e1fe04a79abdb2b0965f1a821bebbe26ab1e1e13cae7fe5fbaf788d in /usr/local/bin/ 
# Thu, 13 Jun 2019 01:24:41 GMT
COPY file:3f52182221aa0be7c7b12ddf051434d36a6c19e6da6da6b973ace390c4e1ce25 in /usr/src/yourls/user/ 
# Thu, 13 Jun 2019 01:24:41 GMT
COPY file:5b7ff05d0c98ad759c4bec0ef8a7ce74cae42e95b42564b55f43b341c2c3e3f5 in /usr/src/yourls/ 
# Thu, 13 Jun 2019 01:24:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Jun 2019 01:24:42 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:fc7181108d403205fda45b28dbddfa1cf07e772fa41244e44f53a341b8b1893d`  
		Last Modified: Mon, 10 Jun 2019 23:28:08 GMT  
		Size: 22.5 MB (22489302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e65236fc68ab0d8a95b419f7227dade0eb78d84ac65d318d4e0b6f91d914ab3`  
		Last Modified: Tue, 11 Jun 2019 04:41:39 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40fde9a4a72e50b9d59c73c8820c043c09b1218afb3f103f101d3d2bf78dbeef`  
		Last Modified: Tue, 11 Jun 2019 04:42:01 GMT  
		Size: 67.4 MB (67448408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7565c4cbce22d7dc86bc386167e3a99a3079e08789801c15d0b1091774897ead`  
		Last Modified: Tue, 11 Jun 2019 04:41:38 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d11737718e7e0f99d810cc4d75ef73799cfe0b80c50ae635061f5c84d4c8cf48`  
		Last Modified: Tue, 11 Jun 2019 04:42:30 GMT  
		Size: 17.1 MB (17125009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77c761ec3046249d2e23148f803b9ff1c5fe95b30ff98db2f0f030dcecfe8d54`  
		Last Modified: Tue, 11 Jun 2019 04:42:24 GMT  
		Size: 433.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e0238c6dd2ef5181d0d045d424046c605243fa418e1b3eb156ccda98a1ed2c0`  
		Last Modified: Tue, 11 Jun 2019 04:42:24 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4621cfd41daf97b4dee53da755bbf793601c09c174e2a87e99834900363e7ca`  
		Last Modified: Tue, 11 Jun 2019 04:43:55 GMT  
		Size: 12.5 MB (12526340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10ed889d056d5c51065834cff62311da0048a3f68852d4fc354762cdeeacc190`  
		Last Modified: Tue, 11 Jun 2019 04:43:49 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07eff8c1c94ff3b66641304eb8165a1d113c1c7c332790f917b7e52b88c3c849`  
		Last Modified: Tue, 11 Jun 2019 04:43:54 GMT  
		Size: 15.3 MB (15258826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd20a930dcf27b13931c456afba8f7e0c5ce1e0abf28ebf4623eb68d06010177`  
		Last Modified: Thu, 13 Jun 2019 00:26:32 GMT  
		Size: 2.2 KB (2229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa3f76879e9f20b4729ca15161552811eb879683b90f21d641cd4e52151c719f`  
		Last Modified: Thu, 13 Jun 2019 00:26:32 GMT  
		Size: 264.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06528513a5445369b5988d85e6d83bf61576ef1608886d665e975c9f9af0c09a`  
		Last Modified: Thu, 13 Jun 2019 00:26:32 GMT  
		Size: 908.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b60ba3b0bf70174afe561a3bc75d7bd9ad69c8824c8823e68538e9acc3ff345`  
		Last Modified: Thu, 13 Jun 2019 01:27:00 GMT  
		Size: 280.6 KB (280605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:900e7c8477e06d89a7cab6e9f4ccee9580de82b9329e7bba88d73735567b957c`  
		Last Modified: Thu, 13 Jun 2019 01:26:59 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b39c67d7b30e24f7269feee0c01f80df265397af33db506cec98f40dcbffa2f0`  
		Last Modified: Thu, 13 Jun 2019 01:26:59 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12df9737674324ee7329e50e4eb293089e55e4f919add0091022a1cc7c4fe61d`  
		Last Modified: Thu, 13 Jun 2019 01:27:00 GMT  
		Size: 2.5 MB (2485521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52cdbc876e0bd9e76ece805c3a98447ee0a91dec73be9830add87f17d915804a`  
		Last Modified: Thu, 13 Jun 2019 01:26:58 GMT  
		Size: 1.1 KB (1073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9f2b6b633a036ea601bc779aa403f07ff9da8d149fae4f3eb186aeba41d6e92`  
		Last Modified: Thu, 13 Jun 2019 01:26:58 GMT  
		Size: 1.8 KB (1806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac010ff65a5807c2984a39131555f795279769fb1110eff6717764570ecfb43a`  
		Last Modified: Thu, 13 Jun 2019 01:26:58 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `yourls:1-apache` - linux; arm variant v5

```console
$ docker pull yourls@sha256:f81ee09544630a4de470e7025e37aac6bf567933c5ba430122a5cbd82e69949e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.0 MB (125011955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a62897d1bddc526f442d2bfc179fa3cf0a86644c98e062060de1d8019d3c560`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 10 Jun 2019 23:53:36 GMT
ADD file:b563bf03e125515b4f74af859aa40e35d24c633add8a20f007b0da89ef4692d9 in / 
# Mon, 10 Jun 2019 23:53:36 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 01:49:33 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 11 Jun 2019 01:49:34 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 11 Jun 2019 01:50:11 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 11 Jun 2019 01:50:13 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 11 Jun 2019 01:50:14 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Tue, 11 Jun 2019 01:55:06 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 11 Jun 2019 01:55:06 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 11 Jun 2019 01:55:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Tue, 11 Jun 2019 01:55:30 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 11 Jun 2019 01:55:33 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 11 Jun 2019 01:55:34 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 11 Jun 2019 01:55:34 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Tue, 11 Jun 2019 01:55:35 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 11 Jun 2019 01:55:36 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 11 Jun 2019 01:55:37 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 11 Jun 2019 02:15:01 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Tue, 11 Jun 2019 02:15:01 GMT
ENV PHP_VERSION=7.2.19
# Tue, 11 Jun 2019 02:15:02 GMT
ENV PHP_URL=https://www.php.net/get/php-7.2.19.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.2.19.tar.xz.asc/from/this/mirror
# Tue, 11 Jun 2019 02:15:02 GMT
ENV PHP_SHA256=4ffa2404a88d60e993a9fe69f829ebec3eb1e006de41b6048ce5e91bbeaa9282 PHP_MD5=
# Tue, 11 Jun 2019 02:15:22 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 11 Jun 2019 02:15:22 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Mon, 17 Jun 2019 21:32:17 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 	php --version
# Mon, 17 Jun 2019 21:32:19 GMT
COPY multi:99e4ad617c6193834e78d12470f6dde09f70f4d40463009c5724954902e60676 in /usr/local/bin/ 
# Mon, 17 Jun 2019 21:32:20 GMT
RUN docker-php-ext-enable sodium
# Mon, 17 Jun 2019 21:32:21 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 17 Jun 2019 21:32:21 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Mon, 17 Jun 2019 21:32:22 GMT
WORKDIR /var/www/html
# Mon, 17 Jun 2019 21:32:22 GMT
EXPOSE 80
# Mon, 17 Jun 2019 21:32:23 GMT
CMD ["apache2-foreground"]
# Mon, 17 Jun 2019 23:19:45 GMT
RUN set -ex;     docker-php-ext-install opcache pdo_mysql mysqli
# Mon, 17 Jun 2019 23:19:48 GMT
RUN {         echo 'opcache.memory_consumption=128';         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=4000';         echo 'opcache.revalidate_freq=60';         echo 'opcache.fast_shutdown=1';         echo 'opcache.enable_cli=1';     } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Mon, 17 Jun 2019 23:19:50 GMT
RUN a2enmod rewrite expires
# Mon, 17 Jun 2019 23:19:51 GMT
VOLUME [/var/www/html]
# Mon, 17 Jun 2019 23:19:52 GMT
ENV YOURLS_VERSION=1.7.3
# Mon, 17 Jun 2019 23:19:52 GMT
ENV YOURLS_SHA256=301ed5b0bfd63cfaeeafe40de056661302e786542002f479886fcf601bfb9dc4
# Mon, 17 Jun 2019 23:19:56 GMT
RUN set -ex;     curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz";     echo "$YOURLS_SHA256 *yourls.tar.gz" | sha256sum -c -;     tar -xzf yourls.tar.gz -C /usr/src/;     mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls;     rm yourls.tar.gz;     chown -R www-data:www-data /usr/src/yourls
# Mon, 17 Jun 2019 23:19:57 GMT
COPY file:dae29f9c1e1fe04a79abdb2b0965f1a821bebbe26ab1e1e13cae7fe5fbaf788d in /usr/local/bin/ 
# Mon, 17 Jun 2019 23:19:57 GMT
COPY file:3f52182221aa0be7c7b12ddf051434d36a6c19e6da6da6b973ace390c4e1ce25 in /usr/src/yourls/user/ 
# Mon, 17 Jun 2019 23:19:58 GMT
COPY file:5b7ff05d0c98ad759c4bec0ef8a7ce74cae42e95b42564b55f43b341c2c3e3f5 in /usr/src/yourls/ 
# Mon, 17 Jun 2019 23:19:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 17 Jun 2019 23:20:00 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:081b7d581c1dae49d30a4b9d0fead63d3653fe9ed91f43a20287f8ddbad3797b`  
		Last Modified: Mon, 10 Jun 2019 23:59:41 GMT  
		Size: 21.2 MB (21155842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36cf4f39177cdc0d44e2bba303a27dd9a37e6df3e854c2fdd1191b574bafbaef`  
		Last Modified: Tue, 11 Jun 2019 03:15:21 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d32501d5831013497a7747924b87cfaa0b4ff736fd02852e03987bd57a804b26`  
		Last Modified: Tue, 11 Jun 2019 03:15:37 GMT  
		Size: 57.5 MB (57478383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10249e0ae30e551e86df9e688a1c7f85fd655fc5341e4f43dc544fddef7a7040`  
		Last Modified: Tue, 11 Jun 2019 03:15:16 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7e3bc01c40b3c751783a027add4163682080400c113af850b5485d06dd7f5f6`  
		Last Modified: Tue, 11 Jun 2019 03:16:19 GMT  
		Size: 16.7 MB (16651756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:921850b353140260138cfa136664d849ceeffe7642b7dbe758bb50f7a38d8dc4`  
		Last Modified: Tue, 11 Jun 2019 03:16:14 GMT  
		Size: 478.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcaf071eda49e15350879efdfcaf7fb90fd30192abf02eadad27f6c4fffbd97b`  
		Last Modified: Tue, 11 Jun 2019 03:16:13 GMT  
		Size: 518.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72e51ea67ac541dad4809f00db579afc5bdec312ba4d0c01d791ecac00c29155`  
		Last Modified: Tue, 11 Jun 2019 03:17:52 GMT  
		Size: 12.5 MB (12524450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bd4a0639a5cbe7d72c9b0f63aefcd62865e47d5732a43a2fa75ddcc11425c04`  
		Last Modified: Tue, 11 Jun 2019 03:17:49 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdedccb986dbf030f45b08ad322a43599067f46c2eff1004444aba11bc5e4e4b`  
		Last Modified: Mon, 17 Jun 2019 22:03:12 GMT  
		Size: 14.4 MB (14436913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3c53fd59b7be8e5bb7386fe46a9c779545a84987681d3e84ed9c0fd70bab206`  
		Last Modified: Mon, 17 Jun 2019 22:03:07 GMT  
		Size: 2.2 KB (2224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c445505c0ce66fe0c4ead06ed6e31be2ef4eedb7bf01bf5c2a181a39c4e98e4`  
		Last Modified: Mon, 17 Jun 2019 22:03:07 GMT  
		Size: 261.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0cbaae4b1e12989553195396d0acd8d7ba3c931ded065d6c8dc8dbd72633f1d`  
		Last Modified: Mon, 17 Jun 2019 22:03:07 GMT  
		Size: 903.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:065c46badadef292abe625bf3a8dacf733e24c777711597b2887fecbe04c7b44`  
		Last Modified: Mon, 17 Jun 2019 23:22:09 GMT  
		Size: 269.8 KB (269765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84fe0cf19f0b7e9c7d73b04863ef809ec5b5136cdef66c7f9f17bef4a1c6dae9`  
		Last Modified: Mon, 17 Jun 2019 23:22:09 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:282b0a8ec289500142410d4f2dbdf8fd1a39bd82d0afae582553507a901deb5d`  
		Last Modified: Mon, 17 Jun 2019 23:22:08 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04ca7224ee42cca762034a4bc4c3273b3bd272b8d984287c50d6af92ec022bd7`  
		Last Modified: Mon, 17 Jun 2019 23:22:09 GMT  
		Size: 2.5 MB (2485533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3fd9394162f5ba10517890d51b78a7cc3f232255242d67fb296bb5f9c92e9ab`  
		Last Modified: Mon, 17 Jun 2019 23:22:08 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d43854cae73c8248cb2285bcd404b4e6a1cd5378d07baa7a2a8ba73d0d69e42`  
		Last Modified: Mon, 17 Jun 2019 23:22:08 GMT  
		Size: 1.8 KB (1809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43bed2a1baeaf86d5ebf2ec1265629bb040438094bba59f9d6904e1d1a75cafe`  
		Last Modified: Mon, 17 Jun 2019 23:22:08 GMT  
		Size: 335.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `yourls:1-apache` - linux; arm variant v7

```console
$ docker pull yourls@sha256:51f9e130da9af544248d10c23c4f13a4a992897b0b9675e07dc828403288d1a2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.9 MB (117894154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81c37838bfe4597eb91f3c5eaebea8e67c1ff0214c0e2dc37d2da27becd4ff29`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 11 Jun 2019 00:03:03 GMT
ADD file:4102df5a1a0de014e0753e42aec7c4f521a1adb132934625dc3a60945e20b048 in / 
# Tue, 11 Jun 2019 00:03:04 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 02:06:52 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 11 Jun 2019 02:06:53 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 11 Jun 2019 02:07:26 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 11 Jun 2019 02:07:27 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 11 Jun 2019 02:07:29 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Tue, 11 Jun 2019 02:11:39 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 11 Jun 2019 02:11:39 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 11 Jun 2019 02:11:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Tue, 11 Jun 2019 02:11:58 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 11 Jun 2019 02:12:00 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 11 Jun 2019 02:12:00 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 11 Jun 2019 02:12:01 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Tue, 11 Jun 2019 02:12:01 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 11 Jun 2019 02:12:01 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 11 Jun 2019 02:12:02 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 11 Jun 2019 02:29:24 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Tue, 11 Jun 2019 02:29:25 GMT
ENV PHP_VERSION=7.2.19
# Tue, 11 Jun 2019 02:29:25 GMT
ENV PHP_URL=https://www.php.net/get/php-7.2.19.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.2.19.tar.xz.asc/from/this/mirror
# Tue, 11 Jun 2019 02:29:26 GMT
ENV PHP_SHA256=4ffa2404a88d60e993a9fe69f829ebec3eb1e006de41b6048ce5e91bbeaa9282 PHP_MD5=
# Tue, 11 Jun 2019 02:29:40 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 11 Jun 2019 02:29:40 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Mon, 17 Jun 2019 22:02:32 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 	php --version
# Mon, 17 Jun 2019 22:02:34 GMT
COPY multi:99e4ad617c6193834e78d12470f6dde09f70f4d40463009c5724954902e60676 in /usr/local/bin/ 
# Mon, 17 Jun 2019 22:02:38 GMT
RUN docker-php-ext-enable sodium
# Mon, 17 Jun 2019 22:02:39 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 17 Jun 2019 22:02:39 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Mon, 17 Jun 2019 22:02:40 GMT
WORKDIR /var/www/html
# Mon, 17 Jun 2019 22:02:41 GMT
EXPOSE 80
# Mon, 17 Jun 2019 22:02:42 GMT
CMD ["apache2-foreground"]
# Tue, 18 Jun 2019 00:23:37 GMT
RUN set -ex;     docker-php-ext-install opcache pdo_mysql mysqli
# Tue, 18 Jun 2019 00:23:38 GMT
RUN {         echo 'opcache.memory_consumption=128';         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=4000';         echo 'opcache.revalidate_freq=60';         echo 'opcache.fast_shutdown=1';         echo 'opcache.enable_cli=1';     } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 18 Jun 2019 00:23:40 GMT
RUN a2enmod rewrite expires
# Tue, 18 Jun 2019 00:23:41 GMT
VOLUME [/var/www/html]
# Tue, 18 Jun 2019 00:23:41 GMT
ENV YOURLS_VERSION=1.7.3
# Tue, 18 Jun 2019 00:23:42 GMT
ENV YOURLS_SHA256=301ed5b0bfd63cfaeeafe40de056661302e786542002f479886fcf601bfb9dc4
# Tue, 18 Jun 2019 00:23:45 GMT
RUN set -ex;     curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz";     echo "$YOURLS_SHA256 *yourls.tar.gz" | sha256sum -c -;     tar -xzf yourls.tar.gz -C /usr/src/;     mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls;     rm yourls.tar.gz;     chown -R www-data:www-data /usr/src/yourls
# Tue, 18 Jun 2019 00:23:46 GMT
COPY file:dae29f9c1e1fe04a79abdb2b0965f1a821bebbe26ab1e1e13cae7fe5fbaf788d in /usr/local/bin/ 
# Tue, 18 Jun 2019 00:23:46 GMT
COPY file:3f52182221aa0be7c7b12ddf051434d36a6c19e6da6da6b973ace390c4e1ce25 in /usr/src/yourls/user/ 
# Tue, 18 Jun 2019 00:23:47 GMT
COPY file:5b7ff05d0c98ad759c4bec0ef8a7ce74cae42e95b42564b55f43b341c2c3e3f5 in /usr/src/yourls/ 
# Tue, 18 Jun 2019 00:23:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Jun 2019 00:23:48 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:5155b41fe73a7b2fc8284ed1160e8ad046f2bfd1606e73e4bbe3f54b05890fc9`  
		Last Modified: Tue, 11 Jun 2019 00:09:27 GMT  
		Size: 19.3 MB (19276185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1b6f13d13ac723fe0f8a842912b66a1875a09e8ee07140099dfef6b45fd7369`  
		Last Modified: Tue, 11 Jun 2019 03:26:48 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3803c9e10e4e404d44431f5a836118ef2c76578d1daff839b3c901a5e04dbb63`  
		Last Modified: Tue, 11 Jun 2019 03:27:06 GMT  
		Size: 53.6 MB (53589733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0f70c348724606f939a1ecb29fe74e556819f7cb437ad0e19d3778819d1e454`  
		Last Modified: Tue, 11 Jun 2019 03:26:48 GMT  
		Size: 285.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c234cbcbf42203f76059d7f7f8bf8d7b8645888a96a40fdbbfaed26dbacd7e75`  
		Last Modified: Tue, 11 Jun 2019 03:27:51 GMT  
		Size: 16.2 MB (16159576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78198ebc5464ee3b756ebbacc9c4f564efeaa0c8c1b71315f0af52d94cd33414`  
		Last Modified: Tue, 11 Jun 2019 03:27:46 GMT  
		Size: 467.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c60f63c01e86a9a2851e9f7c56a7ff71b6220207ea0bd8671a0b42952399fcb`  
		Last Modified: Tue, 11 Jun 2019 03:27:45 GMT  
		Size: 513.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d1f43e5d0b65e63a6af911043de4ec2de6775f5e31e6b9fab0c85d4f7562d0b`  
		Last Modified: Tue, 11 Jun 2019 03:29:27 GMT  
		Size: 12.5 MB (12524427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1bc917607c58b0468556d8f6b349248b4c108ad779a8b68bcfd1db41ad043af`  
		Last Modified: Tue, 11 Jun 2019 03:29:23 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92579e51a8e5900bc1335d196dde50e19fdea89a6152309c31bce755ad18611f`  
		Last Modified: Mon, 17 Jun 2019 22:58:43 GMT  
		Size: 13.6 MB (13602968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1c0c4137f3c5f2cc5fef5bd8a7fcb777b720a85efde45df09ae5fe336ce1286`  
		Last Modified: Mon, 17 Jun 2019 22:58:38 GMT  
		Size: 2.2 KB (2228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a54dab3735f8763d0c9d3b392d1abd82d69020253c18f4588a8d79011d1dedf3`  
		Last Modified: Mon, 17 Jun 2019 22:58:38 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd058e48a953c57f6996875121608115f5f31cf1b4ddf0c17604db6b2ddcbb97`  
		Last Modified: Mon, 17 Jun 2019 22:58:38 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a8377e723bb2b9e4c056d2ef1374ff1bc7daf7bb3f7d5ba6e266ddd9ef9d23e`  
		Last Modified: Tue, 18 Jun 2019 00:27:03 GMT  
		Size: 246.4 KB (246437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0f00665989954a7d55f0227266a8623c7f2810a3703b0ee904aa0285b97bc2d`  
		Last Modified: Tue, 18 Jun 2019 00:27:03 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c343a3e52017d2a826a553a0fcd93034ab263c9dcacdd2bc521843c912da5019`  
		Last Modified: Tue, 18 Jun 2019 00:27:02 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d13d6d61d66ff2fad19953b29a7c83a43fdea80411f4fc0374676cfbc05faa40`  
		Last Modified: Tue, 18 Jun 2019 00:27:03 GMT  
		Size: 2.5 MB (2485534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c60a315b5e4b2b40314032683609ee0cc572d641985fdcbd4703b34f440194d7`  
		Last Modified: Tue, 18 Jun 2019 00:27:02 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f0e6dcbc687a0a5979ccd41f677c030bc6daaa35c8e63514145672a30aaeee4`  
		Last Modified: Tue, 18 Jun 2019 00:27:02 GMT  
		Size: 1.8 KB (1807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf15ddc4fde2ce98808a0b7005cdbc51a03d9784fa41a01200b462e693bbcb34`  
		Last Modified: Tue, 18 Jun 2019 00:27:02 GMT  
		Size: 335.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `yourls:1-apache` - linux; arm64 variant v8

```console
$ docker pull yourls@sha256:2d3b21d899f4507ec0ac818969bba6e70308774174cee5c9e8b2ce8187f0ed6e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.2 MB (124185024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c194bdfc46ceee46a38aa2828e33046027dc6061375670b12c3814fe8f6a2dd3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 10 Jun 2019 23:41:42 GMT
ADD file:cd613dd4ee4b2224b6debd778ceb35ef342fc7ea13102853ee42a5abb6f30d76 in / 
# Mon, 10 Jun 2019 23:41:43 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 01:15:40 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 11 Jun 2019 01:15:41 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 11 Jun 2019 01:16:15 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 11 Jun 2019 01:16:17 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 11 Jun 2019 01:16:20 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Tue, 11 Jun 2019 01:20:53 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 11 Jun 2019 01:20:54 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 11 Jun 2019 01:21:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Tue, 11 Jun 2019 01:21:15 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 11 Jun 2019 01:21:19 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 11 Jun 2019 01:21:20 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 11 Jun 2019 01:21:21 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Tue, 11 Jun 2019 01:21:22 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 11 Jun 2019 01:21:22 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 11 Jun 2019 01:21:23 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 11 Jun 2019 01:38:42 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Tue, 11 Jun 2019 01:38:43 GMT
ENV PHP_VERSION=7.2.19
# Tue, 11 Jun 2019 01:38:43 GMT
ENV PHP_URL=https://www.php.net/get/php-7.2.19.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.2.19.tar.xz.asc/from/this/mirror
# Tue, 11 Jun 2019 01:38:44 GMT
ENV PHP_SHA256=4ffa2404a88d60e993a9fe69f829ebec3eb1e006de41b6048ce5e91bbeaa9282 PHP_MD5=
# Tue, 11 Jun 2019 01:38:58 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 11 Jun 2019 01:38:58 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Mon, 17 Jun 2019 21:45:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 	php --version
# Mon, 17 Jun 2019 21:45:50 GMT
COPY multi:99e4ad617c6193834e78d12470f6dde09f70f4d40463009c5724954902e60676 in /usr/local/bin/ 
# Mon, 17 Jun 2019 21:45:51 GMT
RUN docker-php-ext-enable sodium
# Mon, 17 Jun 2019 21:45:51 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 17 Jun 2019 21:45:52 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Mon, 17 Jun 2019 21:45:52 GMT
WORKDIR /var/www/html
# Mon, 17 Jun 2019 21:45:52 GMT
EXPOSE 80
# Mon, 17 Jun 2019 21:45:53 GMT
CMD ["apache2-foreground"]
# Tue, 18 Jun 2019 00:24:00 GMT
RUN set -ex;     docker-php-ext-install opcache pdo_mysql mysqli
# Tue, 18 Jun 2019 00:24:01 GMT
RUN {         echo 'opcache.memory_consumption=128';         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=4000';         echo 'opcache.revalidate_freq=60';         echo 'opcache.fast_shutdown=1';         echo 'opcache.enable_cli=1';     } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 18 Jun 2019 00:24:03 GMT
RUN a2enmod rewrite expires
# Tue, 18 Jun 2019 00:24:03 GMT
VOLUME [/var/www/html]
# Tue, 18 Jun 2019 00:24:04 GMT
ENV YOURLS_VERSION=1.7.3
# Tue, 18 Jun 2019 00:24:05 GMT
ENV YOURLS_SHA256=301ed5b0bfd63cfaeeafe40de056661302e786542002f479886fcf601bfb9dc4
# Tue, 18 Jun 2019 00:24:08 GMT
RUN set -ex;     curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz";     echo "$YOURLS_SHA256 *yourls.tar.gz" | sha256sum -c -;     tar -xzf yourls.tar.gz -C /usr/src/;     mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls;     rm yourls.tar.gz;     chown -R www-data:www-data /usr/src/yourls
# Tue, 18 Jun 2019 00:24:09 GMT
COPY file:dae29f9c1e1fe04a79abdb2b0965f1a821bebbe26ab1e1e13cae7fe5fbaf788d in /usr/local/bin/ 
# Tue, 18 Jun 2019 00:24:09 GMT
COPY file:3f52182221aa0be7c7b12ddf051434d36a6c19e6da6da6b973ace390c4e1ce25 in /usr/src/yourls/user/ 
# Tue, 18 Jun 2019 00:24:10 GMT
COPY file:5b7ff05d0c98ad759c4bec0ef8a7ce74cae42e95b42564b55f43b341c2c3e3f5 in /usr/src/yourls/ 
# Tue, 18 Jun 2019 00:24:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Jun 2019 00:24:11 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:86ef8b977e9b28fc775a14aa2d4243a07dd2d142d19435649d2f478fbbee796b`  
		Last Modified: Mon, 10 Jun 2019 23:45:15 GMT  
		Size: 20.3 MB (20333790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68f0e3b1ea6135c2c40f26763e08032a918260d0124d7e52179154076017302f`  
		Last Modified: Tue, 11 Jun 2019 02:09:35 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36f893bf60be8ec044bd5b67d7e1172eef50628d3573d6062af2f2d7e5e94b09`  
		Last Modified: Tue, 11 Jun 2019 02:09:56 GMT  
		Size: 57.6 MB (57617859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:546af12ff2af210aaf5b0500a17463681bd976790f01b8d6f104d20875bf93b0`  
		Last Modified: Tue, 11 Jun 2019 02:09:34 GMT  
		Size: 288.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:066b236eb4459bf6a0131ad9bcac6e3af309830962dd62859a2a67509e894acf`  
		Last Modified: Tue, 11 Jun 2019 02:10:34 GMT  
		Size: 16.7 MB (16710244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe238434420dca6212327140f93f1deed25bddabde7bd303348d709f4a298c0`  
		Last Modified: Tue, 11 Jun 2019 02:10:28 GMT  
		Size: 477.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c10869dead4201dd3ab6169e2e62d6396352ab4abbd1582cc07936133b982751`  
		Last Modified: Tue, 11 Jun 2019 02:10:28 GMT  
		Size: 515.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27f95e5a206ce6bbe7613ffb7f9638cbceebef8f4e289137108f4c8a19bd5b97`  
		Last Modified: Tue, 11 Jun 2019 02:12:19 GMT  
		Size: 12.5 MB (12524339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eccc83d2ccf8273df2e71c058aa937e66cca30a023f30ffc84403886ff0652e2`  
		Last Modified: Tue, 11 Jun 2019 02:12:15 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ed88598c75f10f670dbad78ef3699f5d1372a0183174839fd0fcd60af4aaaaa`  
		Last Modified: Mon, 17 Jun 2019 22:45:08 GMT  
		Size: 14.2 MB (14241612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a288a45db74e4c9251eb1cb6ecad610d442af5aabe251a711d038a9fb7dea0a`  
		Last Modified: Mon, 17 Jun 2019 22:45:04 GMT  
		Size: 2.2 KB (2227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dea4fd2f90dd84adce8258fffffb2d90adb3ec539603cfc90eeee5bccc02a80`  
		Last Modified: Mon, 17 Jun 2019 22:45:04 GMT  
		Size: 261.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e58bac2b3f98765396a83bd0312fb2a48d4255eefec5e0a054b1baeabb18ffd2`  
		Last Modified: Mon, 17 Jun 2019 22:45:04 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3201abfeb73e576b1c864155ae2209b0261d3283c8ee6e7274771c692b19d499`  
		Last Modified: Tue, 18 Jun 2019 00:27:24 GMT  
		Size: 262.3 KB (262335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e56c2eb18b6752bedc0945cd0d99d6a655cefb0e5c05eddc20bf04e91de85af`  
		Last Modified: Tue, 18 Jun 2019 00:27:24 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd0a5900b8e1bc1a138b77088f52f45daf7c3931b8989d5a4b0b5f7808815d23`  
		Last Modified: Tue, 18 Jun 2019 00:27:23 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96f6786e4df02f2121ee4cff7713a7d946d61d68680027c8c6f9fb67b0fc40cb`  
		Last Modified: Tue, 18 Jun 2019 00:27:23 GMT  
		Size: 2.5 MB (2485534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6903dfe29076954863058ef5949491383933583d84df32b3d5dfac3a694b87e`  
		Last Modified: Tue, 18 Jun 2019 00:27:23 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acd54a1f5a471f8e89c9091f23caebe4c904d3236e6b9ce0d37a70893ef0335a`  
		Last Modified: Tue, 18 Jun 2019 00:27:23 GMT  
		Size: 1.8 KB (1806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05d7d20525ee0b7a79929d6dd4db6f31d54be043729d6bcefd8e7263ae6c3f61`  
		Last Modified: Tue, 18 Jun 2019 00:27:23 GMT  
		Size: 336.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `yourls:1-apache` - linux; 386

```console
$ docker pull yourls@sha256:abdec7b41b678f75f57c0e1f391acf32fba1d34154d5f96883f653a1abf2b2ba
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.2 MB (143208428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91d6dd5db4316a2d58859e895d3305d520e928ee6f3f2487ffe526380b7e9f63`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 10 Jun 2019 23:41:36 GMT
ADD file:a8a0ffd3515eaf371f5ca47de93cd4bfc383ce28f32b9547739ad7403b1bc033 in / 
# Mon, 10 Jun 2019 23:41:36 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 09:13:31 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 11 Jun 2019 09:13:31 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 11 Jun 2019 09:14:05 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 11 Jun 2019 09:14:06 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 11 Jun 2019 09:14:07 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Tue, 11 Jun 2019 09:23:37 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 11 Jun 2019 09:23:37 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 11 Jun 2019 09:23:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Tue, 11 Jun 2019 09:23:55 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 11 Jun 2019 09:23:56 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 11 Jun 2019 09:23:56 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 11 Jun 2019 09:23:56 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Tue, 11 Jun 2019 09:23:56 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 11 Jun 2019 09:23:57 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 11 Jun 2019 09:23:57 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 11 Jun 2019 10:01:00 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Tue, 11 Jun 2019 10:01:00 GMT
ENV PHP_VERSION=7.2.19
# Tue, 11 Jun 2019 10:01:00 GMT
ENV PHP_URL=https://www.php.net/get/php-7.2.19.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.2.19.tar.xz.asc/from/this/mirror
# Tue, 11 Jun 2019 10:01:01 GMT
ENV PHP_SHA256=4ffa2404a88d60e993a9fe69f829ebec3eb1e006de41b6048ce5e91bbeaa9282 PHP_MD5=
# Tue, 11 Jun 2019 10:01:15 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 11 Jun 2019 10:01:16 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Tue, 11 Jun 2019 10:08:18 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 12 Jun 2019 23:53:42 GMT
COPY multi:99e4ad617c6193834e78d12470f6dde09f70f4d40463009c5724954902e60676 in /usr/local/bin/ 
# Wed, 12 Jun 2019 23:53:43 GMT
RUN docker-php-ext-enable sodium
# Wed, 12 Jun 2019 23:53:43 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 12 Jun 2019 23:53:43 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Wed, 12 Jun 2019 23:53:43 GMT
WORKDIR /var/www/html
# Wed, 12 Jun 2019 23:53:43 GMT
EXPOSE 80
# Wed, 12 Jun 2019 23:53:43 GMT
CMD ["apache2-foreground"]
# Thu, 13 Jun 2019 01:34:32 GMT
RUN set -ex;     docker-php-ext-install opcache pdo_mysql mysqli
# Thu, 13 Jun 2019 01:34:33 GMT
RUN {         echo 'opcache.memory_consumption=128';         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=4000';         echo 'opcache.revalidate_freq=60';         echo 'opcache.fast_shutdown=1';         echo 'opcache.enable_cli=1';     } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 13 Jun 2019 01:34:34 GMT
RUN a2enmod rewrite expires
# Thu, 13 Jun 2019 01:34:34 GMT
VOLUME [/var/www/html]
# Thu, 13 Jun 2019 01:34:35 GMT
ENV YOURLS_VERSION=1.7.3
# Thu, 13 Jun 2019 01:34:35 GMT
ENV YOURLS_SHA256=301ed5b0bfd63cfaeeafe40de056661302e786542002f479886fcf601bfb9dc4
# Thu, 13 Jun 2019 01:34:36 GMT
RUN set -ex;     curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz";     echo "$YOURLS_SHA256 *yourls.tar.gz" | sha256sum -c -;     tar -xzf yourls.tar.gz -C /usr/src/;     mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls;     rm yourls.tar.gz;     chown -R www-data:www-data /usr/src/yourls
# Thu, 13 Jun 2019 01:34:37 GMT
COPY file:dae29f9c1e1fe04a79abdb2b0965f1a821bebbe26ab1e1e13cae7fe5fbaf788d in /usr/local/bin/ 
# Thu, 13 Jun 2019 01:34:37 GMT
COPY file:3f52182221aa0be7c7b12ddf051434d36a6c19e6da6da6b973ace390c4e1ce25 in /usr/src/yourls/user/ 
# Thu, 13 Jun 2019 01:34:37 GMT
COPY file:5b7ff05d0c98ad759c4bec0ef8a7ce74cae42e95b42564b55f43b341c2c3e3f5 in /usr/src/yourls/ 
# Thu, 13 Jun 2019 01:34:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Jun 2019 01:34:38 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:7e73483a9fb86ce6ccc0a956b2be574fc156ade2d6b1a61a18c9427de2b19f82`  
		Last Modified: Mon, 10 Jun 2019 23:45:55 GMT  
		Size: 23.1 MB (23120865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a513bbd972d333e230f58f4fb02df3eba7a9b587564e5dacf960385051b963c7`  
		Last Modified: Tue, 11 Jun 2019 12:29:29 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5404367e9ab935acf7d7f661b3e9a4fc2baf299f280474cf1c9a57e94066d05`  
		Last Modified: Tue, 11 Jun 2019 12:30:10 GMT  
		Size: 71.5 MB (71519695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:593fe5cf1352b5d1cd7bb14dffc150faddd01e4153d5d355e709bb5743dae6ff`  
		Last Modified: Tue, 11 Jun 2019 12:29:29 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2ea6bb6a8849ab85250b40244df68a11fa0978fc3b60df267d01b0b345a4b49`  
		Last Modified: Tue, 11 Jun 2019 12:30:46 GMT  
		Size: 17.6 MB (17559142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b6e66081ea57656779ef4f78485c97477348ef75b560940dcb1660c726ae818`  
		Last Modified: Tue, 11 Jun 2019 12:30:34 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da7a8d7ec5c15621dabf5dc6ebc3b7becdbdf6d8abf6b9dcfcf1f33c3e010ac8`  
		Last Modified: Tue, 11 Jun 2019 12:30:34 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b9eb527dcaf13b5688c89cf2d91a6f23586a3ba246af086a00402a0df8368bd`  
		Last Modified: Tue, 11 Jun 2019 12:32:32 GMT  
		Size: 12.5 MB (12525774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c5393b45866a52058da7bd7b5cae1483afde5ed34c93c09f6e0e8d2de74652e`  
		Last Modified: Tue, 11 Jun 2019 12:32:29 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0b373fca4df275cae1c35ea257f03f5d481df7106406e3a249dce193d807b28`  
		Last Modified: Tue, 11 Jun 2019 12:32:35 GMT  
		Size: 15.7 MB (15698211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5edb33b14f49740a2634b968de995604fc70a1331dcb2be935ff41c8539ba974`  
		Last Modified: Wed, 12 Jun 2019 23:58:26 GMT  
		Size: 2.2 KB (2228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55958fa3c4f4475a72aa8edd8dc677d33a7484a42c4a86eb07ddf2eee14ec465`  
		Last Modified: Wed, 12 Jun 2019 23:58:26 GMT  
		Size: 262.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a360d7984f22e749a9fd43d610d4fba5e2c8b77c818634a5fe399787f9dc8282`  
		Last Modified: Wed, 12 Jun 2019 23:58:25 GMT  
		Size: 906.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8cf54602fdc43d53bc68cf87317ebaa424e591fcf34edbd3ec30a55cbe43d14`  
		Last Modified: Thu, 13 Jun 2019 01:37:13 GMT  
		Size: 290.0 KB (290038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c95da8a5d88301cbb12480f4ab72da2d7871c18cf88de6593fb5b21692ce2a44`  
		Last Modified: Thu, 13 Jun 2019 01:37:13 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93050f202c129a608f57ab5b4c8d560c169d6444f7c22735dbbc113e2801209a`  
		Last Modified: Thu, 13 Jun 2019 01:37:12 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbdaa5488abd89845584e009f346a0ce6a927072f7055af1fb144d7d16e3e811`  
		Last Modified: Thu, 13 Jun 2019 01:37:13 GMT  
		Size: 2.5 MB (2485522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af0bdeb85c37c2c8f965702d1a9da206943e93a6c93e8240e7db54766fc6bdb4`  
		Last Modified: Thu, 13 Jun 2019 01:37:12 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51915b084c38e6e51435f14a8712eebd556ceeb7061e27214b7fee630f34f20b`  
		Last Modified: Thu, 13 Jun 2019 01:37:12 GMT  
		Size: 1.8 KB (1806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4805140ccb727ea1eb654ed6464137b2e7ed98a848e2d36e7fd4dc2e70da57c`  
		Last Modified: Thu, 13 Jun 2019 01:37:12 GMT  
		Size: 335.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `yourls:1-apache` - linux; ppc64le

```console
$ docker pull yourls@sha256:35ed7d4a9b458118e3723d41141f5e45ab7baa5633bd177fabdc1f3bf685d635
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.3 MB (132279458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c2c1da071a36b4524293d4f5aeb5231a9a81b7548152379ca5426f6c6e9e9f8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 10 Jun 2019 23:18:56 GMT
ADD file:cbe9750f9a223a6cdc02ae93dd729d2261ce439e1c7be255cd3a688eebfe62ba in / 
# Mon, 10 Jun 2019 23:18:59 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:28:09 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 11 Jun 2019 00:28:11 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 11 Jun 2019 00:30:37 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:30:42 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 11 Jun 2019 00:30:50 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Tue, 11 Jun 2019 00:38:29 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 11 Jun 2019 00:38:33 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 11 Jun 2019 00:39:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Tue, 11 Jun 2019 00:40:06 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 11 Jun 2019 00:40:17 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 11 Jun 2019 00:40:20 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 11 Jun 2019 00:40:24 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Tue, 11 Jun 2019 00:40:27 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 11 Jun 2019 00:40:30 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 11 Jun 2019 00:40:33 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 11 Jun 2019 01:15:14 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Tue, 11 Jun 2019 01:15:17 GMT
ENV PHP_VERSION=7.2.19
# Tue, 11 Jun 2019 01:15:23 GMT
ENV PHP_URL=https://www.php.net/get/php-7.2.19.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.2.19.tar.xz.asc/from/this/mirror
# Tue, 11 Jun 2019 01:15:29 GMT
ENV PHP_SHA256=4ffa2404a88d60e993a9fe69f829ebec3eb1e006de41b6048ce5e91bbeaa9282 PHP_MD5=
# Tue, 11 Jun 2019 01:16:29 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 11 Jun 2019 01:16:31 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Tue, 11 Jun 2019 01:21:54 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Thu, 13 Jun 2019 00:42:22 GMT
COPY multi:99e4ad617c6193834e78d12470f6dde09f70f4d40463009c5724954902e60676 in /usr/local/bin/ 
# Thu, 13 Jun 2019 00:42:26 GMT
RUN docker-php-ext-enable sodium
# Thu, 13 Jun 2019 00:42:28 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 13 Jun 2019 00:42:29 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Thu, 13 Jun 2019 00:42:31 GMT
WORKDIR /var/www/html
# Thu, 13 Jun 2019 00:42:33 GMT
EXPOSE 80
# Thu, 13 Jun 2019 00:42:35 GMT
CMD ["apache2-foreground"]
# Thu, 13 Jun 2019 02:38:35 GMT
RUN set -ex;     docker-php-ext-install opcache pdo_mysql mysqli
# Thu, 13 Jun 2019 02:38:41 GMT
RUN {         echo 'opcache.memory_consumption=128';         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=4000';         echo 'opcache.revalidate_freq=60';         echo 'opcache.fast_shutdown=1';         echo 'opcache.enable_cli=1';     } > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 13 Jun 2019 02:38:48 GMT
RUN a2enmod rewrite expires
# Thu, 13 Jun 2019 02:38:53 GMT
VOLUME [/var/www/html]
# Thu, 13 Jun 2019 02:38:59 GMT
ENV YOURLS_VERSION=1.7.3
# Thu, 13 Jun 2019 02:39:08 GMT
ENV YOURLS_SHA256=301ed5b0bfd63cfaeeafe40de056661302e786542002f479886fcf601bfb9dc4
# Thu, 13 Jun 2019 02:39:20 GMT
RUN set -ex;     curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz";     echo "$YOURLS_SHA256 *yourls.tar.gz" | sha256sum -c -;     tar -xzf yourls.tar.gz -C /usr/src/;     mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls;     rm yourls.tar.gz;     chown -R www-data:www-data /usr/src/yourls
# Thu, 13 Jun 2019 02:39:22 GMT
COPY file:dae29f9c1e1fe04a79abdb2b0965f1a821bebbe26ab1e1e13cae7fe5fbaf788d in /usr/local/bin/ 
# Thu, 13 Jun 2019 02:39:25 GMT
COPY file:3f52182221aa0be7c7b12ddf051434d36a6c19e6da6da6b973ace390c4e1ce25 in /usr/src/yourls/user/ 
# Thu, 13 Jun 2019 02:39:27 GMT
COPY file:5b7ff05d0c98ad759c4bec0ef8a7ce74cae42e95b42564b55f43b341c2c3e3f5 in /usr/src/yourls/ 
# Thu, 13 Jun 2019 02:39:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Jun 2019 02:39:34 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:d41f2b4ffc1e666af1af85c808fc5e2c1f81602da89d9e81911a402a3e1e69b5`  
		Last Modified: Mon, 10 Jun 2019 23:24:17 GMT  
		Size: 22.7 MB (22744910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1b6e5574bd2cd035a3336cc3b8f5b333a20ffbccab045455da0228bab0c1ba5`  
		Last Modified: Tue, 11 Jun 2019 02:03:15 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e927325137c49c14f11fe0043e8b00c0752c407cd1e1dfb5f295b28036ccb9a5`  
		Last Modified: Tue, 11 Jun 2019 02:03:50 GMT  
		Size: 61.8 MB (61833544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cd6161db9f298f2195c7171c084406f44551f48daec89a6ebe6dd51d2a519cb`  
		Last Modified: Tue, 11 Jun 2019 02:03:15 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6157c171d9135c78b2d721c228e7b239dd870978b27cb266a0a3f01e2ed5aa44`  
		Last Modified: Tue, 11 Jun 2019 02:04:54 GMT  
		Size: 17.3 MB (17345895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb4582358bc93d74ded9816dca173336c68db84ca19f5c04d1233eff4f215e95`  
		Last Modified: Tue, 11 Jun 2019 02:04:47 GMT  
		Size: 480.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3896e4bdda263a57b48d56091b357990b044071740846f1b6a3dbf8ca545adac`  
		Last Modified: Tue, 11 Jun 2019 02:04:47 GMT  
		Size: 520.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5f99aa8243cf9b1a29f9d6b1b0b079520ca7199cc10fa383c7a2b6feead7b61`  
		Last Modified: Tue, 11 Jun 2019 02:07:51 GMT  
		Size: 12.5 MB (12525247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:994ca72a0e7c1b34b00f95df23db4cff748ac0c28fc1870915eecf61bdaf8c6f`  
		Last Modified: Tue, 11 Jun 2019 02:07:46 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c906bdc5aabf2ef9fb63d93452886a11f9d63c668f287a558e793a16674a6a6`  
		Last Modified: Tue, 11 Jun 2019 02:07:51 GMT  
		Size: 15.1 MB (15050768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29d005974ddd5785cc1d6ec53c4e748991e9834ae0b37ee26fdddfe7a7576979`  
		Last Modified: Thu, 13 Jun 2019 00:55:27 GMT  
		Size: 2.2 KB (2228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfea985a2691da6b9da4d6f0aee05c05369ea90d8507865cd25aa1db6306bc74`  
		Last Modified: Thu, 13 Jun 2019 00:55:27 GMT  
		Size: 263.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff103768e88cbcf4184bb63cd30487597c184193abd7be2eb08c8a82d3986aca`  
		Last Modified: Thu, 13 Jun 2019 00:55:27 GMT  
		Size: 907.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39b9f021061642c91ac781d5c74b74d7bfc5a7788fac3c452c890b3230014853`  
		Last Modified: Thu, 13 Jun 2019 02:45:19 GMT  
		Size: 284.2 KB (284233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b28cfad0185fc7f6a1d2ee96ae2e296e521a79e46c5e90be4956a8104d77c75`  
		Last Modified: Thu, 13 Jun 2019 02:45:19 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:020cd9341a37809922baac70f1fc9b9508dd7f0f6adbc793baa1ae383f7bb5ef`  
		Last Modified: Thu, 13 Jun 2019 02:45:15 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a7df7d4f5cdd2106866bdc8f83f2a3c68f771c18317385f62589981b52f5cd5`  
		Last Modified: Thu, 13 Jun 2019 02:45:16 GMT  
		Size: 2.5 MB (2485534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a4ecff024880b6a8057c9534d5f7e6761f3e5ee051f341039867a6c7d487143`  
		Last Modified: Thu, 13 Jun 2019 02:45:15 GMT  
		Size: 1.1 KB (1073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f6ef6e660c57cfe213a4310c322737f2c06b4a746e651865dfdc6221eb5ed51`  
		Last Modified: Thu, 13 Jun 2019 02:45:15 GMT  
		Size: 1.8 KB (1806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d03351d5c0d019fdd15303ff31b2ea202d8aeb7895242f65cad0dae08e794ad`  
		Last Modified: Thu, 13 Jun 2019 02:45:15 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
