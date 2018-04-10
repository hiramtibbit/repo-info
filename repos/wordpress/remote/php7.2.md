## `wordpress:php7.2`

```console
$ docker pull wordpress@sha256:d4da865368783a68f57628f14615a6190dccac9665114a2a3742baa571360eb5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `wordpress:php7.2` - linux; arm64 variant v8

```console
$ docker pull wordpress@sha256:1fe955632f7c2f07da1197847c3a845d8a2df4bcbb9fdec577ef9fdfcc849d0e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.0 MB (131046749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64f86736a8b5c9bf0559faf5dd782650d339c1ca1086248c574d821354febdb7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 14 Mar 2018 17:31:57 GMT
ADD file:c8a9419b2fbc1297f28b404507a39054e101a6f21f15c352b351cab19067cb4f in / 
# Wed, 14 Mar 2018 17:31:57 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 21:14:16 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 14 Mar 2018 21:14:17 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 14 Mar 2018 21:15:28 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 14 Mar 2018 21:15:33 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 14 Mar 2018 21:15:34 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 14 Mar 2018 21:27:56 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 21:28:09 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 14 Mar 2018 21:28:10 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 14 Mar 2018 21:28:12 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 14 Mar 2018 21:28:28 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 14 Mar 2018 21:28:29 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 14 Mar 2018 21:28:44 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 14 Mar 2018 21:28:45 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 14 Mar 2018 21:29:00 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 14 Mar 2018 21:29:01 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 14 Mar 2018 21:29:02 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 14 Mar 2018 21:29:17 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 14 Mar 2018 21:29:18 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Wed, 14 Mar 2018 21:29:18 GMT
ENV PHP_VERSION=7.2.3
# Wed, 14 Mar 2018 21:29:34 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.3.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.3.tar.xz.asc/from/this/mirror
# Wed, 14 Mar 2018 21:29:34 GMT
ENV PHP_SHA256=b3a94f1b562f413c0b96f54bc309706d83b29ac65d9b172bc7ed9fb40a5e651f PHP_MD5=
# Wed, 14 Mar 2018 21:31:06 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 14 Mar 2018 21:31:11 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 23 Mar 2018 02:12:09 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-0-dev 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 23 Mar 2018 02:12:10 GMT
COPY multi:cb6c9a453a971f0ed6bdf30b12bc250bbe068005b3c3b084f5048cbf9787fb8d in /usr/local/bin/ 
# Fri, 23 Mar 2018 02:12:12 GMT
RUN docker-php-ext-enable sodium
# Fri, 23 Mar 2018 02:12:12 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 23 Mar 2018 02:12:13 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 23 Mar 2018 02:12:14 GMT
WORKDIR /var/www/html
# Fri, 23 Mar 2018 02:12:14 GMT
EXPOSE 80/tcp
# Fri, 23 Mar 2018 02:12:15 GMT
CMD ["apache2-foreground"]
# Fri, 23 Mar 2018 04:27:48 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libjpeg-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Fri, 23 Mar 2018 04:27:54 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 23 Mar 2018 04:27:56 GMT
RUN a2enmod rewrite expires
# Fri, 23 Mar 2018 04:28:13 GMT
VOLUME [/var/www/html]
# Tue, 10 Apr 2018 03:57:30 GMT
ENV WORDPRESS_VERSION=4.9.5
# Tue, 10 Apr 2018 03:57:34 GMT
ENV WORDPRESS_SHA1=6992f19163e21720b5693bed71ffe1ab17a4533a
# Tue, 10 Apr 2018 03:57:50 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 10 Apr 2018 03:57:53 GMT
COPY file:3d3c99e98daa50fa9919315d4531e921f800fc011486bda46e9d6dcea82dd53c in /usr/local/bin/ 
# Tue, 10 Apr 2018 03:57:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Apr 2018 03:58:00 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:fe48c4e9ee8492678b1070a971759d407b15524c49c40762b590ba4b52766dde`  
		Last Modified: Wed, 14 Mar 2018 17:47:11 GMT  
		Size: 20.3 MB (20337203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64fdbfb38abf6d887b564cbb0e1342a7d303352ba6095d3ad40403459974e22d`  
		Last Modified: Thu, 15 Mar 2018 00:06:35 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d832d7de0a4104408d2a250661b77ec66a7fd9c252dc61c7e26d05b06ebd8fd3`  
		Last Modified: Thu, 15 Mar 2018 00:06:58 GMT  
		Size: 57.6 MB (57633905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c940b6a858d2a57c20620b395cfa939102e6f64c9db4cd3382125241d0b9f10`  
		Last Modified: Thu, 15 Mar 2018 00:06:33 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dc7004643f8803f6492d7854a7218bc22f8a76cf6c8785ed25b28df2f696c38`  
		Last Modified: Thu, 15 Mar 2018 00:12:27 GMT  
		Size: 16.7 MB (16701754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa917a96540a7acf1795d883c28262b63da28d3cb685cff7210c5b3b9176ec92`  
		Last Modified: Thu, 15 Mar 2018 00:12:21 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77772d62ac310ad3f970a3fb7e4f09e7ce6c0a669dca5eff8ec09847ef897c2a`  
		Last Modified: Thu, 15 Mar 2018 00:12:20 GMT  
		Size: 434.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3fc65e11796b97f98eeff84f48f1a49613187645eaed616e5fdcb7d29c304ae`  
		Last Modified: Thu, 15 Mar 2018 00:12:20 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:603b8eb7a0bfb46e93397b065ba1ed6cb6c1181d9635f05fc103cfeeb60e64d2`  
		Last Modified: Thu, 15 Mar 2018 00:12:19 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ac108a5775b5e43663e6f6d631aa85edf9d58ffdbbe55dfaba31495defcafe9`  
		Last Modified: Thu, 15 Mar 2018 00:12:20 GMT  
		Size: 12.4 MB (12446005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84fc32c8f122123d48353472754d078f3479967da26fa8e391b46394e5f106f0`  
		Last Modified: Thu, 15 Mar 2018 00:12:18 GMT  
		Size: 502.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb8ada4065e90b7995976ba6e5a7d1548b24c88a948e937566d86e81562f2f95`  
		Last Modified: Fri, 23 Mar 2018 03:30:42 GMT  
		Size: 14.5 MB (14510755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d4a9261bf09db8f739ea682e68ce475f3057acad875ee358ffe9d07832db439`  
		Last Modified: Fri, 23 Mar 2018 03:30:36 GMT  
		Size: 2.2 KB (2189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4bc2a60af0e5f2bdd218591f18dc7bfffb4aa7b47c0ae3324d73981016873fb`  
		Last Modified: Fri, 23 Mar 2018 03:30:36 GMT  
		Size: 267.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f15fc97d206a3a16153ed1b229d49c302e772576c5b44ff3c4e4e8ac71f0d613`  
		Last Modified: Fri, 23 Mar 2018 03:30:36 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1abb6775209c21e3d6e27c66da92e096948d3cce8a8e3371afe17dc76284ccf6`  
		Last Modified: Fri, 23 Mar 2018 04:39:19 GMT  
		Size: 984.3 KB (984264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:931278b0d1e27fb712c3a7d70d1698d41aa4f55dfd64c08750bbd20234d38aa3`  
		Last Modified: Fri, 23 Mar 2018 04:39:19 GMT  
		Size: 355.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa5db64128bb2c939ea967ab9ede82423b21e955291945b845a8ad31f685e748`  
		Last Modified: Fri, 23 Mar 2018 04:39:19 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:609384e14fdfca7704a52d1d601b2965ae6078d5171ff08cad52a7aabf81bc57`  
		Last Modified: Tue, 10 Apr 2018 04:18:19 GMT  
		Size: 8.4 MB (8422122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:036c6d476c57331b869c4d5a5a8c6860b566e5b4d02fd6fee6daecfe2947c010`  
		Last Modified: Tue, 10 Apr 2018 04:18:16 GMT  
		Size: 3.4 KB (3363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:php7.2` - linux; ppc64le

```console
$ docker pull wordpress@sha256:306e8ba421b7284a39100228073ab1764459e64f912538f2dad412409f4bd3b6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.7 MB (152694730 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cb830553882550c1b037d1a83e7099b6156ee0f68d8d172525fff716650a4de`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 14 Mar 2018 00:35:22 GMT
ADD file:eb08f3c15b97624b92d23e06e82a8de439723fe3fd0f2d75b242fd2a9b9abc51 in / 
# Wed, 14 Mar 2018 00:35:24 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 06:15:12 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Thu, 15 Mar 2018 06:15:14 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 15 Mar 2018 06:19:22 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 15 Mar 2018 06:19:23 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 15 Mar 2018 06:19:27 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 15 Mar 2018 06:31:07 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 06:31:10 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 15 Mar 2018 06:31:13 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 15 Mar 2018 06:31:17 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Thu, 15 Mar 2018 06:31:21 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Thu, 15 Mar 2018 06:31:24 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Thu, 15 Mar 2018 06:31:28 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Thu, 15 Mar 2018 06:31:31 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Thu, 15 Mar 2018 06:31:33 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Thu, 15 Mar 2018 06:31:36 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 15 Mar 2018 06:31:38 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 15 Mar 2018 06:31:41 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 15 Mar 2018 06:31:43 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 06 Apr 2018 18:06:37 GMT
ENV PHP_VERSION=7.2.4
# Fri, 06 Apr 2018 18:06:40 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.4.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.4.tar.xz.asc/from/this/mirror
# Fri, 06 Apr 2018 18:06:42 GMT
ENV PHP_SHA256=7916b1bd148ddfd46d7f8f9a517d4b09cd8a8ad9248734e7c8dd91ef17057a88 PHP_MD5=
# Fri, 06 Apr 2018 18:09:51 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 06 Apr 2018 18:09:56 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 06 Apr 2018 18:17:08 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-0-dev 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 06 Apr 2018 18:17:12 GMT
COPY multi:cb6c9a453a971f0ed6bdf30b12bc250bbe068005b3c3b084f5048cbf9787fb8d in /usr/local/bin/ 
# Fri, 06 Apr 2018 18:17:18 GMT
RUN docker-php-ext-enable sodium
# Fri, 06 Apr 2018 18:17:21 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 06 Apr 2018 18:17:23 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 06 Apr 2018 18:17:32 GMT
WORKDIR /var/www/html
# Fri, 06 Apr 2018 18:17:35 GMT
EXPOSE 80/tcp
# Fri, 06 Apr 2018 18:17:37 GMT
CMD ["apache2-foreground"]
# Fri, 06 Apr 2018 21:45:33 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libjpeg-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Fri, 06 Apr 2018 21:45:38 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 06 Apr 2018 21:45:42 GMT
RUN a2enmod rewrite expires
# Fri, 06 Apr 2018 21:45:49 GMT
VOLUME [/var/www/html]
# Tue, 10 Apr 2018 02:54:28 GMT
ENV WORDPRESS_VERSION=4.9.5
# Tue, 10 Apr 2018 02:54:31 GMT
ENV WORDPRESS_SHA1=6992f19163e21720b5693bed71ffe1ab17a4533a
# Tue, 10 Apr 2018 02:54:41 GMT
RUN set -ex; 	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz"; 	echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c -; 	tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 	chown -R www-data:www-data /usr/src/wordpress
# Tue, 10 Apr 2018 02:54:44 GMT
COPY file:3d3c99e98daa50fa9919315d4531e921f800fc011486bda46e9d6dcea82dd53c in /usr/local/bin/ 
# Tue, 10 Apr 2018 02:54:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Apr 2018 02:54:49 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:f3543c3a35ef83bbd42a728d1995f79f0163e330a44b0abe41042ac8b94787ca`  
		Last Modified: Thu, 15 Mar 2018 00:33:06 GMT  
		Size: 22.7 MB (22746142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07c34a7a5b7bd2ac7d2e4568586c91a41d360cde97ddcf60c58e69faeb045cfc`  
		Last Modified: Thu, 15 Mar 2018 08:46:09 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfc9d09d12f25b02eddbce4e362e51462fc5d1c63b2fb544b0a5a60a24feae22`  
		Last Modified: Thu, 15 Mar 2018 08:46:30 GMT  
		Size: 61.8 MB (61844725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65dd67495897f605b09cc705d820b293e8a70a0ac0ad8ae9705ecf9cd29af0ea`  
		Last Modified: Thu, 15 Mar 2018 08:46:07 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e067a66790214b727923fe910da4ebcb79ae56ccb77a4ac96853afdc1e66f17`  
		Last Modified: Thu, 15 Mar 2018 08:48:17 GMT  
		Size: 17.3 MB (17335833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:593a016a0bab3c77db32c1e2bdb22232838942c9eb5a39694d6a7153eec4f226`  
		Last Modified: Thu, 15 Mar 2018 08:48:11 GMT  
		Size: 1.3 KB (1278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:412c602dfd685b928522647398b6eb6e325e517ec86ca939218d69ef37d308ee`  
		Last Modified: Thu, 15 Mar 2018 08:48:11 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8074a91d2a55880f2f9dd8b72d02c9f4c2b04cc8268aa95be2a02cacc95cf37`  
		Last Modified: Thu, 15 Mar 2018 08:48:09 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b545296cf01e912fa8f7a572b87631308ca5a49d6e869d8ee6ff98fd6218da7a`  
		Last Modified: Thu, 15 Mar 2018 08:48:08 GMT  
		Size: 521.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f8f7378bf39009973355e03ea19e7cf624b01e595e6f0b5c834bd221f2c1b4d`  
		Last Modified: Fri, 06 Apr 2018 20:39:58 GMT  
		Size: 12.4 MB (12380402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe50eed0c0700773b0cb8ecf1cb70bbc5a71ffc69043864b0f1a4de62a33f182`  
		Last Modified: Fri, 06 Apr 2018 20:39:53 GMT  
		Size: 502.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7772fa98ad1ea31d158816ad70782323335d6300c51594b6cbab0b5c53255f06`  
		Last Modified: Fri, 06 Apr 2018 20:40:01 GMT  
		Size: 28.9 MB (28897427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8082e29fd862a1d97ac19f907a9fc3a31f2068ac7b1be2cbd7d67efb0551de2`  
		Last Modified: Fri, 06 Apr 2018 20:39:53 GMT  
		Size: 2.2 KB (2189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66b15429831559e07a604423d8ba5b04e851e5674f367bcf787bb3671d96110c`  
		Last Modified: Fri, 06 Apr 2018 20:39:53 GMT  
		Size: 267.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cc8de5e693d850a7ddf26c2c9af08588e0184cc1d46a96cd08776a2df7d95bc`  
		Last Modified: Fri, 06 Apr 2018 20:39:53 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd6ca4966ddaf398513fad3fda268ea77ad33e1342ca7b0348b235dd25813fdd`  
		Last Modified: Fri, 06 Apr 2018 21:58:59 GMT  
		Size: 1.1 MB (1057191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ee422900154c6a7cf78a26668b7036ed6e4b69b82120ed70db11123a1cc6a9a`  
		Last Modified: Fri, 06 Apr 2018 21:58:59 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48fc0f9c8c1e6388b2efa3800969cffd5bbdf4613361ab1e9e9c1480aea35e6c`  
		Last Modified: Fri, 06 Apr 2018 21:58:59 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f20fbb3bc7fed1b6a59c1cbc0ac1a2f9badc5fefb278141f757b94e05d0a836`  
		Last Modified: Tue, 10 Apr 2018 03:03:36 GMT  
		Size: 8.4 MB (8422137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56a1805a0d91024779a4e6d2235db73efa69ea2afdc6f776a4d75fdfcf21f9c4`  
		Last Modified: Tue, 10 Apr 2018 03:03:33 GMT  
		Size: 3.4 KB (3359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
