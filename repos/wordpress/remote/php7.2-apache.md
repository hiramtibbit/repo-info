## `wordpress:php7.2-apache`

```console
$ docker pull wordpress@sha256:e5eb9a240fd4783f065645d9d8a0904f235a229d47994b639ebe5575ee9f8803
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `wordpress:php7.2-apache` - linux; amd64

```console
$ docker pull wordpress@sha256:b1e0cd2a4f4f582e66851078b1075aadf3c79429899732341f87c65a0fb9c6c4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.6 MB (155563449 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1469d25efc35b8bc420aa2f766e2c00a8d30a5a7a8be217c6cba4eef9401d5a5`
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
# Mon, 17 Jun 2019 22:20:33 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 	php --version
# Mon, 17 Jun 2019 22:20:34 GMT
COPY multi:99e4ad617c6193834e78d12470f6dde09f70f4d40463009c5724954902e60676 in /usr/local/bin/ 
# Mon, 17 Jun 2019 22:20:35 GMT
RUN docker-php-ext-enable sodium
# Mon, 17 Jun 2019 22:20:36 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 17 Jun 2019 22:20:36 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Mon, 17 Jun 2019 22:20:36 GMT
WORKDIR /var/www/html
# Mon, 17 Jun 2019 22:20:37 GMT
EXPOSE 80
# Mon, 17 Jun 2019 22:20:37 GMT
CMD ["apache2-foreground"]
# Tue, 18 Jun 2019 02:43:48 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libjpeg-dev 		libmagickwand-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install 		bcmath 		exif 		gd 		mysqli 		opcache 		zip 	; 	pecl install imagick-3.4.4; 	docker-php-ext-enable imagick; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 02:43:49 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 18 Jun 2019 02:43:49 GMT
RUN { 		echo 'error_reporting = 4339'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > /usr/local/etc/php/conf.d/error-logging.ini
# Tue, 18 Jun 2019 02:43:50 GMT
RUN a2enmod rewrite expires
# Tue, 18 Jun 2019 02:43:50 GMT
VOLUME [/var/www/html]
# Wed, 19 Jun 2019 03:53:31 GMT
ENV WORDPRESS_VERSION=5.2.2
# Wed, 19 Jun 2019 03:53:31 GMT
ENV WORDPRESS_SHA1=3605bcbe9ea48d714efa59b0eb2d251657e7d5b0
# Wed, 19 Jun 2019 03:53:34 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Wed, 19 Jun 2019 03:53:34 GMT
COPY file:2413d0c63f9d7b1d114697b18317719a02eadaaa61fc5d0c1edd96c027bc57a4 in /usr/local/bin/ 
# Wed, 19 Jun 2019 03:53:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 19 Jun 2019 03:53:34 GMT
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
	-	`sha256:4dddb1f4f2d92480c01c04a75583eb0001ab7917878622c5e6941fb42b21a31d`  
		Last Modified: Tue, 18 Jun 2019 01:18:06 GMT  
		Size: 15.3 MB (15258971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0650f14609530731d967454d827c8737a8f2b86fee88e262bc9cef6a412a5866`  
		Last Modified: Tue, 18 Jun 2019 01:18:02 GMT  
		Size: 2.2 KB (2227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a83e4a99ef579a162bac45c91ce56b267decd4a4642a165f1ff1378aa0f3dc53`  
		Last Modified: Tue, 18 Jun 2019 01:18:02 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b3f5f75d21dfb1df71d4df43ca350d968b5ea927ba0f0ad518c67c50d44e9ea`  
		Last Modified: Tue, 18 Jun 2019 01:18:02 GMT  
		Size: 906.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2baf78587fbf26b680ecb2dbf3f65221814e4aa0fccf2d5f51d4d3433bcfea84`  
		Last Modified: Tue, 18 Jun 2019 03:04:45 GMT  
		Size: 9.7 MB (9660412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f9f9b2480f526d8988a1598419e9f6a09d7e9ecb1702282b64baf725e791ad6`  
		Last Modified: Tue, 18 Jun 2019 03:04:41 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c897836fa191e489092b978198e282db79b6b0d3ccd3d57bef3b43e5d7932c47`  
		Last Modified: Tue, 18 Jun 2019 03:04:41 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7972cb7225e8bc24e17a833f335cffb1b1e314fa4814a00a5eca04f97c9b48bd`  
		Last Modified: Tue, 18 Jun 2019 03:04:41 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17ce40fadcb784cdb547e8e00356a3c80eb28d4df93b017dd4631063b2a29e07`  
		Last Modified: Wed, 19 Jun 2019 03:55:36 GMT  
		Size: 11.0 MB (11044778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29db874c14837c7599a2868bedb0fc27297ba99b128126a510368a02900e32a4`  
		Last Modified: Wed, 19 Jun 2019 03:55:33 GMT  
		Size: 3.9 KB (3908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:php7.2-apache` - linux; arm variant v5

```console
$ docker pull wordpress@sha256:1e13abd669ef28778e50bf27d5f323e2fcef82ac4240f6b361007e3ab6bdf6ef
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.7 MB (142742267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8aaff2341754e4f0c84db6122adc4659dfc5c1ffd944547962a5646bdb63efbb`
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
# Mon, 17 Jun 2019 23:38:17 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libjpeg-dev 		libmagickwand-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install 		bcmath 		exif 		gd 		mysqli 		opcache 		zip 	; 	pecl install imagick-3.4.4; 	docker-php-ext-enable imagick; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Mon, 17 Jun 2019 23:38:18 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Mon, 17 Jun 2019 23:38:20 GMT
RUN { 		echo 'error_reporting = 4339'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > /usr/local/etc/php/conf.d/error-logging.ini
# Mon, 17 Jun 2019 23:38:22 GMT
RUN a2enmod rewrite expires
# Mon, 17 Jun 2019 23:38:22 GMT
VOLUME [/var/www/html]
# Tue, 18 Jun 2019 22:50:30 GMT
ENV WORDPRESS_VERSION=5.2.2
# Tue, 18 Jun 2019 22:50:31 GMT
ENV WORDPRESS_SHA1=3605bcbe9ea48d714efa59b0eb2d251657e7d5b0
# Tue, 18 Jun 2019 22:50:40 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 18 Jun 2019 22:50:43 GMT
COPY file:2413d0c63f9d7b1d114697b18317719a02eadaaa61fc5d0c1edd96c027bc57a4 in /usr/local/bin/ 
# Tue, 18 Jun 2019 22:50:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Jun 2019 22:50:44 GMT
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
	-	`sha256:9c9971d3dcf4a6fb3da75cbd7c8992241f9999ed9a94365c8e9cfcd51b614c37`  
		Last Modified: Mon, 17 Jun 2019 23:55:02 GMT  
		Size: 9.4 MB (9439692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56f3a33accb4e8241fa48507ed7ae58436333b92f8182b9d857e4c79bd0835fa`  
		Last Modified: Mon, 17 Jun 2019 23:54:58 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45f42ec5622c085131f9492870d2fcdf409eed30c2034ab5a6ae9ca66935a6f7`  
		Last Modified: Mon, 17 Jun 2019 23:54:58 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6e193d6f045247aaf54b9a1fc8a4b70ed725b38ca2078dfbf7278f04179145c`  
		Last Modified: Mon, 17 Jun 2019 23:54:58 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35cc1fe343832d456e1fbf490af3734ccac6eaec4aea0aedd18928e7db1f4b3e`  
		Last Modified: Tue, 18 Jun 2019 22:53:17 GMT  
		Size: 11.0 MB (11044883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7fed84176f4381025d2b40e6a00f1e0fc2cb511e773d0bd4eaedba2a686a62a`  
		Last Modified: Tue, 18 Jun 2019 22:53:08 GMT  
		Size: 3.9 KB (3910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:php7.2-apache` - linux; arm variant v7

```console
$ docker pull wordpress@sha256:d61e7bfafeca02cc18781014e8bad41860b23f26d2823fa8a0839ee2b1546ad2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.9 MB (134905396 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e6c13c6dcf40aa750a8cf181f72a8115bd24af647b737374073647af7401952`
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
# Mon, 17 Jun 2019 23:48:02 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libjpeg-dev 		libmagickwand-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install 		bcmath 		exif 		gd 		mysqli 		opcache 		zip 	; 	pecl install imagick-3.4.4; 	docker-php-ext-enable imagick; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Mon, 17 Jun 2019 23:48:04 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Mon, 17 Jun 2019 23:48:06 GMT
RUN { 		echo 'error_reporting = 4339'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > /usr/local/etc/php/conf.d/error-logging.ini
# Mon, 17 Jun 2019 23:48:08 GMT
RUN a2enmod rewrite expires
# Mon, 17 Jun 2019 23:48:09 GMT
VOLUME [/var/www/html]
# Tue, 18 Jun 2019 23:21:27 GMT
ENV WORDPRESS_VERSION=5.2.2
# Tue, 18 Jun 2019 23:21:28 GMT
ENV WORDPRESS_SHA1=3605bcbe9ea48d714efa59b0eb2d251657e7d5b0
# Tue, 18 Jun 2019 23:21:34 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 18 Jun 2019 23:21:35 GMT
COPY file:2413d0c63f9d7b1d114697b18317719a02eadaaa61fc5d0c1edd96c027bc57a4 in /usr/local/bin/ 
# Tue, 18 Jun 2019 23:21:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Jun 2019 23:21:36 GMT
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
	-	`sha256:edff693d75260b44fec2ee8b28567529824ff23be9efcd125ee935ccd0fe302c`  
		Last Modified: Tue, 18 Jun 2019 00:19:19 GMT  
		Size: 8.7 MB (8697293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:120480c45a6438e7bb112506c5e965b66f0c3ae06fbcf19ab40aef476e86ce5d`  
		Last Modified: Tue, 18 Jun 2019 00:19:16 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:095d9c2f91e0e395784381e6d6ff51efd19e67d0670a8b3b77d1794b98226424`  
		Last Modified: Tue, 18 Jun 2019 00:19:15 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d9c52d54f364dc89478fa3a8ef820debaa21d85a77c34ae06d343d8c4819ae2`  
		Last Modified: Tue, 18 Jun 2019 00:19:15 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0577ceb25f9afa285cf8483de52c8c97a086a505fa388f2fcdcb67619ecbcce0`  
		Last Modified: Tue, 18 Jun 2019 23:25:27 GMT  
		Size: 11.0 MB (11044883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16ea6c06855019b99e15f257b04bef1415d86c989b761471987ee5f2fe220d58`  
		Last Modified: Tue, 18 Jun 2019 23:25:20 GMT  
		Size: 3.9 KB (3908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:php7.2-apache` - linux; arm64 variant v8

```console
$ docker pull wordpress@sha256:d3da63b3af5de76dcde2ffdfd370ac3e9ed233633b5348510ad7760d4bea413d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.1 MB (141136376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:979d46603c5dd3cfc51d029d4b61867234d74f42b9a6b7c16227f80bb7dde3a9`
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
# Tue, 18 Jun 2019 00:30:54 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libjpeg-dev 		libmagickwand-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install 		bcmath 		exif 		gd 		mysqli 		opcache 		zip 	; 	pecl install imagick-3.4.4; 	docker-php-ext-enable imagick; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 00:30:57 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 18 Jun 2019 00:30:59 GMT
RUN { 		echo 'error_reporting = 4339'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > /usr/local/etc/php/conf.d/error-logging.ini
# Tue, 18 Jun 2019 00:31:01 GMT
RUN a2enmod rewrite expires
# Tue, 18 Jun 2019 00:31:02 GMT
VOLUME [/var/www/html]
# Wed, 19 Jun 2019 02:38:39 GMT
ENV WORDPRESS_VERSION=5.2.2
# Wed, 19 Jun 2019 02:38:39 GMT
ENV WORDPRESS_SHA1=3605bcbe9ea48d714efa59b0eb2d251657e7d5b0
# Wed, 19 Jun 2019 02:38:45 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Wed, 19 Jun 2019 02:38:46 GMT
COPY file:2413d0c63f9d7b1d114697b18317719a02eadaaa61fc5d0c1edd96c027bc57a4 in /usr/local/bin/ 
# Wed, 19 Jun 2019 02:38:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 19 Jun 2019 02:38:47 GMT
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
	-	`sha256:d88b3312c4fe4005fcfb8312b2fbba03b6e7b736ee9e95449d36a08e572bf1c2`  
		Last Modified: Tue, 18 Jun 2019 01:01:08 GMT  
		Size: 8.7 MB (8653305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:647510dcfd9029ee6b90370d45902130ab79484fa02f6c9a69186184e9f1732f`  
		Last Modified: Tue, 18 Jun 2019 01:01:04 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:546a8da81eaf1e0a7215b7a3b79754ed956b6e8271bee677b1f0af4490ad8b63`  
		Last Modified: Tue, 18 Jun 2019 01:01:04 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcaa1821be8cec887467a30345a7763b518a5ff6b7f0ecd0a1147558d36f221b`  
		Last Modified: Tue, 18 Jun 2019 01:01:05 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:203eb6ac957755dd4a3fe2ac4f731cbf6aed1c6172cb078f5722f773807a8453`  
		Last Modified: Wed, 19 Jun 2019 02:42:02 GMT  
		Size: 11.0 MB (11044880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc09decbae861222e4671692857173597a4ca98811c4b954e1fe5fe8b7233c94`  
		Last Modified: Wed, 19 Jun 2019 02:41:58 GMT  
		Size: 3.9 KB (3907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:php7.2-apache` - linux; 386

```console
$ docker pull wordpress@sha256:9f6953ea06c549343f2b9ac4e523f1a436273473abb519e4b46ee8acff340948
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.2 MB (161201824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01523c78127ccca4ffeb6351627c628cd3c6bacd2b8185c5152dfbec1e6e76c9`
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
# Mon, 17 Jun 2019 23:10:14 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 	php --version
# Mon, 17 Jun 2019 23:10:15 GMT
COPY multi:99e4ad617c6193834e78d12470f6dde09f70f4d40463009c5724954902e60676 in /usr/local/bin/ 
# Mon, 17 Jun 2019 23:10:17 GMT
RUN docker-php-ext-enable sodium
# Mon, 17 Jun 2019 23:10:17 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 17 Jun 2019 23:10:17 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Mon, 17 Jun 2019 23:10:17 GMT
WORKDIR /var/www/html
# Mon, 17 Jun 2019 23:10:18 GMT
EXPOSE 80
# Mon, 17 Jun 2019 23:10:18 GMT
CMD ["apache2-foreground"]
# Tue, 18 Jun 2019 04:12:47 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libjpeg-dev 		libmagickwand-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install 		bcmath 		exif 		gd 		mysqli 		opcache 		zip 	; 	pecl install imagick-3.4.4; 	docker-php-ext-enable imagick; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 04:12:48 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 18 Jun 2019 04:12:49 GMT
RUN { 		echo 'error_reporting = 4339'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > /usr/local/etc/php/conf.d/error-logging.ini
# Tue, 18 Jun 2019 04:12:50 GMT
RUN a2enmod rewrite expires
# Tue, 18 Jun 2019 04:12:50 GMT
VOLUME [/var/www/html]
# Wed, 19 Jun 2019 03:54:36 GMT
ENV WORDPRESS_VERSION=5.2.2
# Wed, 19 Jun 2019 03:54:36 GMT
ENV WORDPRESS_SHA1=3605bcbe9ea48d714efa59b0eb2d251657e7d5b0
# Wed, 19 Jun 2019 03:54:40 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Wed, 19 Jun 2019 03:54:40 GMT
COPY file:2413d0c63f9d7b1d114697b18317719a02eadaaa61fc5d0c1edd96c027bc57a4 in /usr/local/bin/ 
# Wed, 19 Jun 2019 03:54:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 19 Jun 2019 03:54:41 GMT
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
	-	`sha256:3871058ac0d7d4198d7c14245b3322cd1e4809b259bd1d7efb201488e2d6829d`  
		Last Modified: Tue, 18 Jun 2019 01:19:46 GMT  
		Size: 15.7 MB (15698325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83ae5ad606eb8ff5ca2c7958f442376851605b543c90c18781d837fddd346453`  
		Last Modified: Tue, 18 Jun 2019 01:19:42 GMT  
		Size: 2.2 KB (2226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18af8b501f6bd24cc4369b29100b90eb556ae57e6161e0ea3da8e4942a2792b1`  
		Last Modified: Tue, 18 Jun 2019 01:19:42 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23a495875f4bbb9a901da96cc54aeb76466b9efb5189f0d2e7c39577870580b3`  
		Last Modified: Tue, 18 Jun 2019 01:19:42 GMT  
		Size: 905.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c782a864abcf0d9511c205c00001292b279e7e6f4f048ec0f7bcbcb517c5b77`  
		Last Modified: Tue, 18 Jun 2019 04:30:33 GMT  
		Size: 9.7 MB (9723021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f01bd2fc7d0815bb769200eda2415ee2587ee43717d66fd3e31188ec6da1c29e`  
		Last Modified: Tue, 18 Jun 2019 04:30:29 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30208386e377c9844a9253ea6b56134ad18037be9ba8a157cd2b429fb399052b`  
		Last Modified: Tue, 18 Jun 2019 04:30:29 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd6c62c3bdc323336c0c42247ece51a7a5109ce825ef7e259f73716a3c576c85`  
		Last Modified: Tue, 18 Jun 2019 04:30:28 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d289b8319d7e9887d5bfcd489b2ab398e9f1b1d654bd8994fc08570fda0feb8`  
		Last Modified: Wed, 19 Jun 2019 03:56:39 GMT  
		Size: 11.0 MB (11044784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a48f328c30664b2eed64e1a085eb6fcce4633f07232912d9cfd0937b75fee599`  
		Last Modified: Wed, 19 Jun 2019 03:56:35 GMT  
		Size: 3.9 KB (3909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:php7.2-apache` - linux; ppc64le

```console
$ docker pull wordpress@sha256:738613e9bbf911ea1d57d5148946082979cc6ee5b5b7c9d95aad5551f4227e06
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.9 MB (149896020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6e7b065d6d064c1dfb112f09ebb97bede776b058ad7ae5e4966310abcdf562a`
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
# Mon, 17 Jun 2019 21:40:51 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 	php --version
# Mon, 17 Jun 2019 21:40:52 GMT
COPY multi:99e4ad617c6193834e78d12470f6dde09f70f4d40463009c5724954902e60676 in /usr/local/bin/ 
# Mon, 17 Jun 2019 21:40:59 GMT
RUN docker-php-ext-enable sodium
# Mon, 17 Jun 2019 21:41:01 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 17 Jun 2019 21:41:03 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Mon, 17 Jun 2019 21:41:05 GMT
WORKDIR /var/www/html
# Mon, 17 Jun 2019 21:41:07 GMT
EXPOSE 80
# Mon, 17 Jun 2019 21:41:10 GMT
CMD ["apache2-foreground"]
# Tue, 18 Jun 2019 03:46:54 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libjpeg-dev 		libmagickwand-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install 		bcmath 		exif 		gd 		mysqli 		opcache 		zip 	; 	pecl install imagick-3.4.4; 	docker-php-ext-enable imagick; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 03:47:00 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 18 Jun 2019 03:47:05 GMT
RUN { 		echo 'error_reporting = 4339'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > /usr/local/etc/php/conf.d/error-logging.ini
# Tue, 18 Jun 2019 03:47:09 GMT
RUN a2enmod rewrite expires
# Tue, 18 Jun 2019 03:47:11 GMT
VOLUME [/var/www/html]
# Wed, 19 Jun 2019 01:03:24 GMT
ENV WORDPRESS_VERSION=5.2.2
# Wed, 19 Jun 2019 01:03:25 GMT
ENV WORDPRESS_SHA1=3605bcbe9ea48d714efa59b0eb2d251657e7d5b0
# Wed, 19 Jun 2019 01:03:37 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Wed, 19 Jun 2019 01:03:39 GMT
COPY file:2413d0c63f9d7b1d114697b18317719a02eadaaa61fc5d0c1edd96c027bc57a4 in /usr/local/bin/ 
# Wed, 19 Jun 2019 01:03:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 19 Jun 2019 01:03:44 GMT
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
	-	`sha256:5fddf7f1e999d1e20f552bb97836dee3b2473e5444276be77ed8d1697edfe956`  
		Last Modified: Mon, 17 Jun 2019 23:04:05 GMT  
		Size: 15.1 MB (15050312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b046a37a639fb59312d4ea4c8ef799fe273e85c2df99b3dce94744f23da13a3e`  
		Last Modified: Mon, 17 Jun 2019 23:04:00 GMT  
		Size: 2.2 KB (2226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d55d4ae46b9cc232cacfa7ecf12569fe21afd099bb13da1579944cec8df72b1`  
		Last Modified: Mon, 17 Jun 2019 23:04:00 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e46ccfca8dad8efd00e552927190765baaf7fae9d3f220dea10edd7ea66b5b3c`  
		Last Modified: Mon, 17 Jun 2019 23:04:00 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47ccc8d467b7e48b703e00491f42fda66533414556ef38bf32f94997eee6aa5e`  
		Last Modified: Tue, 18 Jun 2019 04:35:57 GMT  
		Size: 9.3 MB (9340908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c60ead788778d11b2d6fbd61d0ea4cf43218a76aa812fcb3cdc27c1bdd639b5`  
		Last Modified: Tue, 18 Jun 2019 04:35:51 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be6a08558b6de5640dc638fe8ae12fdd18a035af4b4e165621a7ffa7ee5365d4`  
		Last Modified: Tue, 18 Jun 2019 04:35:51 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7b48b97f528db9b502854aa946051cbc6c10f5d96654974fca87951bb2c47d1`  
		Last Modified: Tue, 18 Jun 2019 04:35:51 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f57fa9e4c0c1ecdcd31e4a9bb3488031c09061a8b4bec3170f1ac89bb55bcd2`  
		Last Modified: Wed, 19 Jun 2019 01:11:28 GMT  
		Size: 11.0 MB (11044864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a7208d7fe5f535ea6033d4b1a24371629ad4e5a2759c7595c1742b731e92aa`  
		Last Modified: Wed, 19 Jun 2019 01:11:25 GMT  
		Size: 3.9 KB (3902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
