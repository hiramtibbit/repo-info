## `yourls:latest`

```console
$ docker pull yourls@sha256:07de80c467913c6f1bc88ec704b2ccb06ca6c6d609e03cd789eca5143251f683
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `yourls:latest` - linux; amd64

```console
$ docker pull yourls@sha256:8f4292699f0ee93980cfe322fbc7628ae1093729dc064e62e12dad60ac75797f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.5 MB (137544219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0af930e6552d31cdf2154d7005add64fcb76d1355fe2a01d8a9f822ab54375f5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 00:00:56 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 16 Oct 2018 00:00:56 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 16 Oct 2018 00:01:25 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 16 Oct 2018 00:01:26 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 16 Oct 2018 00:01:26 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 16 Oct 2018 00:11:40 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 00:11:40 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 16 Oct 2018 00:11:40 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 16 Oct 2018 00:11:41 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 16 Oct 2018 00:11:42 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 16 Oct 2018 00:11:42 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 16 Oct 2018 00:11:43 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 16 Oct 2018 00:11:43 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 16 Oct 2018 00:11:43 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Tue, 16 Oct 2018 00:11:44 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 16 Oct 2018 00:11:44 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 16 Oct 2018 00:11:44 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 16 Oct 2018 00:37:22 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Tue, 16 Oct 2018 00:37:22 GMT
ENV PHP_VERSION=7.2.11
# Tue, 16 Oct 2018 00:37:22 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.11.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.11.tar.xz.asc/from/this/mirror
# Tue, 16 Oct 2018 00:37:23 GMT
ENV PHP_SHA256=da1a705c0bc46410e330fc6baa967666c8cd2985378fb9707c01a8e33b01d985 PHP_MD5=
# Tue, 16 Oct 2018 00:37:31 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 16 Oct 2018 00:37:31 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 16 Oct 2018 00:41:15 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 16 Oct 2018 00:41:15 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Tue, 16 Oct 2018 00:41:16 GMT
RUN docker-php-ext-enable sodium
# Tue, 16 Oct 2018 00:41:16 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 16 Oct 2018 00:41:16 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 16 Oct 2018 00:41:17 GMT
WORKDIR /var/www/html
# Tue, 16 Oct 2018 00:41:17 GMT
EXPOSE 80/tcp
# Tue, 16 Oct 2018 00:41:17 GMT
CMD ["apache2-foreground"]
# Tue, 16 Oct 2018 12:27:17 GMT
RUN set -ex;     docker-php-ext-install opcache pdo_mysql mysqli
# Tue, 16 Oct 2018 12:27:19 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 16 Oct 2018 12:27:20 GMT
RUN a2enmod rewrite expires
# Tue, 16 Oct 2018 12:27:21 GMT
VOLUME [/var/www/html]
# Tue, 16 Oct 2018 12:27:21 GMT
ENV YOURLS_VERSION=1.7.2
# Tue, 16 Oct 2018 12:27:23 GMT
RUN set -ex; 	curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz"; 	tar -xzf yourls.tar.gz -C /usr/src/; 	mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls; 	rm yourls.tar.gz; 	chown -R www-data:www-data /usr/src/yourls
# Tue, 16 Oct 2018 12:27:24 GMT
COPY file:4454174d09ddd4fc4626315d1c2c7317260e2e85f29ef0689b303961f7abb262 in /usr/local/bin/ 
# Tue, 16 Oct 2018 12:27:25 GMT
COPY file:7374cf8206e739824183bab018e58d7d9d295eacd426d82bbdbc5a36f193c690 in /var/www/html/ 
# Tue, 16 Oct 2018 12:27:25 GMT
COPY file:ca0dc40bc19b5887c59642d8b16d2fc1fc1a1cc300b6552a9931a827e43e0dc9 in /var/www/html/ 
# Tue, 16 Oct 2018 12:27:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 12:27:27 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:376d99d019dce3a5ff8f42cc7c09a445c00fefe9777517ee3a1a87b6c587dc6e`  
		Last Modified: Tue, 16 Oct 2018 03:22:28 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80b3573727f01ab65fc76fcf001e31fcb67bf9ccaeaaa0e03188545d73767ecc`  
		Last Modified: Tue, 16 Oct 2018 03:23:02 GMT  
		Size: 67.4 MB (67428848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c492579cd1fe1c25aa2791fa1a68522f4ceb9cd73a56c3d8a054d57f2b4458e`  
		Last Modified: Tue, 16 Oct 2018 03:22:27 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9127acfc108e4167f1488933bfe2c356cf2a3429e088a1b3dfcfdd1be878829a`  
		Last Modified: Tue, 16 Oct 2018 03:25:45 GMT  
		Size: 17.1 MB (17127360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:475593d953b61ed1c4cd00230ff2edb51bbe8083b768b90838e4664a79938a6e`  
		Last Modified: Tue, 16 Oct 2018 03:25:41 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52442c1083495d52e522ec3a3b481f01a2f810a9c59fc95b93fe36baa72c468d`  
		Last Modified: Tue, 16 Oct 2018 03:25:40 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34b7a8ed8171364f7d41f1e6abebd27ff6edbcc44b7711932e445e3926d7b8c6`  
		Last Modified: Tue, 16 Oct 2018 03:25:40 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57b93ed050698df7f999de1e2fd27bb40a44e46a0138417c8c7b3369007d8a1e`  
		Last Modified: Tue, 16 Oct 2018 03:25:40 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6921825a665bdcc0f8ab11858e90bf9915ffe23775bbd1a43d62ae25cf5965ac`  
		Last Modified: Tue, 16 Oct 2018 03:32:44 GMT  
		Size: 12.5 MB (12481291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f23b5690e0b1ed4228ce29a4329a5746f7fa1f870f4f4c5eee000480beeb0756`  
		Last Modified: Tue, 16 Oct 2018 03:32:41 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17bd82b879bf7872f7d37554579b0d6f5ad4b35a355c7fd719b5dcb7ffea0106`  
		Last Modified: Tue, 16 Oct 2018 03:32:47 GMT  
		Size: 15.2 MB (15244468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc9df9220cbce1a30cf9e59a1b29df04e818b7f4830dd267fb72a7889d2ec83d`  
		Last Modified: Tue, 16 Oct 2018 03:32:41 GMT  
		Size: 2.2 KB (2194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c56ac54bd0230d61a4e9383c9d4c1cf3502291779e459f9d2801f7f523da94f6`  
		Last Modified: Tue, 16 Oct 2018 03:32:41 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dfb6e581aee7c6aeb40bb38b453e67e9fcfa85fab725834f28d040480ea67cf`  
		Last Modified: Tue, 16 Oct 2018 03:32:41 GMT  
		Size: 905.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77c344a0aa8084b3792f9224f7bd8b0403252d3c3ec15e48d44a3de848922ea8`  
		Last Modified: Tue, 16 Oct 2018 12:29:39 GMT  
		Size: 280.0 KB (280015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8fc5d4a52b29d4c688b232d4192bf73ed31409afe4a62acefc63134ab497b28`  
		Last Modified: Tue, 16 Oct 2018 12:29:39 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61c7aca21a22bef4bb052efbea09e5efbb3e8422c2b19076977c2b9be8c3fba5`  
		Last Modified: Tue, 16 Oct 2018 12:29:38 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ef735d7786b111a9f72cc190e56524a6e0db4feb96a473faf902179b7ef1f0d`  
		Last Modified: Tue, 16 Oct 2018 12:29:38 GMT  
		Size: 2.5 MB (2485624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f82d9afd688d26f4e857b9facb7e1c1293ff598ad3ac1122a8fcffb8ba64ae48`  
		Last Modified: Tue, 16 Oct 2018 12:29:38 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fcd648b23903f9f97a4ee52e3fd4f1227d305070ab3b271c69c12373920dea8`  
		Last Modified: Tue, 16 Oct 2018 12:29:37 GMT  
		Size: 1.8 KB (1825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:687cce36bf8b28f29546ed98207f40b5ea7b99eb6cff9cd57b58f23c149bf50f`  
		Last Modified: Tue, 16 Oct 2018 12:29:38 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `yourls:latest` - linux; arm variant v5

```console
$ docker pull yourls@sha256:ead70069472e79e5f1ced1454331a5ddaebc0d2c65d8b898646831341f21c787
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.3 MB (125327705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08852d19d0139a1f21d8634a85b5bb8279fd43cfb8e2745b92d479afd3874369`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 05 Sep 2018 08:55:26 GMT
ADD file:589b238a5fdfe8cc752d0f1769d0c392a7ac3d1204f9247c4eea21dd805663b0 in / 
# Wed, 05 Sep 2018 08:55:26 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 09:31:26 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 05 Sep 2018 09:31:27 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 05 Sep 2018 09:32:06 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 05 Sep 2018 09:32:06 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 05 Sep 2018 09:32:07 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 05 Sep 2018 09:37:52 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 09:37:52 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 05 Sep 2018 09:37:53 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 05 Sep 2018 09:37:54 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 05 Sep 2018 09:37:55 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 05 Sep 2018 09:37:56 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 05 Sep 2018 09:37:57 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 05 Sep 2018 09:37:57 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 05 Sep 2018 09:37:57 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 05 Sep 2018 09:37:58 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 05 Sep 2018 09:37:58 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 05 Sep 2018 09:37:58 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 05 Sep 2018 09:58:38 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Sat, 15 Sep 2018 09:11:53 GMT
ENV PHP_VERSION=7.2.10
# Sat, 15 Sep 2018 09:11:54 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.10.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.10.tar.xz.asc/from/this/mirror
# Sat, 15 Sep 2018 09:11:54 GMT
ENV PHP_SHA256=01c2154a3a8e3c0818acbdbc1a956832c828a0380ce6d1d14fea495ea21804f0 PHP_MD5=
# Sat, 15 Sep 2018 09:12:10 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 15 Sep 2018 09:12:10 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 15 Sep 2018 09:15:25 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 15 Sep 2018 09:15:26 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Sat, 15 Sep 2018 09:15:27 GMT
RUN docker-php-ext-enable sodium
# Sat, 15 Sep 2018 09:15:28 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 15 Sep 2018 09:15:28 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 15 Sep 2018 09:15:29 GMT
WORKDIR /var/www/html
# Sat, 15 Sep 2018 09:15:29 GMT
EXPOSE 80/tcp
# Sat, 15 Sep 2018 09:15:29 GMT
CMD ["apache2-foreground"]
# Tue, 02 Oct 2018 08:53:04 GMT
RUN set -ex;     docker-php-ext-install opcache pdo_mysql mysqli
# Tue, 02 Oct 2018 08:53:06 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 02 Oct 2018 08:53:07 GMT
RUN a2enmod rewrite expires
# Tue, 02 Oct 2018 08:53:07 GMT
VOLUME [/var/www/html]
# Tue, 02 Oct 2018 08:53:08 GMT
ENV YOURLS_VERSION=1.7.2
# Tue, 02 Oct 2018 08:53:10 GMT
RUN set -ex; 	curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz"; 	tar -xzf yourls.tar.gz -C /usr/src/; 	mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls; 	rm yourls.tar.gz; 	chown -R www-data:www-data /usr/src/yourls
# Tue, 16 Oct 2018 09:47:30 GMT
COPY file:4454174d09ddd4fc4626315d1c2c7317260e2e85f29ef0689b303961f7abb262 in /usr/local/bin/ 
# Tue, 16 Oct 2018 09:47:30 GMT
COPY file:7374cf8206e739824183bab018e58d7d9d295eacd426d82bbdbc5a36f193c690 in /var/www/html/ 
# Tue, 16 Oct 2018 09:47:31 GMT
COPY file:ca0dc40bc19b5887c59642d8b16d2fc1fc1a1cc300b6552a9931a827e43e0dc9 in /var/www/html/ 
# Tue, 16 Oct 2018 09:47:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 09:47:32 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:675207fbfe2baab74b37fd78c8be6e05579c046e848f9e9762e048899fa484f1`  
		Last Modified: Wed, 05 Sep 2018 09:04:43 GMT  
		Size: 21.2 MB (21162872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d12b8c370f4194843049859a40870387b6afc9ff714f14645ef229a5d129ff75`  
		Last Modified: Wed, 05 Sep 2018 12:15:28 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c74ab99b1c6ebeed75ab17c89463d557176bb46107fdd675809640cdae86c431`  
		Last Modified: Wed, 05 Sep 2018 12:15:47 GMT  
		Size: 57.4 MB (57447228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db6fab8b47c897ff471d9356b84c006020884c27efb6bd1b261221de092295bd`  
		Last Modified: Wed, 05 Sep 2018 12:15:27 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7dbbaa5bc4a9a0fb226e388174e6874324956af10d168731b5d11182b02134f`  
		Last Modified: Wed, 05 Sep 2018 12:17:19 GMT  
		Size: 16.7 MB (16650837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcfb42da08fa27d4480a62083ca2c8804b05aa91d71300a1a0099bac75e0db32`  
		Last Modified: Wed, 05 Sep 2018 12:17:14 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1b9c401e4beaae472f0bb2051b68da85ec1dccf560c3d21bac53ca738d89f64`  
		Last Modified: Wed, 05 Sep 2018 12:17:14 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a6781d4211951dd3dfb9980bf8e4fa4f4379f6f24d74f609c8c9e7aa1aadcd6`  
		Last Modified: Wed, 05 Sep 2018 12:17:13 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:990b4aa08d2c423e62cec9d165a9c6a058be76e3e34b83c808f0f4111dfe3962`  
		Last Modified: Wed, 05 Sep 2018 12:17:12 GMT  
		Size: 507.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfe3cd9d00505d9bcaf4bc2532e698af8b0c5f03f51565daaef267ece21c9c54`  
		Last Modified: Sat, 15 Sep 2018 11:20:36 GMT  
		Size: 12.5 MB (12508853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2a461f3d7f4bc5e7d8d1eb114d070fc99198e8bd3dc1f59b3dc4bbcfe7c7cb4`  
		Last Modified: Sat, 15 Sep 2018 11:20:34 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2936ac957f7a1461c8736a4d1226bde9229b982e30fe9ec17b348f1bf3115308`  
		Last Modified: Sat, 15 Sep 2018 11:20:39 GMT  
		Size: 14.8 MB (14792255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf059f657e67c83d985cd4ff58c148172115ef8aea807c8e8150ad60919b07ba`  
		Last Modified: Sat, 15 Sep 2018 11:20:34 GMT  
		Size: 2.2 KB (2193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bf1bdb8c95713f0ffd76dc1ca068243067e9d11e7f653055b162ca594503734`  
		Last Modified: Sat, 15 Sep 2018 11:20:34 GMT  
		Size: 262.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7dae6650d8f8a42f10f30284a61272305337cadbc4d76842783d805109a7735`  
		Last Modified: Sat, 15 Sep 2018 11:20:34 GMT  
		Size: 905.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b9761c8d45665fd6e8cd9b4ea905401abecd3f5d6e917ac9477aea851b5d4e5`  
		Last Modified: Tue, 02 Oct 2018 08:55:06 GMT  
		Size: 269.3 KB (269317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0de49046a8e844237d67e41b889b5ef827d2885054e1aac58d0a04a56f72bd10`  
		Last Modified: Tue, 02 Oct 2018 08:55:06 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84f5437d3f415664483aa4f9ea639eef31042a474925c00fed092a742bdb062c`  
		Last Modified: Tue, 02 Oct 2018 08:55:04 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:711b39c2f007c5fa16691723910bb7bd59a4d1033e839c0598a1df35be0da8dc`  
		Last Modified: Tue, 02 Oct 2018 08:55:06 GMT  
		Size: 2.5 MB (2485640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94a079b74beeca54b6dad09e6a69b2587908bfe07eba589ac46cd4936dd2ee51`  
		Last Modified: Tue, 16 Oct 2018 09:47:54 GMT  
		Size: 1.1 KB (1064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41d8a5857d604ce8cc319937ba28b6345d79046c8d18a0788e4aa869a04c8037`  
		Last Modified: Tue, 16 Oct 2018 09:47:55 GMT  
		Size: 1.8 KB (1827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:674337e68cd92d22274e4ac1d831a433086146546056cfad45db4c0b200dce60`  
		Last Modified: Tue, 16 Oct 2018 09:47:54 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `yourls:latest` - linux; arm variant v7

```console
$ docker pull yourls@sha256:2c9356991ba91eda943c00de9f7ecfaf9786e845b6051056924fdc2776b43276
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.2 MB (118180019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:718c8514593f9f782b46992f5f9b71f3ae433d05245933227a936219acabd9a5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 05 Sep 2018 12:04:38 GMT
ADD file:d20313e46e6d5f092327691d5bc0e83ad6b16d7b44a8dc82fa973c25a13257e7 in / 
# Wed, 05 Sep 2018 12:04:38 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 13:54:55 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 05 Sep 2018 13:54:56 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 05 Sep 2018 13:55:21 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:55:21 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 05 Sep 2018 13:55:23 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 05 Sep 2018 14:00:38 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 14:00:38 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 05 Sep 2018 14:00:38 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 05 Sep 2018 14:00:39 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 05 Sep 2018 14:00:41 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 05 Sep 2018 14:00:42 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 05 Sep 2018 14:00:43 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 05 Sep 2018 14:00:43 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 05 Sep 2018 14:00:44 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 05 Sep 2018 14:00:44 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 05 Sep 2018 14:00:44 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 05 Sep 2018 14:00:44 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 05 Sep 2018 14:19:20 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Sat, 15 Sep 2018 12:19:09 GMT
ENV PHP_VERSION=7.2.10
# Sat, 15 Sep 2018 12:19:10 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.10.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.10.tar.xz.asc/from/this/mirror
# Sat, 15 Sep 2018 12:19:10 GMT
ENV PHP_SHA256=01c2154a3a8e3c0818acbdbc1a956832c828a0380ce6d1d14fea495ea21804f0 PHP_MD5=
# Sat, 15 Sep 2018 12:19:23 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 15 Sep 2018 12:19:24 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 15 Sep 2018 12:22:09 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 15 Sep 2018 12:22:11 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Sat, 15 Sep 2018 12:22:12 GMT
RUN docker-php-ext-enable sodium
# Sat, 15 Sep 2018 12:22:13 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 15 Sep 2018 12:22:13 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 15 Sep 2018 12:22:14 GMT
WORKDIR /var/www/html
# Sat, 15 Sep 2018 12:22:15 GMT
EXPOSE 80/tcp
# Sat, 15 Sep 2018 12:22:15 GMT
CMD ["apache2-foreground"]
# Tue, 02 Oct 2018 11:59:15 GMT
RUN set -ex;     docker-php-ext-install opcache pdo_mysql mysqli
# Tue, 02 Oct 2018 11:59:18 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 02 Oct 2018 11:59:28 GMT
RUN a2enmod rewrite expires
# Tue, 02 Oct 2018 11:59:28 GMT
VOLUME [/var/www/html]
# Tue, 02 Oct 2018 11:59:28 GMT
ENV YOURLS_VERSION=1.7.2
# Tue, 02 Oct 2018 11:59:30 GMT
RUN set -ex; 	curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz"; 	tar -xzf yourls.tar.gz -C /usr/src/; 	mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls; 	rm yourls.tar.gz; 	chown -R www-data:www-data /usr/src/yourls
# Tue, 16 Oct 2018 12:45:56 GMT
COPY file:4454174d09ddd4fc4626315d1c2c7317260e2e85f29ef0689b303961f7abb262 in /usr/local/bin/ 
# Tue, 16 Oct 2018 12:45:57 GMT
COPY file:7374cf8206e739824183bab018e58d7d9d295eacd426d82bbdbc5a36f193c690 in /var/www/html/ 
# Tue, 16 Oct 2018 12:45:58 GMT
COPY file:ca0dc40bc19b5887c59642d8b16d2fc1fc1a1cc300b6552a9931a827e43e0dc9 in /var/www/html/ 
# Tue, 16 Oct 2018 12:45:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 12:46:03 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:2e5bbd238113a2057012dfb78ac9665531c276c48962d208492c8802fb0503c0`  
		Last Modified: Wed, 05 Sep 2018 12:13:41 GMT  
		Size: 19.3 MB (19270166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c7453977399986cae90e7dff649e6e6239b8561d9f7af71651ea23933b98bd3`  
		Last Modified: Wed, 05 Sep 2018 16:34:39 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f0c86f09d6663fdcad54665088cbc80458ba3910dd6ff1221ba525f02902078`  
		Last Modified: Wed, 05 Sep 2018 16:34:57 GMT  
		Size: 53.6 MB (53562344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca86f3766852f42b9b9e8fc1e14732770796c7e01bd15e8d45dcd04d720faeec`  
		Last Modified: Wed, 05 Sep 2018 16:34:40 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bee87f5198e994d22e750fedc39e0f7571e4427b47a4c590f9d3828b63ae3b7`  
		Last Modified: Wed, 05 Sep 2018 16:37:12 GMT  
		Size: 16.2 MB (16162667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:910cc2d6ec5b232dcc01b13da22ca60a11ec0affcf05ca958e6f5575f4925f0b`  
		Last Modified: Wed, 05 Sep 2018 16:37:07 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35c9c8a8667052bc5da969abd3978e76362e967bef2818d35cba62befef27598`  
		Last Modified: Wed, 05 Sep 2018 16:37:06 GMT  
		Size: 470.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92e0a1b440c01b95e647a5ede9bc9b73a7d70c9e56eac469e34327b77e43bd45`  
		Last Modified: Wed, 05 Sep 2018 16:37:06 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66cc05ca7d9bcaeeb0f1ab22b578a324ea9aa2e299d6d5d92a5e851483c9cf8e`  
		Last Modified: Wed, 05 Sep 2018 16:37:06 GMT  
		Size: 510.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97394326604fcd64d06838fa44dd2b896b87995a08a73cfaee4d256da54b8028`  
		Last Modified: Sat, 15 Sep 2018 14:19:05 GMT  
		Size: 12.5 MB (12508777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:554cf841760b94ad283616f95493ab3cf8a5b791bc07b86156325db6b66a0c11`  
		Last Modified: Sat, 15 Sep 2018 14:19:02 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a08e3000f12e92a61e268699afb692762a0605cec8182820972da0401b38bc5`  
		Last Modified: Sat, 15 Sep 2018 14:19:07 GMT  
		Size: 13.9 MB (13933659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94088c505e52888c2a09150676aaabdeb178204a61058a79a39dc2665731c00c`  
		Last Modified: Sat, 15 Sep 2018 14:19:03 GMT  
		Size: 2.2 KB (2190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6539a2a5449169f9192f0c8af30c2806348f12d7bc8cb3d2d997617a2266f132`  
		Last Modified: Sat, 15 Sep 2018 14:19:03 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbde44792507de9ea52859efb7523f4ec9399420bae8389a60cdf6bb60269fae`  
		Last Modified: Sat, 15 Sep 2018 14:19:03 GMT  
		Size: 901.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ea98cb5bdd84d49cb97fa75d9468172308e59093cf9747f27c3f7b1703b968a`  
		Last Modified: Tue, 02 Oct 2018 12:02:27 GMT  
		Size: 246.1 KB (246069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f18240814e8bb9121e58a7be72cb8ca71ef4df272fbb2eb4f287159c57a25ed`  
		Last Modified: Tue, 02 Oct 2018 12:02:26 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2557a5f4f63d31bb384c0b9d8ae4db0eba41ae4553acda9d4988908939f97e85`  
		Last Modified: Tue, 02 Oct 2018 12:02:25 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:671555954d5f95261b76e5daad3bccc369b5af9c09955150a1ff35f91f0626b4`  
		Last Modified: Tue, 02 Oct 2018 12:02:26 GMT  
		Size: 2.5 MB (2485636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f30ee3b4c345c956c1d1fa05f71fcd70618c4ce7a760d7c29580cfce90db1de`  
		Last Modified: Tue, 16 Oct 2018 12:46:32 GMT  
		Size: 1.1 KB (1065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50545d40cfb42410e6601da3b0e428e5435df647240419efb6d2d36aeb9c7ea4`  
		Last Modified: Tue, 16 Oct 2018 12:46:32 GMT  
		Size: 1.8 KB (1828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:801255d5a10c897ca927387adf4427786ade62e6a525275b065f641010bbfe7b`  
		Last Modified: Tue, 16 Oct 2018 12:46:32 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `yourls:latest` - linux; arm64 variant v8

```console
$ docker pull yourls@sha256:9b25be358c9dab6d82131a5b32ad73ab1b4f40d95cab00b9a32c5e1d6a702f2b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.5 MB (124468642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c05d62acd2395045388709d18b3dae222f27509462345bccb61eb5748bc7955`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 05 Sep 2018 08:51:48 GMT
ADD file:11982f247d3c0dc005ade5290cf65e3e0f9d4a64f141d4d63317af8680ef094a in / 
# Wed, 05 Sep 2018 08:52:05 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 14:29:03 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 05 Sep 2018 14:29:04 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 05 Sep 2018 14:30:30 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 05 Sep 2018 14:30:31 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 05 Sep 2018 14:30:34 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 05 Sep 2018 14:43:44 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 14:43:45 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 05 Sep 2018 14:43:46 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 05 Sep 2018 14:43:48 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 05 Sep 2018 14:43:51 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 05 Sep 2018 14:43:54 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 05 Sep 2018 14:43:56 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 05 Sep 2018 14:43:57 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 05 Sep 2018 14:43:58 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 05 Sep 2018 14:43:59 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 05 Sep 2018 14:44:00 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 05 Sep 2018 14:44:01 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 05 Sep 2018 15:40:51 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Sat, 15 Sep 2018 12:22:22 GMT
ENV PHP_VERSION=7.2.10
# Sat, 15 Sep 2018 12:22:23 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.10.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.10.tar.xz.asc/from/this/mirror
# Sat, 15 Sep 2018 12:22:24 GMT
ENV PHP_SHA256=01c2154a3a8e3c0818acbdbc1a956832c828a0380ce6d1d14fea495ea21804f0 PHP_MD5=
# Sat, 15 Sep 2018 12:23:36 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 15 Sep 2018 12:23:39 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 15 Sep 2018 12:33:29 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 15 Sep 2018 12:33:31 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Sat, 15 Sep 2018 12:33:35 GMT
RUN docker-php-ext-enable sodium
# Sat, 15 Sep 2018 12:33:35 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 15 Sep 2018 12:33:37 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 15 Sep 2018 12:33:38 GMT
WORKDIR /var/www/html
# Sat, 15 Sep 2018 12:33:39 GMT
EXPOSE 80/tcp
# Sat, 15 Sep 2018 12:33:40 GMT
CMD ["apache2-foreground"]
# Tue, 02 Oct 2018 09:06:19 GMT
RUN set -ex;     docker-php-ext-install opcache pdo_mysql mysqli
# Tue, 02 Oct 2018 09:06:22 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 02 Oct 2018 09:06:34 GMT
RUN a2enmod rewrite expires
# Tue, 02 Oct 2018 09:06:45 GMT
VOLUME [/var/www/html]
# Tue, 02 Oct 2018 09:06:46 GMT
ENV YOURLS_VERSION=1.7.2
# Tue, 02 Oct 2018 09:06:49 GMT
RUN set -ex; 	curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz"; 	tar -xzf yourls.tar.gz -C /usr/src/; 	mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls; 	rm yourls.tar.gz; 	chown -R www-data:www-data /usr/src/yourls
# Tue, 16 Oct 2018 11:28:42 GMT
COPY file:4454174d09ddd4fc4626315d1c2c7317260e2e85f29ef0689b303961f7abb262 in /usr/local/bin/ 
# Tue, 16 Oct 2018 11:28:43 GMT
COPY file:7374cf8206e739824183bab018e58d7d9d295eacd426d82bbdbc5a36f193c690 in /var/www/html/ 
# Tue, 16 Oct 2018 11:28:44 GMT
COPY file:ca0dc40bc19b5887c59642d8b16d2fc1fc1a1cc300b6552a9931a827e43e0dc9 in /var/www/html/ 
# Tue, 16 Oct 2018 11:28:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 11:28:45 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:8d586fc7919319b234c6d8676e8dc3baa39e4edf195a2dec935bdaeeb0862163`  
		Last Modified: Wed, 05 Sep 2018 09:09:38 GMT  
		Size: 20.3 MB (20331641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b9a0c6139ac02ec19ae2b9abd5a62e150d1d48fa5b2f2ce6288673d4abf8c89`  
		Last Modified: Wed, 05 Sep 2018 18:37:30 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbd3f9aedb13f6184ef6937e7fd4e572275b5c360fb3a82984e60f9f409ded5a`  
		Last Modified: Wed, 05 Sep 2018 18:38:28 GMT  
		Size: 57.6 MB (57596375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82954d79d5da39fa6ca0661f210feebf6a504b18c3871386acdc845a57e25927`  
		Last Modified: Wed, 05 Sep 2018 18:37:31 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b51b53f874ae9dc4d9853ed4a053fd0a250af660bec2e20a91023d0781839c95`  
		Last Modified: Wed, 05 Sep 2018 18:45:16 GMT  
		Size: 16.7 MB (16709592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1796c6fcf7510d3a50a414a302fedad45b8d6897ecdf346f81a41ee69e747450`  
		Last Modified: Wed, 05 Sep 2018 18:44:34 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6418c683e403bd9a73ea07ede43aab1c8f74d909c0bbcc4a423fb155c82e491`  
		Last Modified: Wed, 05 Sep 2018 18:44:32 GMT  
		Size: 433.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9739e51588a52ff0717bc27576e99885eb39668c5d409d208cb9834f865f2120`  
		Last Modified: Wed, 05 Sep 2018 18:44:32 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09e8d222088e45320e61a4ac0479fd3f9b12c5dc7a8a8c9988560f05d51b4556`  
		Last Modified: Wed, 05 Sep 2018 18:44:32 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b6c1e8821f646214390c0d04d505f970b5fd253c27dac6fb84129a33fee91d9`  
		Last Modified: Sat, 15 Sep 2018 18:13:59 GMT  
		Size: 12.5 MB (12509249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52a81133bc3d3a91d3a7ca15c9522bd86324f6fd9ee0e3a9ab52ae20375083f1`  
		Last Modified: Sat, 15 Sep 2018 18:13:55 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:865049109739e18bc0ef2d97a09f58ae3c174123f8389d76a43aa0df759d17b8`  
		Last Modified: Sat, 15 Sep 2018 18:14:01 GMT  
		Size: 14.6 MB (14563481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66d4d77ffa1db065da8d3f7c68cfb2f42378dc11cc174cb3ebdc0a7da2c4e84b`  
		Last Modified: Sat, 15 Sep 2018 18:13:55 GMT  
		Size: 2.2 KB (2193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be176d187464493ef23a0dd3317d4561363c5bbd91aca58cd61b0b3898feaf20`  
		Last Modified: Sat, 15 Sep 2018 18:13:55 GMT  
		Size: 261.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:753468fe5e9b13b37a0da46e450435e6864ccb266f0ee8dd2e6f1a5267809636`  
		Last Modified: Sat, 15 Sep 2018 18:13:55 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9dddff4a7098153d6f3c5473172d833dfc82f262d28da6eecc3a691cb70d2eb`  
		Last Modified: Tue, 02 Oct 2018 09:11:02 GMT  
		Size: 262.1 KB (262087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eb2c767bc9ff8ea6f9efe653fd7c3143f40f778df3499247ab8a7ec5ac2c388`  
		Last Modified: Tue, 02 Oct 2018 09:11:02 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d837bbc6fe99e55cca6b4bf79cedb7fd5a2702cbefe71f99c4f057e08fc0ed78`  
		Last Modified: Tue, 02 Oct 2018 09:11:00 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17052f46e57f315845022ab4abb34407309c6dd323bae8649356ef3321187152`  
		Last Modified: Tue, 02 Oct 2018 09:11:01 GMT  
		Size: 2.5 MB (2485626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ac5bf89ea5f7a10855607e98cb8c74a6c57f1ff73fa6566f55346735f845251`  
		Last Modified: Tue, 16 Oct 2018 11:29:32 GMT  
		Size: 1.1 KB (1064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68cd207f70d934e78194b7b5d0191c521998257f58d1a18d7b07031802d758a4`  
		Last Modified: Tue, 16 Oct 2018 11:29:33 GMT  
		Size: 1.8 KB (1828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea0276569dd301bc89b6b76bb781ac6b7603ba17da150e1621ac8b0e1903d1c3`  
		Last Modified: Tue, 16 Oct 2018 11:29:32 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `yourls:latest` - linux; 386

```console
$ docker pull yourls@sha256:683e1f45caa2bed02dbb1d27599f75f32021303e0ef96b20c316ab5801b25e80
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.2 MB (143161295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f35f744344b88e942c41114b5f2734d5006194c5b88206188aacdd2b73b28e0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 05 Sep 2018 10:43:58 GMT
ADD file:e2998c599fe122e866e9244aa7fdb1d3bdddb454863a1d003340392684d2388d in / 
# Wed, 05 Sep 2018 10:43:59 GMT
CMD ["bash"]
# Thu, 06 Sep 2018 15:10:12 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Thu, 06 Sep 2018 15:10:12 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 06 Sep 2018 15:10:43 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 06 Sep 2018 15:10:43 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 06 Sep 2018 15:10:44 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 06 Sep 2018 15:17:42 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 15:17:42 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 06 Sep 2018 15:17:42 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 06 Sep 2018 15:17:43 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Thu, 06 Sep 2018 15:17:44 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Thu, 06 Sep 2018 15:17:44 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Thu, 06 Sep 2018 15:17:45 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Thu, 06 Sep 2018 15:17:45 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Thu, 06 Sep 2018 15:17:45 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Thu, 06 Sep 2018 15:17:45 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 06 Sep 2018 15:17:45 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 06 Sep 2018 15:17:46 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 06 Sep 2018 16:03:42 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Sat, 15 Sep 2018 11:46:38 GMT
ENV PHP_VERSION=7.2.10
# Sat, 15 Sep 2018 11:46:38 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.10.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.10.tar.xz.asc/from/this/mirror
# Sat, 15 Sep 2018 11:46:38 GMT
ENV PHP_SHA256=01c2154a3a8e3c0818acbdbc1a956832c828a0380ce6d1d14fea495ea21804f0 PHP_MD5=
# Sat, 15 Sep 2018 11:46:48 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 15 Sep 2018 11:46:48 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 15 Sep 2018 11:50:08 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 15 Sep 2018 11:50:09 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Sat, 15 Sep 2018 11:50:10 GMT
RUN docker-php-ext-enable sodium
# Sat, 15 Sep 2018 11:50:10 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 15 Sep 2018 11:50:10 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 15 Sep 2018 11:50:10 GMT
WORKDIR /var/www/html
# Sat, 15 Sep 2018 11:50:10 GMT
EXPOSE 80/tcp
# Sat, 15 Sep 2018 11:50:11 GMT
CMD ["apache2-foreground"]
# Tue, 02 Oct 2018 10:57:23 GMT
RUN set -ex;     docker-php-ext-install opcache pdo_mysql mysqli
# Tue, 02 Oct 2018 10:57:24 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 02 Oct 2018 10:57:25 GMT
RUN a2enmod rewrite expires
# Tue, 02 Oct 2018 10:57:25 GMT
VOLUME [/var/www/html]
# Tue, 02 Oct 2018 10:57:25 GMT
ENV YOURLS_VERSION=1.7.2
# Tue, 02 Oct 2018 10:57:27 GMT
RUN set -ex; 	curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz"; 	tar -xzf yourls.tar.gz -C /usr/src/; 	mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls; 	rm yourls.tar.gz; 	chown -R www-data:www-data /usr/src/yourls
# Tue, 02 Oct 2018 10:57:27 GMT
COPY file:1e7eea4f2ddeb3df609290207510540deddfbdbbf746a9e1d73399adf987c4de in /usr/local/bin/ 
# Tue, 02 Oct 2018 10:57:27 GMT
COPY file:2f3fea83dc8aa9715a3101e3e732865663b6868812897892960246ce23641ea7 in /var/www/html/ 
# Tue, 02 Oct 2018 10:57:28 GMT
COPY file:ca0dc40bc19b5887c59642d8b16d2fc1fc1a1cc300b6552a9931a827e43e0dc9 in /var/www/html/ 
# Tue, 02 Oct 2018 10:57:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 02 Oct 2018 10:57:28 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:6a04e6fc95134a0f0b1fc5f312d7930a2abb685ce0081538c60b7d51a221cbb1`  
		Last Modified: Wed, 05 Sep 2018 10:52:19 GMT  
		Size: 23.1 MB (23126488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9db5bee340c5db7fe9d658f5d59664e59867d7c2c5c3b1276afb04984f58ed1e`  
		Last Modified: Thu, 06 Sep 2018 21:23:36 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d286edaf1c6c505e2deaff2a00ef99207980e5dfc804c4a14c2e7f972fbf91b2`  
		Last Modified: Thu, 06 Sep 2018 21:23:56 GMT  
		Size: 71.5 MB (71484727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:516c83032aad187053b77d647c0890753c697dcfccf7e57b94581634df3ca9e4`  
		Last Modified: Thu, 06 Sep 2018 21:23:35 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a08a04cb0dc9f51ff87c57ce8a673fe473255ebdeb44b50ed3fde925a48355dd`  
		Last Modified: Thu, 06 Sep 2018 21:24:28 GMT  
		Size: 17.6 MB (17562520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06974f76c39c8134b6807c18e5f65ce7cf6c62c13c7c46beea01db8fb486400a`  
		Last Modified: Thu, 06 Sep 2018 21:24:23 GMT  
		Size: 1.2 KB (1246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4912bbef0c2788426a18b1c88dcd240fa52078636b9fe6adaa4b9d491129088`  
		Last Modified: Thu, 06 Sep 2018 21:24:23 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f776b34cb654b010438a36dac6efd98a7476304f288ab5217bbe1d2f8011985d`  
		Last Modified: Thu, 06 Sep 2018 21:24:22 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e3e66ccc0b5fc59bc03770ebfdc2d6f37de837768296bcac1ee0dcee6ea248d`  
		Last Modified: Thu, 06 Sep 2018 21:24:22 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:190b7c2bcf3ae77bd5ec58fe7ec4775f7aacdd70c35e3c83ff1b559d86435766`  
		Last Modified: Sat, 15 Sep 2018 16:23:56 GMT  
		Size: 12.5 MB (12510072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b27d191f2e9124d2e6201ba950944b3b3725a354b6190b0faac8a5e16ae1a77`  
		Last Modified: Sat, 15 Sep 2018 16:23:54 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:365ba309c20e192a66fb1ca0b0cc6bab1cab9c8611f1a79e4fdc7ebd1451e69c`  
		Last Modified: Sat, 15 Sep 2018 16:23:59 GMT  
		Size: 15.7 MB (15691652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9885e927439a33b6a5542d5170451dc64152f8db971f393f71ca03932419c59`  
		Last Modified: Sat, 15 Sep 2018 16:23:54 GMT  
		Size: 2.2 KB (2194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c127138c84f0e9c473cf29c33ca743a8be1e4b5cf780e38a396cbbf9fd5500ec`  
		Last Modified: Sat, 15 Sep 2018 16:23:54 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c848fb459f85fe2045379534b85636c8d6f284211b0da99caa2697d30e69df33`  
		Last Modified: Sat, 15 Sep 2018 16:23:54 GMT  
		Size: 903.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a8b9c245ddb0734d0199f5eece78c236b346b9349a4115dcf5f65f2a0d678b5`  
		Last Modified: Tue, 02 Oct 2018 10:59:18 GMT  
		Size: 289.6 KB (289573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22d41a40d27ed0c7edbbffe2d469ef4b9fb6d3563febea0d6ce4ef1f30c10964`  
		Last Modified: Tue, 02 Oct 2018 10:59:18 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d07b7039b0f018265c475caccb5e2e5cb9ba2b02fe6f5f4630c7d8d60b636f4`  
		Last Modified: Tue, 02 Oct 2018 10:59:17 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed55e135835bca1faae861a09ceb23869d57a91f57d8f12b57da07c417bd3148`  
		Last Modified: Tue, 02 Oct 2018 10:59:18 GMT  
		Size: 2.5 MB (2485625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a4a3077f2d769473d5999e4be9a0aabae6d866481e4a1647c53be34d4bc0df`  
		Last Modified: Tue, 02 Oct 2018 10:59:18 GMT  
		Size: 1.1 KB (1150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:006a2d5b3d72384600d5278c361b69c570025b3463d6d300cd28df3c94fddf39`  
		Last Modified: Tue, 02 Oct 2018 10:59:17 GMT  
		Size: 1.8 KB (1812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e45880488764c7bdd08c1098840cba1c1f904d18b58f527f2aacef7370a2716`  
		Last Modified: Tue, 02 Oct 2018 10:59:17 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `yourls:latest` - linux; ppc64le

```console
$ docker pull yourls@sha256:e9e8d60d82a72f3ed4f53177b53d5dd4d6c23752662c172da62f5951eab98d14
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.6 MB (132583953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:235290cf59777d4a63099dabdd3dbf4bb909cda4d72d35045d7dd39e14ed6b0c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 05 Sep 2018 08:19:50 GMT
ADD file:d599fe9ac09b7e23964896f5c79eb1a253ab4cfd9d27e3c409ff87a0cc012a33 in / 
# Wed, 05 Sep 2018 08:19:51 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 10:12:52 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 05 Sep 2018 10:12:52 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 05 Sep 2018 10:14:10 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 05 Sep 2018 10:14:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 05 Sep 2018 10:14:15 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 05 Sep 2018 10:21:58 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 10:21:59 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 05 Sep 2018 10:22:02 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 05 Sep 2018 10:22:05 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 05 Sep 2018 10:22:08 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 05 Sep 2018 10:22:11 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 05 Sep 2018 10:22:13 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 05 Sep 2018 10:22:14 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 05 Sep 2018 10:22:15 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 05 Sep 2018 10:22:16 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 05 Sep 2018 10:22:17 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 05 Sep 2018 10:22:17 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 05 Sep 2018 10:49:35 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Sat, 15 Sep 2018 10:13:16 GMT
ENV PHP_VERSION=7.2.10
# Sat, 15 Sep 2018 10:13:17 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.10.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.10.tar.xz.asc/from/this/mirror
# Sat, 15 Sep 2018 10:13:18 GMT
ENV PHP_SHA256=01c2154a3a8e3c0818acbdbc1a956832c828a0380ce6d1d14fea495ea21804f0 PHP_MD5=
# Sat, 15 Sep 2018 10:13:50 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 15 Sep 2018 10:13:52 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 15 Sep 2018 10:19:39 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 15 Sep 2018 10:19:40 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Sat, 15 Sep 2018 10:19:42 GMT
RUN docker-php-ext-enable sodium
# Sat, 15 Sep 2018 10:19:43 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 15 Sep 2018 10:19:43 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 15 Sep 2018 10:19:44 GMT
WORKDIR /var/www/html
# Sat, 15 Sep 2018 10:19:45 GMT
EXPOSE 80/tcp
# Sat, 15 Sep 2018 10:19:46 GMT
CMD ["apache2-foreground"]
# Tue, 02 Oct 2018 08:35:04 GMT
RUN set -ex;     docker-php-ext-install opcache pdo_mysql mysqli
# Tue, 02 Oct 2018 08:35:16 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 02 Oct 2018 08:35:18 GMT
RUN a2enmod rewrite expires
# Tue, 02 Oct 2018 08:35:29 GMT
VOLUME [/var/www/html]
# Tue, 02 Oct 2018 08:35:31 GMT
ENV YOURLS_VERSION=1.7.2
# Tue, 02 Oct 2018 08:35:44 GMT
RUN set -ex; 	curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz"; 	tar -xzf yourls.tar.gz -C /usr/src/; 	mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls; 	rm yourls.tar.gz; 	chown -R www-data:www-data /usr/src/yourls
# Tue, 16 Oct 2018 09:57:00 GMT
COPY file:4454174d09ddd4fc4626315d1c2c7317260e2e85f29ef0689b303961f7abb262 in /usr/local/bin/ 
# Tue, 16 Oct 2018 09:57:02 GMT
COPY file:7374cf8206e739824183bab018e58d7d9d295eacd426d82bbdbc5a36f193c690 in /var/www/html/ 
# Tue, 16 Oct 2018 09:57:03 GMT
COPY file:ca0dc40bc19b5887c59642d8b16d2fc1fc1a1cc300b6552a9931a827e43e0dc9 in /var/www/html/ 
# Tue, 16 Oct 2018 09:57:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 09:57:06 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:92065d7cb20e14e29d25bb528f13bf94b0956f60664782bb1c43ce3192bf762b`  
		Last Modified: Wed, 05 Sep 2018 08:26:35 GMT  
		Size: 22.7 MB (22740533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d410d48def2a37874fbb12203fc7704c1231389db8a4d2fe7a0ec41b2054951`  
		Last Modified: Wed, 05 Sep 2018 12:30:57 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40a7697ebc0840cff78c11793c2ac32d5b83b5c870da149d23832f6e7c885503`  
		Last Modified: Wed, 05 Sep 2018 12:31:32 GMT  
		Size: 61.8 MB (61809691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70d738f1afbe46c3ed68ec5d3eef36d8c994d3224e71b7690b39a51bc185f360`  
		Last Modified: Wed, 05 Sep 2018 12:30:59 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f190cb0b33d407de8578386e4db5ac44607d9931001ca88af4cf571be362610`  
		Last Modified: Wed, 05 Sep 2018 12:34:03 GMT  
		Size: 17.3 MB (17348177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a87259062691fa1c9b95e01f0f8ceb03b1fb3d908130e97c1f60e20ba5ba1863`  
		Last Modified: Wed, 05 Sep 2018 12:33:51 GMT  
		Size: 1.3 KB (1278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e638d757a57fa6d6faeee75be1942548162d257e08d29fd2ba142a694f38d36e`  
		Last Modified: Wed, 05 Sep 2018 12:33:48 GMT  
		Size: 478.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a87c8d05f2d278c51345af69d4bf199a1366c8ea2fce1b1cd469b9c2655718c`  
		Last Modified: Wed, 05 Sep 2018 12:33:47 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a8a19012220611db2d1a90b11308013f15f3f23978db2a818648f661caf6ad9`  
		Last Modified: Wed, 05 Sep 2018 12:33:47 GMT  
		Size: 517.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83d0f3ad66156ec95a53473322905d158cfaacd0ab8a778ce6cd1cdf9579c45e`  
		Last Modified: Sat, 15 Sep 2018 13:16:12 GMT  
		Size: 12.5 MB (12509261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5431836eb21b4dd16842779b13e4504e7d70ca77e50ad605995933ea9ac7703`  
		Last Modified: Sat, 15 Sep 2018 13:16:08 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0acc14db59dfb9cea7c49524e1749106efdff68dc3c733bea70e1d334d6fb9cf`  
		Last Modified: Sat, 15 Sep 2018 13:16:14 GMT  
		Size: 15.4 MB (15395963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:447d5dd93cf68c4ff26b82f523cb20f3eea5ae41e96817bf416ea0fa1b869dd5`  
		Last Modified: Sat, 15 Sep 2018 13:16:08 GMT  
		Size: 2.2 KB (2195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd85ff81c12663eedba113cb321b10f293e5c339a22caf7a046c319d95269bbe`  
		Last Modified: Sat, 15 Sep 2018 13:16:08 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:857449c6c0106f6cd069fa9fedcd538b9c720312c2b5b7a5dfa7d12a1f1d965f`  
		Last Modified: Sat, 15 Sep 2018 13:16:08 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4d9f7063bd6fee2b5609238bfbacb213bdeef770c8ae22d3150802230c31131`  
		Last Modified: Tue, 02 Oct 2018 08:40:37 GMT  
		Size: 284.0 KB (283959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57ca9026e33e7eddf0f6a5fe2bff30f277f983ef09ae3f8a87b3b2824d5c42b`  
		Last Modified: Tue, 02 Oct 2018 08:40:36 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ace96bc88cafb5c603c8af8fb0998a3d706c7fc69ff23414bc5be072d5af3f7`  
		Last Modified: Tue, 02 Oct 2018 08:40:32 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05fc7a956293ff635213090794ff88ee2be252ac788680fb70baadbfc113aafc`  
		Last Modified: Tue, 02 Oct 2018 08:40:33 GMT  
		Size: 2.5 MB (2485639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a5ebcc99fd7ff4990363e7a87bffd4a26c3d2c0e32e07d88196ef9e84d288b7`  
		Last Modified: Tue, 16 Oct 2018 10:02:01 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aab01b2a53a717ad0b394650b81d4ce13d0f4d08747a877814e1fc8093979de`  
		Last Modified: Tue, 16 Oct 2018 10:02:01 GMT  
		Size: 1.8 KB (1827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2be1ec757c2775bccaabb7cbebe3bc3ce6d8ffe8312916fcdfa19419448b034`  
		Last Modified: Tue, 16 Oct 2018 10:02:01 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
