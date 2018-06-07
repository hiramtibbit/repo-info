## `wordpress:latest`

```console
$ docker pull wordpress@sha256:b0460dba11737144b232a7794403d4052982f2332caeea82f618fc98d0547387
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `wordpress:latest` - linux; amd64

```console
$ docker pull wordpress@sha256:052410013e5b2f5750ea415d8df1fadd2f68a1920f55caf26f9373ff2240516d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.5 MB (144473202 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a837ea4bd225341faec2a56ebb5a7f91c8ff8330b6d7c690fab44af53957673`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Sat, 28 Apr 2018 07:09:59 GMT
ADD file:ec5be7eec56a749752ca284359ece04f5eb0b981eac08b8855454c6b16e3893c in / 
# Sat, 28 Apr 2018 07:09:59 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 18:49:50 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 06 Jun 2018 18:49:50 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 06 Jun 2018 18:50:28 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 06 Jun 2018 18:50:29 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 06 Jun 2018 18:50:29 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 06 Jun 2018 18:57:16 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 18:57:16 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 06 Jun 2018 18:57:16 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 06 Jun 2018 18:57:17 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 06 Jun 2018 18:57:19 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 06 Jun 2018 18:57:20 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 06 Jun 2018 18:57:20 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 06 Jun 2018 18:57:20 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 06 Jun 2018 18:57:21 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 06 Jun 2018 18:57:21 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Jun 2018 18:57:21 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Jun 2018 18:57:21 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 06 Jun 2018 18:57:21 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Wed, 06 Jun 2018 18:57:21 GMT
ENV PHP_VERSION=7.2.6
# Wed, 06 Jun 2018 18:57:21 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.6.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.6.tar.xz.asc/from/this/mirror
# Wed, 06 Jun 2018 18:57:22 GMT
ENV PHP_SHA256=1f004e049788a3effc89ef417f06a6cf704c95ae2a718b2175185f2983381ae7 PHP_MD5=
# Wed, 06 Jun 2018 18:58:01 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 06 Jun 2018 18:58:01 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 06 Jun 2018 19:01:25 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-0-dev 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--disable-cgi 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 06 Jun 2018 19:01:25 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Wed, 06 Jun 2018 19:01:26 GMT
RUN docker-php-ext-enable sodium
# Wed, 06 Jun 2018 19:01:26 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 06 Jun 2018 19:01:27 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Wed, 06 Jun 2018 19:01:27 GMT
WORKDIR /var/www/html
# Wed, 06 Jun 2018 19:01:27 GMT
EXPOSE 80/tcp
# Wed, 06 Jun 2018 19:01:27 GMT
CMD ["apache2-foreground"]
# Thu, 07 Jun 2018 03:35:01 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libjpeg-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Thu, 07 Jun 2018 03:35:02 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 07 Jun 2018 03:35:02 GMT
RUN a2enmod rewrite expires
# Thu, 07 Jun 2018 03:35:03 GMT
VOLUME [/var/www/html]
# Thu, 07 Jun 2018 03:35:03 GMT
ENV WORDPRESS_VERSION=4.9.6
# Thu, 07 Jun 2018 03:35:03 GMT
ENV WORDPRESS_SHA1=40616b40d120c97205e5852c03096115c2fca537
# Thu, 07 Jun 2018 03:35:07 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Thu, 07 Jun 2018 03:35:07 GMT
COPY file:3d3c99e98daa50fa9919315d4531e921f800fc011486bda46e9d6dcea82dd53c in /usr/local/bin/ 
# Thu, 07 Jun 2018 03:35:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Jun 2018 03:35:07 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:f2aa67a397c49232112953088506d02074a1fe577f65dc2052f158a3e5da52e8`  
		Last Modified: Sat, 28 Apr 2018 09:31:20 GMT  
		Size: 22.5 MB (22496029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c3122805fd6b61aedc41ea32477bdf861be02f3560440251bd911932e488a9d`  
		Last Modified: Wed, 06 Jun 2018 21:59:44 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98ce407ee18ac151a8512a105ca584f4b200ec3ec35c88ed9435e2840cbdf4d5`  
		Last Modified: Wed, 06 Jun 2018 22:00:13 GMT  
		Size: 67.5 MB (67458085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a56b8f1ca720c6f5d40d35bd3e56b39d9f42373fc6f8fdfb47b6b0352ed10dd`  
		Last Modified: Wed, 06 Jun 2018 21:59:43 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eb04e3939f2dc669c1cc56cb6afef217ae444bed94fd1a9cb6d55e354f7b453`  
		Last Modified: Wed, 06 Jun 2018 22:02:15 GMT  
		Size: 17.1 MB (17128025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5ecc66c0a5f916b543f434285d6686abac5789a679529f25383d8d9ce1da648`  
		Last Modified: Wed, 06 Jun 2018 22:02:09 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30ebdb4a78e1b75b790dd3816473d42b9c82ceab74a2cb166095d745be8167e7`  
		Last Modified: Wed, 06 Jun 2018 22:02:07 GMT  
		Size: 431.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e9c0e2ba7f1da3cdead974697d5fe11070c0b5d78a4bdeedc44ead76c4a3ab4`  
		Last Modified: Wed, 06 Jun 2018 22:02:06 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da976026223ed90bc7b47562851bd48339fe731d58be723e1c3fd31bc7f1e4f4`  
		Last Modified: Wed, 06 Jun 2018 22:02:05 GMT  
		Size: 485.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c97e6cef8eb4d8d09409ba22e1977891b703da0f822c24808645472fff31be51`  
		Last Modified: Wed, 06 Jun 2018 22:02:08 GMT  
		Size: 12.5 MB (12462591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7d37db38fe68460bce0c03cd801924891d6c4f100f7a3e8c9698eba301b6b02`  
		Last Modified: Wed, 06 Jun 2018 22:02:04 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fbe9ea008c23e870131907efe4ade3d39ec12327c95ca8b020d1bfe01838ec1`  
		Last Modified: Wed, 06 Jun 2018 22:02:09 GMT  
		Size: 15.2 MB (15199097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5247a62a2b6d293dcb00ec4cca4240ff7a87cd14ee757c2428fe3885336bb53`  
		Last Modified: Wed, 06 Jun 2018 22:02:02 GMT  
		Size: 2.2 KB (2195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a430e65efb58b44080802c8c3d946eea4d93741f3421ac2c933ebe5801102876`  
		Last Modified: Wed, 06 Jun 2018 22:02:02 GMT  
		Size: 263.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9afdee095b5b73d78123ff23b21da567a80d6fe48b8dba5091f4e8028783a42b`  
		Last Modified: Wed, 06 Jun 2018 22:02:02 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12d5f9a19746217a7fd6ca5b5ab9ba2cf64a5929451ede885e0e2dc52e187e05`  
		Last Modified: Thu, 07 Jun 2018 03:55:43 GMT  
		Size: 1.1 MB (1118518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f785e67a07efb9d2c8843a6efd37ac89dd02b273db9825fd61b077c5279afa02`  
		Last Modified: Thu, 07 Jun 2018 03:55:43 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5663bbfd9606dbf0bb0e58411f82e0d98e002a497784e7fd66943e20ed82eab2`  
		Last Modified: Thu, 07 Jun 2018 03:55:43 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff13a5b7e05edcdce695a76809ec849c893587ae2f7b2610432aab6bcbcffcfd`  
		Last Modified: Thu, 07 Jun 2018 03:55:47 GMT  
		Size: 8.6 MB (8600132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:710c4b456373f1bc0947755b493cf965a751e8527cfa415e954a434f70568551`  
		Last Modified: Thu, 07 Jun 2018 03:55:43 GMT  
		Size: 3.4 KB (3362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:latest` - linux; arm variant v5

```console
$ docker pull wordpress@sha256:5f023522f8f04b11f76486eb83c0ea883e381f33845447552eaf9287acf49fcb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.2 MB (132206482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89d0571819ec85ab3d6cc23018cb270b3166584553a005cb7385e195be583a40`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Sat, 28 Apr 2018 09:40:18 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Sat, 26 May 2018 08:52:34 GMT
ENV PHP_VERSION=7.2.6
# Sat, 26 May 2018 08:52:34 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.6.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.6.tar.xz.asc/from/this/mirror
# Sat, 26 May 2018 08:52:34 GMT
ENV PHP_SHA256=1f004e049788a3effc89ef417f06a6cf704c95ae2a718b2175185f2983381ae7 PHP_MD5=
# Sat, 26 May 2018 08:52:48 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 26 May 2018 08:52:48 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 26 May 2018 08:55:27 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-0-dev 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--disable-cgi 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 26 May 2018 08:55:28 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Sat, 26 May 2018 08:55:29 GMT
RUN docker-php-ext-enable sodium
# Sat, 26 May 2018 08:55:30 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 26 May 2018 08:55:30 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 26 May 2018 08:55:31 GMT
WORKDIR /var/www/html
# Sat, 26 May 2018 08:55:31 GMT
EXPOSE 80/tcp
# Sat, 26 May 2018 08:55:31 GMT
CMD ["apache2-foreground"]
# Sat, 26 May 2018 09:49:09 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libjpeg-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Sat, 26 May 2018 09:49:10 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 26 May 2018 09:49:11 GMT
RUN a2enmod rewrite expires
# Sat, 26 May 2018 09:49:11 GMT
VOLUME [/var/www/html]
# Sat, 26 May 2018 09:49:11 GMT
ENV WORDPRESS_VERSION=4.9.6
# Sat, 26 May 2018 09:49:12 GMT
ENV WORDPRESS_SHA1=40616b40d120c97205e5852c03096115c2fca537
# Sat, 26 May 2018 09:49:15 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Sat, 26 May 2018 09:49:15 GMT
COPY file:3d3c99e98daa50fa9919315d4531e921f800fc011486bda46e9d6dcea82dd53c in /usr/local/bin/ 
# Sat, 26 May 2018 09:49:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 26 May 2018 09:49:16 GMT
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
	-	`sha256:841c41ef120abc9e3c33ab5e8b665e1c66b8ca4bd93689cf75183ccd55776e64`  
		Last Modified: Sat, 26 May 2018 09:07:36 GMT  
		Size: 12.5 MB (12460549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:236fb57d28a5fc947631d8cca3bb87f263181186e496fe3a06677b9e2820140b`  
		Last Modified: Sat, 26 May 2018 09:07:33 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:083d80936dafbf19324007048c633e5334468f43d355e5768206589167909360`  
		Last Modified: Sat, 26 May 2018 09:07:39 GMT  
		Size: 14.7 MB (14743588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19fdb05f811fe86904a2963f1909326bfa7433cad9df19321c54da49d4f80644`  
		Last Modified: Sat, 26 May 2018 09:07:33 GMT  
		Size: 2.2 KB (2196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6baca0a3d295247236ada029799fc3cc5eb5db0ae452a3a037849ad44b8b540`  
		Last Modified: Sat, 26 May 2018 09:07:33 GMT  
		Size: 268.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6553faba67600599d235a6ff1e70cd8eb6888224cf7a94c483f0bd14ac2e55d2`  
		Last Modified: Sat, 26 May 2018 09:07:33 GMT  
		Size: 905.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7231a03ae698e624f4b4faab631484b934a8b8e2f5312c2f5f1261b2e4d8c0cc`  
		Last Modified: Sat, 26 May 2018 09:59:07 GMT  
		Size: 1.1 MB (1073963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d64d92df42f0e6835fd9a8dca988cfc265823c99b545a314267252f723c7a1c`  
		Last Modified: Sat, 26 May 2018 09:59:07 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b955dab02c0baa1fd94c6b969a229a8e4c762b04441b8efabd4de47998958c8`  
		Last Modified: Sat, 26 May 2018 09:59:07 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94c99c5c0cdbf0ee85388b05d8a88a2e709737180e887a02fd19b67d5840a12f`  
		Last Modified: Sat, 26 May 2018 09:59:11 GMT  
		Size: 8.6 MB (8600115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7cd908271f45f03eba678c146914aa59013bd12f5e3a6576f9be36009b409d4`  
		Last Modified: Sat, 26 May 2018 09:59:07 GMT  
		Size: 3.4 KB (3359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:latest` - linux; arm variant v7

```console
$ docker pull wordpress@sha256:f3c98ad2befda79ef33ad5c04f0e047f358700d81f3a684eaf5d906b67e7d6a2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.0 MB (125003630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96563eabba50c4288fdde2c5c91cbb7c7d56b7627c0c2fb6e2d1c573899a4db8`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Sat, 28 Apr 2018 12:51:49 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Sat, 26 May 2018 12:02:28 GMT
ENV PHP_VERSION=7.2.6
# Sat, 26 May 2018 12:02:29 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.6.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.6.tar.xz.asc/from/this/mirror
# Sat, 26 May 2018 12:02:29 GMT
ENV PHP_SHA256=1f004e049788a3effc89ef417f06a6cf704c95ae2a718b2175185f2983381ae7 PHP_MD5=
# Sat, 26 May 2018 12:02:41 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 26 May 2018 12:02:42 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 26 May 2018 12:05:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-0-dev 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--disable-cgi 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 26 May 2018 12:05:13 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Sat, 26 May 2018 12:05:14 GMT
RUN docker-php-ext-enable sodium
# Sat, 26 May 2018 12:05:15 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 26 May 2018 12:05:15 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 26 May 2018 12:05:16 GMT
WORKDIR /var/www/html
# Sat, 26 May 2018 12:05:16 GMT
EXPOSE 80/tcp
# Sat, 26 May 2018 12:05:17 GMT
CMD ["apache2-foreground"]
# Sat, 26 May 2018 13:02:07 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libjpeg-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Sat, 26 May 2018 13:02:13 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 26 May 2018 13:02:14 GMT
RUN a2enmod rewrite expires
# Sat, 26 May 2018 13:02:15 GMT
VOLUME [/var/www/html]
# Sat, 26 May 2018 13:02:15 GMT
ENV WORDPRESS_VERSION=4.9.6
# Sat, 26 May 2018 13:02:15 GMT
ENV WORDPRESS_SHA1=40616b40d120c97205e5852c03096115c2fca537
# Sat, 26 May 2018 13:02:18 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Sat, 26 May 2018 13:02:29 GMT
COPY file:3d3c99e98daa50fa9919315d4531e921f800fc011486bda46e9d6dcea82dd53c in /usr/local/bin/ 
# Sat, 26 May 2018 13:02:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 26 May 2018 13:02:30 GMT
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
	-	`sha256:635459243c02fa6de65cd3a457d26b14b7a409274940538ac3f962d0023b4b06`  
		Last Modified: Sat, 26 May 2018 12:18:14 GMT  
		Size: 12.5 MB (12460492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39ad7b9f53592a030642d30714a004c835f8ad71220355b248abba544fdb5b5`  
		Last Modified: Sat, 26 May 2018 12:18:11 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:495147396092eead61306c6f7109c8eadedb5004bcabb01717425eb5d3ba5287`  
		Last Modified: Sat, 26 May 2018 12:18:15 GMT  
		Size: 13.9 MB (13880290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0839d36a2dd737e0fca696a28ad8af963d4335a915fe1e8445c8b3747d661b5e`  
		Last Modified: Sat, 26 May 2018 12:18:11 GMT  
		Size: 2.2 KB (2193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1ccce5f5b4787c8cebc4c25da7368f02d8fdc8d78f27d9ebfad312678044c6a`  
		Last Modified: Sat, 26 May 2018 12:18:11 GMT  
		Size: 268.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9edf47b895a10e14953f74aee96f98ebb1c0758752f70473ab3a2decc521c47`  
		Last Modified: Sat, 26 May 2018 12:18:11 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:212ff8f8978a8f3ccb42579cf03aa26df243257b0cf5fc63ee57971e7c5d79e3`  
		Last Modified: Sat, 26 May 2018 13:13:41 GMT  
		Size: 1.0 MB (1007448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:884a1a11121adb25df5af1b971baad91d60f88e423ef545f4c8136b6e8d8bc5a`  
		Last Modified: Sat, 26 May 2018 13:13:38 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e5774b3487bd56125eda129f5e42929922b13bb7da356bfa60289f963163538`  
		Last Modified: Sat, 26 May 2018 13:13:37 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dd811db00b5cb9b1fe82b73a4c2793713c0bb4e28fe1a11daab1a8276ef538a`  
		Last Modified: Sat, 26 May 2018 13:13:43 GMT  
		Size: 8.6 MB (8600109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bd7e90599859c7b9c15334f2f777c6a5b49dbb70c51e2cb37b549ff467bf001`  
		Last Modified: Sat, 26 May 2018 13:13:39 GMT  
		Size: 3.4 KB (3361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:latest` - linux; arm64 variant v8

```console
$ docker pull wordpress@sha256:49a912e35b073b607dd9f5d6004268b93df91309f66c6b70a9d27a6b17a28209
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.3 MB (131321991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83a670bfa420c57bb8eed32b16d4d6a45742ea59df481d01c8fafd0ada765846`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 30 Apr 2018 23:33:18 GMT
ADD file:d423aa6d423df239af0602fe8134c14cb277778de23c8553d629d3b4b510f38b in / 
# Mon, 30 Apr 2018 23:33:20 GMT
CMD ["bash"]
# Tue, 01 May 2018 03:27:45 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 01 May 2018 03:27:47 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 01 May 2018 03:30:48 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 01 May 2018 03:30:50 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 01 May 2018 03:30:52 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 01 May 2018 03:44:48 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 03:44:50 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 01 May 2018 03:44:51 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 01 May 2018 03:44:55 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 01 May 2018 03:45:00 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 01 May 2018 03:45:03 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 01 May 2018 03:45:09 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 01 May 2018 03:45:10 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 01 May 2018 03:45:11 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 01 May 2018 03:45:14 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 01 May 2018 03:45:15 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 01 May 2018 03:45:16 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 01 May 2018 03:45:19 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Sat, 26 May 2018 09:38:22 GMT
ENV PHP_VERSION=7.2.6
# Sat, 26 May 2018 09:38:23 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.6.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.6.tar.xz.asc/from/this/mirror
# Sat, 26 May 2018 09:38:23 GMT
ENV PHP_SHA256=1f004e049788a3effc89ef417f06a6cf704c95ae2a718b2175185f2983381ae7 PHP_MD5=
# Sat, 26 May 2018 09:38:54 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 26 May 2018 09:38:55 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 26 May 2018 09:44:39 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-0-dev 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--disable-cgi 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 26 May 2018 09:44:40 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Sat, 26 May 2018 09:44:42 GMT
RUN docker-php-ext-enable sodium
# Sat, 26 May 2018 09:44:43 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 26 May 2018 09:44:44 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 26 May 2018 09:44:44 GMT
WORKDIR /var/www/html
# Sat, 26 May 2018 09:44:45 GMT
EXPOSE 80/tcp
# Sat, 26 May 2018 09:44:45 GMT
CMD ["apache2-foreground"]
# Sat, 26 May 2018 13:04:04 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libjpeg-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Sat, 26 May 2018 13:04:05 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 26 May 2018 13:04:07 GMT
RUN a2enmod rewrite expires
# Sat, 26 May 2018 13:04:08 GMT
VOLUME [/var/www/html]
# Sat, 26 May 2018 13:04:08 GMT
ENV WORDPRESS_VERSION=4.9.6
# Sat, 26 May 2018 13:04:09 GMT
ENV WORDPRESS_SHA1=40616b40d120c97205e5852c03096115c2fca537
# Sat, 26 May 2018 13:04:13 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Sat, 26 May 2018 13:04:14 GMT
COPY file:3d3c99e98daa50fa9919315d4531e921f800fc011486bda46e9d6dcea82dd53c in /usr/local/bin/ 
# Sat, 26 May 2018 13:04:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 26 May 2018 13:04:15 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:18d6337cc9064ce5276eac2eb6da6c5fe3f204bc7f1392f5ad1ba468817c609e`  
		Last Modified: Mon, 30 Apr 2018 23:54:34 GMT  
		Size: 20.3 MB (20347907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a40d613d8ef51a57e39a3603130c8fc985ca25358a992a2c9eac720c35fb5e0d`  
		Last Modified: Tue, 01 May 2018 07:07:20 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:decc788d58df1cd21b94578b45ec7861b0297eadee50ad8808095a5c9e3b0c13`  
		Last Modified: Tue, 01 May 2018 07:08:57 GMT  
		Size: 57.6 MB (57636138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4737ac21bc0a165daa173610231dd3caa6b3e14522fc6bfaebb747a35907be75`  
		Last Modified: Tue, 01 May 2018 07:07:20 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:411c449fd98250bad17ed656274a09a19f7e5643eead7b7d72c77f60c563c504`  
		Last Modified: Tue, 01 May 2018 07:11:06 GMT  
		Size: 16.7 MB (16702542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:913d86d546502bcb96cd5e35262ceead171c218bcfce1500e30e0745246d0b9b`  
		Last Modified: Tue, 01 May 2018 07:10:43 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68e2a11789dada8c9c376294cd727ec668e2915a9d5dcd55e72b7454f23a5eb4`  
		Last Modified: Tue, 01 May 2018 07:10:41 GMT  
		Size: 431.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eeb6f413689fba6811ef44fdd7ec33195cba148671bac2407c6d1e4288a00eca`  
		Last Modified: Tue, 01 May 2018 07:10:40 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5c352f2452881b1479113e963aa4e9e68a086f71018af57c7c19111d121dc0b`  
		Last Modified: Tue, 01 May 2018 07:10:41 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91618412464d4d16ec8b50ffc34ae458d54fe2501d64bb6c11454c09b0bea238`  
		Last Modified: Sat, 26 May 2018 10:59:04 GMT  
		Size: 12.5 MB (12461052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a12f7e94c8518923395b901172d68d14e35f9c5fdb463803b555e615dbde4a6`  
		Last Modified: Sat, 26 May 2018 10:59:00 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ba810a6801ad45cbb6bcc60cb062a155f17bfcbfc98d86caa6ef83ed7f1593a`  
		Last Modified: Sat, 26 May 2018 10:59:06 GMT  
		Size: 14.5 MB (14516114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a262ffbfe71fa624e8f0a9439d6d5cfde9e1c725c0ec2437bd6a73253454e99`  
		Last Modified: Sat, 26 May 2018 10:59:00 GMT  
		Size: 2.2 KB (2194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddb05dcd2f948a27c060c9f0e39e4e1be20895d1a71eff53cb188f8d8fe20253`  
		Last Modified: Sat, 26 May 2018 10:59:00 GMT  
		Size: 268.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:032df3819c79e1f708e8fef11968bba5643ef2f924f8bb8746d3ed5b67edd74c`  
		Last Modified: Sat, 26 May 2018 10:59:01 GMT  
		Size: 906.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7227b5c2df9be758e2728a49406ed93369d956ba3bc8a00cf33da4c79cfd0c89`  
		Last Modified: Sat, 26 May 2018 13:15:29 GMT  
		Size: 1.0 MB (1047354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d36fee970b2002f0728624bbdf709b932e777f5395542ce3c5f2cafd99ece404`  
		Last Modified: Sat, 26 May 2018 13:15:29 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:425ef14a67b35d2568014efd1f6992b1ab1bba810bff372fa9b641b7be77d209`  
		Last Modified: Sat, 26 May 2018 13:15:29 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:836a395d60215ab9bfbee3227dfb24bca89211551332c0a175783de2870bc970`  
		Last Modified: Sat, 26 May 2018 13:15:32 GMT  
		Size: 8.6 MB (8600127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06da2ab1d71c9bfec0ba3ffdb5ba88f32bba82a32658eeb097d89dc2c1a409cf`  
		Last Modified: Sat, 26 May 2018 13:15:29 GMT  
		Size: 3.4 KB (3362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:latest` - linux; 386

```console
$ docker pull wordpress@sha256:be39b59185dbde7d69fb18c127db862756047640721df5ea230dcbd18b41d5ec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.1 MB (150094611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45a4af23adccaadcf12f90adac4429f7d3f4949b1d591932a9a7b67e72ccac3d`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Thu, 31 May 2018 06:56:50 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Thu, 31 May 2018 06:56:50 GMT
ENV PHP_VERSION=7.2.6
# Thu, 31 May 2018 06:56:51 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.6.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.6.tar.xz.asc/from/this/mirror
# Thu, 31 May 2018 06:56:51 GMT
ENV PHP_SHA256=1f004e049788a3effc89ef417f06a6cf704c95ae2a718b2175185f2983381ae7 PHP_MD5=
# Thu, 31 May 2018 06:57:29 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Thu, 31 May 2018 06:57:30 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 31 May 2018 07:00:25 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-0-dev 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--disable-cgi 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Thu, 31 May 2018 07:00:25 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Thu, 31 May 2018 07:00:26 GMT
RUN docker-php-ext-enable sodium
# Thu, 31 May 2018 07:00:26 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 31 May 2018 07:00:27 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Thu, 31 May 2018 07:00:27 GMT
WORKDIR /var/www/html
# Thu, 31 May 2018 07:00:27 GMT
EXPOSE 80/tcp
# Thu, 31 May 2018 07:00:27 GMT
CMD ["apache2-foreground"]
# Thu, 31 May 2018 14:56:50 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libjpeg-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Thu, 31 May 2018 14:56:51 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 31 May 2018 14:56:52 GMT
RUN a2enmod rewrite expires
# Thu, 31 May 2018 14:56:52 GMT
VOLUME [/var/www/html]
# Thu, 31 May 2018 14:56:52 GMT
ENV WORDPRESS_VERSION=4.9.6
# Thu, 31 May 2018 14:56:52 GMT
ENV WORDPRESS_SHA1=40616b40d120c97205e5852c03096115c2fca537
# Thu, 31 May 2018 14:56:57 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Thu, 31 May 2018 14:56:57 GMT
COPY file:3d3c99e98daa50fa9919315d4531e921f800fc011486bda46e9d6dcea82dd53c in /usr/local/bin/ 
# Thu, 31 May 2018 14:56:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 31 May 2018 14:56:57 GMT
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
	-	`sha256:88e6d033ae9df51673f4bac37983a39189a42aebbc097ecf0ffa547e1cbfab63`  
		Last Modified: Thu, 31 May 2018 09:25:03 GMT  
		Size: 12.5 MB (12462039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:701f3e3ca5db5d4a73901c3dd6532a99b598c5a59cbac73008b25ecb573de57b`  
		Last Modified: Thu, 31 May 2018 09:24:57 GMT  
		Size: 503.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ed5bd869d9f69cee5c8ccb54e15fe50ecb6a3736fced0e688933620063150bf`  
		Last Modified: Thu, 31 May 2018 09:25:05 GMT  
		Size: 15.6 MB (15638089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7429459034d7a90a80a938c68efe469c48effeae891a6719a761dca8d270c84`  
		Last Modified: Thu, 31 May 2018 09:24:56 GMT  
		Size: 2.2 KB (2194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29096deadf3d43d7d67041e118f6dd7ce67991bef31e2868e86c7355f71e926e`  
		Last Modified: Thu, 31 May 2018 09:24:58 GMT  
		Size: 263.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:262c6061b861e5ec16dc0a57be78953b9f7be2ea78ee69453e3f29103c81996f`  
		Last Modified: Thu, 31 May 2018 09:24:57 GMT  
		Size: 905.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:021864beea46c8729b7b1a023d412c12f9a5b722d5cb249156db4c08dd5e4e51`  
		Last Modified: Thu, 31 May 2018 15:17:24 GMT  
		Size: 1.2 MB (1168025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60e738798ab41a154626561432b5fd0554471a1698d1d8711e31b989a85f12bd`  
		Last Modified: Thu, 31 May 2018 15:17:24 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2476a2b31385d1c2483baa3f746947f29828d2860ca64cab50605004fe60d07c`  
		Last Modified: Thu, 31 May 2018 15:17:23 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5639f9f84628d744ce4b3fa7ef7b426265fa3f39c0281706dc9533255df5d9e4`  
		Last Modified: Thu, 31 May 2018 15:17:28 GMT  
		Size: 8.6 MB (8600133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4b1a652f3f9070b62319fb281ba5e7660f401904b8ffae51042711cfa9a29de`  
		Last Modified: Thu, 31 May 2018 15:17:25 GMT  
		Size: 3.4 KB (3362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:latest` - linux; ppc64le

```console
$ docker pull wordpress@sha256:460944cea9e6c0b2f0e31650fbe6d63351ebe8ae3e2e6a1978686e98ac1b11bd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.5 MB (139481371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3ea012e8660690565f1d9bc11b62ce0b764793b8c8eb06894f0c92fb8d0a9b7`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Sat, 28 Apr 2018 10:26:18 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Sat, 26 May 2018 08:33:58 GMT
ENV PHP_VERSION=7.2.6
# Sat, 26 May 2018 08:34:04 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.6.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.6.tar.xz.asc/from/this/mirror
# Sat, 26 May 2018 08:34:32 GMT
ENV PHP_SHA256=1f004e049788a3effc89ef417f06a6cf704c95ae2a718b2175185f2983381ae7 PHP_MD5=
# Sat, 26 May 2018 08:36:34 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 26 May 2018 08:36:35 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 26 May 2018 08:41:45 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-0-dev 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--disable-cgi 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 26 May 2018 08:41:46 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Sat, 26 May 2018 08:41:48 GMT
RUN docker-php-ext-enable sodium
# Sat, 26 May 2018 08:41:49 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 26 May 2018 08:41:49 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 26 May 2018 08:41:51 GMT
WORKDIR /var/www/html
# Sat, 26 May 2018 08:41:52 GMT
EXPOSE 80/tcp
# Sat, 26 May 2018 08:41:52 GMT
CMD ["apache2-foreground"]
# Sat, 26 May 2018 10:40:15 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libjpeg-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Sat, 26 May 2018 10:40:21 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 26 May 2018 10:40:23 GMT
RUN a2enmod rewrite expires
# Sat, 26 May 2018 10:40:27 GMT
VOLUME [/var/www/html]
# Sat, 26 May 2018 10:40:28 GMT
ENV WORDPRESS_VERSION=4.9.6
# Sat, 26 May 2018 10:40:31 GMT
ENV WORDPRESS_SHA1=40616b40d120c97205e5852c03096115c2fca537
# Sat, 26 May 2018 10:40:41 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Sat, 26 May 2018 10:40:46 GMT
COPY file:3d3c99e98daa50fa9919315d4531e921f800fc011486bda46e9d6dcea82dd53c in /usr/local/bin/ 
# Sat, 26 May 2018 10:40:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 26 May 2018 10:40:47 GMT
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
	-	`sha256:f29efb207eea8ce0671b432dafa705fa17e479444ae5ac79933e97ca7d9a9ee8`  
		Last Modified: Sat, 26 May 2018 09:29:57 GMT  
		Size: 12.5 MB (12460914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dce9af13ae5fc0fe784d72f93347e20a1aaefde502c4e34f37239defa5277a5`  
		Last Modified: Sat, 26 May 2018 09:29:51 GMT  
		Size: 503.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d7a655d040d7e9ca8ffecef662e7546a27cb29362bf5957b5b4dcfafe51fdba`  
		Last Modified: Sat, 26 May 2018 09:29:57 GMT  
		Size: 15.4 MB (15350242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:277f79db4837914d5f6d889923d3ef0b1dbb8b0e414280af2dfa0f18bbba9677`  
		Last Modified: Sat, 26 May 2018 09:29:53 GMT  
		Size: 2.2 KB (2195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03533503866e161153e74d3889f3b3e953ef0f7e64d2b947bfb77a9cbf91066c`  
		Last Modified: Sat, 26 May 2018 09:29:52 GMT  
		Size: 268.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:069d629944b5451c6b67cc75c6ed6cb10be24a096785a3ab191acdc1c0087782`  
		Last Modified: Sat, 26 May 2018 09:29:51 GMT  
		Size: 905.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25d1dd4fe56e3546577628f02deb227736282843c471edc850f680b5fbcdb6d1`  
		Last Modified: Sat, 26 May 2018 11:01:51 GMT  
		Size: 1.1 MB (1125878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcdf437500c315f7df4b02052e95fa60aa3ebc5d8f903c040b086cf275ad3290`  
		Last Modified: Sat, 26 May 2018 11:01:51 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24d3b3cb46e94c8e4a998790207a8fd86dc4629e8a7e257673a1bedeeea3957a`  
		Last Modified: Sat, 26 May 2018 11:01:51 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c41cb29025911ad4f13a6520b00db28c45ad54fb5eff6b5b7f77abd2a8155550`  
		Last Modified: Sat, 26 May 2018 11:01:54 GMT  
		Size: 8.6 MB (8600106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ee9273622e5abc88ee2619f3dc20672369c883576464dc643b94d9d398a71b1`  
		Last Modified: Sat, 26 May 2018 11:01:51 GMT  
		Size: 3.4 KB (3360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
