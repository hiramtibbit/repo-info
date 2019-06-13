## `postfixadmin:3-apache`

```console
$ docker pull postfixadmin@sha256:935e149f04c3a7f14ab98fdd1b04929a7c61ddcd23de6a63455e5dc240d6a538
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `postfixadmin:3-apache` - linux; amd64

```console
$ docker pull postfixadmin@sha256:6f3c0d24c4dc601ed6ef18935251b812e28c414f85e8c93aa019e29a215fd8f0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.9 MB (136938415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7eebf52ab742fa014f98a441ca522d3727245c91153f1b7a9b62333a18956af7`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint.sh"]`
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
# Tue, 11 Jun 2019 01:46:38 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Tue, 11 Jun 2019 01:46:38 GMT
ENV PHP_VERSION=7.3.6
# Tue, 11 Jun 2019 01:46:38 GMT
ENV PHP_URL=https://www.php.net/get/php-7.3.6.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.3.6.tar.xz.asc/from/this/mirror
# Tue, 11 Jun 2019 01:46:39 GMT
ENV PHP_SHA256=fefc8967daa30ebc375b2ab2857f97da94ca81921b722ddac86b29e15c54a164 PHP_MD5=
# Tue, 11 Jun 2019 01:46:52 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 11 Jun 2019 01:46:52 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Tue, 11 Jun 2019 01:54:16 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Thu, 13 Jun 2019 00:20:03 GMT
COPY multi:99e4ad617c6193834e78d12470f6dde09f70f4d40463009c5724954902e60676 in /usr/local/bin/ 
# Thu, 13 Jun 2019 00:20:04 GMT
RUN docker-php-ext-enable sodium
# Thu, 13 Jun 2019 00:20:04 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 13 Jun 2019 00:20:04 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Thu, 13 Jun 2019 00:20:05 GMT
WORKDIR /var/www/html
# Thu, 13 Jun 2019 00:20:05 GMT
EXPOSE 80
# Thu, 13 Jun 2019 00:20:05 GMT
CMD ["apache2-foreground"]
# Thu, 13 Jun 2019 00:54:05 GMT
LABEL maintainer=David Goodwin <david@codepoets.co.uk> (@DavidGoodwin)
# Thu, 13 Jun 2019 00:55:02 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 	libpq-dev 	libsqlite3-dev 	; 		docker-php-ext-install 		mysqli 		pdo_mysql 		pdo_pgsql 		pdo_sqlite 		pgsql 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 		ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 			apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Thu, 13 Jun 2019 00:55:02 GMT
ARG POSTFIXADMIN_VERSION=3.2.2
# Thu, 13 Jun 2019 00:55:02 GMT
ARG POSTFIXADMIN_SHA512=6c84cb215e69c52c26db0651e5d0d9d8bcb0a63b00d3c197f10fa1f0442a1fde44bb514fb476a1e68a21741d603febac67282961d01270e5969ee13d145121ee
# Thu, 13 Jun 2019 00:55:02 GMT
ENV POSTFIXADMIN_VERSION=3.2.2
# Thu, 13 Jun 2019 00:55:02 GMT
ENV POSTFIXADMIN_SHA512=6c84cb215e69c52c26db0651e5d0d9d8bcb0a63b00d3c197f10fa1f0442a1fde44bb514fb476a1e68a21741d603febac67282961d01270e5969ee13d145121ee
# Thu, 13 Jun 2019 00:55:02 GMT
ENV APACHE_DOCUMENT_ROOT=/var/www/html/public
# Thu, 13 Jun 2019 00:55:03 GMT
RUN set -eu; sed -ri -e 's!/var/www/html!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/sites-available/*.conf; 	sed -ri -e 's!/var/www/!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/apache2.conf /etc/apache2/conf-available/*.conf
# Thu, 13 Jun 2019 00:55:05 GMT
RUN set -eu; 	curl -fsSL -o postfixadmin.tar.gz "https://github.com/postfixadmin/postfixadmin/archive/postfixadmin-${POSTFIXADMIN_VERSION}.tar.gz"; 	echo "$POSTFIXADMIN_SHA512 *postfixadmin.tar.gz" | sha512sum -c -; 	mkdir /usr/src/postfixadmin; 	tar -xf postfixadmin.tar.gz -C /usr/src/postfixadmin --strip-components=1; 	rm postfixadmin.tar.gz; 	mkdir -p /usr/src/postfixadmin/templates_c; 	chown -R www-data:www-data /usr/src/postfixadmin
# Thu, 13 Jun 2019 00:55:05 GMT
COPY file:83be1dbd46cfa4c9ff6241f21a00fcd952c07b15bab1c6cf82fac6bfbae210c8 in /usr/local/bin/ 
# Thu, 13 Jun 2019 00:55:05 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
# Thu, 13 Jun 2019 00:55:05 GMT
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
	-	`sha256:579369902d6041ec351fac29fa33103b275548ef6f320b37983c158b67bc0576`  
		Last Modified: Tue, 11 Jun 2019 04:42:25 GMT  
		Size: 12.3 MB (12337766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:656e6921784a35d4e0ebcfb6612150902dfb76b81b0e5ade25a939079aa95dd1`  
		Last Modified: Tue, 11 Jun 2019 04:42:23 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c2bd38ba71fccfd23741a8af6e97c7cf9010a3321c7e93f51f6089769cac15d`  
		Last Modified: Tue, 11 Jun 2019 04:42:29 GMT  
		Size: 15.6 MB (15578922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25141886a9f8c8796dced21e337a6b3acc7594750ae7eaaf40bb504ef1917e10`  
		Last Modified: Thu, 13 Jun 2019 00:24:33 GMT  
		Size: 2.2 KB (2225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3236a2770c46925443511ac4aa5a67ef8f077205e06460e342fb9a265bbded3`  
		Last Modified: Thu, 13 Jun 2019 00:24:33 GMT  
		Size: 263.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:808248a4bc3784c2235fb123116b4b34db9185b10ae98b7da9dada180a70791e`  
		Last Modified: Thu, 13 Jun 2019 00:24:33 GMT  
		Size: 905.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57cb53ed2dd8ae3b17c3325a67ef5a916961ea5f7612dfcfc7adbc57e31ce36c`  
		Last Modified: Thu, 13 Jun 2019 00:57:25 GMT  
		Size: 610.3 KB (610335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84d2ce707156af5605083508c721618bcd88104fd914b633323e6c53ebd26af7`  
		Last Modified: Thu, 13 Jun 2019 00:57:25 GMT  
		Size: 8.2 KB (8225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11d70bdd720723361edb3626f7a471fd47a32740486f3ab407389f1393c4eb3a`  
		Last Modified: Thu, 13 Jun 2019 00:57:26 GMT  
		Size: 1.3 MB (1333887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a5d7f92601463347ea3c5ff3fc360e23589eda92263f3d655c38e87c462168e`  
		Last Modified: Thu, 13 Jun 2019 00:57:25 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postfixadmin:3-apache` - linux; arm variant v5

```console
$ docker pull postfixadmin@sha256:9207aba788c488d3df00c5061b03301e10f8f211aa4a45253711a6eef28a934d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.3 MB (124311296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df0cd0d4596479bab4bce3b1ef0330317d63f241ed4bcfbe1cf9e06562eb873d`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint.sh"]`
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
# Tue, 11 Jun 2019 01:55:38 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Tue, 11 Jun 2019 01:55:38 GMT
ENV PHP_VERSION=7.3.6
# Tue, 11 Jun 2019 01:55:39 GMT
ENV PHP_URL=https://www.php.net/get/php-7.3.6.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.3.6.tar.xz.asc/from/this/mirror
# Tue, 11 Jun 2019 01:55:40 GMT
ENV PHP_SHA256=fefc8967daa30ebc375b2ab2857f97da94ca81921b722ddac86b29e15c54a164 PHP_MD5=
# Tue, 11 Jun 2019 01:55:58 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 11 Jun 2019 01:55:59 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Tue, 11 Jun 2019 01:59:42 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Thu, 13 Jun 2019 02:00:27 GMT
COPY multi:99e4ad617c6193834e78d12470f6dde09f70f4d40463009c5724954902e60676 in /usr/local/bin/ 
# Thu, 13 Jun 2019 02:00:30 GMT
RUN docker-php-ext-enable sodium
# Thu, 13 Jun 2019 02:00:31 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 13 Jun 2019 02:00:31 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Thu, 13 Jun 2019 02:00:32 GMT
WORKDIR /var/www/html
# Thu, 13 Jun 2019 02:00:33 GMT
EXPOSE 80
# Thu, 13 Jun 2019 02:00:33 GMT
CMD ["apache2-foreground"]
# Thu, 13 Jun 2019 03:02:57 GMT
LABEL maintainer=David Goodwin <david@codepoets.co.uk> (@DavidGoodwin)
# Thu, 13 Jun 2019 03:04:32 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 	libpq-dev 	libsqlite3-dev 	; 		docker-php-ext-install 		mysqli 		pdo_mysql 		pdo_pgsql 		pdo_sqlite 		pgsql 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 		ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 			apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Thu, 13 Jun 2019 03:04:33 GMT
ARG POSTFIXADMIN_VERSION=3.2.2
# Thu, 13 Jun 2019 03:04:33 GMT
ARG POSTFIXADMIN_SHA512=6c84cb215e69c52c26db0651e5d0d9d8bcb0a63b00d3c197f10fa1f0442a1fde44bb514fb476a1e68a21741d603febac67282961d01270e5969ee13d145121ee
# Thu, 13 Jun 2019 03:04:34 GMT
ENV POSTFIXADMIN_VERSION=3.2.2
# Thu, 13 Jun 2019 03:04:35 GMT
ENV POSTFIXADMIN_SHA512=6c84cb215e69c52c26db0651e5d0d9d8bcb0a63b00d3c197f10fa1f0442a1fde44bb514fb476a1e68a21741d603febac67282961d01270e5969ee13d145121ee
# Thu, 13 Jun 2019 03:04:35 GMT
ENV APACHE_DOCUMENT_ROOT=/var/www/html/public
# Thu, 13 Jun 2019 03:04:37 GMT
RUN set -eu; sed -ri -e 's!/var/www/html!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/sites-available/*.conf; 	sed -ri -e 's!/var/www/!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/apache2.conf /etc/apache2/conf-available/*.conf
# Thu, 13 Jun 2019 03:04:40 GMT
RUN set -eu; 	curl -fsSL -o postfixadmin.tar.gz "https://github.com/postfixadmin/postfixadmin/archive/postfixadmin-${POSTFIXADMIN_VERSION}.tar.gz"; 	echo "$POSTFIXADMIN_SHA512 *postfixadmin.tar.gz" | sha512sum -c -; 	mkdir /usr/src/postfixadmin; 	tar -xf postfixadmin.tar.gz -C /usr/src/postfixadmin --strip-components=1; 	rm postfixadmin.tar.gz; 	mkdir -p /usr/src/postfixadmin/templates_c; 	chown -R www-data:www-data /usr/src/postfixadmin
# Thu, 13 Jun 2019 03:04:41 GMT
COPY file:83be1dbd46cfa4c9ff6241f21a00fcd952c07b15bab1c6cf82fac6bfbae210c8 in /usr/local/bin/ 
# Thu, 13 Jun 2019 03:04:41 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
# Thu, 13 Jun 2019 03:04:42 GMT
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
	-	`sha256:aa31a91dec39e9efbe54d3ad4dc2ff3fd670c228984e0f4c957b1be4aa1ee2d3`  
		Last Modified: Tue, 11 Jun 2019 03:16:15 GMT  
		Size: 12.3 MB (12335357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24bb61d3764ff4fc1edf6e2ba7f1a14b2f79ea5809f69a6e63aae256ddca96c8`  
		Last Modified: Tue, 11 Jun 2019 03:16:12 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65326ce0d1cbbb7e67cb29e786399c0313dc4850f069f79ebbccb09d69b85344`  
		Last Modified: Tue, 11 Jun 2019 03:16:18 GMT  
		Size: 14.8 MB (14755209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fecfb40a2d9768ff6105ffed309737dd0ec0dd33f4722f9c90178deaea704c21`  
		Last Modified: Thu, 13 Jun 2019 02:04:45 GMT  
		Size: 2.2 KB (2229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b96891d9cdd210b9ff18389a5950b6978ade0f8d2c8ec2f8f3ba709c51ad846`  
		Last Modified: Thu, 13 Jun 2019 02:04:45 GMT  
		Size: 262.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f12c188b41422cf4e69bedcccc0eea708102a31e37f7a38c1711a0b73928be3`  
		Last Modified: Thu, 13 Jun 2019 02:04:45 GMT  
		Size: 906.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c2bb7dcf2493a3dfce53cf3ee82d6aa0e45656d27ff008aef21eca439dc5ae2`  
		Last Modified: Thu, 13 Jun 2019 03:07:08 GMT  
		Size: 585.9 KB (585908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a498ebbd16e3f781ea69f1e4dfc70ad158623c9852f41ef0b571ab3a5d12ba6`  
		Last Modified: Thu, 13 Jun 2019 03:07:08 GMT  
		Size: 8.2 KB (8223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e13bdfebe5ac60116bfe6c54e769bc3f5af5702bb4bb2af07fd3b48a23775299`  
		Last Modified: Thu, 13 Jun 2019 03:07:08 GMT  
		Size: 1.3 MB (1333922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:449dc3aa63bf9eb87fbeda694348f0ee739fe1f9be16b86e0714b662f895e272`  
		Last Modified: Thu, 13 Jun 2019 03:07:08 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postfixadmin:3-apache` - linux; arm variant v7

```console
$ docker pull postfixadmin@sha256:104df5badf61aedfb5150ae55c378a1ba53494afb47add0af06e6f55c1b4cd5c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.2 MB (117171758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:155bb53db1e7d1573a8e88869168f1801fbc4a75cd5e97c4b365085205e21767`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint.sh"]`
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
# Tue, 11 Jun 2019 02:12:02 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Tue, 11 Jun 2019 02:12:03 GMT
ENV PHP_VERSION=7.3.6
# Tue, 11 Jun 2019 02:12:03 GMT
ENV PHP_URL=https://www.php.net/get/php-7.3.6.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.3.6.tar.xz.asc/from/this/mirror
# Tue, 11 Jun 2019 02:12:04 GMT
ENV PHP_SHA256=fefc8967daa30ebc375b2ab2857f97da94ca81921b722ddac86b29e15c54a164 PHP_MD5=
# Tue, 11 Jun 2019 02:12:20 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 11 Jun 2019 02:12:21 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Tue, 11 Jun 2019 02:15:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 11 Jun 2019 02:15:25 GMT
COPY multi:0002d7d5b06fb24f987aa4b027705dc71f81957419a02be5b9014431514c25b5 in /usr/local/bin/ 
# Tue, 11 Jun 2019 02:15:27 GMT
RUN docker-php-ext-enable sodium
# Tue, 11 Jun 2019 02:15:27 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 11 Jun 2019 02:15:28 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Tue, 11 Jun 2019 02:15:28 GMT
WORKDIR /var/www/html
# Tue, 11 Jun 2019 02:15:29 GMT
EXPOSE 80
# Tue, 11 Jun 2019 02:15:29 GMT
CMD ["apache2-foreground"]
# Thu, 13 Jun 2019 01:15:09 GMT
LABEL maintainer=David Goodwin <david@codepoets.co.uk> (@DavidGoodwin)
# Thu, 13 Jun 2019 01:16:32 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 	libpq-dev 	libsqlite3-dev 	; 		docker-php-ext-install 		mysqli 		pdo_mysql 		pdo_pgsql 		pdo_sqlite 		pgsql 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 		ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 			apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Thu, 13 Jun 2019 01:16:33 GMT
ARG POSTFIXADMIN_VERSION=3.2.2
# Thu, 13 Jun 2019 01:16:34 GMT
ARG POSTFIXADMIN_SHA512=6c84cb215e69c52c26db0651e5d0d9d8bcb0a63b00d3c197f10fa1f0442a1fde44bb514fb476a1e68a21741d603febac67282961d01270e5969ee13d145121ee
# Thu, 13 Jun 2019 01:16:35 GMT
ENV POSTFIXADMIN_VERSION=3.2.2
# Thu, 13 Jun 2019 01:16:36 GMT
ENV POSTFIXADMIN_SHA512=6c84cb215e69c52c26db0651e5d0d9d8bcb0a63b00d3c197f10fa1f0442a1fde44bb514fb476a1e68a21741d603febac67282961d01270e5969ee13d145121ee
# Thu, 13 Jun 2019 01:16:37 GMT
ENV APACHE_DOCUMENT_ROOT=/var/www/html/public
# Thu, 13 Jun 2019 01:16:40 GMT
RUN set -eu; sed -ri -e 's!/var/www/html!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/sites-available/*.conf; 	sed -ri -e 's!/var/www/!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/apache2.conf /etc/apache2/conf-available/*.conf
# Thu, 13 Jun 2019 01:16:45 GMT
RUN set -eu; 	curl -fsSL -o postfixadmin.tar.gz "https://github.com/postfixadmin/postfixadmin/archive/postfixadmin-${POSTFIXADMIN_VERSION}.tar.gz"; 	echo "$POSTFIXADMIN_SHA512 *postfixadmin.tar.gz" | sha512sum -c -; 	mkdir /usr/src/postfixadmin; 	tar -xf postfixadmin.tar.gz -C /usr/src/postfixadmin --strip-components=1; 	rm postfixadmin.tar.gz; 	mkdir -p /usr/src/postfixadmin/templates_c; 	chown -R www-data:www-data /usr/src/postfixadmin
# Thu, 13 Jun 2019 01:16:46 GMT
COPY file:83be1dbd46cfa4c9ff6241f21a00fcd952c07b15bab1c6cf82fac6bfbae210c8 in /usr/local/bin/ 
# Thu, 13 Jun 2019 01:16:48 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
# Thu, 13 Jun 2019 01:16:49 GMT
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
	-	`sha256:9e90b667a0552950d697d4435eafd55d975bf77ada81ac4eefdc667d15381674`  
		Last Modified: Tue, 11 Jun 2019 03:27:47 GMT  
		Size: 12.3 MB (12335356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193c01bc13c6ee36636c52c0695bd5c3351f5e370528f6f43c9ff4788a420ff0`  
		Last Modified: Tue, 11 Jun 2019 03:27:44 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4523d7276ba7d3511d1828cb4412da5c8453c7898d1a6454d2ac856f43a59a3`  
		Last Modified: Tue, 11 Jun 2019 03:27:49 GMT  
		Size: 13.9 MB (13892251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eed09a28d26d8fb73717a5d554660880077723d0702aefdf2931f99f4dc6d36`  
		Last Modified: Tue, 11 Jun 2019 03:27:44 GMT  
		Size: 2.2 KB (2203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2161c62888921fcaf0a3c901cb4cc44b8c3685731a77f0ad5b3280b6e4c38995`  
		Last Modified: Tue, 11 Jun 2019 03:27:44 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b61b5df65262f2c03bea57faff64cfe9c8a13c07bb2b7f9bd13e83b1b9a7532`  
		Last Modified: Tue, 11 Jun 2019 03:27:44 GMT  
		Size: 905.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8056294be2c10499dcf821132fe25ec70a373b38c44721c08968af181c513f1`  
		Last Modified: Thu, 13 Jun 2019 01:19:03 GMT  
		Size: 569.9 KB (569861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfeb483bb4aafc14d60cde71354236d0fd4b7cc44400d14811ed6e3847bee858`  
		Last Modified: Thu, 13 Jun 2019 01:19:04 GMT  
		Size: 8.2 KB (8225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70ad5b1e27ea7561e8ff0fadc97e7986a3584ebf66b624cc2acc32c2c5df045a`  
		Last Modified: Thu, 13 Jun 2019 01:19:04 GMT  
		Size: 1.3 MB (1333922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7455ef31ee9f1c8aa436f38efc7133ab2b56821417976c19dedfe30c01cd5ca`  
		Last Modified: Thu, 13 Jun 2019 01:19:04 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postfixadmin:3-apache` - linux; arm64 variant v8

```console
$ docker pull postfixadmin@sha256:75bac6dd6a82f0a1dbb00784ec93031de950b8d855d3d418fa5058c69cca7714
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.4 MB (123428558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18818cf5d3031e50e8c29dfad5906567f22958ca1ad29d6c0703d3334335f988`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 08 May 2019 08:49:02 GMT
ADD file:fadb1563a7cd043d96e76895bb1bb3920f9a9262206eb9bcd4ef4b5aec8d9b35 in / 
# Wed, 08 May 2019 08:49:03 GMT
CMD ["bash"]
# Wed, 08 May 2019 13:21:24 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 08 May 2019 13:21:25 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 08 May 2019 13:22:37 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 08 May 2019 13:22:38 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 08 May 2019 13:22:40 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 08 May 2019 13:33:17 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 08 May 2019 13:33:18 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 08 May 2019 13:33:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Wed, 08 May 2019 13:33:58 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 08 May 2019 13:34:00 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 08 May 2019 13:34:01 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 08 May 2019 13:34:02 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 08 May 2019 13:34:02 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 13:34:04 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 13:34:04 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 08 May 2019 13:34:05 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Wed, 08 May 2019 13:34:06 GMT
ENV PHP_VERSION=7.3.5
# Wed, 08 May 2019 13:34:06 GMT
ENV PHP_URL=https://www.php.net/get/php-7.3.5.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.3.5.tar.xz.asc/from/this/mirror
# Wed, 08 May 2019 13:34:07 GMT
ENV PHP_SHA256=e1011838a46fd4a195c8453b333916622d7ff5bce4aca2d9d99afac142db2472 PHP_MD5=
# Wed, 08 May 2019 13:34:40 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 08 May 2019 13:34:41 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Wed, 08 May 2019 13:41:52 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 08 May 2019 13:41:54 GMT
COPY multi:0002d7d5b06fb24f987aa4b027705dc71f81957419a02be5b9014431514c25b5 in /usr/local/bin/ 
# Wed, 08 May 2019 13:41:58 GMT
RUN docker-php-ext-enable sodium
# Wed, 08 May 2019 13:42:00 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 08 May 2019 13:42:00 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Wed, 08 May 2019 13:42:01 GMT
WORKDIR /var/www/html
# Wed, 08 May 2019 13:42:03 GMT
EXPOSE 80
# Wed, 08 May 2019 13:42:04 GMT
CMD ["apache2-foreground"]
# Thu, 09 May 2019 04:53:34 GMT
LABEL maintainer=David Goodwin <david@codepoets.co.uk> (@DavidGoodwin)
# Thu, 09 May 2019 04:56:11 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 	libpq-dev 	libsqlite3-dev 	; 		docker-php-ext-install 		mysqli 		pdo_mysql 		pdo_pgsql 		pdo_sqlite 		pgsql 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 		ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 			apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 04:56:12 GMT
ARG POSTFIXADMIN_VERSION=3.2.2
# Thu, 09 May 2019 04:56:13 GMT
ARG POSTFIXADMIN_SHA512=6c84cb215e69c52c26db0651e5d0d9d8bcb0a63b00d3c197f10fa1f0442a1fde44bb514fb476a1e68a21741d603febac67282961d01270e5969ee13d145121ee
# Thu, 09 May 2019 04:56:15 GMT
ENV POSTFIXADMIN_VERSION=3.2.2
# Thu, 09 May 2019 04:56:16 GMT
ENV POSTFIXADMIN_SHA512=6c84cb215e69c52c26db0651e5d0d9d8bcb0a63b00d3c197f10fa1f0442a1fde44bb514fb476a1e68a21741d603febac67282961d01270e5969ee13d145121ee
# Thu, 09 May 2019 04:56:17 GMT
ENV APACHE_DOCUMENT_ROOT=/var/www/html/public
# Thu, 09 May 2019 04:56:21 GMT
RUN set -eu; sed -ri -e 's!/var/www/html!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/sites-available/*.conf; 	sed -ri -e 's!/var/www/!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/apache2.conf /etc/apache2/conf-available/*.conf
# Thu, 09 May 2019 04:56:27 GMT
RUN set -eu; 	curl -fsSL -o postfixadmin.tar.gz "https://github.com/postfixadmin/postfixadmin/archive/postfixadmin-${POSTFIXADMIN_VERSION}.tar.gz"; 	echo "$POSTFIXADMIN_SHA512 *postfixadmin.tar.gz" | sha512sum -c -; 	mkdir /usr/src/postfixadmin; 	tar -xf postfixadmin.tar.gz -C /usr/src/postfixadmin --strip-components=1; 	rm postfixadmin.tar.gz; 	mkdir -p /usr/src/postfixadmin/templates_c; 	chown -R www-data:www-data /usr/src/postfixadmin
# Thu, 09 May 2019 04:56:29 GMT
COPY file:83be1dbd46cfa4c9ff6241f21a00fcd952c07b15bab1c6cf82fac6bfbae210c8 in /usr/local/bin/ 
# Thu, 09 May 2019 04:56:30 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
# Thu, 09 May 2019 04:56:31 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:29b80961214d7f0c89081fe8134e6e8e14ccfa1afe001357539f59930ff9e3ef`  
		Last Modified: Wed, 08 May 2019 08:55:12 GMT  
		Size: 20.3 MB (20333815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c464e0aa7adeb5e55d7df8b120051a7bdd336fb0faab135c04df5e3e887ed3fb`  
		Last Modified: Wed, 08 May 2019 15:32:00 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cad4bc5a0a54ebdbf76a7737fc8d1e553158b46de730f70187e33551dbc5d85b`  
		Last Modified: Wed, 08 May 2019 15:32:26 GMT  
		Size: 57.6 MB (57605710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:419e6ba096d5dfce8601eda2dea8e77959dff47ce21f4817d2b1a0ee51c731ed`  
		Last Modified: Wed, 08 May 2019 15:32:00 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b15158cb4e16834f38a237f730a690efc20a4a9694170cc0bcdcaa441e5cb52f`  
		Last Modified: Wed, 08 May 2019 15:33:17 GMT  
		Size: 16.7 MB (16708400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c7a21124e14ff0f63742e18386d6c0999dac9080acf155aa7927ac6206e97fd`  
		Last Modified: Wed, 08 May 2019 15:33:09 GMT  
		Size: 437.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22f5a7958080a9dfd06dee20429a83489c6753921ab2b5bd18252a0cd64acfa1`  
		Last Modified: Wed, 08 May 2019 15:33:09 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eef4387aa6c2a5a67df248d9792327fe6815f3f07261efd1f3f771bfb54b6328`  
		Last Modified: Wed, 08 May 2019 15:33:11 GMT  
		Size: 12.3 MB (12329192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1567cacbdd3aba3bc123f0c8fefb14696901b15bab61a10934de53d750a99daf`  
		Last Modified: Wed, 08 May 2019 15:33:07 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52a90d0b8a2db54ecee542b85f52fbefc162d9e4f320ffeeec758856cee187ba`  
		Last Modified: Wed, 08 May 2019 15:33:14 GMT  
		Size: 14.5 MB (14517309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed0d571ced5fd96508968314c629171aa6cbd17e04368edce6ddc8af4bcb32c0`  
		Last Modified: Wed, 08 May 2019 15:33:07 GMT  
		Size: 2.2 KB (2204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b19f14340f5f997945f659e24e28015f52a1b21365c1a5acefafc3a6a67e5d88`  
		Last Modified: Wed, 08 May 2019 15:33:07 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eda3fcd109b09bb133ddae7b34ec16be0e7b8db71e7c5ab1c0271e573995d71`  
		Last Modified: Wed, 08 May 2019 15:33:07 GMT  
		Size: 905.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7db6d578c9b9f247c54431201dc2888502420136d8a4da4dcb6a102ea637d99e`  
		Last Modified: Thu, 09 May 2019 05:01:56 GMT  
		Size: 585.5 KB (585484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5237e5629b4a018f21f02d743ef7a584938f79495e8d3aff3f907c0f2f9b051`  
		Last Modified: Thu, 09 May 2019 05:01:55 GMT  
		Size: 8.2 KB (8226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb20695ea39ffda7c4581f759b5bca5dde4e3e874b25f99a44eea38729ac514e`  
		Last Modified: Thu, 09 May 2019 05:01:57 GMT  
		Size: 1.3 MB (1333877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd61a0cce7c5014cc7da38546e5d944fdba05643771dc3c0a01ff3e223ae3c36`  
		Last Modified: Thu, 09 May 2019 05:01:55 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postfixadmin:3-apache` - linux; 386

```console
$ docker pull postfixadmin@sha256:952c8fb48e8f6cfc4af732b959faf4bfcd4a2c58772ed9ad2eba62683a8f5938
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.5 MB (142517537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a91cda6cabed0d7a5624eafeaf2e50ed2f60b887c165230d90fa1f137ce6a1d`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint.sh"]`
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
# Tue, 11 Jun 2019 09:23:57 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Tue, 11 Jun 2019 09:23:58 GMT
ENV PHP_VERSION=7.3.6
# Tue, 11 Jun 2019 09:23:58 GMT
ENV PHP_URL=https://www.php.net/get/php-7.3.6.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.3.6.tar.xz.asc/from/this/mirror
# Tue, 11 Jun 2019 09:23:58 GMT
ENV PHP_SHA256=fefc8967daa30ebc375b2ab2857f97da94ca81921b722ddac86b29e15c54a164 PHP_MD5=
# Tue, 11 Jun 2019 09:24:12 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 11 Jun 2019 09:24:12 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Tue, 11 Jun 2019 09:30:37 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 12 Jun 2019 23:52:48 GMT
COPY multi:99e4ad617c6193834e78d12470f6dde09f70f4d40463009c5724954902e60676 in /usr/local/bin/ 
# Wed, 12 Jun 2019 23:52:48 GMT
RUN docker-php-ext-enable sodium
# Wed, 12 Jun 2019 23:52:49 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 12 Jun 2019 23:52:49 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Wed, 12 Jun 2019 23:52:49 GMT
WORKDIR /var/www/html
# Wed, 12 Jun 2019 23:52:49 GMT
EXPOSE 80
# Wed, 12 Jun 2019 23:52:49 GMT
CMD ["apache2-foreground"]
# Thu, 13 Jun 2019 01:27:40 GMT
LABEL maintainer=David Goodwin <david@codepoets.co.uk> (@DavidGoodwin)
# Thu, 13 Jun 2019 01:28:44 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 	libpq-dev 	libsqlite3-dev 	; 		docker-php-ext-install 		mysqli 		pdo_mysql 		pdo_pgsql 		pdo_sqlite 		pgsql 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 		ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 			apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Thu, 13 Jun 2019 01:28:44 GMT
ARG POSTFIXADMIN_VERSION=3.2.2
# Thu, 13 Jun 2019 01:28:44 GMT
ARG POSTFIXADMIN_SHA512=6c84cb215e69c52c26db0651e5d0d9d8bcb0a63b00d3c197f10fa1f0442a1fde44bb514fb476a1e68a21741d603febac67282961d01270e5969ee13d145121ee
# Thu, 13 Jun 2019 01:28:45 GMT
ENV POSTFIXADMIN_VERSION=3.2.2
# Thu, 13 Jun 2019 01:28:45 GMT
ENV POSTFIXADMIN_SHA512=6c84cb215e69c52c26db0651e5d0d9d8bcb0a63b00d3c197f10fa1f0442a1fde44bb514fb476a1e68a21741d603febac67282961d01270e5969ee13d145121ee
# Thu, 13 Jun 2019 01:28:45 GMT
ENV APACHE_DOCUMENT_ROOT=/var/www/html/public
# Thu, 13 Jun 2019 01:28:46 GMT
RUN set -eu; sed -ri -e 's!/var/www/html!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/sites-available/*.conf; 	sed -ri -e 's!/var/www/!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/apache2.conf /etc/apache2/conf-available/*.conf
# Thu, 13 Jun 2019 01:28:48 GMT
RUN set -eu; 	curl -fsSL -o postfixadmin.tar.gz "https://github.com/postfixadmin/postfixadmin/archive/postfixadmin-${POSTFIXADMIN_VERSION}.tar.gz"; 	echo "$POSTFIXADMIN_SHA512 *postfixadmin.tar.gz" | sha512sum -c -; 	mkdir /usr/src/postfixadmin; 	tar -xf postfixadmin.tar.gz -C /usr/src/postfixadmin --strip-components=1; 	rm postfixadmin.tar.gz; 	mkdir -p /usr/src/postfixadmin/templates_c; 	chown -R www-data:www-data /usr/src/postfixadmin
# Thu, 13 Jun 2019 01:28:48 GMT
COPY file:83be1dbd46cfa4c9ff6241f21a00fcd952c07b15bab1c6cf82fac6bfbae210c8 in /usr/local/bin/ 
# Thu, 13 Jun 2019 01:28:48 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
# Thu, 13 Jun 2019 01:28:48 GMT
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
	-	`sha256:a402892fdaade7eb37367ec6469d4dd9fefd265b14cd6aa0a87bd391b1addc16`  
		Last Modified: Tue, 11 Jun 2019 12:30:37 GMT  
		Size: 12.3 MB (12337051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20aa7c28aa156e6cf1408b67c907dd427f67711e52c8727359e65ae34736b99b`  
		Last Modified: Tue, 11 Jun 2019 12:30:33 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e59f95e07fb36d33409496b07a703071751d41c5f77af19b977a0e931b778285`  
		Last Modified: Tue, 11 Jun 2019 12:30:45 GMT  
		Size: 16.0 MB (16008325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6a6ac554239f6be29564377ac114a2cd89d4b220cc1f3dd395316a599c5fbd2`  
		Last Modified: Wed, 12 Jun 2019 23:56:29 GMT  
		Size: 2.2 KB (2226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bac46c0b71a6d0034118bc476e4ced68815767b8afdd7d4ac4d6c70caea8168`  
		Last Modified: Wed, 12 Jun 2019 23:56:30 GMT  
		Size: 264.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:509bae901b0ec804addcde8b548cd284742f94e39daf68778344c8e631f6e61f`  
		Last Modified: Wed, 12 Jun 2019 23:56:29 GMT  
		Size: 907.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c021fffe82a257fe7ef885cbaa9145c6a03d2c82a79eb248e10e40f63bbc3569`  
		Last Modified: Thu, 13 Jun 2019 01:31:14 GMT  
		Size: 623.8 KB (623778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87176f9ca40755943a62bdd32623c94dc6819598a102a5001de8bdfe7c755542`  
		Last Modified: Thu, 13 Jun 2019 01:31:14 GMT  
		Size: 8.2 KB (8228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bdfd44760a95e6fb24ac6dc6dda6d9bd3b09551d89199517ffa2b0d32d4b2d1`  
		Last Modified: Thu, 13 Jun 2019 01:31:15 GMT  
		Size: 1.3 MB (1333890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f4f8d4e023cef1ea1a00e4a045889d205a2d9015a6dbe1b6bf1e4bc5c9cafac`  
		Last Modified: Thu, 13 Jun 2019 01:31:14 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postfixadmin:3-apache` - linux; ppc64le

```console
$ docker pull postfixadmin@sha256:dc3172ddbedb0f92f2fe3b7ccff4767e303ed74c95f499170cb85802c38b5bdc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.6 MB (131576908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6baefdf6d3014f04bafcec8f63cd71ec44280e1bccab01a16bda3e850bcaf71`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint.sh"]`
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
# Tue, 11 Jun 2019 00:40:35 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Tue, 11 Jun 2019 00:40:38 GMT
ENV PHP_VERSION=7.3.6
# Tue, 11 Jun 2019 00:40:41 GMT
ENV PHP_URL=https://www.php.net/get/php-7.3.6.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.3.6.tar.xz.asc/from/this/mirror
# Tue, 11 Jun 2019 00:40:44 GMT
ENV PHP_SHA256=fefc8967daa30ebc375b2ab2857f97da94ca81921b722ddac86b29e15c54a164 PHP_MD5=
# Tue, 11 Jun 2019 00:41:42 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 11 Jun 2019 00:41:44 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Tue, 11 Jun 2019 00:47:42 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Thu, 13 Jun 2019 00:38:56 GMT
COPY multi:99e4ad617c6193834e78d12470f6dde09f70f4d40463009c5724954902e60676 in /usr/local/bin/ 
# Thu, 13 Jun 2019 00:39:02 GMT
RUN docker-php-ext-enable sodium
# Thu, 13 Jun 2019 00:39:04 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 13 Jun 2019 00:39:05 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Thu, 13 Jun 2019 00:39:07 GMT
WORKDIR /var/www/html
# Thu, 13 Jun 2019 00:39:09 GMT
EXPOSE 80
# Thu, 13 Jun 2019 00:39:10 GMT
CMD ["apache2-foreground"]
# Thu, 13 Jun 2019 01:16:18 GMT
LABEL maintainer=David Goodwin <david@codepoets.co.uk> (@DavidGoodwin)
# Thu, 13 Jun 2019 01:18:36 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 	libpq-dev 	libsqlite3-dev 	; 		docker-php-ext-install 		mysqli 		pdo_mysql 		pdo_pgsql 		pdo_sqlite 		pgsql 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 		ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 			apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Thu, 13 Jun 2019 01:18:43 GMT
ARG POSTFIXADMIN_VERSION=3.2.2
# Thu, 13 Jun 2019 01:18:51 GMT
ARG POSTFIXADMIN_SHA512=6c84cb215e69c52c26db0651e5d0d9d8bcb0a63b00d3c197f10fa1f0442a1fde44bb514fb476a1e68a21741d603febac67282961d01270e5969ee13d145121ee
# Thu, 13 Jun 2019 01:18:58 GMT
ENV POSTFIXADMIN_VERSION=3.2.2
# Thu, 13 Jun 2019 01:19:08 GMT
ENV POSTFIXADMIN_SHA512=6c84cb215e69c52c26db0651e5d0d9d8bcb0a63b00d3c197f10fa1f0442a1fde44bb514fb476a1e68a21741d603febac67282961d01270e5969ee13d145121ee
# Thu, 13 Jun 2019 01:19:24 GMT
ENV APACHE_DOCUMENT_ROOT=/var/www/html/public
# Thu, 13 Jun 2019 01:19:47 GMT
RUN set -eu; sed -ri -e 's!/var/www/html!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/sites-available/*.conf; 	sed -ri -e 's!/var/www/!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/apache2.conf /etc/apache2/conf-available/*.conf
# Thu, 13 Jun 2019 01:20:10 GMT
RUN set -eu; 	curl -fsSL -o postfixadmin.tar.gz "https://github.com/postfixadmin/postfixadmin/archive/postfixadmin-${POSTFIXADMIN_VERSION}.tar.gz"; 	echo "$POSTFIXADMIN_SHA512 *postfixadmin.tar.gz" | sha512sum -c -; 	mkdir /usr/src/postfixadmin; 	tar -xf postfixadmin.tar.gz -C /usr/src/postfixadmin --strip-components=1; 	rm postfixadmin.tar.gz; 	mkdir -p /usr/src/postfixadmin/templates_c; 	chown -R www-data:www-data /usr/src/postfixadmin
# Thu, 13 Jun 2019 01:20:12 GMT
COPY file:83be1dbd46cfa4c9ff6241f21a00fcd952c07b15bab1c6cf82fac6bfbae210c8 in /usr/local/bin/ 
# Thu, 13 Jun 2019 01:20:18 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
# Thu, 13 Jun 2019 01:20:22 GMT
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
	-	`sha256:4b33e599dc0213ba2588f1fbf556c954f0e88059bc3242279bd23ff0455a45f9`  
		Last Modified: Tue, 11 Jun 2019 02:04:48 GMT  
		Size: 12.3 MB (12336169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3035ffca37a7de1bfe0537d6137e3c34a6d2f82c8003b82f01e4d5342e8fda16`  
		Last Modified: Tue, 11 Jun 2019 02:04:43 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:941b47721513e3d0a15fa9c033e918599e50a1d2f6059eb47c5bbaf841276188`  
		Last Modified: Tue, 11 Jun 2019 02:04:51 GMT  
		Size: 15.4 MB (15362114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1931f67a149f8bfd964ba85b8f02d7210e2a12c6c339ddc1ecf49e2289f322db`  
		Last Modified: Thu, 13 Jun 2019 00:50:36 GMT  
		Size: 2.2 KB (2226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f6e7387ab813b89876fb2f05cb090240cd15755cc056af509b2ded2c41ace45`  
		Last Modified: Thu, 13 Jun 2019 00:50:36 GMT  
		Size: 263.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b205ee76ba3eb3134189290836a1507fcd8b165c4f49ebf94f309caee2e56b0`  
		Last Modified: Thu, 13 Jun 2019 00:50:36 GMT  
		Size: 907.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99477dadb53d8f2895a4432c79ee98d0ead07b7e0bf5ffdb669f564add590711`  
		Last Modified: Thu, 13 Jun 2019 01:25:46 GMT  
		Size: 605.4 KB (605429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4110b373ced237370a0cefe94af82b3023202c8a7198334664b3cffc5c3d2d7b`  
		Last Modified: Thu, 13 Jun 2019 01:25:46 GMT  
		Size: 8.2 KB (8226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a592e29358b9d3742ce1ef2103f9746d59acfa845d72b676ac903a57f09011da`  
		Last Modified: Thu, 13 Jun 2019 01:25:46 GMT  
		Size: 1.3 MB (1333923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f62b5e8c528fbac0f3ac9ca5bbe39a212f9cbe4d791f857aa55b4b68db7549f1`  
		Last Modified: Thu, 13 Jun 2019 01:25:45 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
