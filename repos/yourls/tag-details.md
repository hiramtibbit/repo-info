<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `yourls`

-	[`yourls:1`](#yourls1)
-	[`yourls:1.7`](#yourls17)
-	[`yourls:1.7.3`](#yourls173)
-	[`yourls:1.7.3-apache`](#yourls173-apache)
-	[`yourls:1.7.3-fpm`](#yourls173-fpm)
-	[`yourls:1.7.3-fpm-alpine`](#yourls173-fpm-alpine)
-	[`yourls:1.7-apache`](#yourls17-apache)
-	[`yourls:1.7-fpm`](#yourls17-fpm)
-	[`yourls:1.7-fpm-alpine`](#yourls17-fpm-alpine)
-	[`yourls:1-apache`](#yourls1-apache)
-	[`yourls:1-fpm`](#yourls1-fpm)
-	[`yourls:1-fpm-alpine`](#yourls1-fpm-alpine)
-	[`yourls:apache`](#yourlsapache)
-	[`yourls:fpm`](#yourlsfpm)
-	[`yourls:fpm-alpine`](#yourlsfpm-alpine)
-	[`yourls:latest`](#yourlslatest)

## `yourls:1`

```console
$ docker pull yourls@sha256:b93240de31344e21ece17db55b42551926ebf7ed9edff59de98457cc8ab200bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `yourls:1` - linux; amd64

```console
$ docker pull yourls@sha256:4962218b0809fc8cf63bf9eebfceba12d11f754f3669c23bc3481a952d9fa64c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.6 MB (137592705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c1c2d79eaa9e79809bbd5160f94daac5d40e72035e7c2e289b0ffd4df0af05f`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Sat, 29 Dec 2018 05:03:51 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 11 Jan 2019 01:14:55 GMT
ENV PHP_VERSION=7.2.14
# Fri, 11 Jan 2019 01:14:55 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror
# Fri, 11 Jan 2019 01:14:55 GMT
ENV PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f PHP_MD5=
# Fri, 11 Jan 2019 01:15:04 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 11 Jan 2019 01:15:04 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 11 Jan 2019 01:18:38 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 11 Jan 2019 01:18:38 GMT
COPY multi:0a6fe33cb39694994fa567c75b399b9aa5e477c8770caa9f731607a72819b457 in /usr/local/bin/ 
# Fri, 11 Jan 2019 01:18:39 GMT
RUN docker-php-ext-enable sodium
# Fri, 11 Jan 2019 01:18:39 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 11 Jan 2019 01:18:39 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Fri, 11 Jan 2019 01:18:40 GMT
WORKDIR /var/www/html
# Fri, 11 Jan 2019 01:18:40 GMT
EXPOSE 80
# Fri, 11 Jan 2019 01:18:40 GMT
CMD ["apache2-foreground"]
# Fri, 11 Jan 2019 03:24:43 GMT
RUN set -ex;     docker-php-ext-install opcache pdo_mysql mysqli
# Fri, 11 Jan 2019 03:24:44 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 11 Jan 2019 03:24:44 GMT
RUN a2enmod rewrite expires
# Fri, 11 Jan 2019 03:24:45 GMT
VOLUME [/var/www/html]
# Fri, 11 Jan 2019 03:24:45 GMT
ENV YOURLS_VERSION=1.7.2
# Fri, 11 Jan 2019 03:24:46 GMT
RUN set -ex; 	curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz"; 	tar -xzf yourls.tar.gz -C /usr/src/; 	mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls; 	rm yourls.tar.gz; 	chown -R www-data:www-data /usr/src/yourls
# Fri, 11 Jan 2019 03:24:47 GMT
COPY file:7722c9d76f082fb2683ec1d4befeaddd6c873c885172752cacb787e076d4dbeb in /usr/local/bin/ 
# Fri, 11 Jan 2019 03:24:47 GMT
COPY file:d375afac6cf463942802d2b27f08ef4d6198ac33f536b334f195e2e479c4cd6f in /var/www/html/ 
# Fri, 11 Jan 2019 03:24:47 GMT
COPY file:5b7ff05d0c98ad759c4bec0ef8a7ce74cae42e95b42564b55f43b341c2c3e3f5 in /var/www/html/ 
# Fri, 11 Jan 2019 03:24:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 03:24:48 GMT
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
	-	`sha256:2a25fcb23d183d85904474bbb4a70acd54f799488ca33ee229f2ed1ad0ce9591`  
		Last Modified: Fri, 11 Jan 2019 01:53:42 GMT  
		Size: 12.5 MB (12506427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e496ab19dfffef5f7ced59f3bcf6175c1b94be12564b4d9c5645b7a93560192`  
		Last Modified: Fri, 11 Jan 2019 01:53:41 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a5d39fc92ab1ba459a1b1cf1b7f20656559f9f05537337ae1c51b7fdba66ffb`  
		Last Modified: Fri, 11 Jan 2019 01:53:44 GMT  
		Size: 15.2 MB (15246057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8603dc5a76e7c083140806cf44d4e1690e15d79cb135ba8e1d6705769b0851ba`  
		Last Modified: Fri, 11 Jan 2019 01:53:40 GMT  
		Size: 2.2 KB (2195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4525497200a2b96ba75f12c63aed6a62b6d03a207d2441de88bb6a7d881ac7b3`  
		Last Modified: Fri, 11 Jan 2019 01:53:40 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df66f65de27acc43763a4432f463d3337d0b23fd8db7ab223acc7017eeb4f763`  
		Last Modified: Fri, 11 Jan 2019 01:53:40 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57b8d8fa0610733515eb42761dc0de5de2da32a64d781bba6411fc2166f27e6a`  
		Last Modified: Fri, 11 Jan 2019 03:26:47 GMT  
		Size: 280.6 KB (280552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbca46cb53c4c940b34051582c867fa563da9435def6910244c2aa47a7ad24ba`  
		Last Modified: Fri, 11 Jan 2019 03:26:48 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95c24c90db0469d2cc6aa12ff0b583132ebd112acf6b687a503c292bc137fef1`  
		Last Modified: Fri, 11 Jan 2019 03:26:46 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a7d2a11ebf743bcc5735aa222deebb162a1da746a81fa95face8a97afbb1aa`  
		Last Modified: Fri, 11 Jan 2019 03:26:47 GMT  
		Size: 2.5 MB (2485627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb13aa537f9d9745b40e7d938edfd081be0b6f9ee77ceafcb38deccbf4836ea8`  
		Last Modified: Fri, 11 Jan 2019 03:26:46 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72194353726c756bd51d964bcaa545bd0298914297d8bde7fade176653dedef5`  
		Last Modified: Fri, 11 Jan 2019 03:26:46 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cd18794e74c003815eb6df1fefdcefe87ec988af1834780908349a86f5f07ba`  
		Last Modified: Fri, 11 Jan 2019 03:26:46 GMT  
		Size: 337.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `yourls:1` - linux; arm variant v5

```console
$ docker pull yourls@sha256:f0d07d3d15c8b789d94179d42578cee1caccb2cfe240c57841a5691232b7bc89
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.9 MB (124937488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64e90988afdbf7237c297a523eb6618f00a414c4f6428390529c1b2c57934806`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Sat, 29 Dec 2018 09:55:31 GMT
ADD file:1f3db2bdb8941ca17968251e2af1378e7f7556627ed60eafb5ee40089810bc8b in / 
# Sat, 29 Dec 2018 09:55:32 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 12:32:24 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Sat, 29 Dec 2018 12:32:24 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Sat, 29 Dec 2018 12:33:02 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:33:04 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 29 Dec 2018 12:33:05 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 29 Dec 2018 12:38:00 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:38:00 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Sat, 29 Dec 2018 12:38:01 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Sat, 29 Dec 2018 12:38:02 GMT
RUN set -eux; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Sat, 29 Dec 2018 12:38:03 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Sat, 29 Dec 2018 12:38:05 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Sat, 29 Dec 2018 12:38:05 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Sat, 29 Dec 2018 12:38:06 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Sat, 29 Dec 2018 12:38:06 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 12:38:06 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 12:38:07 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 29 Dec 2018 12:55:20 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Sat, 29 Dec 2018 12:55:20 GMT
ENV PHP_VERSION=7.2.13
# Sat, 29 Dec 2018 12:55:20 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.13.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.13.tar.xz.asc/from/this/mirror
# Sat, 29 Dec 2018 12:55:21 GMT
ENV PHP_SHA256=14b0429abdb46b65c843e5882c9a8c46b31dfbf279c747293b8ab950c2644a4b PHP_MD5=
# Sat, 29 Dec 2018 12:55:36 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 29 Dec 2018 12:55:37 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 29 Dec 2018 12:58:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 29 Dec 2018 12:58:42 GMT
COPY multi:0a6fe33cb39694994fa567c75b399b9aa5e477c8770caa9f731607a72819b457 in /usr/local/bin/ 
# Sat, 29 Dec 2018 12:58:44 GMT
RUN docker-php-ext-enable sodium
# Sat, 29 Dec 2018 12:58:44 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 29 Dec 2018 12:58:44 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Sat, 29 Dec 2018 12:58:45 GMT
WORKDIR /var/www/html
# Sat, 29 Dec 2018 12:58:45 GMT
EXPOSE 80
# Sat, 29 Dec 2018 12:58:46 GMT
CMD ["apache2-foreground"]
# Fri, 04 Jan 2019 11:10:51 GMT
RUN set -ex;     docker-php-ext-install opcache pdo_mysql mysqli
# Fri, 04 Jan 2019 11:10:53 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 04 Jan 2019 11:10:54 GMT
RUN a2enmod rewrite expires
# Fri, 04 Jan 2019 11:10:54 GMT
VOLUME [/var/www/html]
# Fri, 04 Jan 2019 11:10:55 GMT
ENV YOURLS_VERSION=1.7.2
# Fri, 04 Jan 2019 11:10:57 GMT
RUN set -ex; 	curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz"; 	tar -xzf yourls.tar.gz -C /usr/src/; 	mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls; 	rm yourls.tar.gz; 	chown -R www-data:www-data /usr/src/yourls
# Fri, 04 Jan 2019 11:10:58 GMT
COPY file:7722c9d76f082fb2683ec1d4befeaddd6c873c885172752cacb787e076d4dbeb in /usr/local/bin/ 
# Fri, 04 Jan 2019 11:10:58 GMT
COPY file:d375afac6cf463942802d2b27f08ef4d6198ac33f536b334f195e2e479c4cd6f in /var/www/html/ 
# Fri, 04 Jan 2019 11:10:59 GMT
COPY file:5b7ff05d0c98ad759c4bec0ef8a7ce74cae42e95b42564b55f43b341c2c3e3f5 in /var/www/html/ 
# Fri, 04 Jan 2019 11:10:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 04 Jan 2019 11:11:00 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:e040f73e39f2c2a1a8429ff270c2d629ef2630ac31581228037724d707862b22`  
		Last Modified: Sat, 29 Dec 2018 10:03:16 GMT  
		Size: 21.2 MB (21167776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dc5107d4e4251d4ef9002026f490e573eff661fe6e2278d1bd3a7d121a3c321`  
		Last Modified: Sat, 29 Dec 2018 15:11:10 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca61229a1118271adc19db58c172d9ceaa14ceb0aef16b2fb0b4237c08f6fe9e`  
		Last Modified: Sat, 29 Dec 2018 15:11:32 GMT  
		Size: 57.5 MB (57464650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2be23d64816b54f39f39a88b24bd971081a558160fdf7667ec44f47c45989c9`  
		Last Modified: Sat, 29 Dec 2018 15:11:10 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dafbaeb7163888e37cf64fb46e91b2cf58eac8540c395f64883103d3bfcf5064`  
		Last Modified: Sat, 29 Dec 2018 15:12:10 GMT  
		Size: 16.7 MB (16654350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49b40f80c9fbf4364d92fdd25059fe5e0c2070334338daf628dec7751de40bd2`  
		Last Modified: Sat, 29 Dec 2018 15:12:03 GMT  
		Size: 1.4 KB (1366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71f2d447d810b660e4c7c64129caf2a8dc24381d6de1e85c964ef7b832a1e02a`  
		Last Modified: Sat, 29 Dec 2018 15:12:03 GMT  
		Size: 473.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0f34a587aa02846d8add6902c1ef4c05955469cf14e7a66b9d752cace0679d3`  
		Last Modified: Sat, 29 Dec 2018 15:12:03 GMT  
		Size: 512.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:365d13d1ea625a32a9a32e3cf22f4f2fab2eb22cb57d25ea93b8917e7bd4c9e4`  
		Last Modified: Sat, 29 Dec 2018 15:13:43 GMT  
		Size: 12.5 MB (12463554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cf03536d58a6e85c385bbd382c2e7345f4a70808bef960488a331948eec6e4e`  
		Last Modified: Sat, 29 Dec 2018 15:13:40 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af1ea384524b42693ba20e3dfc8ae623c3aa1aeff9a2f550712f120bf420d58b`  
		Last Modified: Sat, 29 Dec 2018 15:13:45 GMT  
		Size: 14.4 MB (14421222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e312529f1eae1c5da20e136a83a30b1edc1b4b873516ba670b33affcb827f82`  
		Last Modified: Sat, 29 Dec 2018 15:13:39 GMT  
		Size: 2.2 KB (2197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ec86617119633a2846243f5951735983ec2b6be19b16d863a8b1ad91f864b5d`  
		Last Modified: Sat, 29 Dec 2018 15:13:39 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccb13d532eee04a14b1f1caa52aed72aa37327aebb0e3a3f29e72f29a3c2a9f8`  
		Last Modified: Sat, 29 Dec 2018 15:13:39 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf1300472aed72acd8444e4180bd165644a321eba929baec73b81817032c93d6`  
		Last Modified: Fri, 04 Jan 2019 11:12:53 GMT  
		Size: 269.7 KB (269717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da22acd34f24b0edb67bd4231394b7f78750311489264df2dfa894138cb33d56`  
		Last Modified: Fri, 04 Jan 2019 11:12:52 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:750fb21c7d249a3df6935f490714dcfe0b80e8a2e9f9bc6808805d9f4a5d7126`  
		Last Modified: Fri, 04 Jan 2019 11:12:51 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0124ce182cd58209baab0012c40eb8b2ceb4b990c92bd243a07f8cef1c6bce2e`  
		Last Modified: Fri, 04 Jan 2019 11:12:53 GMT  
		Size: 2.5 MB (2485637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e21c7ec52983b6c56d6b809b84a1f79d826f201aab7af0f8801f2fd2dc3deb80`  
		Last Modified: Fri, 04 Jan 2019 11:12:51 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fee2f6a0e9b8d1b69cf15221931fcb53d48f627ec82548dfc484781667578137`  
		Last Modified: Fri, 04 Jan 2019 11:12:51 GMT  
		Size: 1.8 KB (1832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3c70eb029934442a32abf9541140be383fee6685c335765c457ac0cabf49ec1`  
		Last Modified: Fri, 04 Jan 2019 11:12:51 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `yourls:1` - linux; arm variant v7

```console
$ docker pull yourls@sha256:bfe9dd2cbc5e70e0dafadaa03f87a6c5a6d19c93a3a78b963969d07a02f241f8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.9 MB (117864222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:315103166e802ff42c820d401dc963ea625550f000de6d62c5fae20112fc15a4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Sat, 29 Dec 2018 13:04:57 GMT
ADD file:287bc4fa3803b40afca4bcac26d92079fb862f7b968e960e01ae536b1b5c7aea in / 
# Sat, 29 Dec 2018 13:04:57 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 15:52:23 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Sat, 29 Dec 2018 15:52:23 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Sat, 29 Dec 2018 15:52:54 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 29 Dec 2018 15:52:55 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 29 Dec 2018 15:52:57 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 29 Dec 2018 15:57:28 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 15:57:28 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Sat, 29 Dec 2018 15:57:29 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Sat, 29 Dec 2018 15:57:30 GMT
RUN set -eux; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Sat, 29 Dec 2018 15:57:32 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Sat, 29 Dec 2018 15:57:34 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Sat, 29 Dec 2018 15:57:34 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Sat, 29 Dec 2018 15:57:35 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Sat, 29 Dec 2018 15:57:35 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 15:57:35 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 15:57:36 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 29 Dec 2018 16:31:14 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 11 Jan 2019 13:21:39 GMT
ENV PHP_VERSION=7.2.14
# Fri, 11 Jan 2019 13:21:40 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror
# Fri, 11 Jan 2019 13:21:40 GMT
ENV PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f PHP_MD5=
# Fri, 11 Jan 2019 13:21:54 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 11 Jan 2019 13:21:54 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 11 Jan 2019 13:24:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 11 Jan 2019 13:24:43 GMT
COPY multi:0a6fe33cb39694994fa567c75b399b9aa5e477c8770caa9f731607a72819b457 in /usr/local/bin/ 
# Fri, 11 Jan 2019 13:24:44 GMT
RUN docker-php-ext-enable sodium
# Fri, 11 Jan 2019 13:24:44 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 11 Jan 2019 13:24:45 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Fri, 11 Jan 2019 13:24:45 GMT
WORKDIR /var/www/html
# Fri, 11 Jan 2019 13:24:46 GMT
EXPOSE 80
# Fri, 11 Jan 2019 13:24:46 GMT
CMD ["apache2-foreground"]
# Fri, 11 Jan 2019 14:40:55 GMT
RUN set -ex;     docker-php-ext-install opcache pdo_mysql mysqli
# Fri, 11 Jan 2019 14:40:56 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 11 Jan 2019 14:40:58 GMT
RUN a2enmod rewrite expires
# Fri, 11 Jan 2019 14:40:58 GMT
VOLUME [/var/www/html]
# Fri, 11 Jan 2019 14:40:59 GMT
ENV YOURLS_VERSION=1.7.2
# Fri, 11 Jan 2019 14:41:04 GMT
RUN set -ex; 	curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz"; 	tar -xzf yourls.tar.gz -C /usr/src/; 	mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls; 	rm yourls.tar.gz; 	chown -R www-data:www-data /usr/src/yourls
# Fri, 11 Jan 2019 14:41:04 GMT
COPY file:7722c9d76f082fb2683ec1d4befeaddd6c873c885172752cacb787e076d4dbeb in /usr/local/bin/ 
# Fri, 11 Jan 2019 14:41:05 GMT
COPY file:d375afac6cf463942802d2b27f08ef4d6198ac33f536b334f195e2e479c4cd6f in /var/www/html/ 
# Fri, 11 Jan 2019 14:41:05 GMT
COPY file:5b7ff05d0c98ad759c4bec0ef8a7ce74cae42e95b42564b55f43b341c2c3e3f5 in /var/www/html/ 
# Fri, 11 Jan 2019 14:41:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 14:41:06 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:eb2ab017daa46c13a41d60225632e89c8b5c24a9bdafb2b75b1d415830b41e6b`  
		Last Modified: Sat, 29 Dec 2018 13:12:36 GMT  
		Size: 19.3 MB (19277755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bdd3055b30ec26315bbe73533843047ed98fec35dc5acc5cb0d0878ab8ed597`  
		Last Modified: Mon, 31 Dec 2018 19:12:59 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f79128a6d00730d8aaed6af05f3590337fcecd13119d056c272e9d01043f441`  
		Last Modified: Mon, 31 Dec 2018 19:13:15 GMT  
		Size: 53.6 MB (53582251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56fcb7f3e035561a3c9eced964fa2bf0fb33d76092839e59092e773161523cf0`  
		Last Modified: Mon, 31 Dec 2018 19:12:59 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cec7800b34522c311353f81b69927346012c515d10994684b20a049ba54c724`  
		Last Modified: Mon, 31 Dec 2018 19:13:51 GMT  
		Size: 16.2 MB (16162446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ba5955791d212ded2ccec56cb7e29725d2c3c77eab3d9e3fabf25d3f1b5cf98`  
		Last Modified: Mon, 31 Dec 2018 19:13:46 GMT  
		Size: 1.4 KB (1369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e907a4a42c73b241a2cf041cbfbb96efce659ecfd29561d66ea0f7b6a7aada83`  
		Last Modified: Mon, 31 Dec 2018 19:13:46 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72faa7e759463214ed86856afa0ad160e8b2317f9b955d6da86ff57af479d7e3`  
		Last Modified: Mon, 31 Dec 2018 19:13:45 GMT  
		Size: 510.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8c97be05198c1c418efedb012b4489df469a06214bfea33732dbf5c7f67d0b7`  
		Last Modified: Fri, 11 Jan 2019 14:12:34 GMT  
		Size: 12.5 MB (12504282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45b77b603992c6cccbf6503240e5dbafe9bdb17bddadccf59b226518254f5bb9`  
		Last Modified: Fri, 11 Jan 2019 14:12:30 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b9f6a21d0961decc8e89332fe47d1e8a5cfedb05c5880d3f757809c6749f893`  
		Last Modified: Fri, 11 Jan 2019 14:12:35 GMT  
		Size: 13.6 MB (13594915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a3f66483ced6f333748fcb82e1b6d28a39693793744ad4ca90ddac619a24056`  
		Last Modified: Fri, 11 Jan 2019 14:12:30 GMT  
		Size: 2.2 KB (2195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f127eb60416cb13cb76b16f1d8812c3a2c422d82720afabbe47dd31b23cea2c`  
		Last Modified: Fri, 11 Jan 2019 14:12:30 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03da7fcbc0e760b4475e84579700c77e4559675f4c7d34b55f70e4985c8e774d`  
		Last Modified: Fri, 11 Jan 2019 14:12:31 GMT  
		Size: 903.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c907b851539d2e197cae8a8fc767881587ed073ef35f4b4c283df407396e2ad`  
		Last Modified: Fri, 11 Jan 2019 14:42:47 GMT  
		Size: 246.4 KB (246374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04258081f72767fec60c812c21a0ed83add92aa287a5fb89125ef0a45db41f3f`  
		Last Modified: Fri, 11 Jan 2019 14:42:47 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:543db6bf55a72b9523aef66ef7875c1cb276ca6f9512eaa3e6c5be51977e6f19`  
		Last Modified: Fri, 11 Jan 2019 14:42:46 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0394fbcf889fe2801d611bc7e646c59b298a749020f83b2f3d1cf2c040032f45`  
		Last Modified: Fri, 11 Jan 2019 14:42:47 GMT  
		Size: 2.5 MB (2485630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0da5983cbe1560ba3e0e6837aa0b44c67e59d2edc16fd6404fad19f87b5cb531`  
		Last Modified: Fri, 11 Jan 2019 14:42:46 GMT  
		Size: 1.1 KB (1065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2610fb2b53e5e82ab7875ed95f0abac10e9edbd5cfc2f8311d08a0e4eb75d710`  
		Last Modified: Fri, 11 Jan 2019 14:42:46 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c48f5752809961f1865731d00497b9bf9208581395f8b5a18cb4b275be0745e`  
		Last Modified: Fri, 11 Jan 2019 14:42:46 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `yourls:1` - linux; arm64 variant v8

```console
$ docker pull yourls@sha256:d61727bf29772fae43c48440426f3121bb2fc76dac182cacf52658ad0e1f97ef
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.1 MB (124142419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2716f9247372339bbed11c8808a6374e8e5b4ff2e7f28cbd246aa9e818717c1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:46 GMT
ADD file:e4db5c28a0f74e32be4419aae491e4b9dc7402f3640369289e24c52028c871ad in / 
# Sat, 29 Dec 2018 10:08:47 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 21:39:33 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Sat, 29 Dec 2018 21:39:33 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Sat, 29 Dec 2018 21:41:51 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 29 Dec 2018 21:41:52 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 29 Dec 2018 21:41:54 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 29 Dec 2018 21:55:31 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 21:55:31 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Sat, 29 Dec 2018 21:55:32 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Sat, 29 Dec 2018 21:55:34 GMT
RUN set -eux; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Sat, 29 Dec 2018 21:55:37 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Sat, 29 Dec 2018 21:55:39 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Sat, 29 Dec 2018 21:55:39 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Sat, 29 Dec 2018 21:55:40 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Sat, 29 Dec 2018 21:55:41 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 21:55:41 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 21:55:42 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 29 Dec 2018 22:37:39 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 11 Jan 2019 11:30:51 GMT
ENV PHP_VERSION=7.2.14
# Fri, 11 Jan 2019 11:30:52 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror
# Fri, 11 Jan 2019 11:30:53 GMT
ENV PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f PHP_MD5=
# Fri, 11 Jan 2019 11:31:22 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 11 Jan 2019 11:31:22 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 11 Jan 2019 11:37:55 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 11 Jan 2019 11:37:56 GMT
COPY multi:0a6fe33cb39694994fa567c75b399b9aa5e477c8770caa9f731607a72819b457 in /usr/local/bin/ 
# Fri, 11 Jan 2019 11:37:58 GMT
RUN docker-php-ext-enable sodium
# Fri, 11 Jan 2019 11:37:58 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 11 Jan 2019 11:37:59 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Fri, 11 Jan 2019 11:38:00 GMT
WORKDIR /var/www/html
# Fri, 11 Jan 2019 11:38:01 GMT
EXPOSE 80
# Fri, 11 Jan 2019 11:38:02 GMT
CMD ["apache2-foreground"]
# Fri, 11 Jan 2019 15:03:51 GMT
RUN set -ex;     docker-php-ext-install opcache pdo_mysql mysqli
# Fri, 11 Jan 2019 15:03:53 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 11 Jan 2019 15:03:56 GMT
RUN a2enmod rewrite expires
# Fri, 11 Jan 2019 15:03:57 GMT
VOLUME [/var/www/html]
# Fri, 11 Jan 2019 15:03:58 GMT
ENV YOURLS_VERSION=1.7.2
# Fri, 11 Jan 2019 15:04:12 GMT
RUN set -ex; 	curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz"; 	tar -xzf yourls.tar.gz -C /usr/src/; 	mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls; 	rm yourls.tar.gz; 	chown -R www-data:www-data /usr/src/yourls
# Fri, 11 Jan 2019 15:04:12 GMT
COPY file:7722c9d76f082fb2683ec1d4befeaddd6c873c885172752cacb787e076d4dbeb in /usr/local/bin/ 
# Fri, 11 Jan 2019 15:04:13 GMT
COPY file:d375afac6cf463942802d2b27f08ef4d6198ac33f536b334f195e2e479c4cd6f in /var/www/html/ 
# Fri, 11 Jan 2019 15:04:14 GMT
COPY file:5b7ff05d0c98ad759c4bec0ef8a7ce74cae42e95b42564b55f43b341c2c3e3f5 in /var/www/html/ 
# Fri, 11 Jan 2019 15:04:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 15:04:19 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:1a07b0163994a6d3328beeaa3400f6304e68548ffb84deefcb74427a6b65a489`  
		Last Modified: Sat, 29 Dec 2018 10:15:04 GMT  
		Size: 20.3 MB (20337511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da8dc61ccacab0c571f2793c6c5400180816557fa0140990f997519be3471012`  
		Last Modified: Sun, 30 Dec 2018 01:03:31 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59be51dca15077e7f02edb4376d3e8e194896c4e706c9c03c2fd2d2af47f8cdc`  
		Last Modified: Sun, 30 Dec 2018 01:03:58 GMT  
		Size: 57.6 MB (57606226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f391fc42cee2e19f185ac34d4d4e8404a3209ed5c17b369dc30bdf3a0d29915`  
		Last Modified: Sun, 30 Dec 2018 01:03:31 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624799215cc8ec3f277033b52eefa3e6cdee2c0371b28a4983c3722506e677a6`  
		Last Modified: Sun, 30 Dec 2018 01:04:48 GMT  
		Size: 16.7 MB (16711057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10e7e30b294ed284d673effda7c4615ade5cd952cc3dee17c0116b1c0f6cd106`  
		Last Modified: Sun, 30 Dec 2018 01:04:40 GMT  
		Size: 1.3 KB (1342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1845118be0cdd364592b6079fb43ef235948f820e01b535e9b7da4187f405bd8`  
		Last Modified: Sun, 30 Dec 2018 01:04:40 GMT  
		Size: 446.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8e041c4002a5658f86b77e75593904c0fd11c2aa9f7ed2f36b876f5d4d54225`  
		Last Modified: Sun, 30 Dec 2018 01:04:40 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8e4758eeb14ef9d665ee8e8893a3dc0469e98e71080ff51cecbe20f001338dc`  
		Last Modified: Fri, 11 Jan 2019 13:28:11 GMT  
		Size: 12.5 MB (12504551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0a7715c7889392eb2892d63a5c19702854e3796c8987ae917f98186366120ae`  
		Last Modified: Fri, 11 Jan 2019 13:28:06 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99dd54d4b3d9b98d66331ca76de66e8a17ec67a762262913988d6c22266d77ed`  
		Last Modified: Fri, 11 Jan 2019 13:28:16 GMT  
		Size: 14.2 MB (14224611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:783103c755e67d37a92dbb7c0d026e9d602380ef1e49867419ce963777937ef5`  
		Last Modified: Fri, 11 Jan 2019 13:28:06 GMT  
		Size: 2.2 KB (2199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55581dc088e840fe29e62e8f79131b7a58e97936d4fe7aa7a8e6942bbd8e74f9`  
		Last Modified: Fri, 11 Jan 2019 13:28:06 GMT  
		Size: 261.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14d4b6af964b502f49158c5b653060487ec42d75d9afbe6512384f73b33e1e31`  
		Last Modified: Fri, 11 Jan 2019 13:28:06 GMT  
		Size: 907.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:545e657896019a75e45b577145c6567212a2dd02030ea98870170b5b93b65c7f`  
		Last Modified: Fri, 11 Jan 2019 15:09:01 GMT  
		Size: 262.3 KB (262344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71ecb13c447453d37b5f10e094b81dc29547b4ad0580d414ab98cb140b93a098`  
		Last Modified: Fri, 11 Jan 2019 15:09:01 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb7710e996c32963126e3402425d00ffe4c1fadceb2b25531977ae33148a1aa1`  
		Last Modified: Fri, 11 Jan 2019 15:08:58 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f490cf4284373ca4550c3cf2617f108ef9aab42f97f590ff537b45cda405f5b9`  
		Last Modified: Fri, 11 Jan 2019 15:09:00 GMT  
		Size: 2.5 MB (2485626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ffc0cd2ad70eba0c3a67a26b0904b855a15e4bf24f40567103be04ef5cf12e2`  
		Last Modified: Fri, 11 Jan 2019 15:08:58 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e823a50bf8f5a5694a2ee0d9597fff6b1830fcf0518c5e7b16ab6ced004b69a8`  
		Last Modified: Fri, 11 Jan 2019 15:08:58 GMT  
		Size: 1.8 KB (1832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4763bcd845306818ec0b5a638ddee94aede5786f3b9c2ddc618ab6f47971d43e`  
		Last Modified: Fri, 11 Jan 2019 15:08:59 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `yourls:1` - linux; 386

```console
$ docker pull yourls@sha256:b2035a8f7ab1c3b5de3d23ccc4a7137e7458c283df1ae56878c404863b5124b0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.2 MB (143177459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec184124ebdbc826e1d68e9d5038d3989912c2d76ce9ae2c4bf14da610ae2649`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Sat, 29 Dec 2018 11:56:14 GMT
ADD file:aaa0661c64d46388f46e71ba3d172f3208f6b943dbc1a86e0b50ca5080bdb3ee in / 
# Sat, 29 Dec 2018 11:56:15 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 21:36:24 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Sat, 29 Dec 2018 21:36:24 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Sat, 29 Dec 2018 21:36:48 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 29 Dec 2018 21:36:48 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 29 Dec 2018 21:36:49 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 29 Dec 2018 21:45:50 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 21:45:51 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Sat, 29 Dec 2018 21:45:51 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Sat, 29 Dec 2018 21:45:51 GMT
RUN set -eux; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Sat, 29 Dec 2018 21:45:52 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Sat, 29 Dec 2018 21:45:53 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Sat, 29 Dec 2018 21:45:53 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Sat, 29 Dec 2018 21:45:53 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Sat, 29 Dec 2018 21:45:54 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 21:45:54 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 21:45:54 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 29 Dec 2018 22:07:26 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 11 Jan 2019 12:50:42 GMT
ENV PHP_VERSION=7.2.14
# Fri, 11 Jan 2019 12:50:42 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror
# Fri, 11 Jan 2019 12:50:42 GMT
ENV PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f PHP_MD5=
# Fri, 11 Jan 2019 12:50:53 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 11 Jan 2019 12:50:53 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 11 Jan 2019 12:54:18 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 11 Jan 2019 12:54:18 GMT
COPY multi:0a6fe33cb39694994fa567c75b399b9aa5e477c8770caa9f731607a72819b457 in /usr/local/bin/ 
# Fri, 11 Jan 2019 12:54:19 GMT
RUN docker-php-ext-enable sodium
# Fri, 11 Jan 2019 12:54:19 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 11 Jan 2019 12:54:19 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Fri, 11 Jan 2019 12:54:20 GMT
WORKDIR /var/www/html
# Fri, 11 Jan 2019 12:54:20 GMT
EXPOSE 80
# Fri, 11 Jan 2019 12:54:20 GMT
CMD ["apache2-foreground"]
# Fri, 11 Jan 2019 16:51:33 GMT
RUN set -ex;     docker-php-ext-install opcache pdo_mysql mysqli
# Fri, 11 Jan 2019 16:51:34 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 11 Jan 2019 16:51:34 GMT
RUN a2enmod rewrite expires
# Fri, 11 Jan 2019 16:51:35 GMT
VOLUME [/var/www/html]
# Fri, 11 Jan 2019 16:51:35 GMT
ENV YOURLS_VERSION=1.7.2
# Fri, 11 Jan 2019 16:51:36 GMT
RUN set -ex; 	curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz"; 	tar -xzf yourls.tar.gz -C /usr/src/; 	mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls; 	rm yourls.tar.gz; 	chown -R www-data:www-data /usr/src/yourls
# Fri, 11 Jan 2019 16:51:37 GMT
COPY file:7722c9d76f082fb2683ec1d4befeaddd6c873c885172752cacb787e076d4dbeb in /usr/local/bin/ 
# Fri, 11 Jan 2019 16:51:37 GMT
COPY file:d375afac6cf463942802d2b27f08ef4d6198ac33f536b334f195e2e479c4cd6f in /var/www/html/ 
# Fri, 11 Jan 2019 16:51:37 GMT
COPY file:5b7ff05d0c98ad759c4bec0ef8a7ce74cae42e95b42564b55f43b341c2c3e3f5 in /var/www/html/ 
# Fri, 11 Jan 2019 16:51:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 16:51:37 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:9a1a13172ed974323f7c35153e8b23b8fa1c85355b6b26cc3127e640e45ef0aa`  
		Last Modified: Sat, 29 Dec 2018 12:10:44 GMT  
		Size: 23.1 MB (23133155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5094d5d656a95c6aa92f5f2adc56a794564b1e340bc4065db2947d7ce0c1a394`  
		Last Modified: Sun, 30 Dec 2018 01:57:01 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb2ab2fc6c3875a5ebec4eb6dae731467d2cfbe0c4372b4db6b7f8faad9917e`  
		Last Modified: Sun, 30 Dec 2018 01:57:20 GMT  
		Size: 71.5 MB (71503745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05469bc6d7085ba5736c7bf95032d0bb750ab2fa43b29049cfee7ba36c391e79`  
		Last Modified: Sun, 30 Dec 2018 01:57:01 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cac1a3cba6925217785401a8b972064ba1a0dfe60d4e039f49c4dac4b3f4270e`  
		Last Modified: Sun, 30 Dec 2018 01:57:45 GMT  
		Size: 17.6 MB (17561920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9184c6ff5922580665f40d9e2416d6ff748200ba764489ad442486d61570f8d0`  
		Last Modified: Sun, 30 Dec 2018 01:57:40 GMT  
		Size: 1.3 KB (1336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9edc4d80dca7d81ba8b7a97ebf76890d74ca4d440e11b418c39c09686094da0b`  
		Last Modified: Sun, 30 Dec 2018 01:57:40 GMT  
		Size: 430.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c49d3ce320b30bff15e021157c1b88262d848a456dbdf970c8796accf3e9cc4`  
		Last Modified: Sun, 30 Dec 2018 01:57:40 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd62ef36d94e7c9305ffd2eb8a68bd0b1939d0e5f21ce8a25c7ab5db0748013d`  
		Last Modified: Fri, 11 Jan 2019 14:54:17 GMT  
		Size: 12.5 MB (12505836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b436f91e147a9071b2e0dde2cd2939f63ead4fffb43f92d4dc8d39aabfad96b`  
		Last Modified: Fri, 11 Jan 2019 14:54:12 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2848e63e536187e58765f167f5d942e58c4ba788373f18053046374337e6a498`  
		Last Modified: Fri, 11 Jan 2019 14:54:16 GMT  
		Size: 15.7 MB (15686833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b45df8623fc8e136011d091ed53d924d6820771d844b4c27843c8aac1a4a6ca6`  
		Last Modified: Fri, 11 Jan 2019 14:54:17 GMT  
		Size: 2.2 KB (2197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02b7d92b09c9e14b62d1c385941eabe813b6b3fb137191d2b3d3b91806481ada`  
		Last Modified: Fri, 11 Jan 2019 14:54:16 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64c2910211b6c9223772e7d9203a87d7f51672460245fe15ecf00277389bdaed`  
		Last Modified: Fri, 11 Jan 2019 14:54:16 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95dc45aae2e0964d2a1ca15dc4bb85b376c6ad044d917e80ae7921de2d2c319f`  
		Last Modified: Fri, 11 Jan 2019 16:53:29 GMT  
		Size: 289.9 KB (289900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87dd5f217b94a013757e95bd992b7b62057b4126538eeeaed0bb895a30f4204d`  
		Last Modified: Fri, 11 Jan 2019 16:53:29 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:903227e6f2d86754f057e2c31d64101ffc5d4731d2a61e5dabe5262275d570e8`  
		Last Modified: Fri, 11 Jan 2019 16:53:29 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3448433d93ec7f6c0ab0503cf930d128b88b57582763ed389e2d4ff3905c43cc`  
		Last Modified: Fri, 11 Jan 2019 16:53:29 GMT  
		Size: 2.5 MB (2485625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:468cea8a346ee27bcace5936c73c780e3405caa1c0e6ac073809d845ce32d115`  
		Last Modified: Fri, 11 Jan 2019 16:53:29 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de510317f9126ed6f8412e11413bde598790403a1ee015721ca216b8c7d949bb`  
		Last Modified: Fri, 11 Jan 2019 16:53:29 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bccf2bff7778ae0e482c38ec0d02f9dd398805696e645100abcfcbd3fa7ef83`  
		Last Modified: Fri, 11 Jan 2019 16:53:29 GMT  
		Size: 336.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `yourls:1` - linux; ppc64le

```console
$ docker pull yourls@sha256:b626b79f83abab2dd375417dbde30ef9cb4ccd8a898794ecf28e421bdc3fb9a8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.2 MB (132241096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:189ff37dac130a5be7bc52d2baa5e9cf8dba74fd13fe3f326ed6c615caa61dcf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Sat, 29 Dec 2018 09:22:40 GMT
ADD file:11cdf0dbdac1a774d74f30e9954e3cf02c390d2280ce747bc95a3b774259f226 in / 
# Sat, 29 Dec 2018 09:22:44 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 13:02:33 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Sat, 29 Dec 2018 13:02:35 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Sat, 29 Dec 2018 13:04:54 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:04:59 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 29 Dec 2018 13:05:04 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 29 Dec 2018 13:12:08 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:12:10 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Sat, 29 Dec 2018 13:12:12 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Sat, 29 Dec 2018 13:12:16 GMT
RUN set -eux; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Sat, 29 Dec 2018 13:12:21 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Sat, 29 Dec 2018 13:12:26 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Sat, 29 Dec 2018 13:12:28 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Sat, 29 Dec 2018 13:12:30 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Sat, 29 Dec 2018 13:12:32 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 13:12:34 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 13:12:36 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 29 Dec 2018 13:39:05 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 11 Jan 2019 10:15:38 GMT
ENV PHP_VERSION=7.2.14
# Fri, 11 Jan 2019 10:15:41 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror
# Fri, 11 Jan 2019 10:15:44 GMT
ENV PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f PHP_MD5=
# Fri, 11 Jan 2019 10:16:28 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 11 Jan 2019 10:16:29 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 11 Jan 2019 10:20:30 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 11 Jan 2019 10:20:32 GMT
COPY multi:0a6fe33cb39694994fa567c75b399b9aa5e477c8770caa9f731607a72819b457 in /usr/local/bin/ 
# Fri, 11 Jan 2019 10:20:35 GMT
RUN docker-php-ext-enable sodium
# Fri, 11 Jan 2019 10:20:38 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 11 Jan 2019 10:20:38 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Fri, 11 Jan 2019 10:20:40 GMT
WORKDIR /var/www/html
# Fri, 11 Jan 2019 10:20:42 GMT
EXPOSE 80
# Fri, 11 Jan 2019 10:20:44 GMT
CMD ["apache2-foreground"]
# Fri, 11 Jan 2019 13:41:41 GMT
RUN set -ex;     docker-php-ext-install opcache pdo_mysql mysqli
# Fri, 11 Jan 2019 13:41:44 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 11 Jan 2019 13:41:47 GMT
RUN a2enmod rewrite expires
# Fri, 11 Jan 2019 13:41:48 GMT
VOLUME [/var/www/html]
# Fri, 11 Jan 2019 13:41:49 GMT
ENV YOURLS_VERSION=1.7.2
# Fri, 11 Jan 2019 13:41:53 GMT
RUN set -ex; 	curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz"; 	tar -xzf yourls.tar.gz -C /usr/src/; 	mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls; 	rm yourls.tar.gz; 	chown -R www-data:www-data /usr/src/yourls
# Fri, 11 Jan 2019 13:41:54 GMT
COPY file:7722c9d76f082fb2683ec1d4befeaddd6c873c885172752cacb787e076d4dbeb in /usr/local/bin/ 
# Fri, 11 Jan 2019 13:41:54 GMT
COPY file:d375afac6cf463942802d2b27f08ef4d6198ac33f536b334f195e2e479c4cd6f in /var/www/html/ 
# Fri, 11 Jan 2019 13:41:55 GMT
COPY file:5b7ff05d0c98ad759c4bec0ef8a7ce74cae42e95b42564b55f43b341c2c3e3f5 in /var/www/html/ 
# Fri, 11 Jan 2019 13:41:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 13:41:57 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:ca671aebac61774c6bfa23dd5b097e3a135a33f3987318158787030ee978173a`  
		Last Modified: Sat, 29 Dec 2018 09:28:38 GMT  
		Size: 22.7 MB (22746826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55c9e443128efed70bcb2c05fbf1b7b3c63735856c07a31f95f3422e8e5d6be3`  
		Last Modified: Sat, 29 Dec 2018 15:02:06 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26502f7e153105ac601f4d12e9b72baf9021b49b992fe619264a1933c2daf6b4`  
		Last Modified: Sat, 29 Dec 2018 15:02:32 GMT  
		Size: 61.8 MB (61833074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d327479a214f245c363cea23d6878780e6dbb819938b9511e7b69e2e17e81fbf`  
		Last Modified: Sat, 29 Dec 2018 15:02:06 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3209a003a83f58a4c0b0b6d647aab82cf58aac4488fbea658f96c9340ff4a9d`  
		Last Modified: Sat, 29 Dec 2018 15:03:36 GMT  
		Size: 17.3 MB (17348586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0792d92b3fe4333eec429cc7e973c9758702823c0f9cc84cd02777049c72d16d`  
		Last Modified: Sat, 29 Dec 2018 15:03:28 GMT  
		Size: 1.4 KB (1370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:594e55fae66c4e49f0a9d148262bd186dea8241009a7ebf4ac3ac37b9f04944a`  
		Last Modified: Sat, 29 Dec 2018 15:03:28 GMT  
		Size: 473.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7e36bda981ae059f48a8253566f80ac2c45f8d7490de6f2a6693f68e1c964b2`  
		Last Modified: Sat, 29 Dec 2018 15:03:28 GMT  
		Size: 518.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69bb2d7edd823e60bb4099d2fb4b17b3a2cc874a323577e8db870cd22c60920c`  
		Last Modified: Fri, 11 Jan 2019 11:26:57 GMT  
		Size: 12.5 MB (12504919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22e805ca840d1abcec392afa8d90e0de875ca93dfe0680e24784940fc990d819`  
		Last Modified: Fri, 11 Jan 2019 11:26:52 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eedb850efc629bd03dc72d6c0204586f9f46309639103c96d3ba5f964aeaba8d`  
		Last Modified: Fri, 11 Jan 2019 11:27:00 GMT  
		Size: 15.0 MB (15027223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d83ab29a048cabe65cfd7b7b4ce4b521ffba32cd1aa44e7150b5b94d43c2b69`  
		Last Modified: Fri, 11 Jan 2019 11:26:52 GMT  
		Size: 2.2 KB (2198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36c5059d88355e4c24967d7837f4702d890c3e91b29ff44b8e7df8ba6120c4e3`  
		Last Modified: Fri, 11 Jan 2019 11:26:52 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4def876c28c20732bdd4195fad8a9aadbaecae9ca15a0e948eaf42a989a53b6`  
		Last Modified: Fri, 11 Jan 2019 11:26:52 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40b859f8c1a0dcf62711b25d04b7f19bb139118c87db7e91c40cd7ccff62789b`  
		Last Modified: Fri, 11 Jan 2019 13:44:58 GMT  
		Size: 284.2 KB (284236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1814abbbcc60c8f1c24462eb8dc47f745cefa48246daf5cfdca857829725c08`  
		Last Modified: Fri, 11 Jan 2019 13:44:58 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b742dba48ce1cb3bde9b305cf038ef9a79b85cea257611874fcdee91767fe4a6`  
		Last Modified: Fri, 11 Jan 2019 13:44:54 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57d6f9ae7a02d68d00b5021c6094cb83f881d2c0db79b6bbe8bb8ece97d37921`  
		Last Modified: Fri, 11 Jan 2019 13:44:55 GMT  
		Size: 2.5 MB (2485637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0594c573d027c46238d7fca6e3dbfa69330722ac2092e7b5d948533a4d84564b`  
		Last Modified: Fri, 11 Jan 2019 13:44:54 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75de01c68c15baa5dd95835d11036fef59656ccb052218386adfeca2ccfe8f46`  
		Last Modified: Fri, 11 Jan 2019 13:44:54 GMT  
		Size: 1.8 KB (1832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:356802aa837e0477c136bd67c8c56149c1c944a1179b76c10fe1f20a87854642`  
		Last Modified: Fri, 11 Jan 2019 13:44:54 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `yourls:1.7`

```console
$ docker pull yourls@sha256:b93240de31344e21ece17db55b42551926ebf7ed9edff59de98457cc8ab200bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `yourls:1.7` - linux; amd64

```console
$ docker pull yourls@sha256:4962218b0809fc8cf63bf9eebfceba12d11f754f3669c23bc3481a952d9fa64c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.6 MB (137592705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c1c2d79eaa9e79809bbd5160f94daac5d40e72035e7c2e289b0ffd4df0af05f`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Sat, 29 Dec 2018 05:03:51 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 11 Jan 2019 01:14:55 GMT
ENV PHP_VERSION=7.2.14
# Fri, 11 Jan 2019 01:14:55 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror
# Fri, 11 Jan 2019 01:14:55 GMT
ENV PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f PHP_MD5=
# Fri, 11 Jan 2019 01:15:04 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 11 Jan 2019 01:15:04 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 11 Jan 2019 01:18:38 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 11 Jan 2019 01:18:38 GMT
COPY multi:0a6fe33cb39694994fa567c75b399b9aa5e477c8770caa9f731607a72819b457 in /usr/local/bin/ 
# Fri, 11 Jan 2019 01:18:39 GMT
RUN docker-php-ext-enable sodium
# Fri, 11 Jan 2019 01:18:39 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 11 Jan 2019 01:18:39 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Fri, 11 Jan 2019 01:18:40 GMT
WORKDIR /var/www/html
# Fri, 11 Jan 2019 01:18:40 GMT
EXPOSE 80
# Fri, 11 Jan 2019 01:18:40 GMT
CMD ["apache2-foreground"]
# Fri, 11 Jan 2019 03:24:43 GMT
RUN set -ex;     docker-php-ext-install opcache pdo_mysql mysqli
# Fri, 11 Jan 2019 03:24:44 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 11 Jan 2019 03:24:44 GMT
RUN a2enmod rewrite expires
# Fri, 11 Jan 2019 03:24:45 GMT
VOLUME [/var/www/html]
# Fri, 11 Jan 2019 03:24:45 GMT
ENV YOURLS_VERSION=1.7.2
# Fri, 11 Jan 2019 03:24:46 GMT
RUN set -ex; 	curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz"; 	tar -xzf yourls.tar.gz -C /usr/src/; 	mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls; 	rm yourls.tar.gz; 	chown -R www-data:www-data /usr/src/yourls
# Fri, 11 Jan 2019 03:24:47 GMT
COPY file:7722c9d76f082fb2683ec1d4befeaddd6c873c885172752cacb787e076d4dbeb in /usr/local/bin/ 
# Fri, 11 Jan 2019 03:24:47 GMT
COPY file:d375afac6cf463942802d2b27f08ef4d6198ac33f536b334f195e2e479c4cd6f in /var/www/html/ 
# Fri, 11 Jan 2019 03:24:47 GMT
COPY file:5b7ff05d0c98ad759c4bec0ef8a7ce74cae42e95b42564b55f43b341c2c3e3f5 in /var/www/html/ 
# Fri, 11 Jan 2019 03:24:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 03:24:48 GMT
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
	-	`sha256:2a25fcb23d183d85904474bbb4a70acd54f799488ca33ee229f2ed1ad0ce9591`  
		Last Modified: Fri, 11 Jan 2019 01:53:42 GMT  
		Size: 12.5 MB (12506427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e496ab19dfffef5f7ced59f3bcf6175c1b94be12564b4d9c5645b7a93560192`  
		Last Modified: Fri, 11 Jan 2019 01:53:41 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a5d39fc92ab1ba459a1b1cf1b7f20656559f9f05537337ae1c51b7fdba66ffb`  
		Last Modified: Fri, 11 Jan 2019 01:53:44 GMT  
		Size: 15.2 MB (15246057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8603dc5a76e7c083140806cf44d4e1690e15d79cb135ba8e1d6705769b0851ba`  
		Last Modified: Fri, 11 Jan 2019 01:53:40 GMT  
		Size: 2.2 KB (2195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4525497200a2b96ba75f12c63aed6a62b6d03a207d2441de88bb6a7d881ac7b3`  
		Last Modified: Fri, 11 Jan 2019 01:53:40 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df66f65de27acc43763a4432f463d3337d0b23fd8db7ab223acc7017eeb4f763`  
		Last Modified: Fri, 11 Jan 2019 01:53:40 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57b8d8fa0610733515eb42761dc0de5de2da32a64d781bba6411fc2166f27e6a`  
		Last Modified: Fri, 11 Jan 2019 03:26:47 GMT  
		Size: 280.6 KB (280552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbca46cb53c4c940b34051582c867fa563da9435def6910244c2aa47a7ad24ba`  
		Last Modified: Fri, 11 Jan 2019 03:26:48 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95c24c90db0469d2cc6aa12ff0b583132ebd112acf6b687a503c292bc137fef1`  
		Last Modified: Fri, 11 Jan 2019 03:26:46 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a7d2a11ebf743bcc5735aa222deebb162a1da746a81fa95face8a97afbb1aa`  
		Last Modified: Fri, 11 Jan 2019 03:26:47 GMT  
		Size: 2.5 MB (2485627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb13aa537f9d9745b40e7d938edfd081be0b6f9ee77ceafcb38deccbf4836ea8`  
		Last Modified: Fri, 11 Jan 2019 03:26:46 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72194353726c756bd51d964bcaa545bd0298914297d8bde7fade176653dedef5`  
		Last Modified: Fri, 11 Jan 2019 03:26:46 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cd18794e74c003815eb6df1fefdcefe87ec988af1834780908349a86f5f07ba`  
		Last Modified: Fri, 11 Jan 2019 03:26:46 GMT  
		Size: 337.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `yourls:1.7` - linux; arm variant v5

```console
$ docker pull yourls@sha256:f0d07d3d15c8b789d94179d42578cee1caccb2cfe240c57841a5691232b7bc89
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.9 MB (124937488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64e90988afdbf7237c297a523eb6618f00a414c4f6428390529c1b2c57934806`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Sat, 29 Dec 2018 09:55:31 GMT
ADD file:1f3db2bdb8941ca17968251e2af1378e7f7556627ed60eafb5ee40089810bc8b in / 
# Sat, 29 Dec 2018 09:55:32 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 12:32:24 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Sat, 29 Dec 2018 12:32:24 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Sat, 29 Dec 2018 12:33:02 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:33:04 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 29 Dec 2018 12:33:05 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 29 Dec 2018 12:38:00 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:38:00 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Sat, 29 Dec 2018 12:38:01 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Sat, 29 Dec 2018 12:38:02 GMT
RUN set -eux; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Sat, 29 Dec 2018 12:38:03 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Sat, 29 Dec 2018 12:38:05 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Sat, 29 Dec 2018 12:38:05 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Sat, 29 Dec 2018 12:38:06 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Sat, 29 Dec 2018 12:38:06 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 12:38:06 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 12:38:07 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 29 Dec 2018 12:55:20 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Sat, 29 Dec 2018 12:55:20 GMT
ENV PHP_VERSION=7.2.13
# Sat, 29 Dec 2018 12:55:20 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.13.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.13.tar.xz.asc/from/this/mirror
# Sat, 29 Dec 2018 12:55:21 GMT
ENV PHP_SHA256=14b0429abdb46b65c843e5882c9a8c46b31dfbf279c747293b8ab950c2644a4b PHP_MD5=
# Sat, 29 Dec 2018 12:55:36 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 29 Dec 2018 12:55:37 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 29 Dec 2018 12:58:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 29 Dec 2018 12:58:42 GMT
COPY multi:0a6fe33cb39694994fa567c75b399b9aa5e477c8770caa9f731607a72819b457 in /usr/local/bin/ 
# Sat, 29 Dec 2018 12:58:44 GMT
RUN docker-php-ext-enable sodium
# Sat, 29 Dec 2018 12:58:44 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 29 Dec 2018 12:58:44 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Sat, 29 Dec 2018 12:58:45 GMT
WORKDIR /var/www/html
# Sat, 29 Dec 2018 12:58:45 GMT
EXPOSE 80
# Sat, 29 Dec 2018 12:58:46 GMT
CMD ["apache2-foreground"]
# Fri, 04 Jan 2019 11:10:51 GMT
RUN set -ex;     docker-php-ext-install opcache pdo_mysql mysqli
# Fri, 04 Jan 2019 11:10:53 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 04 Jan 2019 11:10:54 GMT
RUN a2enmod rewrite expires
# Fri, 04 Jan 2019 11:10:54 GMT
VOLUME [/var/www/html]
# Fri, 04 Jan 2019 11:10:55 GMT
ENV YOURLS_VERSION=1.7.2
# Fri, 04 Jan 2019 11:10:57 GMT
RUN set -ex; 	curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz"; 	tar -xzf yourls.tar.gz -C /usr/src/; 	mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls; 	rm yourls.tar.gz; 	chown -R www-data:www-data /usr/src/yourls
# Fri, 04 Jan 2019 11:10:58 GMT
COPY file:7722c9d76f082fb2683ec1d4befeaddd6c873c885172752cacb787e076d4dbeb in /usr/local/bin/ 
# Fri, 04 Jan 2019 11:10:58 GMT
COPY file:d375afac6cf463942802d2b27f08ef4d6198ac33f536b334f195e2e479c4cd6f in /var/www/html/ 
# Fri, 04 Jan 2019 11:10:59 GMT
COPY file:5b7ff05d0c98ad759c4bec0ef8a7ce74cae42e95b42564b55f43b341c2c3e3f5 in /var/www/html/ 
# Fri, 04 Jan 2019 11:10:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 04 Jan 2019 11:11:00 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:e040f73e39f2c2a1a8429ff270c2d629ef2630ac31581228037724d707862b22`  
		Last Modified: Sat, 29 Dec 2018 10:03:16 GMT  
		Size: 21.2 MB (21167776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dc5107d4e4251d4ef9002026f490e573eff661fe6e2278d1bd3a7d121a3c321`  
		Last Modified: Sat, 29 Dec 2018 15:11:10 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca61229a1118271adc19db58c172d9ceaa14ceb0aef16b2fb0b4237c08f6fe9e`  
		Last Modified: Sat, 29 Dec 2018 15:11:32 GMT  
		Size: 57.5 MB (57464650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2be23d64816b54f39f39a88b24bd971081a558160fdf7667ec44f47c45989c9`  
		Last Modified: Sat, 29 Dec 2018 15:11:10 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dafbaeb7163888e37cf64fb46e91b2cf58eac8540c395f64883103d3bfcf5064`  
		Last Modified: Sat, 29 Dec 2018 15:12:10 GMT  
		Size: 16.7 MB (16654350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49b40f80c9fbf4364d92fdd25059fe5e0c2070334338daf628dec7751de40bd2`  
		Last Modified: Sat, 29 Dec 2018 15:12:03 GMT  
		Size: 1.4 KB (1366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71f2d447d810b660e4c7c64129caf2a8dc24381d6de1e85c964ef7b832a1e02a`  
		Last Modified: Sat, 29 Dec 2018 15:12:03 GMT  
		Size: 473.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0f34a587aa02846d8add6902c1ef4c05955469cf14e7a66b9d752cace0679d3`  
		Last Modified: Sat, 29 Dec 2018 15:12:03 GMT  
		Size: 512.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:365d13d1ea625a32a9a32e3cf22f4f2fab2eb22cb57d25ea93b8917e7bd4c9e4`  
		Last Modified: Sat, 29 Dec 2018 15:13:43 GMT  
		Size: 12.5 MB (12463554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cf03536d58a6e85c385bbd382c2e7345f4a70808bef960488a331948eec6e4e`  
		Last Modified: Sat, 29 Dec 2018 15:13:40 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af1ea384524b42693ba20e3dfc8ae623c3aa1aeff9a2f550712f120bf420d58b`  
		Last Modified: Sat, 29 Dec 2018 15:13:45 GMT  
		Size: 14.4 MB (14421222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e312529f1eae1c5da20e136a83a30b1edc1b4b873516ba670b33affcb827f82`  
		Last Modified: Sat, 29 Dec 2018 15:13:39 GMT  
		Size: 2.2 KB (2197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ec86617119633a2846243f5951735983ec2b6be19b16d863a8b1ad91f864b5d`  
		Last Modified: Sat, 29 Dec 2018 15:13:39 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccb13d532eee04a14b1f1caa52aed72aa37327aebb0e3a3f29e72f29a3c2a9f8`  
		Last Modified: Sat, 29 Dec 2018 15:13:39 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf1300472aed72acd8444e4180bd165644a321eba929baec73b81817032c93d6`  
		Last Modified: Fri, 04 Jan 2019 11:12:53 GMT  
		Size: 269.7 KB (269717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da22acd34f24b0edb67bd4231394b7f78750311489264df2dfa894138cb33d56`  
		Last Modified: Fri, 04 Jan 2019 11:12:52 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:750fb21c7d249a3df6935f490714dcfe0b80e8a2e9f9bc6808805d9f4a5d7126`  
		Last Modified: Fri, 04 Jan 2019 11:12:51 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0124ce182cd58209baab0012c40eb8b2ceb4b990c92bd243a07f8cef1c6bce2e`  
		Last Modified: Fri, 04 Jan 2019 11:12:53 GMT  
		Size: 2.5 MB (2485637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e21c7ec52983b6c56d6b809b84a1f79d826f201aab7af0f8801f2fd2dc3deb80`  
		Last Modified: Fri, 04 Jan 2019 11:12:51 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fee2f6a0e9b8d1b69cf15221931fcb53d48f627ec82548dfc484781667578137`  
		Last Modified: Fri, 04 Jan 2019 11:12:51 GMT  
		Size: 1.8 KB (1832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3c70eb029934442a32abf9541140be383fee6685c335765c457ac0cabf49ec1`  
		Last Modified: Fri, 04 Jan 2019 11:12:51 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `yourls:1.7` - linux; arm variant v7

```console
$ docker pull yourls@sha256:bfe9dd2cbc5e70e0dafadaa03f87a6c5a6d19c93a3a78b963969d07a02f241f8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.9 MB (117864222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:315103166e802ff42c820d401dc963ea625550f000de6d62c5fae20112fc15a4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Sat, 29 Dec 2018 13:04:57 GMT
ADD file:287bc4fa3803b40afca4bcac26d92079fb862f7b968e960e01ae536b1b5c7aea in / 
# Sat, 29 Dec 2018 13:04:57 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 15:52:23 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Sat, 29 Dec 2018 15:52:23 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Sat, 29 Dec 2018 15:52:54 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 29 Dec 2018 15:52:55 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 29 Dec 2018 15:52:57 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 29 Dec 2018 15:57:28 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 15:57:28 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Sat, 29 Dec 2018 15:57:29 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Sat, 29 Dec 2018 15:57:30 GMT
RUN set -eux; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Sat, 29 Dec 2018 15:57:32 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Sat, 29 Dec 2018 15:57:34 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Sat, 29 Dec 2018 15:57:34 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Sat, 29 Dec 2018 15:57:35 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Sat, 29 Dec 2018 15:57:35 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 15:57:35 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 15:57:36 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 29 Dec 2018 16:31:14 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 11 Jan 2019 13:21:39 GMT
ENV PHP_VERSION=7.2.14
# Fri, 11 Jan 2019 13:21:40 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror
# Fri, 11 Jan 2019 13:21:40 GMT
ENV PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f PHP_MD5=
# Fri, 11 Jan 2019 13:21:54 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 11 Jan 2019 13:21:54 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 11 Jan 2019 13:24:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 11 Jan 2019 13:24:43 GMT
COPY multi:0a6fe33cb39694994fa567c75b399b9aa5e477c8770caa9f731607a72819b457 in /usr/local/bin/ 
# Fri, 11 Jan 2019 13:24:44 GMT
RUN docker-php-ext-enable sodium
# Fri, 11 Jan 2019 13:24:44 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 11 Jan 2019 13:24:45 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Fri, 11 Jan 2019 13:24:45 GMT
WORKDIR /var/www/html
# Fri, 11 Jan 2019 13:24:46 GMT
EXPOSE 80
# Fri, 11 Jan 2019 13:24:46 GMT
CMD ["apache2-foreground"]
# Fri, 11 Jan 2019 14:40:55 GMT
RUN set -ex;     docker-php-ext-install opcache pdo_mysql mysqli
# Fri, 11 Jan 2019 14:40:56 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 11 Jan 2019 14:40:58 GMT
RUN a2enmod rewrite expires
# Fri, 11 Jan 2019 14:40:58 GMT
VOLUME [/var/www/html]
# Fri, 11 Jan 2019 14:40:59 GMT
ENV YOURLS_VERSION=1.7.2
# Fri, 11 Jan 2019 14:41:04 GMT
RUN set -ex; 	curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz"; 	tar -xzf yourls.tar.gz -C /usr/src/; 	mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls; 	rm yourls.tar.gz; 	chown -R www-data:www-data /usr/src/yourls
# Fri, 11 Jan 2019 14:41:04 GMT
COPY file:7722c9d76f082fb2683ec1d4befeaddd6c873c885172752cacb787e076d4dbeb in /usr/local/bin/ 
# Fri, 11 Jan 2019 14:41:05 GMT
COPY file:d375afac6cf463942802d2b27f08ef4d6198ac33f536b334f195e2e479c4cd6f in /var/www/html/ 
# Fri, 11 Jan 2019 14:41:05 GMT
COPY file:5b7ff05d0c98ad759c4bec0ef8a7ce74cae42e95b42564b55f43b341c2c3e3f5 in /var/www/html/ 
# Fri, 11 Jan 2019 14:41:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 14:41:06 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:eb2ab017daa46c13a41d60225632e89c8b5c24a9bdafb2b75b1d415830b41e6b`  
		Last Modified: Sat, 29 Dec 2018 13:12:36 GMT  
		Size: 19.3 MB (19277755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bdd3055b30ec26315bbe73533843047ed98fec35dc5acc5cb0d0878ab8ed597`  
		Last Modified: Mon, 31 Dec 2018 19:12:59 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f79128a6d00730d8aaed6af05f3590337fcecd13119d056c272e9d01043f441`  
		Last Modified: Mon, 31 Dec 2018 19:13:15 GMT  
		Size: 53.6 MB (53582251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56fcb7f3e035561a3c9eced964fa2bf0fb33d76092839e59092e773161523cf0`  
		Last Modified: Mon, 31 Dec 2018 19:12:59 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cec7800b34522c311353f81b69927346012c515d10994684b20a049ba54c724`  
		Last Modified: Mon, 31 Dec 2018 19:13:51 GMT  
		Size: 16.2 MB (16162446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ba5955791d212ded2ccec56cb7e29725d2c3c77eab3d9e3fabf25d3f1b5cf98`  
		Last Modified: Mon, 31 Dec 2018 19:13:46 GMT  
		Size: 1.4 KB (1369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e907a4a42c73b241a2cf041cbfbb96efce659ecfd29561d66ea0f7b6a7aada83`  
		Last Modified: Mon, 31 Dec 2018 19:13:46 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72faa7e759463214ed86856afa0ad160e8b2317f9b955d6da86ff57af479d7e3`  
		Last Modified: Mon, 31 Dec 2018 19:13:45 GMT  
		Size: 510.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8c97be05198c1c418efedb012b4489df469a06214bfea33732dbf5c7f67d0b7`  
		Last Modified: Fri, 11 Jan 2019 14:12:34 GMT  
		Size: 12.5 MB (12504282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45b77b603992c6cccbf6503240e5dbafe9bdb17bddadccf59b226518254f5bb9`  
		Last Modified: Fri, 11 Jan 2019 14:12:30 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b9f6a21d0961decc8e89332fe47d1e8a5cfedb05c5880d3f757809c6749f893`  
		Last Modified: Fri, 11 Jan 2019 14:12:35 GMT  
		Size: 13.6 MB (13594915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a3f66483ced6f333748fcb82e1b6d28a39693793744ad4ca90ddac619a24056`  
		Last Modified: Fri, 11 Jan 2019 14:12:30 GMT  
		Size: 2.2 KB (2195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f127eb60416cb13cb76b16f1d8812c3a2c422d82720afabbe47dd31b23cea2c`  
		Last Modified: Fri, 11 Jan 2019 14:12:30 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03da7fcbc0e760b4475e84579700c77e4559675f4c7d34b55f70e4985c8e774d`  
		Last Modified: Fri, 11 Jan 2019 14:12:31 GMT  
		Size: 903.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c907b851539d2e197cae8a8fc767881587ed073ef35f4b4c283df407396e2ad`  
		Last Modified: Fri, 11 Jan 2019 14:42:47 GMT  
		Size: 246.4 KB (246374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04258081f72767fec60c812c21a0ed83add92aa287a5fb89125ef0a45db41f3f`  
		Last Modified: Fri, 11 Jan 2019 14:42:47 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:543db6bf55a72b9523aef66ef7875c1cb276ca6f9512eaa3e6c5be51977e6f19`  
		Last Modified: Fri, 11 Jan 2019 14:42:46 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0394fbcf889fe2801d611bc7e646c59b298a749020f83b2f3d1cf2c040032f45`  
		Last Modified: Fri, 11 Jan 2019 14:42:47 GMT  
		Size: 2.5 MB (2485630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0da5983cbe1560ba3e0e6837aa0b44c67e59d2edc16fd6404fad19f87b5cb531`  
		Last Modified: Fri, 11 Jan 2019 14:42:46 GMT  
		Size: 1.1 KB (1065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2610fb2b53e5e82ab7875ed95f0abac10e9edbd5cfc2f8311d08a0e4eb75d710`  
		Last Modified: Fri, 11 Jan 2019 14:42:46 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c48f5752809961f1865731d00497b9bf9208581395f8b5a18cb4b275be0745e`  
		Last Modified: Fri, 11 Jan 2019 14:42:46 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `yourls:1.7` - linux; arm64 variant v8

```console
$ docker pull yourls@sha256:d61727bf29772fae43c48440426f3121bb2fc76dac182cacf52658ad0e1f97ef
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.1 MB (124142419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2716f9247372339bbed11c8808a6374e8e5b4ff2e7f28cbd246aa9e818717c1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:46 GMT
ADD file:e4db5c28a0f74e32be4419aae491e4b9dc7402f3640369289e24c52028c871ad in / 
# Sat, 29 Dec 2018 10:08:47 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 21:39:33 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Sat, 29 Dec 2018 21:39:33 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Sat, 29 Dec 2018 21:41:51 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 29 Dec 2018 21:41:52 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 29 Dec 2018 21:41:54 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 29 Dec 2018 21:55:31 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 21:55:31 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Sat, 29 Dec 2018 21:55:32 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Sat, 29 Dec 2018 21:55:34 GMT
RUN set -eux; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Sat, 29 Dec 2018 21:55:37 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Sat, 29 Dec 2018 21:55:39 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Sat, 29 Dec 2018 21:55:39 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Sat, 29 Dec 2018 21:55:40 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Sat, 29 Dec 2018 21:55:41 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 21:55:41 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 21:55:42 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 29 Dec 2018 22:37:39 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 11 Jan 2019 11:30:51 GMT
ENV PHP_VERSION=7.2.14
# Fri, 11 Jan 2019 11:30:52 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror
# Fri, 11 Jan 2019 11:30:53 GMT
ENV PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f PHP_MD5=
# Fri, 11 Jan 2019 11:31:22 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 11 Jan 2019 11:31:22 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 11 Jan 2019 11:37:55 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 11 Jan 2019 11:37:56 GMT
COPY multi:0a6fe33cb39694994fa567c75b399b9aa5e477c8770caa9f731607a72819b457 in /usr/local/bin/ 
# Fri, 11 Jan 2019 11:37:58 GMT
RUN docker-php-ext-enable sodium
# Fri, 11 Jan 2019 11:37:58 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 11 Jan 2019 11:37:59 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Fri, 11 Jan 2019 11:38:00 GMT
WORKDIR /var/www/html
# Fri, 11 Jan 2019 11:38:01 GMT
EXPOSE 80
# Fri, 11 Jan 2019 11:38:02 GMT
CMD ["apache2-foreground"]
# Fri, 11 Jan 2019 15:03:51 GMT
RUN set -ex;     docker-php-ext-install opcache pdo_mysql mysqli
# Fri, 11 Jan 2019 15:03:53 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 11 Jan 2019 15:03:56 GMT
RUN a2enmod rewrite expires
# Fri, 11 Jan 2019 15:03:57 GMT
VOLUME [/var/www/html]
# Fri, 11 Jan 2019 15:03:58 GMT
ENV YOURLS_VERSION=1.7.2
# Fri, 11 Jan 2019 15:04:12 GMT
RUN set -ex; 	curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz"; 	tar -xzf yourls.tar.gz -C /usr/src/; 	mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls; 	rm yourls.tar.gz; 	chown -R www-data:www-data /usr/src/yourls
# Fri, 11 Jan 2019 15:04:12 GMT
COPY file:7722c9d76f082fb2683ec1d4befeaddd6c873c885172752cacb787e076d4dbeb in /usr/local/bin/ 
# Fri, 11 Jan 2019 15:04:13 GMT
COPY file:d375afac6cf463942802d2b27f08ef4d6198ac33f536b334f195e2e479c4cd6f in /var/www/html/ 
# Fri, 11 Jan 2019 15:04:14 GMT
COPY file:5b7ff05d0c98ad759c4bec0ef8a7ce74cae42e95b42564b55f43b341c2c3e3f5 in /var/www/html/ 
# Fri, 11 Jan 2019 15:04:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 15:04:19 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:1a07b0163994a6d3328beeaa3400f6304e68548ffb84deefcb74427a6b65a489`  
		Last Modified: Sat, 29 Dec 2018 10:15:04 GMT  
		Size: 20.3 MB (20337511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da8dc61ccacab0c571f2793c6c5400180816557fa0140990f997519be3471012`  
		Last Modified: Sun, 30 Dec 2018 01:03:31 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59be51dca15077e7f02edb4376d3e8e194896c4e706c9c03c2fd2d2af47f8cdc`  
		Last Modified: Sun, 30 Dec 2018 01:03:58 GMT  
		Size: 57.6 MB (57606226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f391fc42cee2e19f185ac34d4d4e8404a3209ed5c17b369dc30bdf3a0d29915`  
		Last Modified: Sun, 30 Dec 2018 01:03:31 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624799215cc8ec3f277033b52eefa3e6cdee2c0371b28a4983c3722506e677a6`  
		Last Modified: Sun, 30 Dec 2018 01:04:48 GMT  
		Size: 16.7 MB (16711057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10e7e30b294ed284d673effda7c4615ade5cd952cc3dee17c0116b1c0f6cd106`  
		Last Modified: Sun, 30 Dec 2018 01:04:40 GMT  
		Size: 1.3 KB (1342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1845118be0cdd364592b6079fb43ef235948f820e01b535e9b7da4187f405bd8`  
		Last Modified: Sun, 30 Dec 2018 01:04:40 GMT  
		Size: 446.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8e041c4002a5658f86b77e75593904c0fd11c2aa9f7ed2f36b876f5d4d54225`  
		Last Modified: Sun, 30 Dec 2018 01:04:40 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8e4758eeb14ef9d665ee8e8893a3dc0469e98e71080ff51cecbe20f001338dc`  
		Last Modified: Fri, 11 Jan 2019 13:28:11 GMT  
		Size: 12.5 MB (12504551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0a7715c7889392eb2892d63a5c19702854e3796c8987ae917f98186366120ae`  
		Last Modified: Fri, 11 Jan 2019 13:28:06 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99dd54d4b3d9b98d66331ca76de66e8a17ec67a762262913988d6c22266d77ed`  
		Last Modified: Fri, 11 Jan 2019 13:28:16 GMT  
		Size: 14.2 MB (14224611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:783103c755e67d37a92dbb7c0d026e9d602380ef1e49867419ce963777937ef5`  
		Last Modified: Fri, 11 Jan 2019 13:28:06 GMT  
		Size: 2.2 KB (2199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55581dc088e840fe29e62e8f79131b7a58e97936d4fe7aa7a8e6942bbd8e74f9`  
		Last Modified: Fri, 11 Jan 2019 13:28:06 GMT  
		Size: 261.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14d4b6af964b502f49158c5b653060487ec42d75d9afbe6512384f73b33e1e31`  
		Last Modified: Fri, 11 Jan 2019 13:28:06 GMT  
		Size: 907.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:545e657896019a75e45b577145c6567212a2dd02030ea98870170b5b93b65c7f`  
		Last Modified: Fri, 11 Jan 2019 15:09:01 GMT  
		Size: 262.3 KB (262344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71ecb13c447453d37b5f10e094b81dc29547b4ad0580d414ab98cb140b93a098`  
		Last Modified: Fri, 11 Jan 2019 15:09:01 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb7710e996c32963126e3402425d00ffe4c1fadceb2b25531977ae33148a1aa1`  
		Last Modified: Fri, 11 Jan 2019 15:08:58 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f490cf4284373ca4550c3cf2617f108ef9aab42f97f590ff537b45cda405f5b9`  
		Last Modified: Fri, 11 Jan 2019 15:09:00 GMT  
		Size: 2.5 MB (2485626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ffc0cd2ad70eba0c3a67a26b0904b855a15e4bf24f40567103be04ef5cf12e2`  
		Last Modified: Fri, 11 Jan 2019 15:08:58 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e823a50bf8f5a5694a2ee0d9597fff6b1830fcf0518c5e7b16ab6ced004b69a8`  
		Last Modified: Fri, 11 Jan 2019 15:08:58 GMT  
		Size: 1.8 KB (1832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4763bcd845306818ec0b5a638ddee94aede5786f3b9c2ddc618ab6f47971d43e`  
		Last Modified: Fri, 11 Jan 2019 15:08:59 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `yourls:1.7` - linux; 386

```console
$ docker pull yourls@sha256:b2035a8f7ab1c3b5de3d23ccc4a7137e7458c283df1ae56878c404863b5124b0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.2 MB (143177459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec184124ebdbc826e1d68e9d5038d3989912c2d76ce9ae2c4bf14da610ae2649`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Sat, 29 Dec 2018 11:56:14 GMT
ADD file:aaa0661c64d46388f46e71ba3d172f3208f6b943dbc1a86e0b50ca5080bdb3ee in / 
# Sat, 29 Dec 2018 11:56:15 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 21:36:24 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Sat, 29 Dec 2018 21:36:24 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Sat, 29 Dec 2018 21:36:48 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 29 Dec 2018 21:36:48 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 29 Dec 2018 21:36:49 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 29 Dec 2018 21:45:50 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 21:45:51 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Sat, 29 Dec 2018 21:45:51 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Sat, 29 Dec 2018 21:45:51 GMT
RUN set -eux; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Sat, 29 Dec 2018 21:45:52 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Sat, 29 Dec 2018 21:45:53 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Sat, 29 Dec 2018 21:45:53 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Sat, 29 Dec 2018 21:45:53 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Sat, 29 Dec 2018 21:45:54 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 21:45:54 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 21:45:54 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 29 Dec 2018 22:07:26 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 11 Jan 2019 12:50:42 GMT
ENV PHP_VERSION=7.2.14
# Fri, 11 Jan 2019 12:50:42 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror
# Fri, 11 Jan 2019 12:50:42 GMT
ENV PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f PHP_MD5=
# Fri, 11 Jan 2019 12:50:53 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 11 Jan 2019 12:50:53 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 11 Jan 2019 12:54:18 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 11 Jan 2019 12:54:18 GMT
COPY multi:0a6fe33cb39694994fa567c75b399b9aa5e477c8770caa9f731607a72819b457 in /usr/local/bin/ 
# Fri, 11 Jan 2019 12:54:19 GMT
RUN docker-php-ext-enable sodium
# Fri, 11 Jan 2019 12:54:19 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 11 Jan 2019 12:54:19 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Fri, 11 Jan 2019 12:54:20 GMT
WORKDIR /var/www/html
# Fri, 11 Jan 2019 12:54:20 GMT
EXPOSE 80
# Fri, 11 Jan 2019 12:54:20 GMT
CMD ["apache2-foreground"]
# Fri, 11 Jan 2019 16:51:33 GMT
RUN set -ex;     docker-php-ext-install opcache pdo_mysql mysqli
# Fri, 11 Jan 2019 16:51:34 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 11 Jan 2019 16:51:34 GMT
RUN a2enmod rewrite expires
# Fri, 11 Jan 2019 16:51:35 GMT
VOLUME [/var/www/html]
# Fri, 11 Jan 2019 16:51:35 GMT
ENV YOURLS_VERSION=1.7.2
# Fri, 11 Jan 2019 16:51:36 GMT
RUN set -ex; 	curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz"; 	tar -xzf yourls.tar.gz -C /usr/src/; 	mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls; 	rm yourls.tar.gz; 	chown -R www-data:www-data /usr/src/yourls
# Fri, 11 Jan 2019 16:51:37 GMT
COPY file:7722c9d76f082fb2683ec1d4befeaddd6c873c885172752cacb787e076d4dbeb in /usr/local/bin/ 
# Fri, 11 Jan 2019 16:51:37 GMT
COPY file:d375afac6cf463942802d2b27f08ef4d6198ac33f536b334f195e2e479c4cd6f in /var/www/html/ 
# Fri, 11 Jan 2019 16:51:37 GMT
COPY file:5b7ff05d0c98ad759c4bec0ef8a7ce74cae42e95b42564b55f43b341c2c3e3f5 in /var/www/html/ 
# Fri, 11 Jan 2019 16:51:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 16:51:37 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:9a1a13172ed974323f7c35153e8b23b8fa1c85355b6b26cc3127e640e45ef0aa`  
		Last Modified: Sat, 29 Dec 2018 12:10:44 GMT  
		Size: 23.1 MB (23133155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5094d5d656a95c6aa92f5f2adc56a794564b1e340bc4065db2947d7ce0c1a394`  
		Last Modified: Sun, 30 Dec 2018 01:57:01 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb2ab2fc6c3875a5ebec4eb6dae731467d2cfbe0c4372b4db6b7f8faad9917e`  
		Last Modified: Sun, 30 Dec 2018 01:57:20 GMT  
		Size: 71.5 MB (71503745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05469bc6d7085ba5736c7bf95032d0bb750ab2fa43b29049cfee7ba36c391e79`  
		Last Modified: Sun, 30 Dec 2018 01:57:01 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cac1a3cba6925217785401a8b972064ba1a0dfe60d4e039f49c4dac4b3f4270e`  
		Last Modified: Sun, 30 Dec 2018 01:57:45 GMT  
		Size: 17.6 MB (17561920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9184c6ff5922580665f40d9e2416d6ff748200ba764489ad442486d61570f8d0`  
		Last Modified: Sun, 30 Dec 2018 01:57:40 GMT  
		Size: 1.3 KB (1336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9edc4d80dca7d81ba8b7a97ebf76890d74ca4d440e11b418c39c09686094da0b`  
		Last Modified: Sun, 30 Dec 2018 01:57:40 GMT  
		Size: 430.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c49d3ce320b30bff15e021157c1b88262d848a456dbdf970c8796accf3e9cc4`  
		Last Modified: Sun, 30 Dec 2018 01:57:40 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd62ef36d94e7c9305ffd2eb8a68bd0b1939d0e5f21ce8a25c7ab5db0748013d`  
		Last Modified: Fri, 11 Jan 2019 14:54:17 GMT  
		Size: 12.5 MB (12505836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b436f91e147a9071b2e0dde2cd2939f63ead4fffb43f92d4dc8d39aabfad96b`  
		Last Modified: Fri, 11 Jan 2019 14:54:12 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2848e63e536187e58765f167f5d942e58c4ba788373f18053046374337e6a498`  
		Last Modified: Fri, 11 Jan 2019 14:54:16 GMT  
		Size: 15.7 MB (15686833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b45df8623fc8e136011d091ed53d924d6820771d844b4c27843c8aac1a4a6ca6`  
		Last Modified: Fri, 11 Jan 2019 14:54:17 GMT  
		Size: 2.2 KB (2197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02b7d92b09c9e14b62d1c385941eabe813b6b3fb137191d2b3d3b91806481ada`  
		Last Modified: Fri, 11 Jan 2019 14:54:16 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64c2910211b6c9223772e7d9203a87d7f51672460245fe15ecf00277389bdaed`  
		Last Modified: Fri, 11 Jan 2019 14:54:16 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95dc45aae2e0964d2a1ca15dc4bb85b376c6ad044d917e80ae7921de2d2c319f`  
		Last Modified: Fri, 11 Jan 2019 16:53:29 GMT  
		Size: 289.9 KB (289900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87dd5f217b94a013757e95bd992b7b62057b4126538eeeaed0bb895a30f4204d`  
		Last Modified: Fri, 11 Jan 2019 16:53:29 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:903227e6f2d86754f057e2c31d64101ffc5d4731d2a61e5dabe5262275d570e8`  
		Last Modified: Fri, 11 Jan 2019 16:53:29 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3448433d93ec7f6c0ab0503cf930d128b88b57582763ed389e2d4ff3905c43cc`  
		Last Modified: Fri, 11 Jan 2019 16:53:29 GMT  
		Size: 2.5 MB (2485625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:468cea8a346ee27bcace5936c73c780e3405caa1c0e6ac073809d845ce32d115`  
		Last Modified: Fri, 11 Jan 2019 16:53:29 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de510317f9126ed6f8412e11413bde598790403a1ee015721ca216b8c7d949bb`  
		Last Modified: Fri, 11 Jan 2019 16:53:29 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bccf2bff7778ae0e482c38ec0d02f9dd398805696e645100abcfcbd3fa7ef83`  
		Last Modified: Fri, 11 Jan 2019 16:53:29 GMT  
		Size: 336.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `yourls:1.7` - linux; ppc64le

```console
$ docker pull yourls@sha256:b626b79f83abab2dd375417dbde30ef9cb4ccd8a898794ecf28e421bdc3fb9a8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.2 MB (132241096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:189ff37dac130a5be7bc52d2baa5e9cf8dba74fd13fe3f326ed6c615caa61dcf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Sat, 29 Dec 2018 09:22:40 GMT
ADD file:11cdf0dbdac1a774d74f30e9954e3cf02c390d2280ce747bc95a3b774259f226 in / 
# Sat, 29 Dec 2018 09:22:44 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 13:02:33 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Sat, 29 Dec 2018 13:02:35 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Sat, 29 Dec 2018 13:04:54 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:04:59 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 29 Dec 2018 13:05:04 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 29 Dec 2018 13:12:08 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:12:10 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Sat, 29 Dec 2018 13:12:12 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Sat, 29 Dec 2018 13:12:16 GMT
RUN set -eux; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Sat, 29 Dec 2018 13:12:21 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Sat, 29 Dec 2018 13:12:26 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Sat, 29 Dec 2018 13:12:28 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Sat, 29 Dec 2018 13:12:30 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Sat, 29 Dec 2018 13:12:32 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 13:12:34 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 13:12:36 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 29 Dec 2018 13:39:05 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 11 Jan 2019 10:15:38 GMT
ENV PHP_VERSION=7.2.14
# Fri, 11 Jan 2019 10:15:41 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror
# Fri, 11 Jan 2019 10:15:44 GMT
ENV PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f PHP_MD5=
# Fri, 11 Jan 2019 10:16:28 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 11 Jan 2019 10:16:29 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 11 Jan 2019 10:20:30 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 11 Jan 2019 10:20:32 GMT
COPY multi:0a6fe33cb39694994fa567c75b399b9aa5e477c8770caa9f731607a72819b457 in /usr/local/bin/ 
# Fri, 11 Jan 2019 10:20:35 GMT
RUN docker-php-ext-enable sodium
# Fri, 11 Jan 2019 10:20:38 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 11 Jan 2019 10:20:38 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Fri, 11 Jan 2019 10:20:40 GMT
WORKDIR /var/www/html
# Fri, 11 Jan 2019 10:20:42 GMT
EXPOSE 80
# Fri, 11 Jan 2019 10:20:44 GMT
CMD ["apache2-foreground"]
# Fri, 11 Jan 2019 13:41:41 GMT
RUN set -ex;     docker-php-ext-install opcache pdo_mysql mysqli
# Fri, 11 Jan 2019 13:41:44 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 11 Jan 2019 13:41:47 GMT
RUN a2enmod rewrite expires
# Fri, 11 Jan 2019 13:41:48 GMT
VOLUME [/var/www/html]
# Fri, 11 Jan 2019 13:41:49 GMT
ENV YOURLS_VERSION=1.7.2
# Fri, 11 Jan 2019 13:41:53 GMT
RUN set -ex; 	curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz"; 	tar -xzf yourls.tar.gz -C /usr/src/; 	mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls; 	rm yourls.tar.gz; 	chown -R www-data:www-data /usr/src/yourls
# Fri, 11 Jan 2019 13:41:54 GMT
COPY file:7722c9d76f082fb2683ec1d4befeaddd6c873c885172752cacb787e076d4dbeb in /usr/local/bin/ 
# Fri, 11 Jan 2019 13:41:54 GMT
COPY file:d375afac6cf463942802d2b27f08ef4d6198ac33f536b334f195e2e479c4cd6f in /var/www/html/ 
# Fri, 11 Jan 2019 13:41:55 GMT
COPY file:5b7ff05d0c98ad759c4bec0ef8a7ce74cae42e95b42564b55f43b341c2c3e3f5 in /var/www/html/ 
# Fri, 11 Jan 2019 13:41:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 13:41:57 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:ca671aebac61774c6bfa23dd5b097e3a135a33f3987318158787030ee978173a`  
		Last Modified: Sat, 29 Dec 2018 09:28:38 GMT  
		Size: 22.7 MB (22746826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55c9e443128efed70bcb2c05fbf1b7b3c63735856c07a31f95f3422e8e5d6be3`  
		Last Modified: Sat, 29 Dec 2018 15:02:06 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26502f7e153105ac601f4d12e9b72baf9021b49b992fe619264a1933c2daf6b4`  
		Last Modified: Sat, 29 Dec 2018 15:02:32 GMT  
		Size: 61.8 MB (61833074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d327479a214f245c363cea23d6878780e6dbb819938b9511e7b69e2e17e81fbf`  
		Last Modified: Sat, 29 Dec 2018 15:02:06 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3209a003a83f58a4c0b0b6d647aab82cf58aac4488fbea658f96c9340ff4a9d`  
		Last Modified: Sat, 29 Dec 2018 15:03:36 GMT  
		Size: 17.3 MB (17348586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0792d92b3fe4333eec429cc7e973c9758702823c0f9cc84cd02777049c72d16d`  
		Last Modified: Sat, 29 Dec 2018 15:03:28 GMT  
		Size: 1.4 KB (1370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:594e55fae66c4e49f0a9d148262bd186dea8241009a7ebf4ac3ac37b9f04944a`  
		Last Modified: Sat, 29 Dec 2018 15:03:28 GMT  
		Size: 473.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7e36bda981ae059f48a8253566f80ac2c45f8d7490de6f2a6693f68e1c964b2`  
		Last Modified: Sat, 29 Dec 2018 15:03:28 GMT  
		Size: 518.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69bb2d7edd823e60bb4099d2fb4b17b3a2cc874a323577e8db870cd22c60920c`  
		Last Modified: Fri, 11 Jan 2019 11:26:57 GMT  
		Size: 12.5 MB (12504919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22e805ca840d1abcec392afa8d90e0de875ca93dfe0680e24784940fc990d819`  
		Last Modified: Fri, 11 Jan 2019 11:26:52 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eedb850efc629bd03dc72d6c0204586f9f46309639103c96d3ba5f964aeaba8d`  
		Last Modified: Fri, 11 Jan 2019 11:27:00 GMT  
		Size: 15.0 MB (15027223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d83ab29a048cabe65cfd7b7b4ce4b521ffba32cd1aa44e7150b5b94d43c2b69`  
		Last Modified: Fri, 11 Jan 2019 11:26:52 GMT  
		Size: 2.2 KB (2198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36c5059d88355e4c24967d7837f4702d890c3e91b29ff44b8e7df8ba6120c4e3`  
		Last Modified: Fri, 11 Jan 2019 11:26:52 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4def876c28c20732bdd4195fad8a9aadbaecae9ca15a0e948eaf42a989a53b6`  
		Last Modified: Fri, 11 Jan 2019 11:26:52 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40b859f8c1a0dcf62711b25d04b7f19bb139118c87db7e91c40cd7ccff62789b`  
		Last Modified: Fri, 11 Jan 2019 13:44:58 GMT  
		Size: 284.2 KB (284236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1814abbbcc60c8f1c24462eb8dc47f745cefa48246daf5cfdca857829725c08`  
		Last Modified: Fri, 11 Jan 2019 13:44:58 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b742dba48ce1cb3bde9b305cf038ef9a79b85cea257611874fcdee91767fe4a6`  
		Last Modified: Fri, 11 Jan 2019 13:44:54 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57d6f9ae7a02d68d00b5021c6094cb83f881d2c0db79b6bbe8bb8ece97d37921`  
		Last Modified: Fri, 11 Jan 2019 13:44:55 GMT  
		Size: 2.5 MB (2485637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0594c573d027c46238d7fca6e3dbfa69330722ac2092e7b5d948533a4d84564b`  
		Last Modified: Fri, 11 Jan 2019 13:44:54 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75de01c68c15baa5dd95835d11036fef59656ccb052218386adfeca2ccfe8f46`  
		Last Modified: Fri, 11 Jan 2019 13:44:54 GMT  
		Size: 1.8 KB (1832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:356802aa837e0477c136bd67c8c56149c1c944a1179b76c10fe1f20a87854642`  
		Last Modified: Fri, 11 Jan 2019 13:44:54 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `yourls:1.7.3`

**does not exist** (yet?)

## `yourls:1.7.3-apache`

**does not exist** (yet?)

## `yourls:1.7.3-fpm`

**does not exist** (yet?)

## `yourls:1.7.3-fpm-alpine`

**does not exist** (yet?)

## `yourls:1.7-apache`

```console
$ docker pull yourls@sha256:b93240de31344e21ece17db55b42551926ebf7ed9edff59de98457cc8ab200bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `yourls:1.7-apache` - linux; amd64

```console
$ docker pull yourls@sha256:4962218b0809fc8cf63bf9eebfceba12d11f754f3669c23bc3481a952d9fa64c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.6 MB (137592705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c1c2d79eaa9e79809bbd5160f94daac5d40e72035e7c2e289b0ffd4df0af05f`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Sat, 29 Dec 2018 05:03:51 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 11 Jan 2019 01:14:55 GMT
ENV PHP_VERSION=7.2.14
# Fri, 11 Jan 2019 01:14:55 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror
# Fri, 11 Jan 2019 01:14:55 GMT
ENV PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f PHP_MD5=
# Fri, 11 Jan 2019 01:15:04 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 11 Jan 2019 01:15:04 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 11 Jan 2019 01:18:38 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 11 Jan 2019 01:18:38 GMT
COPY multi:0a6fe33cb39694994fa567c75b399b9aa5e477c8770caa9f731607a72819b457 in /usr/local/bin/ 
# Fri, 11 Jan 2019 01:18:39 GMT
RUN docker-php-ext-enable sodium
# Fri, 11 Jan 2019 01:18:39 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 11 Jan 2019 01:18:39 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Fri, 11 Jan 2019 01:18:40 GMT
WORKDIR /var/www/html
# Fri, 11 Jan 2019 01:18:40 GMT
EXPOSE 80
# Fri, 11 Jan 2019 01:18:40 GMT
CMD ["apache2-foreground"]
# Fri, 11 Jan 2019 03:24:43 GMT
RUN set -ex;     docker-php-ext-install opcache pdo_mysql mysqli
# Fri, 11 Jan 2019 03:24:44 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 11 Jan 2019 03:24:44 GMT
RUN a2enmod rewrite expires
# Fri, 11 Jan 2019 03:24:45 GMT
VOLUME [/var/www/html]
# Fri, 11 Jan 2019 03:24:45 GMT
ENV YOURLS_VERSION=1.7.2
# Fri, 11 Jan 2019 03:24:46 GMT
RUN set -ex; 	curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz"; 	tar -xzf yourls.tar.gz -C /usr/src/; 	mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls; 	rm yourls.tar.gz; 	chown -R www-data:www-data /usr/src/yourls
# Fri, 11 Jan 2019 03:24:47 GMT
COPY file:7722c9d76f082fb2683ec1d4befeaddd6c873c885172752cacb787e076d4dbeb in /usr/local/bin/ 
# Fri, 11 Jan 2019 03:24:47 GMT
COPY file:d375afac6cf463942802d2b27f08ef4d6198ac33f536b334f195e2e479c4cd6f in /var/www/html/ 
# Fri, 11 Jan 2019 03:24:47 GMT
COPY file:5b7ff05d0c98ad759c4bec0ef8a7ce74cae42e95b42564b55f43b341c2c3e3f5 in /var/www/html/ 
# Fri, 11 Jan 2019 03:24:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 03:24:48 GMT
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
	-	`sha256:2a25fcb23d183d85904474bbb4a70acd54f799488ca33ee229f2ed1ad0ce9591`  
		Last Modified: Fri, 11 Jan 2019 01:53:42 GMT  
		Size: 12.5 MB (12506427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e496ab19dfffef5f7ced59f3bcf6175c1b94be12564b4d9c5645b7a93560192`  
		Last Modified: Fri, 11 Jan 2019 01:53:41 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a5d39fc92ab1ba459a1b1cf1b7f20656559f9f05537337ae1c51b7fdba66ffb`  
		Last Modified: Fri, 11 Jan 2019 01:53:44 GMT  
		Size: 15.2 MB (15246057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8603dc5a76e7c083140806cf44d4e1690e15d79cb135ba8e1d6705769b0851ba`  
		Last Modified: Fri, 11 Jan 2019 01:53:40 GMT  
		Size: 2.2 KB (2195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4525497200a2b96ba75f12c63aed6a62b6d03a207d2441de88bb6a7d881ac7b3`  
		Last Modified: Fri, 11 Jan 2019 01:53:40 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df66f65de27acc43763a4432f463d3337d0b23fd8db7ab223acc7017eeb4f763`  
		Last Modified: Fri, 11 Jan 2019 01:53:40 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57b8d8fa0610733515eb42761dc0de5de2da32a64d781bba6411fc2166f27e6a`  
		Last Modified: Fri, 11 Jan 2019 03:26:47 GMT  
		Size: 280.6 KB (280552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbca46cb53c4c940b34051582c867fa563da9435def6910244c2aa47a7ad24ba`  
		Last Modified: Fri, 11 Jan 2019 03:26:48 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95c24c90db0469d2cc6aa12ff0b583132ebd112acf6b687a503c292bc137fef1`  
		Last Modified: Fri, 11 Jan 2019 03:26:46 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a7d2a11ebf743bcc5735aa222deebb162a1da746a81fa95face8a97afbb1aa`  
		Last Modified: Fri, 11 Jan 2019 03:26:47 GMT  
		Size: 2.5 MB (2485627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb13aa537f9d9745b40e7d938edfd081be0b6f9ee77ceafcb38deccbf4836ea8`  
		Last Modified: Fri, 11 Jan 2019 03:26:46 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72194353726c756bd51d964bcaa545bd0298914297d8bde7fade176653dedef5`  
		Last Modified: Fri, 11 Jan 2019 03:26:46 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cd18794e74c003815eb6df1fefdcefe87ec988af1834780908349a86f5f07ba`  
		Last Modified: Fri, 11 Jan 2019 03:26:46 GMT  
		Size: 337.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `yourls:1.7-apache` - linux; arm variant v5

```console
$ docker pull yourls@sha256:f0d07d3d15c8b789d94179d42578cee1caccb2cfe240c57841a5691232b7bc89
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.9 MB (124937488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64e90988afdbf7237c297a523eb6618f00a414c4f6428390529c1b2c57934806`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Sat, 29 Dec 2018 09:55:31 GMT
ADD file:1f3db2bdb8941ca17968251e2af1378e7f7556627ed60eafb5ee40089810bc8b in / 
# Sat, 29 Dec 2018 09:55:32 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 12:32:24 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Sat, 29 Dec 2018 12:32:24 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Sat, 29 Dec 2018 12:33:02 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:33:04 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 29 Dec 2018 12:33:05 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 29 Dec 2018 12:38:00 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:38:00 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Sat, 29 Dec 2018 12:38:01 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Sat, 29 Dec 2018 12:38:02 GMT
RUN set -eux; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Sat, 29 Dec 2018 12:38:03 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Sat, 29 Dec 2018 12:38:05 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Sat, 29 Dec 2018 12:38:05 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Sat, 29 Dec 2018 12:38:06 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Sat, 29 Dec 2018 12:38:06 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 12:38:06 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 12:38:07 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 29 Dec 2018 12:55:20 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Sat, 29 Dec 2018 12:55:20 GMT
ENV PHP_VERSION=7.2.13
# Sat, 29 Dec 2018 12:55:20 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.13.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.13.tar.xz.asc/from/this/mirror
# Sat, 29 Dec 2018 12:55:21 GMT
ENV PHP_SHA256=14b0429abdb46b65c843e5882c9a8c46b31dfbf279c747293b8ab950c2644a4b PHP_MD5=
# Sat, 29 Dec 2018 12:55:36 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 29 Dec 2018 12:55:37 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 29 Dec 2018 12:58:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 29 Dec 2018 12:58:42 GMT
COPY multi:0a6fe33cb39694994fa567c75b399b9aa5e477c8770caa9f731607a72819b457 in /usr/local/bin/ 
# Sat, 29 Dec 2018 12:58:44 GMT
RUN docker-php-ext-enable sodium
# Sat, 29 Dec 2018 12:58:44 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 29 Dec 2018 12:58:44 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Sat, 29 Dec 2018 12:58:45 GMT
WORKDIR /var/www/html
# Sat, 29 Dec 2018 12:58:45 GMT
EXPOSE 80
# Sat, 29 Dec 2018 12:58:46 GMT
CMD ["apache2-foreground"]
# Fri, 04 Jan 2019 11:10:51 GMT
RUN set -ex;     docker-php-ext-install opcache pdo_mysql mysqli
# Fri, 04 Jan 2019 11:10:53 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 04 Jan 2019 11:10:54 GMT
RUN a2enmod rewrite expires
# Fri, 04 Jan 2019 11:10:54 GMT
VOLUME [/var/www/html]
# Fri, 04 Jan 2019 11:10:55 GMT
ENV YOURLS_VERSION=1.7.2
# Fri, 04 Jan 2019 11:10:57 GMT
RUN set -ex; 	curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz"; 	tar -xzf yourls.tar.gz -C /usr/src/; 	mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls; 	rm yourls.tar.gz; 	chown -R www-data:www-data /usr/src/yourls
# Fri, 04 Jan 2019 11:10:58 GMT
COPY file:7722c9d76f082fb2683ec1d4befeaddd6c873c885172752cacb787e076d4dbeb in /usr/local/bin/ 
# Fri, 04 Jan 2019 11:10:58 GMT
COPY file:d375afac6cf463942802d2b27f08ef4d6198ac33f536b334f195e2e479c4cd6f in /var/www/html/ 
# Fri, 04 Jan 2019 11:10:59 GMT
COPY file:5b7ff05d0c98ad759c4bec0ef8a7ce74cae42e95b42564b55f43b341c2c3e3f5 in /var/www/html/ 
# Fri, 04 Jan 2019 11:10:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 04 Jan 2019 11:11:00 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:e040f73e39f2c2a1a8429ff270c2d629ef2630ac31581228037724d707862b22`  
		Last Modified: Sat, 29 Dec 2018 10:03:16 GMT  
		Size: 21.2 MB (21167776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dc5107d4e4251d4ef9002026f490e573eff661fe6e2278d1bd3a7d121a3c321`  
		Last Modified: Sat, 29 Dec 2018 15:11:10 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca61229a1118271adc19db58c172d9ceaa14ceb0aef16b2fb0b4237c08f6fe9e`  
		Last Modified: Sat, 29 Dec 2018 15:11:32 GMT  
		Size: 57.5 MB (57464650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2be23d64816b54f39f39a88b24bd971081a558160fdf7667ec44f47c45989c9`  
		Last Modified: Sat, 29 Dec 2018 15:11:10 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dafbaeb7163888e37cf64fb46e91b2cf58eac8540c395f64883103d3bfcf5064`  
		Last Modified: Sat, 29 Dec 2018 15:12:10 GMT  
		Size: 16.7 MB (16654350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49b40f80c9fbf4364d92fdd25059fe5e0c2070334338daf628dec7751de40bd2`  
		Last Modified: Sat, 29 Dec 2018 15:12:03 GMT  
		Size: 1.4 KB (1366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71f2d447d810b660e4c7c64129caf2a8dc24381d6de1e85c964ef7b832a1e02a`  
		Last Modified: Sat, 29 Dec 2018 15:12:03 GMT  
		Size: 473.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0f34a587aa02846d8add6902c1ef4c05955469cf14e7a66b9d752cace0679d3`  
		Last Modified: Sat, 29 Dec 2018 15:12:03 GMT  
		Size: 512.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:365d13d1ea625a32a9a32e3cf22f4f2fab2eb22cb57d25ea93b8917e7bd4c9e4`  
		Last Modified: Sat, 29 Dec 2018 15:13:43 GMT  
		Size: 12.5 MB (12463554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cf03536d58a6e85c385bbd382c2e7345f4a70808bef960488a331948eec6e4e`  
		Last Modified: Sat, 29 Dec 2018 15:13:40 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af1ea384524b42693ba20e3dfc8ae623c3aa1aeff9a2f550712f120bf420d58b`  
		Last Modified: Sat, 29 Dec 2018 15:13:45 GMT  
		Size: 14.4 MB (14421222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e312529f1eae1c5da20e136a83a30b1edc1b4b873516ba670b33affcb827f82`  
		Last Modified: Sat, 29 Dec 2018 15:13:39 GMT  
		Size: 2.2 KB (2197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ec86617119633a2846243f5951735983ec2b6be19b16d863a8b1ad91f864b5d`  
		Last Modified: Sat, 29 Dec 2018 15:13:39 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccb13d532eee04a14b1f1caa52aed72aa37327aebb0e3a3f29e72f29a3c2a9f8`  
		Last Modified: Sat, 29 Dec 2018 15:13:39 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf1300472aed72acd8444e4180bd165644a321eba929baec73b81817032c93d6`  
		Last Modified: Fri, 04 Jan 2019 11:12:53 GMT  
		Size: 269.7 KB (269717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da22acd34f24b0edb67bd4231394b7f78750311489264df2dfa894138cb33d56`  
		Last Modified: Fri, 04 Jan 2019 11:12:52 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:750fb21c7d249a3df6935f490714dcfe0b80e8a2e9f9bc6808805d9f4a5d7126`  
		Last Modified: Fri, 04 Jan 2019 11:12:51 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0124ce182cd58209baab0012c40eb8b2ceb4b990c92bd243a07f8cef1c6bce2e`  
		Last Modified: Fri, 04 Jan 2019 11:12:53 GMT  
		Size: 2.5 MB (2485637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e21c7ec52983b6c56d6b809b84a1f79d826f201aab7af0f8801f2fd2dc3deb80`  
		Last Modified: Fri, 04 Jan 2019 11:12:51 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fee2f6a0e9b8d1b69cf15221931fcb53d48f627ec82548dfc484781667578137`  
		Last Modified: Fri, 04 Jan 2019 11:12:51 GMT  
		Size: 1.8 KB (1832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3c70eb029934442a32abf9541140be383fee6685c335765c457ac0cabf49ec1`  
		Last Modified: Fri, 04 Jan 2019 11:12:51 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `yourls:1.7-apache` - linux; arm variant v7

```console
$ docker pull yourls@sha256:bfe9dd2cbc5e70e0dafadaa03f87a6c5a6d19c93a3a78b963969d07a02f241f8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.9 MB (117864222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:315103166e802ff42c820d401dc963ea625550f000de6d62c5fae20112fc15a4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Sat, 29 Dec 2018 13:04:57 GMT
ADD file:287bc4fa3803b40afca4bcac26d92079fb862f7b968e960e01ae536b1b5c7aea in / 
# Sat, 29 Dec 2018 13:04:57 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 15:52:23 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Sat, 29 Dec 2018 15:52:23 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Sat, 29 Dec 2018 15:52:54 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 29 Dec 2018 15:52:55 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 29 Dec 2018 15:52:57 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 29 Dec 2018 15:57:28 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 15:57:28 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Sat, 29 Dec 2018 15:57:29 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Sat, 29 Dec 2018 15:57:30 GMT
RUN set -eux; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Sat, 29 Dec 2018 15:57:32 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Sat, 29 Dec 2018 15:57:34 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Sat, 29 Dec 2018 15:57:34 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Sat, 29 Dec 2018 15:57:35 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Sat, 29 Dec 2018 15:57:35 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 15:57:35 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 15:57:36 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 29 Dec 2018 16:31:14 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 11 Jan 2019 13:21:39 GMT
ENV PHP_VERSION=7.2.14
# Fri, 11 Jan 2019 13:21:40 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror
# Fri, 11 Jan 2019 13:21:40 GMT
ENV PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f PHP_MD5=
# Fri, 11 Jan 2019 13:21:54 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 11 Jan 2019 13:21:54 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 11 Jan 2019 13:24:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 11 Jan 2019 13:24:43 GMT
COPY multi:0a6fe33cb39694994fa567c75b399b9aa5e477c8770caa9f731607a72819b457 in /usr/local/bin/ 
# Fri, 11 Jan 2019 13:24:44 GMT
RUN docker-php-ext-enable sodium
# Fri, 11 Jan 2019 13:24:44 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 11 Jan 2019 13:24:45 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Fri, 11 Jan 2019 13:24:45 GMT
WORKDIR /var/www/html
# Fri, 11 Jan 2019 13:24:46 GMT
EXPOSE 80
# Fri, 11 Jan 2019 13:24:46 GMT
CMD ["apache2-foreground"]
# Fri, 11 Jan 2019 14:40:55 GMT
RUN set -ex;     docker-php-ext-install opcache pdo_mysql mysqli
# Fri, 11 Jan 2019 14:40:56 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 11 Jan 2019 14:40:58 GMT
RUN a2enmod rewrite expires
# Fri, 11 Jan 2019 14:40:58 GMT
VOLUME [/var/www/html]
# Fri, 11 Jan 2019 14:40:59 GMT
ENV YOURLS_VERSION=1.7.2
# Fri, 11 Jan 2019 14:41:04 GMT
RUN set -ex; 	curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz"; 	tar -xzf yourls.tar.gz -C /usr/src/; 	mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls; 	rm yourls.tar.gz; 	chown -R www-data:www-data /usr/src/yourls
# Fri, 11 Jan 2019 14:41:04 GMT
COPY file:7722c9d76f082fb2683ec1d4befeaddd6c873c885172752cacb787e076d4dbeb in /usr/local/bin/ 
# Fri, 11 Jan 2019 14:41:05 GMT
COPY file:d375afac6cf463942802d2b27f08ef4d6198ac33f536b334f195e2e479c4cd6f in /var/www/html/ 
# Fri, 11 Jan 2019 14:41:05 GMT
COPY file:5b7ff05d0c98ad759c4bec0ef8a7ce74cae42e95b42564b55f43b341c2c3e3f5 in /var/www/html/ 
# Fri, 11 Jan 2019 14:41:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 14:41:06 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:eb2ab017daa46c13a41d60225632e89c8b5c24a9bdafb2b75b1d415830b41e6b`  
		Last Modified: Sat, 29 Dec 2018 13:12:36 GMT  
		Size: 19.3 MB (19277755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bdd3055b30ec26315bbe73533843047ed98fec35dc5acc5cb0d0878ab8ed597`  
		Last Modified: Mon, 31 Dec 2018 19:12:59 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f79128a6d00730d8aaed6af05f3590337fcecd13119d056c272e9d01043f441`  
		Last Modified: Mon, 31 Dec 2018 19:13:15 GMT  
		Size: 53.6 MB (53582251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56fcb7f3e035561a3c9eced964fa2bf0fb33d76092839e59092e773161523cf0`  
		Last Modified: Mon, 31 Dec 2018 19:12:59 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cec7800b34522c311353f81b69927346012c515d10994684b20a049ba54c724`  
		Last Modified: Mon, 31 Dec 2018 19:13:51 GMT  
		Size: 16.2 MB (16162446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ba5955791d212ded2ccec56cb7e29725d2c3c77eab3d9e3fabf25d3f1b5cf98`  
		Last Modified: Mon, 31 Dec 2018 19:13:46 GMT  
		Size: 1.4 KB (1369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e907a4a42c73b241a2cf041cbfbb96efce659ecfd29561d66ea0f7b6a7aada83`  
		Last Modified: Mon, 31 Dec 2018 19:13:46 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72faa7e759463214ed86856afa0ad160e8b2317f9b955d6da86ff57af479d7e3`  
		Last Modified: Mon, 31 Dec 2018 19:13:45 GMT  
		Size: 510.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8c97be05198c1c418efedb012b4489df469a06214bfea33732dbf5c7f67d0b7`  
		Last Modified: Fri, 11 Jan 2019 14:12:34 GMT  
		Size: 12.5 MB (12504282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45b77b603992c6cccbf6503240e5dbafe9bdb17bddadccf59b226518254f5bb9`  
		Last Modified: Fri, 11 Jan 2019 14:12:30 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b9f6a21d0961decc8e89332fe47d1e8a5cfedb05c5880d3f757809c6749f893`  
		Last Modified: Fri, 11 Jan 2019 14:12:35 GMT  
		Size: 13.6 MB (13594915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a3f66483ced6f333748fcb82e1b6d28a39693793744ad4ca90ddac619a24056`  
		Last Modified: Fri, 11 Jan 2019 14:12:30 GMT  
		Size: 2.2 KB (2195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f127eb60416cb13cb76b16f1d8812c3a2c422d82720afabbe47dd31b23cea2c`  
		Last Modified: Fri, 11 Jan 2019 14:12:30 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03da7fcbc0e760b4475e84579700c77e4559675f4c7d34b55f70e4985c8e774d`  
		Last Modified: Fri, 11 Jan 2019 14:12:31 GMT  
		Size: 903.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c907b851539d2e197cae8a8fc767881587ed073ef35f4b4c283df407396e2ad`  
		Last Modified: Fri, 11 Jan 2019 14:42:47 GMT  
		Size: 246.4 KB (246374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04258081f72767fec60c812c21a0ed83add92aa287a5fb89125ef0a45db41f3f`  
		Last Modified: Fri, 11 Jan 2019 14:42:47 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:543db6bf55a72b9523aef66ef7875c1cb276ca6f9512eaa3e6c5be51977e6f19`  
		Last Modified: Fri, 11 Jan 2019 14:42:46 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0394fbcf889fe2801d611bc7e646c59b298a749020f83b2f3d1cf2c040032f45`  
		Last Modified: Fri, 11 Jan 2019 14:42:47 GMT  
		Size: 2.5 MB (2485630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0da5983cbe1560ba3e0e6837aa0b44c67e59d2edc16fd6404fad19f87b5cb531`  
		Last Modified: Fri, 11 Jan 2019 14:42:46 GMT  
		Size: 1.1 KB (1065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2610fb2b53e5e82ab7875ed95f0abac10e9edbd5cfc2f8311d08a0e4eb75d710`  
		Last Modified: Fri, 11 Jan 2019 14:42:46 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c48f5752809961f1865731d00497b9bf9208581395f8b5a18cb4b275be0745e`  
		Last Modified: Fri, 11 Jan 2019 14:42:46 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `yourls:1.7-apache` - linux; arm64 variant v8

```console
$ docker pull yourls@sha256:d61727bf29772fae43c48440426f3121bb2fc76dac182cacf52658ad0e1f97ef
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.1 MB (124142419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2716f9247372339bbed11c8808a6374e8e5b4ff2e7f28cbd246aa9e818717c1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:46 GMT
ADD file:e4db5c28a0f74e32be4419aae491e4b9dc7402f3640369289e24c52028c871ad in / 
# Sat, 29 Dec 2018 10:08:47 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 21:39:33 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Sat, 29 Dec 2018 21:39:33 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Sat, 29 Dec 2018 21:41:51 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 29 Dec 2018 21:41:52 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 29 Dec 2018 21:41:54 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 29 Dec 2018 21:55:31 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 21:55:31 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Sat, 29 Dec 2018 21:55:32 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Sat, 29 Dec 2018 21:55:34 GMT
RUN set -eux; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Sat, 29 Dec 2018 21:55:37 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Sat, 29 Dec 2018 21:55:39 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Sat, 29 Dec 2018 21:55:39 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Sat, 29 Dec 2018 21:55:40 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Sat, 29 Dec 2018 21:55:41 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 21:55:41 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 21:55:42 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 29 Dec 2018 22:37:39 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 11 Jan 2019 11:30:51 GMT
ENV PHP_VERSION=7.2.14
# Fri, 11 Jan 2019 11:30:52 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror
# Fri, 11 Jan 2019 11:30:53 GMT
ENV PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f PHP_MD5=
# Fri, 11 Jan 2019 11:31:22 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 11 Jan 2019 11:31:22 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 11 Jan 2019 11:37:55 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 11 Jan 2019 11:37:56 GMT
COPY multi:0a6fe33cb39694994fa567c75b399b9aa5e477c8770caa9f731607a72819b457 in /usr/local/bin/ 
# Fri, 11 Jan 2019 11:37:58 GMT
RUN docker-php-ext-enable sodium
# Fri, 11 Jan 2019 11:37:58 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 11 Jan 2019 11:37:59 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Fri, 11 Jan 2019 11:38:00 GMT
WORKDIR /var/www/html
# Fri, 11 Jan 2019 11:38:01 GMT
EXPOSE 80
# Fri, 11 Jan 2019 11:38:02 GMT
CMD ["apache2-foreground"]
# Fri, 11 Jan 2019 15:03:51 GMT
RUN set -ex;     docker-php-ext-install opcache pdo_mysql mysqli
# Fri, 11 Jan 2019 15:03:53 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 11 Jan 2019 15:03:56 GMT
RUN a2enmod rewrite expires
# Fri, 11 Jan 2019 15:03:57 GMT
VOLUME [/var/www/html]
# Fri, 11 Jan 2019 15:03:58 GMT
ENV YOURLS_VERSION=1.7.2
# Fri, 11 Jan 2019 15:04:12 GMT
RUN set -ex; 	curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz"; 	tar -xzf yourls.tar.gz -C /usr/src/; 	mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls; 	rm yourls.tar.gz; 	chown -R www-data:www-data /usr/src/yourls
# Fri, 11 Jan 2019 15:04:12 GMT
COPY file:7722c9d76f082fb2683ec1d4befeaddd6c873c885172752cacb787e076d4dbeb in /usr/local/bin/ 
# Fri, 11 Jan 2019 15:04:13 GMT
COPY file:d375afac6cf463942802d2b27f08ef4d6198ac33f536b334f195e2e479c4cd6f in /var/www/html/ 
# Fri, 11 Jan 2019 15:04:14 GMT
COPY file:5b7ff05d0c98ad759c4bec0ef8a7ce74cae42e95b42564b55f43b341c2c3e3f5 in /var/www/html/ 
# Fri, 11 Jan 2019 15:04:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 15:04:19 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:1a07b0163994a6d3328beeaa3400f6304e68548ffb84deefcb74427a6b65a489`  
		Last Modified: Sat, 29 Dec 2018 10:15:04 GMT  
		Size: 20.3 MB (20337511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da8dc61ccacab0c571f2793c6c5400180816557fa0140990f997519be3471012`  
		Last Modified: Sun, 30 Dec 2018 01:03:31 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59be51dca15077e7f02edb4376d3e8e194896c4e706c9c03c2fd2d2af47f8cdc`  
		Last Modified: Sun, 30 Dec 2018 01:03:58 GMT  
		Size: 57.6 MB (57606226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f391fc42cee2e19f185ac34d4d4e8404a3209ed5c17b369dc30bdf3a0d29915`  
		Last Modified: Sun, 30 Dec 2018 01:03:31 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624799215cc8ec3f277033b52eefa3e6cdee2c0371b28a4983c3722506e677a6`  
		Last Modified: Sun, 30 Dec 2018 01:04:48 GMT  
		Size: 16.7 MB (16711057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10e7e30b294ed284d673effda7c4615ade5cd952cc3dee17c0116b1c0f6cd106`  
		Last Modified: Sun, 30 Dec 2018 01:04:40 GMT  
		Size: 1.3 KB (1342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1845118be0cdd364592b6079fb43ef235948f820e01b535e9b7da4187f405bd8`  
		Last Modified: Sun, 30 Dec 2018 01:04:40 GMT  
		Size: 446.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8e041c4002a5658f86b77e75593904c0fd11c2aa9f7ed2f36b876f5d4d54225`  
		Last Modified: Sun, 30 Dec 2018 01:04:40 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8e4758eeb14ef9d665ee8e8893a3dc0469e98e71080ff51cecbe20f001338dc`  
		Last Modified: Fri, 11 Jan 2019 13:28:11 GMT  
		Size: 12.5 MB (12504551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0a7715c7889392eb2892d63a5c19702854e3796c8987ae917f98186366120ae`  
		Last Modified: Fri, 11 Jan 2019 13:28:06 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99dd54d4b3d9b98d66331ca76de66e8a17ec67a762262913988d6c22266d77ed`  
		Last Modified: Fri, 11 Jan 2019 13:28:16 GMT  
		Size: 14.2 MB (14224611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:783103c755e67d37a92dbb7c0d026e9d602380ef1e49867419ce963777937ef5`  
		Last Modified: Fri, 11 Jan 2019 13:28:06 GMT  
		Size: 2.2 KB (2199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55581dc088e840fe29e62e8f79131b7a58e97936d4fe7aa7a8e6942bbd8e74f9`  
		Last Modified: Fri, 11 Jan 2019 13:28:06 GMT  
		Size: 261.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14d4b6af964b502f49158c5b653060487ec42d75d9afbe6512384f73b33e1e31`  
		Last Modified: Fri, 11 Jan 2019 13:28:06 GMT  
		Size: 907.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:545e657896019a75e45b577145c6567212a2dd02030ea98870170b5b93b65c7f`  
		Last Modified: Fri, 11 Jan 2019 15:09:01 GMT  
		Size: 262.3 KB (262344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71ecb13c447453d37b5f10e094b81dc29547b4ad0580d414ab98cb140b93a098`  
		Last Modified: Fri, 11 Jan 2019 15:09:01 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb7710e996c32963126e3402425d00ffe4c1fadceb2b25531977ae33148a1aa1`  
		Last Modified: Fri, 11 Jan 2019 15:08:58 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f490cf4284373ca4550c3cf2617f108ef9aab42f97f590ff537b45cda405f5b9`  
		Last Modified: Fri, 11 Jan 2019 15:09:00 GMT  
		Size: 2.5 MB (2485626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ffc0cd2ad70eba0c3a67a26b0904b855a15e4bf24f40567103be04ef5cf12e2`  
		Last Modified: Fri, 11 Jan 2019 15:08:58 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e823a50bf8f5a5694a2ee0d9597fff6b1830fcf0518c5e7b16ab6ced004b69a8`  
		Last Modified: Fri, 11 Jan 2019 15:08:58 GMT  
		Size: 1.8 KB (1832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4763bcd845306818ec0b5a638ddee94aede5786f3b9c2ddc618ab6f47971d43e`  
		Last Modified: Fri, 11 Jan 2019 15:08:59 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `yourls:1.7-apache` - linux; 386

```console
$ docker pull yourls@sha256:b2035a8f7ab1c3b5de3d23ccc4a7137e7458c283df1ae56878c404863b5124b0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.2 MB (143177459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec184124ebdbc826e1d68e9d5038d3989912c2d76ce9ae2c4bf14da610ae2649`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Sat, 29 Dec 2018 11:56:14 GMT
ADD file:aaa0661c64d46388f46e71ba3d172f3208f6b943dbc1a86e0b50ca5080bdb3ee in / 
# Sat, 29 Dec 2018 11:56:15 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 21:36:24 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Sat, 29 Dec 2018 21:36:24 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Sat, 29 Dec 2018 21:36:48 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 29 Dec 2018 21:36:48 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 29 Dec 2018 21:36:49 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 29 Dec 2018 21:45:50 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 21:45:51 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Sat, 29 Dec 2018 21:45:51 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Sat, 29 Dec 2018 21:45:51 GMT
RUN set -eux; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Sat, 29 Dec 2018 21:45:52 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Sat, 29 Dec 2018 21:45:53 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Sat, 29 Dec 2018 21:45:53 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Sat, 29 Dec 2018 21:45:53 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Sat, 29 Dec 2018 21:45:54 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 21:45:54 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 21:45:54 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 29 Dec 2018 22:07:26 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 11 Jan 2019 12:50:42 GMT
ENV PHP_VERSION=7.2.14
# Fri, 11 Jan 2019 12:50:42 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror
# Fri, 11 Jan 2019 12:50:42 GMT
ENV PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f PHP_MD5=
# Fri, 11 Jan 2019 12:50:53 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 11 Jan 2019 12:50:53 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 11 Jan 2019 12:54:18 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 11 Jan 2019 12:54:18 GMT
COPY multi:0a6fe33cb39694994fa567c75b399b9aa5e477c8770caa9f731607a72819b457 in /usr/local/bin/ 
# Fri, 11 Jan 2019 12:54:19 GMT
RUN docker-php-ext-enable sodium
# Fri, 11 Jan 2019 12:54:19 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 11 Jan 2019 12:54:19 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Fri, 11 Jan 2019 12:54:20 GMT
WORKDIR /var/www/html
# Fri, 11 Jan 2019 12:54:20 GMT
EXPOSE 80
# Fri, 11 Jan 2019 12:54:20 GMT
CMD ["apache2-foreground"]
# Fri, 11 Jan 2019 16:51:33 GMT
RUN set -ex;     docker-php-ext-install opcache pdo_mysql mysqli
# Fri, 11 Jan 2019 16:51:34 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 11 Jan 2019 16:51:34 GMT
RUN a2enmod rewrite expires
# Fri, 11 Jan 2019 16:51:35 GMT
VOLUME [/var/www/html]
# Fri, 11 Jan 2019 16:51:35 GMT
ENV YOURLS_VERSION=1.7.2
# Fri, 11 Jan 2019 16:51:36 GMT
RUN set -ex; 	curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz"; 	tar -xzf yourls.tar.gz -C /usr/src/; 	mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls; 	rm yourls.tar.gz; 	chown -R www-data:www-data /usr/src/yourls
# Fri, 11 Jan 2019 16:51:37 GMT
COPY file:7722c9d76f082fb2683ec1d4befeaddd6c873c885172752cacb787e076d4dbeb in /usr/local/bin/ 
# Fri, 11 Jan 2019 16:51:37 GMT
COPY file:d375afac6cf463942802d2b27f08ef4d6198ac33f536b334f195e2e479c4cd6f in /var/www/html/ 
# Fri, 11 Jan 2019 16:51:37 GMT
COPY file:5b7ff05d0c98ad759c4bec0ef8a7ce74cae42e95b42564b55f43b341c2c3e3f5 in /var/www/html/ 
# Fri, 11 Jan 2019 16:51:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 16:51:37 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:9a1a13172ed974323f7c35153e8b23b8fa1c85355b6b26cc3127e640e45ef0aa`  
		Last Modified: Sat, 29 Dec 2018 12:10:44 GMT  
		Size: 23.1 MB (23133155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5094d5d656a95c6aa92f5f2adc56a794564b1e340bc4065db2947d7ce0c1a394`  
		Last Modified: Sun, 30 Dec 2018 01:57:01 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb2ab2fc6c3875a5ebec4eb6dae731467d2cfbe0c4372b4db6b7f8faad9917e`  
		Last Modified: Sun, 30 Dec 2018 01:57:20 GMT  
		Size: 71.5 MB (71503745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05469bc6d7085ba5736c7bf95032d0bb750ab2fa43b29049cfee7ba36c391e79`  
		Last Modified: Sun, 30 Dec 2018 01:57:01 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cac1a3cba6925217785401a8b972064ba1a0dfe60d4e039f49c4dac4b3f4270e`  
		Last Modified: Sun, 30 Dec 2018 01:57:45 GMT  
		Size: 17.6 MB (17561920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9184c6ff5922580665f40d9e2416d6ff748200ba764489ad442486d61570f8d0`  
		Last Modified: Sun, 30 Dec 2018 01:57:40 GMT  
		Size: 1.3 KB (1336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9edc4d80dca7d81ba8b7a97ebf76890d74ca4d440e11b418c39c09686094da0b`  
		Last Modified: Sun, 30 Dec 2018 01:57:40 GMT  
		Size: 430.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c49d3ce320b30bff15e021157c1b88262d848a456dbdf970c8796accf3e9cc4`  
		Last Modified: Sun, 30 Dec 2018 01:57:40 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd62ef36d94e7c9305ffd2eb8a68bd0b1939d0e5f21ce8a25c7ab5db0748013d`  
		Last Modified: Fri, 11 Jan 2019 14:54:17 GMT  
		Size: 12.5 MB (12505836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b436f91e147a9071b2e0dde2cd2939f63ead4fffb43f92d4dc8d39aabfad96b`  
		Last Modified: Fri, 11 Jan 2019 14:54:12 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2848e63e536187e58765f167f5d942e58c4ba788373f18053046374337e6a498`  
		Last Modified: Fri, 11 Jan 2019 14:54:16 GMT  
		Size: 15.7 MB (15686833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b45df8623fc8e136011d091ed53d924d6820771d844b4c27843c8aac1a4a6ca6`  
		Last Modified: Fri, 11 Jan 2019 14:54:17 GMT  
		Size: 2.2 KB (2197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02b7d92b09c9e14b62d1c385941eabe813b6b3fb137191d2b3d3b91806481ada`  
		Last Modified: Fri, 11 Jan 2019 14:54:16 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64c2910211b6c9223772e7d9203a87d7f51672460245fe15ecf00277389bdaed`  
		Last Modified: Fri, 11 Jan 2019 14:54:16 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95dc45aae2e0964d2a1ca15dc4bb85b376c6ad044d917e80ae7921de2d2c319f`  
		Last Modified: Fri, 11 Jan 2019 16:53:29 GMT  
		Size: 289.9 KB (289900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87dd5f217b94a013757e95bd992b7b62057b4126538eeeaed0bb895a30f4204d`  
		Last Modified: Fri, 11 Jan 2019 16:53:29 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:903227e6f2d86754f057e2c31d64101ffc5d4731d2a61e5dabe5262275d570e8`  
		Last Modified: Fri, 11 Jan 2019 16:53:29 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3448433d93ec7f6c0ab0503cf930d128b88b57582763ed389e2d4ff3905c43cc`  
		Last Modified: Fri, 11 Jan 2019 16:53:29 GMT  
		Size: 2.5 MB (2485625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:468cea8a346ee27bcace5936c73c780e3405caa1c0e6ac073809d845ce32d115`  
		Last Modified: Fri, 11 Jan 2019 16:53:29 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de510317f9126ed6f8412e11413bde598790403a1ee015721ca216b8c7d949bb`  
		Last Modified: Fri, 11 Jan 2019 16:53:29 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bccf2bff7778ae0e482c38ec0d02f9dd398805696e645100abcfcbd3fa7ef83`  
		Last Modified: Fri, 11 Jan 2019 16:53:29 GMT  
		Size: 336.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `yourls:1.7-apache` - linux; ppc64le

```console
$ docker pull yourls@sha256:b626b79f83abab2dd375417dbde30ef9cb4ccd8a898794ecf28e421bdc3fb9a8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.2 MB (132241096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:189ff37dac130a5be7bc52d2baa5e9cf8dba74fd13fe3f326ed6c615caa61dcf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Sat, 29 Dec 2018 09:22:40 GMT
ADD file:11cdf0dbdac1a774d74f30e9954e3cf02c390d2280ce747bc95a3b774259f226 in / 
# Sat, 29 Dec 2018 09:22:44 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 13:02:33 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Sat, 29 Dec 2018 13:02:35 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Sat, 29 Dec 2018 13:04:54 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:04:59 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 29 Dec 2018 13:05:04 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 29 Dec 2018 13:12:08 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:12:10 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Sat, 29 Dec 2018 13:12:12 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Sat, 29 Dec 2018 13:12:16 GMT
RUN set -eux; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Sat, 29 Dec 2018 13:12:21 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Sat, 29 Dec 2018 13:12:26 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Sat, 29 Dec 2018 13:12:28 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Sat, 29 Dec 2018 13:12:30 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Sat, 29 Dec 2018 13:12:32 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 13:12:34 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 13:12:36 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 29 Dec 2018 13:39:05 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 11 Jan 2019 10:15:38 GMT
ENV PHP_VERSION=7.2.14
# Fri, 11 Jan 2019 10:15:41 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror
# Fri, 11 Jan 2019 10:15:44 GMT
ENV PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f PHP_MD5=
# Fri, 11 Jan 2019 10:16:28 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 11 Jan 2019 10:16:29 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 11 Jan 2019 10:20:30 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 11 Jan 2019 10:20:32 GMT
COPY multi:0a6fe33cb39694994fa567c75b399b9aa5e477c8770caa9f731607a72819b457 in /usr/local/bin/ 
# Fri, 11 Jan 2019 10:20:35 GMT
RUN docker-php-ext-enable sodium
# Fri, 11 Jan 2019 10:20:38 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 11 Jan 2019 10:20:38 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Fri, 11 Jan 2019 10:20:40 GMT
WORKDIR /var/www/html
# Fri, 11 Jan 2019 10:20:42 GMT
EXPOSE 80
# Fri, 11 Jan 2019 10:20:44 GMT
CMD ["apache2-foreground"]
# Fri, 11 Jan 2019 13:41:41 GMT
RUN set -ex;     docker-php-ext-install opcache pdo_mysql mysqli
# Fri, 11 Jan 2019 13:41:44 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 11 Jan 2019 13:41:47 GMT
RUN a2enmod rewrite expires
# Fri, 11 Jan 2019 13:41:48 GMT
VOLUME [/var/www/html]
# Fri, 11 Jan 2019 13:41:49 GMT
ENV YOURLS_VERSION=1.7.2
# Fri, 11 Jan 2019 13:41:53 GMT
RUN set -ex; 	curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz"; 	tar -xzf yourls.tar.gz -C /usr/src/; 	mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls; 	rm yourls.tar.gz; 	chown -R www-data:www-data /usr/src/yourls
# Fri, 11 Jan 2019 13:41:54 GMT
COPY file:7722c9d76f082fb2683ec1d4befeaddd6c873c885172752cacb787e076d4dbeb in /usr/local/bin/ 
# Fri, 11 Jan 2019 13:41:54 GMT
COPY file:d375afac6cf463942802d2b27f08ef4d6198ac33f536b334f195e2e479c4cd6f in /var/www/html/ 
# Fri, 11 Jan 2019 13:41:55 GMT
COPY file:5b7ff05d0c98ad759c4bec0ef8a7ce74cae42e95b42564b55f43b341c2c3e3f5 in /var/www/html/ 
# Fri, 11 Jan 2019 13:41:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 13:41:57 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:ca671aebac61774c6bfa23dd5b097e3a135a33f3987318158787030ee978173a`  
		Last Modified: Sat, 29 Dec 2018 09:28:38 GMT  
		Size: 22.7 MB (22746826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55c9e443128efed70bcb2c05fbf1b7b3c63735856c07a31f95f3422e8e5d6be3`  
		Last Modified: Sat, 29 Dec 2018 15:02:06 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26502f7e153105ac601f4d12e9b72baf9021b49b992fe619264a1933c2daf6b4`  
		Last Modified: Sat, 29 Dec 2018 15:02:32 GMT  
		Size: 61.8 MB (61833074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d327479a214f245c363cea23d6878780e6dbb819938b9511e7b69e2e17e81fbf`  
		Last Modified: Sat, 29 Dec 2018 15:02:06 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3209a003a83f58a4c0b0b6d647aab82cf58aac4488fbea658f96c9340ff4a9d`  
		Last Modified: Sat, 29 Dec 2018 15:03:36 GMT  
		Size: 17.3 MB (17348586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0792d92b3fe4333eec429cc7e973c9758702823c0f9cc84cd02777049c72d16d`  
		Last Modified: Sat, 29 Dec 2018 15:03:28 GMT  
		Size: 1.4 KB (1370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:594e55fae66c4e49f0a9d148262bd186dea8241009a7ebf4ac3ac37b9f04944a`  
		Last Modified: Sat, 29 Dec 2018 15:03:28 GMT  
		Size: 473.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7e36bda981ae059f48a8253566f80ac2c45f8d7490de6f2a6693f68e1c964b2`  
		Last Modified: Sat, 29 Dec 2018 15:03:28 GMT  
		Size: 518.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69bb2d7edd823e60bb4099d2fb4b17b3a2cc874a323577e8db870cd22c60920c`  
		Last Modified: Fri, 11 Jan 2019 11:26:57 GMT  
		Size: 12.5 MB (12504919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22e805ca840d1abcec392afa8d90e0de875ca93dfe0680e24784940fc990d819`  
		Last Modified: Fri, 11 Jan 2019 11:26:52 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eedb850efc629bd03dc72d6c0204586f9f46309639103c96d3ba5f964aeaba8d`  
		Last Modified: Fri, 11 Jan 2019 11:27:00 GMT  
		Size: 15.0 MB (15027223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d83ab29a048cabe65cfd7b7b4ce4b521ffba32cd1aa44e7150b5b94d43c2b69`  
		Last Modified: Fri, 11 Jan 2019 11:26:52 GMT  
		Size: 2.2 KB (2198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36c5059d88355e4c24967d7837f4702d890c3e91b29ff44b8e7df8ba6120c4e3`  
		Last Modified: Fri, 11 Jan 2019 11:26:52 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4def876c28c20732bdd4195fad8a9aadbaecae9ca15a0e948eaf42a989a53b6`  
		Last Modified: Fri, 11 Jan 2019 11:26:52 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40b859f8c1a0dcf62711b25d04b7f19bb139118c87db7e91c40cd7ccff62789b`  
		Last Modified: Fri, 11 Jan 2019 13:44:58 GMT  
		Size: 284.2 KB (284236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1814abbbcc60c8f1c24462eb8dc47f745cefa48246daf5cfdca857829725c08`  
		Last Modified: Fri, 11 Jan 2019 13:44:58 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b742dba48ce1cb3bde9b305cf038ef9a79b85cea257611874fcdee91767fe4a6`  
		Last Modified: Fri, 11 Jan 2019 13:44:54 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57d6f9ae7a02d68d00b5021c6094cb83f881d2c0db79b6bbe8bb8ece97d37921`  
		Last Modified: Fri, 11 Jan 2019 13:44:55 GMT  
		Size: 2.5 MB (2485637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0594c573d027c46238d7fca6e3dbfa69330722ac2092e7b5d948533a4d84564b`  
		Last Modified: Fri, 11 Jan 2019 13:44:54 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75de01c68c15baa5dd95835d11036fef59656ccb052218386adfeca2ccfe8f46`  
		Last Modified: Fri, 11 Jan 2019 13:44:54 GMT  
		Size: 1.8 KB (1832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:356802aa837e0477c136bd67c8c56149c1c944a1179b76c10fe1f20a87854642`  
		Last Modified: Fri, 11 Jan 2019 13:44:54 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `yourls:1.7-fpm`

```console
$ docker pull yourls@sha256:0c2ef5de4ad4aaeac18a8a1f8906b915fd0bcc3787413639f1ff4af1ac4d1f62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `yourls:1.7-fpm` - linux; amd64

```console
$ docker pull yourls@sha256:26ae05de2a7ac94205e9cdfea1abfcb2a1732580548de2c3fa81f193f9bf06c9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.9 MB (133909463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbddba19b2fbecaa0c622907f8fbfda84cef133464a3a3ff516d42c6aa0bf88d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

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
# Sat, 29 Dec 2018 04:39:01 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Sat, 29 Dec 2018 04:39:01 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 04:39:01 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 04:39:01 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 29 Dec 2018 05:08:52 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 11 Jan 2019 01:18:55 GMT
ENV PHP_VERSION=7.2.14
# Fri, 11 Jan 2019 01:18:55 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror
# Fri, 11 Jan 2019 01:18:55 GMT
ENV PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f PHP_MD5=
# Fri, 11 Jan 2019 01:19:04 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 11 Jan 2019 01:19:04 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 11 Jan 2019 01:24:51 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 11 Jan 2019 01:24:52 GMT
COPY multi:cbc68fef2c8554b9a23fee7eee16ffda927235f929048638240f97172562665c in /usr/local/bin/ 
# Fri, 11 Jan 2019 01:24:53 GMT
RUN docker-php-ext-enable sodium
# Fri, 11 Jan 2019 01:24:53 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 11 Jan 2019 01:24:53 GMT
WORKDIR /var/www/html
# Fri, 11 Jan 2019 01:24:54 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 11 Jan 2019 01:24:54 GMT
EXPOSE 9000
# Fri, 11 Jan 2019 01:24:55 GMT
CMD ["php-fpm"]
# Fri, 11 Jan 2019 03:25:27 GMT
RUN set -ex;     docker-php-ext-install opcache pdo_mysql mysqli
# Fri, 11 Jan 2019 03:25:29 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 11 Jan 2019 03:25:30 GMT
VOLUME [/var/www/html]
# Fri, 11 Jan 2019 03:25:30 GMT
ENV YOURLS_VERSION=1.7.2
# Fri, 11 Jan 2019 03:25:33 GMT
RUN set -ex; 	curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz"; 	tar -xzf yourls.tar.gz -C /usr/src/; 	mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls; 	rm yourls.tar.gz; 	chown -R www-data:www-data /usr/src/yourls
# Fri, 11 Jan 2019 03:25:33 GMT
COPY file:7722c9d76f082fb2683ec1d4befeaddd6c873c885172752cacb787e076d4dbeb in /usr/local/bin/ 
# Fri, 11 Jan 2019 03:25:33 GMT
COPY file:d375afac6cf463942802d2b27f08ef4d6198ac33f536b334f195e2e479c4cd6f in /var/www/html/ 
# Fri, 11 Jan 2019 03:25:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 03:25:35 GMT
CMD ["php-fpm"]
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
	-	`sha256:59cb134d9879a9923c07326dc3a2920705536fffc7736ccf3949428a30c1842a`  
		Last Modified: Fri, 11 Jan 2019 01:53:51 GMT  
		Size: 12.5 MB (12485194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8358df686e1055512214d9a967e00e9bf3f25c3fcefac313053b9a546a7b769`  
		Last Modified: Fri, 11 Jan 2019 01:53:50 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f143a000adfbe19d15e9553db0da1eb0c3ec3e2a604b60a329fad9d6b2bc1d96`  
		Last Modified: Fri, 11 Jan 2019 01:53:55 GMT  
		Size: 28.7 MB (28707927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d88a4a69379d5d7029089d72039f1e607258059ccece9bcf9f10f138bcc8437c`  
		Last Modified: Fri, 11 Jan 2019 01:53:49 GMT  
		Size: 2.2 KB (2189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6df09c82fa9c15288331b9fe31b5ce7f39597ff8cb9770ca4ac95ff5579f539`  
		Last Modified: Fri, 11 Jan 2019 01:53:49 GMT  
		Size: 261.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7780e07c0fe5558d63852d2bc9e2a81254490880b09c8c57418c030b7725e665`  
		Last Modified: Fri, 11 Jan 2019 01:53:49 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa42310f5592c8c5d61820727c59ae88cacc3d1df352b8af959f9ad5ccddce7b`  
		Last Modified: Fri, 11 Jan 2019 01:53:49 GMT  
		Size: 7.8 KB (7800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7533b841e8adb76972c086a62af5f7c6a9072d211e20843bc80e6ae287e984c`  
		Last Modified: Fri, 11 Jan 2019 03:26:59 GMT  
		Size: 280.6 KB (280555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8b6e9007c7e1823c1a4f5c631db9f25f15cf0b1bcd7e5ff6f0198617f814396`  
		Last Modified: Fri, 11 Jan 2019 03:26:59 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7592678cf5cd60efc29c43bd085e426b31a36320a92f23e1340e691bdb8ee2ee`  
		Last Modified: Fri, 11 Jan 2019 03:26:59 GMT  
		Size: 2.5 MB (2485628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cb756da5ee15940306aef8a76efaaebe89291cdc0e270f7c48d6e91b8612c90`  
		Last Modified: Fri, 11 Jan 2019 03:26:59 GMT  
		Size: 1.1 KB (1065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e97983b859657e27410f6cd6c00f0eeddfc501f624049734208af50f30e9a61`  
		Last Modified: Fri, 11 Jan 2019 03:26:59 GMT  
		Size: 1.8 KB (1817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `yourls:1.7-fpm` - linux; arm variant v5

```console
$ docker pull yourls@sha256:1cf7ff1ad7ef7764f5b8ca481963093af171a2e77f9c152804bd24be34288a72
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.3 MB (121325631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83a62744fb41906adcfcad53455d34a192c7b14dbca61a297e544411b13a3a60`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Sat, 29 Dec 2018 09:55:31 GMT
ADD file:1f3db2bdb8941ca17968251e2af1378e7f7556627ed60eafb5ee40089810bc8b in / 
# Sat, 29 Dec 2018 09:55:32 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 12:32:24 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Sat, 29 Dec 2018 12:32:24 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Sat, 29 Dec 2018 12:33:02 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:33:04 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 29 Dec 2018 12:33:05 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 29 Dec 2018 12:41:44 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Sat, 29 Dec 2018 12:41:44 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 12:41:44 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 12:41:45 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 29 Dec 2018 12:58:50 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Sat, 29 Dec 2018 12:58:51 GMT
ENV PHP_VERSION=7.2.13
# Sat, 29 Dec 2018 12:58:52 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.13.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.13.tar.xz.asc/from/this/mirror
# Sat, 29 Dec 2018 12:58:52 GMT
ENV PHP_SHA256=14b0429abdb46b65c843e5882c9a8c46b31dfbf279c747293b8ab950c2644a4b PHP_MD5=
# Sat, 29 Dec 2018 12:59:10 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 29 Dec 2018 12:59:11 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 29 Dec 2018 13:03:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 29 Dec 2018 13:03:07 GMT
COPY multi:cbc68fef2c8554b9a23fee7eee16ffda927235f929048638240f97172562665c in /usr/local/bin/ 
# Sat, 29 Dec 2018 13:03:08 GMT
RUN docker-php-ext-enable sodium
# Sat, 29 Dec 2018 13:03:09 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 29 Dec 2018 13:03:10 GMT
WORKDIR /var/www/html
# Sat, 29 Dec 2018 13:03:11 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Sat, 29 Dec 2018 13:03:12 GMT
EXPOSE 9000
# Sat, 29 Dec 2018 13:03:12 GMT
CMD ["php-fpm"]
# Fri, 04 Jan 2019 11:12:20 GMT
RUN set -ex;     docker-php-ext-install opcache pdo_mysql mysqli
# Fri, 04 Jan 2019 11:12:22 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 04 Jan 2019 11:12:22 GMT
VOLUME [/var/www/html]
# Fri, 04 Jan 2019 11:12:22 GMT
ENV YOURLS_VERSION=1.7.2
# Fri, 04 Jan 2019 11:12:25 GMT
RUN set -ex; 	curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz"; 	tar -xzf yourls.tar.gz -C /usr/src/; 	mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls; 	rm yourls.tar.gz; 	chown -R www-data:www-data /usr/src/yourls
# Fri, 04 Jan 2019 11:12:25 GMT
COPY file:7722c9d76f082fb2683ec1d4befeaddd6c873c885172752cacb787e076d4dbeb in /usr/local/bin/ 
# Fri, 04 Jan 2019 11:12:26 GMT
COPY file:d375afac6cf463942802d2b27f08ef4d6198ac33f536b334f195e2e479c4cd6f in /var/www/html/ 
# Fri, 04 Jan 2019 11:12:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 04 Jan 2019 11:12:27 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:e040f73e39f2c2a1a8429ff270c2d629ef2630ac31581228037724d707862b22`  
		Last Modified: Sat, 29 Dec 2018 10:03:16 GMT  
		Size: 21.2 MB (21167776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dc5107d4e4251d4ef9002026f490e573eff661fe6e2278d1bd3a7d121a3c321`  
		Last Modified: Sat, 29 Dec 2018 15:11:10 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca61229a1118271adc19db58c172d9ceaa14ceb0aef16b2fb0b4237c08f6fe9e`  
		Last Modified: Sat, 29 Dec 2018 15:11:32 GMT  
		Size: 57.5 MB (57464650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2be23d64816b54f39f39a88b24bd971081a558160fdf7667ec44f47c45989c9`  
		Last Modified: Sat, 29 Dec 2018 15:11:10 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c490b86c4e9dfbe5a82ddd1640f9f0e0932d4d31215ebfcfb8d6e58bfcc44028`  
		Last Modified: Sat, 29 Dec 2018 15:14:01 GMT  
		Size: 12.4 MB (12442583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3da0708f79abf62d1c022d32cbdaa42258834cacf4901085284672d451021958`  
		Last Modified: Sat, 29 Dec 2018 15:13:58 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab64bec714814213d7b09ad18af25e2455e4dd50f6862d36aeb2031dc56514ea`  
		Last Modified: Sat, 29 Dec 2018 15:14:06 GMT  
		Size: 27.5 MB (27480691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89f8b315cb1f42bcbb6cf2d26daef27ab910d598ebdaa48965cae783a50e7f2b`  
		Last Modified: Sat, 29 Dec 2018 15:13:57 GMT  
		Size: 2.2 KB (2192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f48d933ccdb1a69e07a558caab40830dcbe6e7425b1ad1e8a9cbb5d25c5e1a2`  
		Last Modified: Sat, 29 Dec 2018 15:13:57 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c69b137eb49d2634bf1e3a93f65d63e3b18d95857d3a69d601fc341e28ca658e`  
		Last Modified: Sat, 29 Dec 2018 15:13:57 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be34c72dbda7bbdb3652f7aa43ea2026ebca033562269ee975fef5b81f5b7f7e`  
		Last Modified: Sat, 29 Dec 2018 15:13:57 GMT  
		Size: 7.8 KB (7801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:258aebfbc10c5d59b9a951ba1c79943ea4e8d684f61d3406f4257ef0438ff33b`  
		Last Modified: Fri, 04 Jan 2019 11:13:13 GMT  
		Size: 269.7 KB (269719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc7d431187d3d8c8e72a255de63785025ea4374ac15775db7d38fa91d4e2d9c9`  
		Last Modified: Fri, 04 Jan 2019 11:13:13 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5022ad00d441d23178b71d9609106aef87e3ada6ae7fc5496de66a475924ea7`  
		Last Modified: Fri, 04 Jan 2019 11:13:14 GMT  
		Size: 2.5 MB (2485631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14194467aad24e3d56646647c1a4826cb0dad406e84d436275c19d7471749079`  
		Last Modified: Fri, 04 Jan 2019 11:13:13 GMT  
		Size: 1.1 KB (1065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76b71a0ff4d38218a65e94bf966dbd0b36aa9465964444411f9b92887801ada0`  
		Last Modified: Fri, 04 Jan 2019 11:13:13 GMT  
		Size: 1.8 KB (1817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `yourls:1.7-fpm` - linux; arm variant v7

```console
$ docker pull yourls@sha256:1d1966cdf09165b1ab98bb6a9c115f0ba63652fc29d732f508263c062600bc66
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.5 MB (114483762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8cef7cb88d1dd7473073a479f639eea6050ea61341ab376d38d91896b92ad37`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Sat, 29 Dec 2018 13:04:57 GMT
ADD file:287bc4fa3803b40afca4bcac26d92079fb862f7b968e960e01ae536b1b5c7aea in / 
# Sat, 29 Dec 2018 13:04:57 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 15:52:23 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Sat, 29 Dec 2018 15:52:23 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Sat, 29 Dec 2018 15:52:54 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 29 Dec 2018 15:52:55 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 29 Dec 2018 15:52:57 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 29 Dec 2018 16:00:56 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Sat, 29 Dec 2018 16:00:56 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 16:00:56 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 16:00:57 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 29 Dec 2018 16:35:39 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 11 Jan 2019 13:24:55 GMT
ENV PHP_VERSION=7.2.14
# Fri, 11 Jan 2019 13:24:55 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror
# Fri, 11 Jan 2019 13:24:56 GMT
ENV PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f PHP_MD5=
# Fri, 11 Jan 2019 13:25:09 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 11 Jan 2019 13:25:09 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 11 Jan 2019 13:28:42 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 11 Jan 2019 13:28:43 GMT
COPY multi:cbc68fef2c8554b9a23fee7eee16ffda927235f929048638240f97172562665c in /usr/local/bin/ 
# Fri, 11 Jan 2019 13:28:44 GMT
RUN docker-php-ext-enable sodium
# Fri, 11 Jan 2019 13:28:45 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 11 Jan 2019 13:28:45 GMT
WORKDIR /var/www/html
# Fri, 11 Jan 2019 13:28:47 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 11 Jan 2019 13:28:47 GMT
EXPOSE 9000
# Fri, 11 Jan 2019 13:28:48 GMT
CMD ["php-fpm"]
# Fri, 11 Jan 2019 14:42:22 GMT
RUN set -ex;     docker-php-ext-install opcache pdo_mysql mysqli
# Fri, 11 Jan 2019 14:42:24 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 11 Jan 2019 14:42:24 GMT
VOLUME [/var/www/html]
# Fri, 11 Jan 2019 14:42:25 GMT
ENV YOURLS_VERSION=1.7.2
# Fri, 11 Jan 2019 14:42:28 GMT
RUN set -ex; 	curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz"; 	tar -xzf yourls.tar.gz -C /usr/src/; 	mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls; 	rm yourls.tar.gz; 	chown -R www-data:www-data /usr/src/yourls
# Fri, 11 Jan 2019 14:42:29 GMT
COPY file:7722c9d76f082fb2683ec1d4befeaddd6c873c885172752cacb787e076d4dbeb in /usr/local/bin/ 
# Fri, 11 Jan 2019 14:42:29 GMT
COPY file:d375afac6cf463942802d2b27f08ef4d6198ac33f536b334f195e2e479c4cd6f in /var/www/html/ 
# Fri, 11 Jan 2019 14:42:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 14:42:30 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:eb2ab017daa46c13a41d60225632e89c8b5c24a9bdafb2b75b1d415830b41e6b`  
		Last Modified: Sat, 29 Dec 2018 13:12:36 GMT  
		Size: 19.3 MB (19277755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bdd3055b30ec26315bbe73533843047ed98fec35dc5acc5cb0d0878ab8ed597`  
		Last Modified: Mon, 31 Dec 2018 19:12:59 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f79128a6d00730d8aaed6af05f3590337fcecd13119d056c272e9d01043f441`  
		Last Modified: Mon, 31 Dec 2018 19:13:15 GMT  
		Size: 53.6 MB (53582251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56fcb7f3e035561a3c9eced964fa2bf0fb33d76092839e59092e773161523cf0`  
		Last Modified: Mon, 31 Dec 2018 19:12:59 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:802eefdb9d134ccd3ddc7694ddbaab63b7d2fb63cc3a5e6bff086425ad43df6e`  
		Last Modified: Fri, 11 Jan 2019 14:12:47 GMT  
		Size: 12.5 MB (12482937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39bfe39d4c9fb7d44a3c80ab3089176061f3c0b32c96c1aa1d31b431b8e86e63`  
		Last Modified: Fri, 11 Jan 2019 14:12:45 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ee186b63800fe82f95c77a3f49036ead842b8e0fe973062a836ebbc9aaed933`  
		Last Modified: Fri, 11 Jan 2019 14:12:52 GMT  
		Size: 26.4 MB (26394230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85aee9a5d890cf991908ed8382a4332d10fbd262580f91e5019acdd4b28e922e`  
		Last Modified: Fri, 11 Jan 2019 14:12:44 GMT  
		Size: 2.2 KB (2190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45572b53ccb475f2e16a6fa31a0fe792c71c80c6371a9ec5b1f4626fc67f88a7`  
		Last Modified: Fri, 11 Jan 2019 14:12:44 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:368570cf648a5678190d39c059956f879eb44c847a048ecb4f1e11509af77790`  
		Last Modified: Fri, 11 Jan 2019 14:12:44 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93e67412e3d7d3ced9f1ea8c2cc13795954d294400e8db227931648e3dc900fc`  
		Last Modified: Fri, 11 Jan 2019 14:12:44 GMT  
		Size: 7.8 KB (7801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30b8492480bf471068c59ba7bba66622cd0a60b13178cd5ac1e237023f3b2bbf`  
		Last Modified: Fri, 11 Jan 2019 14:43:08 GMT  
		Size: 246.4 KB (246380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421d59701eb5a85dd86ab856613f08baa127e6bf0916c5a9fb30eebd94637ce1`  
		Last Modified: Fri, 11 Jan 2019 14:43:08 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c801b4eaf3c54ad0ae389ade81582002f60ad5bc6e5a3c1939ddf268bfed0448`  
		Last Modified: Fri, 11 Jan 2019 14:43:09 GMT  
		Size: 2.5 MB (2485630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0930434773c066749891c95ef77b24e0dd07143ae3fa2389db80851869103f7`  
		Last Modified: Fri, 11 Jan 2019 14:43:09 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aecd25d807002cb7b3a31b3738d7dcbdf925b764874bf1f480febf6a65f17095`  
		Last Modified: Fri, 11 Jan 2019 14:43:09 GMT  
		Size: 1.8 KB (1817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `yourls:1.7-fpm` - linux; arm64 variant v8

```console
$ docker pull yourls@sha256:2941a26926bbfd0c7696e536fdb29c286bdd22de4a3ee6ffe20b88d0e745091d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.7 MB (120670460 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:695ced429d52797ce7bfc996b80adddef859e5fa9e601998987276c050164915`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:46 GMT
ADD file:e4db5c28a0f74e32be4419aae491e4b9dc7402f3640369289e24c52028c871ad in / 
# Sat, 29 Dec 2018 10:08:47 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 21:39:33 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Sat, 29 Dec 2018 21:39:33 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Sat, 29 Dec 2018 21:41:51 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 29 Dec 2018 21:41:52 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 29 Dec 2018 21:41:54 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 29 Dec 2018 22:04:55 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Sat, 29 Dec 2018 22:04:56 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 22:04:57 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 22:04:57 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 29 Dec 2018 22:46:42 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 11 Jan 2019 11:38:12 GMT
ENV PHP_VERSION=7.2.14
# Fri, 11 Jan 2019 11:38:13 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror
# Fri, 11 Jan 2019 11:38:13 GMT
ENV PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f PHP_MD5=
# Fri, 11 Jan 2019 11:38:46 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 11 Jan 2019 11:38:47 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 11 Jan 2019 11:47:20 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 11 Jan 2019 11:47:25 GMT
COPY multi:cbc68fef2c8554b9a23fee7eee16ffda927235f929048638240f97172562665c in /usr/local/bin/ 
# Fri, 11 Jan 2019 11:47:31 GMT
RUN docker-php-ext-enable sodium
# Fri, 11 Jan 2019 11:47:32 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 11 Jan 2019 11:47:34 GMT
WORKDIR /var/www/html
# Fri, 11 Jan 2019 11:47:38 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 11 Jan 2019 11:47:39 GMT
EXPOSE 9000
# Fri, 11 Jan 2019 11:47:41 GMT
CMD ["php-fpm"]
# Fri, 11 Jan 2019 15:06:19 GMT
RUN set -ex;     docker-php-ext-install opcache pdo_mysql mysqli
# Fri, 11 Jan 2019 15:06:22 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 11 Jan 2019 15:06:22 GMT
VOLUME [/var/www/html]
# Fri, 11 Jan 2019 15:06:23 GMT
ENV YOURLS_VERSION=1.7.2
# Fri, 11 Jan 2019 15:06:28 GMT
RUN set -ex; 	curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz"; 	tar -xzf yourls.tar.gz -C /usr/src/; 	mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls; 	rm yourls.tar.gz; 	chown -R www-data:www-data /usr/src/yourls
# Fri, 11 Jan 2019 15:06:29 GMT
COPY file:7722c9d76f082fb2683ec1d4befeaddd6c873c885172752cacb787e076d4dbeb in /usr/local/bin/ 
# Fri, 11 Jan 2019 15:06:29 GMT
COPY file:d375afac6cf463942802d2b27f08ef4d6198ac33f536b334f195e2e479c4cd6f in /var/www/html/ 
# Fri, 11 Jan 2019 15:06:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 15:06:31 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:1a07b0163994a6d3328beeaa3400f6304e68548ffb84deefcb74427a6b65a489`  
		Last Modified: Sat, 29 Dec 2018 10:15:04 GMT  
		Size: 20.3 MB (20337511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da8dc61ccacab0c571f2793c6c5400180816557fa0140990f997519be3471012`  
		Last Modified: Sun, 30 Dec 2018 01:03:31 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59be51dca15077e7f02edb4376d3e8e194896c4e706c9c03c2fd2d2af47f8cdc`  
		Last Modified: Sun, 30 Dec 2018 01:03:58 GMT  
		Size: 57.6 MB (57606226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f391fc42cee2e19f185ac34d4d4e8404a3209ed5c17b369dc30bdf3a0d29915`  
		Last Modified: Sun, 30 Dec 2018 01:03:31 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8b4bd68fda01b808bffeb6d2ca1a16e7212d9f1b1fea8cb1cfc02ba857473fa`  
		Last Modified: Fri, 11 Jan 2019 13:28:36 GMT  
		Size: 12.5 MB (12483187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b35c504961fd510f4430c3eedfb20c4597f2c6c11fc345babf163b2da375ea0`  
		Last Modified: Fri, 11 Jan 2019 13:28:33 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e316ed52b8b1f111920f59d95ff5430bec008ed8265b7a4f77c2fd539c8dc14b`  
		Last Modified: Fri, 11 Jan 2019 13:28:45 GMT  
		Size: 27.5 MB (27481051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b63a7ded48d7b0325987a234c51806ed095393089fa3bc7f8f070c26aa3cfd08`  
		Last Modified: Fri, 11 Jan 2019 13:28:31 GMT  
		Size: 2.2 KB (2186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:541a7e548b675a23496524efadc152fdb1b7eec6711ecb2e9682cb37bf7969fd`  
		Last Modified: Fri, 11 Jan 2019 13:28:31 GMT  
		Size: 257.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:288a98ed027c68937d19843afd7c4b77266cd092e017f4adc9c15368c6a76e53`  
		Last Modified: Fri, 11 Jan 2019 13:28:31 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:607b3fab8b715de1d2992b1f37c92c2c57b23e05b32483fa8ffae7ea1719da40`  
		Last Modified: Fri, 11 Jan 2019 13:28:31 GMT  
		Size: 7.8 KB (7800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f856cf36ae0f7fb40395f6351153800f2238ee2d496ea66672c5ad2f8f2bdb0f`  
		Last Modified: Fri, 11 Jan 2019 15:09:31 GMT  
		Size: 262.3 KB (262348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d78a6e76c6ab1e481a7eac9f7e22f99b534fa037a88c27eec2bc107da2e801c6`  
		Last Modified: Fri, 11 Jan 2019 15:09:31 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d5f3f82c896e099092bfbeb6ab7deceafc825a81886354985314acff9c6d738`  
		Last Modified: Fri, 11 Jan 2019 15:09:32 GMT  
		Size: 2.5 MB (2485626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce9e9f07b8539361a54dcf3712c60e471a64b266a43f3e2a7112f11ac21d9bac`  
		Last Modified: Fri, 11 Jan 2019 15:09:31 GMT  
		Size: 1.1 KB (1064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89fbb3855eba5b0a545bf86f3fe994f5634ea20dc742aabd7bcf4b87dcd8c4f6`  
		Last Modified: Fri, 11 Jan 2019 15:09:31 GMT  
		Size: 1.8 KB (1813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `yourls:1.7-fpm` - linux; 386

```console
$ docker pull yourls@sha256:096e415ec95916061c648ad526a1429de11cce1a1e9bce4ac9f315020e2feea1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.2 MB (139244431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:414bd62c76cbdf3a92fac724b5a5a9fc93fa57a9446fc63f2f6c53a490c15290`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Sat, 29 Dec 2018 11:56:14 GMT
ADD file:aaa0661c64d46388f46e71ba3d172f3208f6b943dbc1a86e0b50ca5080bdb3ee in / 
# Sat, 29 Dec 2018 11:56:15 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 21:36:24 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Sat, 29 Dec 2018 21:36:24 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Sat, 29 Dec 2018 21:36:48 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 29 Dec 2018 21:36:48 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 29 Dec 2018 21:36:49 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 29 Dec 2018 21:49:42 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Sat, 29 Dec 2018 21:49:42 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 21:49:43 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 21:49:43 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 29 Dec 2018 22:11:26 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 11 Jan 2019 12:54:26 GMT
ENV PHP_VERSION=7.2.14
# Fri, 11 Jan 2019 12:54:26 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror
# Fri, 11 Jan 2019 12:54:26 GMT
ENV PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f PHP_MD5=
# Fri, 11 Jan 2019 12:54:36 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 11 Jan 2019 12:54:36 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 11 Jan 2019 13:00:04 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 11 Jan 2019 13:00:05 GMT
COPY multi:cbc68fef2c8554b9a23fee7eee16ffda927235f929048638240f97172562665c in /usr/local/bin/ 
# Fri, 11 Jan 2019 13:00:05 GMT
RUN docker-php-ext-enable sodium
# Fri, 11 Jan 2019 13:00:05 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 11 Jan 2019 13:00:06 GMT
WORKDIR /var/www/html
# Fri, 11 Jan 2019 13:00:06 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 11 Jan 2019 13:00:07 GMT
EXPOSE 9000
# Fri, 11 Jan 2019 13:00:07 GMT
CMD ["php-fpm"]
# Fri, 11 Jan 2019 16:52:17 GMT
RUN set -ex;     docker-php-ext-install opcache pdo_mysql mysqli
# Fri, 11 Jan 2019 16:52:18 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 11 Jan 2019 16:52:18 GMT
VOLUME [/var/www/html]
# Fri, 11 Jan 2019 16:52:18 GMT
ENV YOURLS_VERSION=1.7.2
# Fri, 11 Jan 2019 16:52:20 GMT
RUN set -ex; 	curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz"; 	tar -xzf yourls.tar.gz -C /usr/src/; 	mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls; 	rm yourls.tar.gz; 	chown -R www-data:www-data /usr/src/yourls
# Fri, 11 Jan 2019 16:52:20 GMT
COPY file:7722c9d76f082fb2683ec1d4befeaddd6c873c885172752cacb787e076d4dbeb in /usr/local/bin/ 
# Fri, 11 Jan 2019 16:52:20 GMT
COPY file:d375afac6cf463942802d2b27f08ef4d6198ac33f536b334f195e2e479c4cd6f in /var/www/html/ 
# Fri, 11 Jan 2019 16:52:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 16:52:21 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:9a1a13172ed974323f7c35153e8b23b8fa1c85355b6b26cc3127e640e45ef0aa`  
		Last Modified: Sat, 29 Dec 2018 12:10:44 GMT  
		Size: 23.1 MB (23133155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5094d5d656a95c6aa92f5f2adc56a794564b1e340bc4065db2947d7ce0c1a394`  
		Last Modified: Sun, 30 Dec 2018 01:57:01 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb2ab2fc6c3875a5ebec4eb6dae731467d2cfbe0c4372b4db6b7f8faad9917e`  
		Last Modified: Sun, 30 Dec 2018 01:57:20 GMT  
		Size: 71.5 MB (71503745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05469bc6d7085ba5736c7bf95032d0bb750ab2fa43b29049cfee7ba36c391e79`  
		Last Modified: Sun, 30 Dec 2018 01:57:01 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f96c042f31352ffc4706d54dd5e87a2e4f9502aa22ab1a495d43088b47d8d4c`  
		Last Modified: Fri, 11 Jan 2019 14:54:27 GMT  
		Size: 12.5 MB (12484697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c48899a82e4ff4a06d3fe22e3b19d8487b872aab41540f5e8a3b8b96f0fa6fe`  
		Last Modified: Fri, 11 Jan 2019 14:54:26 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb564ff7a873d5c5065ad5333c5bc35a0ccf44be3e542bef90fd6bcedce00417`  
		Last Modified: Fri, 11 Jan 2019 14:54:32 GMT  
		Size: 29.3 MB (29332789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2679b31a3bde8a45d1ef9e44f3bb3a7381ffe8cb994738674cac4cc92c8bc32d`  
		Last Modified: Fri, 11 Jan 2019 14:54:25 GMT  
		Size: 2.2 KB (2189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:618cc564acfe7a10b6ed49868a21c4b895588acef6a135912122f103d3f33567`  
		Last Modified: Fri, 11 Jan 2019 14:54:25 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:418806b632b4a50647c6e7c2bfb6dd19ad2daa5023b8be70e9d3e615d318f040`  
		Last Modified: Fri, 11 Jan 2019 14:54:25 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:333219bdf344bcf1ddfd7a0f198febcf422a761618cd75b05f7881552e764252`  
		Last Modified: Fri, 11 Jan 2019 14:54:25 GMT  
		Size: 7.8 KB (7801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4168eafa28e79883bc619e10017215dc1fc9f280e09b1e71f50e76e706819ac`  
		Last Modified: Fri, 11 Jan 2019 16:53:50 GMT  
		Size: 289.9 KB (289902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eae1adb6eb49b3a116a903573ff5fd1998d9e1dcf5c50f3af14c9b4e1ca10e53`  
		Last Modified: Fri, 11 Jan 2019 16:53:50 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9865682e4af072344267a830c64148acfd3a5d36b1f7ec27c42fc166c3d5abf`  
		Last Modified: Fri, 11 Jan 2019 16:53:51 GMT  
		Size: 2.5 MB (2485626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba60b7371f55254def1e3ab6a9b9e354b4d4891c5ecf0db18e1d2cca00a58e37`  
		Last Modified: Fri, 11 Jan 2019 16:53:50 GMT  
		Size: 1.1 KB (1065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8819e1d182f4fee44792906ebf231c041541931d98ce0e63bbe678446a63d4f9`  
		Last Modified: Fri, 11 Jan 2019 16:53:50 GMT  
		Size: 1.8 KB (1817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `yourls:1.7-fpm` - linux; ppc64le

```console
$ docker pull yourls@sha256:f98531a41049111ac940f41b527876054de09d6ff13a83520bbf7b967e2cb6d9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.4 MB (128396223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19d5fd3f34d1be1ec2dd5bfedf56dfb364819e3222770c1ca95800db5901986f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Sat, 29 Dec 2018 09:22:40 GMT
ADD file:11cdf0dbdac1a774d74f30e9954e3cf02c390d2280ce747bc95a3b774259f226 in / 
# Sat, 29 Dec 2018 09:22:44 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 13:02:33 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Sat, 29 Dec 2018 13:02:35 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Sat, 29 Dec 2018 13:04:54 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:04:59 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 29 Dec 2018 13:05:04 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 29 Dec 2018 13:18:34 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Sat, 29 Dec 2018 13:18:37 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 13:18:39 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 13:18:42 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 29 Dec 2018 13:44:45 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 11 Jan 2019 10:20:48 GMT
ENV PHP_VERSION=7.2.14
# Fri, 11 Jan 2019 10:20:50 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror
# Fri, 11 Jan 2019 10:20:52 GMT
ENV PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f PHP_MD5=
# Fri, 11 Jan 2019 10:21:24 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 11 Jan 2019 10:21:25 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 11 Jan 2019 10:25:46 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 11 Jan 2019 10:25:49 GMT
COPY multi:cbc68fef2c8554b9a23fee7eee16ffda927235f929048638240f97172562665c in /usr/local/bin/ 
# Fri, 11 Jan 2019 10:25:53 GMT
RUN docker-php-ext-enable sodium
# Fri, 11 Jan 2019 10:25:56 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 11 Jan 2019 10:25:57 GMT
WORKDIR /var/www/html
# Fri, 11 Jan 2019 10:26:01 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 11 Jan 2019 10:26:03 GMT
EXPOSE 9000
# Fri, 11 Jan 2019 10:26:05 GMT
CMD ["php-fpm"]
# Fri, 11 Jan 2019 13:42:50 GMT
RUN set -ex;     docker-php-ext-install opcache pdo_mysql mysqli
# Fri, 11 Jan 2019 13:42:53 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 11 Jan 2019 13:42:54 GMT
VOLUME [/var/www/html]
# Fri, 11 Jan 2019 13:42:56 GMT
ENV YOURLS_VERSION=1.7.2
# Fri, 11 Jan 2019 13:43:02 GMT
RUN set -ex; 	curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz"; 	tar -xzf yourls.tar.gz -C /usr/src/; 	mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls; 	rm yourls.tar.gz; 	chown -R www-data:www-data /usr/src/yourls
# Fri, 11 Jan 2019 13:43:03 GMT
COPY file:7722c9d76f082fb2683ec1d4befeaddd6c873c885172752cacb787e076d4dbeb in /usr/local/bin/ 
# Fri, 11 Jan 2019 13:43:04 GMT
COPY file:d375afac6cf463942802d2b27f08ef4d6198ac33f536b334f195e2e479c4cd6f in /var/www/html/ 
# Fri, 11 Jan 2019 13:43:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 13:43:07 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:ca671aebac61774c6bfa23dd5b097e3a135a33f3987318158787030ee978173a`  
		Last Modified: Sat, 29 Dec 2018 09:28:38 GMT  
		Size: 22.7 MB (22746826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55c9e443128efed70bcb2c05fbf1b7b3c63735856c07a31f95f3422e8e5d6be3`  
		Last Modified: Sat, 29 Dec 2018 15:02:06 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26502f7e153105ac601f4d12e9b72baf9021b49b992fe619264a1933c2daf6b4`  
		Last Modified: Sat, 29 Dec 2018 15:02:32 GMT  
		Size: 61.8 MB (61833074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d327479a214f245c363cea23d6878780e6dbb819938b9511e7b69e2e17e81fbf`  
		Last Modified: Sat, 29 Dec 2018 15:02:06 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a0d4193ba60b5f5f97f688e2de16aad88891b322605b2d11200ba45df50232`  
		Last Modified: Fri, 11 Jan 2019 11:27:21 GMT  
		Size: 12.5 MB (12483483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eccec9fad4aa5d66e47e5a5add6bb729a6e35a675cc25e5f5a094f1ac7c2c7b9`  
		Last Modified: Fri, 11 Jan 2019 11:27:19 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc544ceecc5ea9a6af356fcb8fa9514601b9eb8dbb3b4e89a7514943a1d7bb75`  
		Last Modified: Fri, 11 Jan 2019 11:27:26 GMT  
		Size: 28.5 MB (28548391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32df76e1b2562805df3fc19b39edb226f5b55f2f308235ea1110bf3967598ffc`  
		Last Modified: Fri, 11 Jan 2019 11:27:17 GMT  
		Size: 2.2 KB (2188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6a78c22e48562710e0b2efac92cfe69e96cca168fb8073c07f6a3d90b93ddae`  
		Last Modified: Fri, 11 Jan 2019 11:27:17 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb9e5f88e13292053860abea7ba0084d748c243d9714dc801d9338426bc4ce70`  
		Last Modified: Fri, 11 Jan 2019 11:27:17 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c5864e998d42b19f5ea1905e6c186ab3e961c3ee161b5385da0e31b5f839cab`  
		Last Modified: Fri, 11 Jan 2019 11:27:17 GMT  
		Size: 7.8 KB (7800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:104baa47f8b5c4520f8ecde9937f2791af1db8086fa379c0c3595dfce9bffa9a`  
		Last Modified: Fri, 11 Jan 2019 13:45:35 GMT  
		Size: 284.2 KB (284240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1133676fd186af3dc557e80a38abb6020577b0e5ccb3cfb4bf406b6dede722c6`  
		Last Modified: Fri, 11 Jan 2019 13:45:35 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e319e6216dbd6b10c6ec6b753ccd7b8227174c5864fbf5021a6d8bb40ed76ee5`  
		Last Modified: Fri, 11 Jan 2019 13:45:35 GMT  
		Size: 2.5 MB (2485630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8efacc89b0ff6e4f793cc68bf74162851f4365c60747e08e98cc9f149ab4355f`  
		Last Modified: Fri, 11 Jan 2019 13:45:35 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:148e9c1925b22ebbb7591f954b714f1b3fa51c79dd59b34dcc6c812037deb9c9`  
		Last Modified: Fri, 11 Jan 2019 13:45:35 GMT  
		Size: 1.8 KB (1818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `yourls:1.7-fpm-alpine`

```console
$ docker pull yourls@sha256:4994030dcf2d6fba6a49865ad554021d1ebfbabcfc2f0d172486952af4bcdd84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `yourls:1.7-fpm-alpine` - linux; amd64

```console
$ docker pull yourls@sha256:a272259851325e34472b9a3c5a5d12a7f2809302bdd08dfc95e2e4203763a079
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.1 MB (35096772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84f9b16cb1d16f6ac523a816266bce854dfd99a8a6829a2278d5496468221462`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 01:27:04 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 21 Dec 2018 01:27:06 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Fri, 21 Dec 2018 01:27:07 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 21 Dec 2018 01:27:07 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 21 Dec 2018 01:27:08 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 21 Dec 2018 01:39:27 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Fri, 21 Dec 2018 01:39:27 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 21 Dec 2018 01:39:27 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 21 Dec 2018 01:39:28 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 21 Dec 2018 02:14:18 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 11 Jan 2019 01:37:31 GMT
ENV PHP_VERSION=7.2.14
# Fri, 11 Jan 2019 01:37:31 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror
# Fri, 11 Jan 2019 01:37:31 GMT
ENV PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f PHP_MD5=
# Fri, 11 Jan 2019 01:37:36 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 11 Jan 2019 01:37:36 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 11 Jan 2019 01:43:54 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libsodium-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 11 Jan 2019 01:43:54 GMT
COPY multi:cbc68fef2c8554b9a23fee7eee16ffda927235f929048638240f97172562665c in /usr/local/bin/ 
# Fri, 11 Jan 2019 01:43:55 GMT
RUN docker-php-ext-enable sodium
# Fri, 11 Jan 2019 01:43:55 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 11 Jan 2019 01:43:56 GMT
WORKDIR /var/www/html
# Fri, 11 Jan 2019 01:43:56 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 11 Jan 2019 01:43:57 GMT
EXPOSE 9000
# Fri, 11 Jan 2019 01:43:57 GMT
CMD ["php-fpm"]
# Fri, 11 Jan 2019 03:26:23 GMT
RUN set -ex;     docker-php-ext-install opcache pdo_mysql mysqli
# Fri, 11 Jan 2019 03:26:25 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 11 Jan 2019 03:26:26 GMT
RUN apk add --no-cache bash
# Fri, 11 Jan 2019 03:26:27 GMT
VOLUME [/var/www/html]
# Fri, 11 Jan 2019 03:26:27 GMT
ENV YOURLS_VERSION=1.7.2
# Fri, 11 Jan 2019 03:26:30 GMT
RUN set -ex; 	curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz"; 	tar -xzf yourls.tar.gz -C /usr/src/; 	mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls; 	rm yourls.tar.gz; 	chown -R www-data:www-data /usr/src/yourls
# Fri, 11 Jan 2019 03:26:31 GMT
COPY file:7722c9d76f082fb2683ec1d4befeaddd6c873c885172752cacb787e076d4dbeb in /usr/local/bin/ 
# Fri, 11 Jan 2019 03:26:31 GMT
COPY file:d375afac6cf463942802d2b27f08ef4d6198ac33f536b334f195e2e479c4cd6f in /var/www/html/ 
# Fri, 11 Jan 2019 03:26:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 03:26:32 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d207535cd57f878f70cace5fa6b787bea470b519e83a0ad0d8b65fab8c3c4e6d`  
		Last Modified: Fri, 21 Dec 2018 03:57:44 GMT  
		Size: 1.4 MB (1353714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1167ab95319c6a4c7a06ffb91e63738c89f46e9005296b25e2f2ea414b102a16`  
		Last Modified: Fri, 21 Dec 2018 03:57:44 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bff34bff7f50ba85c4ee1c081add1128c1e00de9eb29733452f99cd0508cd0e0`  
		Last Modified: Fri, 21 Dec 2018 03:57:44 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09fbf86b8ee75311d14ab1f14e52c487825f8abfd673ed327b74ada7b8fa9a4`  
		Last Modified: Fri, 11 Jan 2019 01:54:29 GMT  
		Size: 12.2 MB (12176072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cfe903e31f6c8457c1a157f44e5f89cfa1201cbf4b732e84ab0bb600bfc2bea`  
		Last Modified: Fri, 11 Jan 2019 01:54:28 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88d3f120681c5f895e4e7abba7fec687dbc6351dc71c799068b6fc87d3e821b9`  
		Last Modified: Fri, 11 Jan 2019 01:54:31 GMT  
		Size: 15.9 MB (15850690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9077db937f31b26ee5611ad3ae7bc0990dfa2cfad23190c7520ad48940c188fa`  
		Last Modified: Fri, 11 Jan 2019 01:54:27 GMT  
		Size: 2.2 KB (2173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bb3fe9faa6ea3ab065ca5c490b9d3e73402b2d4eafb428ec374b5252256de61`  
		Last Modified: Fri, 11 Jan 2019 01:54:27 GMT  
		Size: 71.8 KB (71846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17142adf57d1cd7af7e226398f6081ca1d67538db0b95590cc2c07983780b236`  
		Last Modified: Fri, 11 Jan 2019 01:54:27 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36147ae6ebdd27e07bff79107107a6966911a54511ebb47e04c1f557c590ba8b`  
		Last Modified: Fri, 11 Jan 2019 01:54:27 GMT  
		Size: 7.8 KB (7783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:215c2985fd751a2f25cca3a1af48e9dec3cb0dad991ce91b9d2eb7a7070b8a21`  
		Last Modified: Fri, 11 Jan 2019 03:27:06 GMT  
		Size: 353.7 KB (353654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77649ddbc6728b419ddd3d5e4b92aa55d54b50a546756a5c16ffea3efab7f2b4`  
		Last Modified: Fri, 11 Jan 2019 03:27:05 GMT  
		Size: 336.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6aa847bf0d2f6256d6eadb75fb0e1343e92634c3f0d33a537e77bdf08788095`  
		Last Modified: Fri, 11 Jan 2019 03:27:05 GMT  
		Size: 582.9 KB (582916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11a240cc06144d0b4fdc53ed6bc9141fb4241a5d098ceba84f90ba8a2d3792e6`  
		Last Modified: Fri, 11 Jan 2019 03:27:06 GMT  
		Size: 2.5 MB (2485639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8620e002af4e3a727ec840b7027ddfdadaae85bfde6280c323f36749d98b7bae`  
		Last Modified: Fri, 11 Jan 2019 03:27:05 GMT  
		Size: 1.1 KB (1059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3db03d63148f25dfe7bb0a5a298dfe1628f60d26d388ea421505fd9bbc7f636c`  
		Last Modified: Fri, 11 Jan 2019 03:27:05 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `yourls:1.7-fpm-alpine` - linux; arm variant v6

```console
$ docker pull yourls@sha256:86adda5b8ef902a1aed3577a88e0a159fd8bb62da6aaad15958eb444533165bc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.9 MB (33932913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:471b9d2e3dff11c70a3069d2ea2975c918a9b0f05742a265a0bbc7effbc96b22`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 21 Dec 2018 08:49:49 GMT
ADD file:38d34e3ff051a263eab785aca5763d350b82063f0356752117e168349d9e3811 in / 
# Fri, 21 Dec 2018 08:49:50 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:50 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 09:57:17 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 21 Dec 2018 09:57:19 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Fri, 21 Dec 2018 09:57:21 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 21 Dec 2018 09:57:22 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 21 Dec 2018 09:57:23 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 21 Dec 2018 10:02:04 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Fri, 21 Dec 2018 10:02:04 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 21 Dec 2018 10:02:04 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 21 Dec 2018 10:02:05 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 21 Dec 2018 10:16:09 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 11 Jan 2019 09:08:50 GMT
ENV PHP_VERSION=7.2.14
# Fri, 11 Jan 2019 09:08:50 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror
# Fri, 11 Jan 2019 09:08:50 GMT
ENV PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f PHP_MD5=
# Fri, 11 Jan 2019 09:08:56 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 11 Jan 2019 09:08:56 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 11 Jan 2019 09:12:05 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libsodium-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 11 Jan 2019 09:12:07 GMT
COPY multi:cbc68fef2c8554b9a23fee7eee16ffda927235f929048638240f97172562665c in /usr/local/bin/ 
# Fri, 11 Jan 2019 09:12:08 GMT
RUN docker-php-ext-enable sodium
# Fri, 11 Jan 2019 09:12:09 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 11 Jan 2019 09:12:09 GMT
WORKDIR /var/www/html
# Fri, 11 Jan 2019 09:12:10 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 11 Jan 2019 09:12:11 GMT
EXPOSE 9000
# Fri, 11 Jan 2019 09:12:11 GMT
CMD ["php-fpm"]
# Fri, 11 Jan 2019 10:00:12 GMT
RUN set -ex;     docker-php-ext-install opcache pdo_mysql mysqli
# Fri, 11 Jan 2019 10:00:14 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 11 Jan 2019 10:00:16 GMT
RUN apk add --no-cache bash
# Fri, 11 Jan 2019 10:00:16 GMT
VOLUME [/var/www/html]
# Fri, 11 Jan 2019 10:00:16 GMT
ENV YOURLS_VERSION=1.7.2
# Fri, 11 Jan 2019 10:00:19 GMT
RUN set -ex; 	curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz"; 	tar -xzf yourls.tar.gz -C /usr/src/; 	mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls; 	rm yourls.tar.gz; 	chown -R www-data:www-data /usr/src/yourls
# Fri, 11 Jan 2019 10:00:19 GMT
COPY file:7722c9d76f082fb2683ec1d4befeaddd6c873c885172752cacb787e076d4dbeb in /usr/local/bin/ 
# Fri, 11 Jan 2019 10:00:20 GMT
COPY file:d375afac6cf463942802d2b27f08ef4d6198ac33f536b334f195e2e479c4cd6f in /var/www/html/ 
# Fri, 11 Jan 2019 10:00:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 10:00:21 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:5b678b67777fc7983d3563839cc9d511de267ec6de1961f2b590d552d8bfa105`  
		Last Modified: Fri, 21 Dec 2018 08:50:18 GMT  
		Size: 2.1 MB (2145782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f0b2b885d968636a597331169fce72a69964c911558554f1b2a0d21959f34f`  
		Last Modified: Fri, 21 Dec 2018 08:50:17 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdc871048391cb58798d04e007efbbf6dea290177b14aa82474e0cd8a847e5de`  
		Last Modified: Fri, 21 Dec 2018 11:04:45 GMT  
		Size: 1.3 MB (1315320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d14e9b8b66e27ebf8c37feef99cb0c249e36805f3566d73882beca6671f44f61`  
		Last Modified: Fri, 21 Dec 2018 11:04:44 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01a2d87e934f6881656d209530a5523fac4c28881bb465188a3ad7a4d3e4ddcf`  
		Last Modified: Fri, 21 Dec 2018 11:04:44 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:696c1ebf4ee6810b35a62de681eea1dc64fdd53da3094056821cefc8e83b6bd1`  
		Last Modified: Fri, 11 Jan 2019 09:28:39 GMT  
		Size: 12.2 MB (12176107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20edf344459e597273b938c8cc2b35f240a6a8b2744f18af4fe0d0d4afeac06e`  
		Last Modified: Fri, 11 Jan 2019 09:28:37 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea16dd24d9f1abfe1fd20fd8c758d487099491493da09645d669e9e462282911`  
		Last Modified: Fri, 11 Jan 2019 09:28:42 GMT  
		Size: 14.8 MB (14819818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f6f7363efefa22acc9276e23b3af33e7ca06d0876aa7582b6273465195a7bc`  
		Last Modified: Fri, 11 Jan 2019 09:28:35 GMT  
		Size: 2.2 KB (2175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6a88bafb3d42385829f2d6bdd67b0121042656f2203927e594ba4b6dd89bbf6`  
		Last Modified: Fri, 11 Jan 2019 09:28:36 GMT  
		Size: 71.4 KB (71377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cebf6b04113c0621a72dd93ea11c20853b659670f0df6d031e795fc59c878526`  
		Last Modified: Fri, 11 Jan 2019 09:28:35 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca7ca9567a4e5148666d049816b91f6fad8921fe8a67a81449dcb9c8529c7cd4`  
		Last Modified: Fri, 11 Jan 2019 09:28:36 GMT  
		Size: 7.8 KB (7784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cf17bfc7e966a413741586c76ea62265c37fc7cd2d6f87c6de4b422a2fda58e`  
		Last Modified: Fri, 11 Jan 2019 10:00:34 GMT  
		Size: 341.1 KB (341068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4fcd7b04929c907403c4c49f3a724457b6206435c213b194ff04789d1346eea`  
		Last Modified: Fri, 11 Jan 2019 10:00:33 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59773a3720235be33b423fb0cce6558de075b93c2494ddc140e69506142e532a`  
		Last Modified: Fri, 11 Jan 2019 10:00:32 GMT  
		Size: 562.3 KB (562331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85ce91f5250d9d818e1d63f8186dc0e41f700e4de052814b9d522fc98e0d8029`  
		Last Modified: Fri, 11 Jan 2019 10:00:33 GMT  
		Size: 2.5 MB (2485639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:087fe181d76b4e8ad52154e5dce09d4c99bccd7c279fbe02cabc4f64dc38a870`  
		Last Modified: Fri, 11 Jan 2019 10:00:32 GMT  
		Size: 1.1 KB (1055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3166dad388f87de165dea37e38352ecaddf5d296acf54da39b6cce78587f3bf`  
		Last Modified: Fri, 11 Jan 2019 10:00:32 GMT  
		Size: 1.8 KB (1817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `yourls:1.7-fpm-alpine` - linux; arm64 variant v8

```console
$ docker pull yourls@sha256:af3c21158d32d19decf672fe9d9a4ff33a81f9a6ef5940a161f555c775b595ee
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 MB (33695447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56fe55b6a1429d4e7613d0a4f8b171ffcf2fb249cb05a258a134249a32ea7d3d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 12:10:06 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 21 Dec 2018 12:10:08 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Fri, 21 Dec 2018 12:10:11 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 21 Dec 2018 12:10:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 21 Dec 2018 12:10:13 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 21 Dec 2018 12:19:38 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Fri, 21 Dec 2018 12:19:39 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 21 Dec 2018 12:19:40 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 21 Dec 2018 12:19:40 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 21 Dec 2018 12:51:23 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 11 Jan 2019 12:05:25 GMT
ENV PHP_VERSION=7.2.14
# Fri, 11 Jan 2019 12:05:26 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror
# Fri, 11 Jan 2019 12:05:26 GMT
ENV PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f PHP_MD5=
# Fri, 11 Jan 2019 12:05:38 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 11 Jan 2019 12:05:39 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 11 Jan 2019 12:12:27 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libsodium-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 11 Jan 2019 12:12:28 GMT
COPY multi:cbc68fef2c8554b9a23fee7eee16ffda927235f929048638240f97172562665c in /usr/local/bin/ 
# Fri, 11 Jan 2019 12:12:30 GMT
RUN docker-php-ext-enable sodium
# Fri, 11 Jan 2019 12:12:31 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 11 Jan 2019 12:12:32 GMT
WORKDIR /var/www/html
# Fri, 11 Jan 2019 12:12:33 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 11 Jan 2019 12:12:34 GMT
EXPOSE 9000
# Fri, 11 Jan 2019 12:12:35 GMT
CMD ["php-fpm"]
# Fri, 11 Jan 2019 15:08:18 GMT
RUN set -ex;     docker-php-ext-install opcache pdo_mysql mysqli
# Fri, 11 Jan 2019 15:08:20 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 11 Jan 2019 15:08:22 GMT
RUN apk add --no-cache bash
# Fri, 11 Jan 2019 15:08:23 GMT
VOLUME [/var/www/html]
# Fri, 11 Jan 2019 15:08:25 GMT
ENV YOURLS_VERSION=1.7.2
# Fri, 11 Jan 2019 15:08:29 GMT
RUN set -ex; 	curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz"; 	tar -xzf yourls.tar.gz -C /usr/src/; 	mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls; 	rm yourls.tar.gz; 	chown -R www-data:www-data /usr/src/yourls
# Fri, 11 Jan 2019 15:08:29 GMT
COPY file:7722c9d76f082fb2683ec1d4befeaddd6c873c885172752cacb787e076d4dbeb in /usr/local/bin/ 
# Fri, 11 Jan 2019 15:08:30 GMT
COPY file:d375afac6cf463942802d2b27f08ef4d6198ac33f536b334f195e2e479c4cd6f in /var/www/html/ 
# Fri, 11 Jan 2019 15:08:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 15:08:31 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:e3c488b39803d9194cf010f6127b1121d5387b90a1562d44b50b749d0e7a69bf`  
		Last Modified: Fri, 21 Dec 2018 09:43:51 GMT  
		Size: 2.1 MB (2099839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a63128803b1ea223f87244cb8d3faa97817f6cf3ca8249e485430218758510`  
		Last Modified: Fri, 21 Dec 2018 09:43:50 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73bf4a12ae92b20610d889c240ddcd72b338a21e3fa4f3d6c077d9fcad3566f1`  
		Last Modified: Fri, 21 Dec 2018 14:38:54 GMT  
		Size: 1.3 MB (1274014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf309e8a13c2d5f8e92a71c30f189658629d7079402a4dbd6c42d8a5302b755e`  
		Last Modified: Fri, 21 Dec 2018 14:38:54 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2290f763cb3e9ff58547451226cdcbb3b5083ab00da970fb03b03604c2c78716`  
		Last Modified: Fri, 21 Dec 2018 14:38:53 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08ff3daeaeb2c6f80e985fe6a65ebcf4c174894b1111553a77038b106db4dfa4`  
		Last Modified: Fri, 11 Jan 2019 13:30:07 GMT  
		Size: 12.2 MB (12176103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f415816cc27b5f850a1475f2264f6b325f08fddb036f2a484f1c38cee60562d8`  
		Last Modified: Fri, 11 Jan 2019 13:30:05 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0d8dfc978e0329562a72d717cad6d3114bd6a2a392d761a2bda797f0476f485`  
		Last Modified: Fri, 11 Jan 2019 13:30:12 GMT  
		Size: 14.7 MB (14694310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d42bfc57b96f2b8d3a77f54cf48ff03022b5bdf4581f96b39b42328593a847c`  
		Last Modified: Fri, 11 Jan 2019 13:30:03 GMT  
		Size: 2.2 KB (2176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d3ef9fa25c04f4c400cff945c823594bce0253ba6e692c7ebf62d8d23a63d2d`  
		Last Modified: Fri, 11 Jan 2019 13:30:03 GMT  
		Size: 70.9 KB (70866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdd07133ba580f4b004c26bffcdf7cb09e1ec7a007886f3759a8313202efab70`  
		Last Modified: Fri, 11 Jan 2019 13:30:03 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f39c56929428921ec4c76fd858639f743ade99b41aaaa8e894727a2ea43dd5f`  
		Last Modified: Fri, 11 Jan 2019 13:30:03 GMT  
		Size: 7.8 KB (7782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a989c78153fd943251b38a22bb705bcd2e79d143e56fe2984dc7f30c14955139`  
		Last Modified: Fri, 11 Jan 2019 15:09:50 GMT  
		Size: 333.1 KB (333128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04058535e18aa091c884ae3a02da61ef655e073f1f5c836493773bd09365d61c`  
		Last Modified: Fri, 11 Jan 2019 15:09:49 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92a802450ed6c42347e47c4e82dd0f1ed40d2c9484d2121215fe94d8e3fbb264`  
		Last Modified: Fri, 11 Jan 2019 15:09:48 GMT  
		Size: 546.2 KB (546158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36cc1c0494d188d0277bb8c4fa2fdfbbfbbaec3ab075758fb036b866c6b342aa`  
		Last Modified: Fri, 11 Jan 2019 15:09:49 GMT  
		Size: 2.5 MB (2485641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dede82cde6f809b407e2a9c9d339cc58e808a6f6a9684cfa5f012e8f5e5c1d9f`  
		Last Modified: Fri, 11 Jan 2019 15:09:48 GMT  
		Size: 1.1 KB (1056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c5e81c98f79f73580422ba19b768fcda0a0007551e4b9fdb59789544d6001e`  
		Last Modified: Fri, 11 Jan 2019 15:09:48 GMT  
		Size: 1.8 KB (1819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `yourls:1.7-fpm-alpine` - linux; 386

```console
$ docker pull yourls@sha256:e476760a986c0508d4f468ed1411aca6bcc44f15d6572ece2f9e19b52503bc43
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.8 MB (35760343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e35a7032db54317f89e5c2d79d08a5fc4f7eecde3bc1ab593d468d8fc3df2f9e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 21 Dec 2018 11:40:13 GMT
ADD file:38576b24298c124265c8fffb7bc8fdb0c144d99dcce4e9942bdcceb936830ba6 in / 
# Fri, 21 Dec 2018 11:40:14 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 11:40:14 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 12:26:09 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 21 Dec 2018 12:26:10 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Fri, 21 Dec 2018 12:26:11 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 21 Dec 2018 12:26:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 21 Dec 2018 12:26:12 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 21 Dec 2018 12:32:56 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Fri, 21 Dec 2018 12:32:56 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 21 Dec 2018 12:32:56 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 21 Dec 2018 12:32:56 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 21 Dec 2018 12:53:43 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 11 Jan 2019 13:12:03 GMT
ENV PHP_VERSION=7.2.14
# Fri, 11 Jan 2019 13:12:03 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror
# Fri, 11 Jan 2019 13:12:03 GMT
ENV PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f PHP_MD5=
# Fri, 11 Jan 2019 13:12:08 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 11 Jan 2019 13:12:08 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 11 Jan 2019 13:17:40 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libsodium-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 11 Jan 2019 13:17:41 GMT
COPY multi:cbc68fef2c8554b9a23fee7eee16ffda927235f929048638240f97172562665c in /usr/local/bin/ 
# Fri, 11 Jan 2019 13:17:42 GMT
RUN docker-php-ext-enable sodium
# Fri, 11 Jan 2019 13:17:42 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 11 Jan 2019 13:17:42 GMT
WORKDIR /var/www/html
# Fri, 11 Jan 2019 13:17:43 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 11 Jan 2019 13:17:43 GMT
EXPOSE 9000
# Fri, 11 Jan 2019 13:17:43 GMT
CMD ["php-fpm"]
# Fri, 11 Jan 2019 16:53:05 GMT
RUN set -ex;     docker-php-ext-install opcache pdo_mysql mysqli
# Fri, 11 Jan 2019 16:53:05 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 11 Jan 2019 16:53:06 GMT
RUN apk add --no-cache bash
# Fri, 11 Jan 2019 16:53:07 GMT
VOLUME [/var/www/html]
# Fri, 11 Jan 2019 16:53:07 GMT
ENV YOURLS_VERSION=1.7.2
# Fri, 11 Jan 2019 16:53:08 GMT
RUN set -ex; 	curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz"; 	tar -xzf yourls.tar.gz -C /usr/src/; 	mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls; 	rm yourls.tar.gz; 	chown -R www-data:www-data /usr/src/yourls
# Fri, 11 Jan 2019 16:53:08 GMT
COPY file:7722c9d76f082fb2683ec1d4befeaddd6c873c885172752cacb787e076d4dbeb in /usr/local/bin/ 
# Fri, 11 Jan 2019 16:53:09 GMT
COPY file:d375afac6cf463942802d2b27f08ef4d6198ac33f536b334f195e2e479c4cd6f in /var/www/html/ 
# Fri, 11 Jan 2019 16:53:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 16:53:09 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:25bcd1068fdd02354e6b3fb4ebbad1a9c1df7f5ec2d61aa88a337345415dc102`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 2.3 MB (2271567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795c3ef9c057ef60e7a4a088655adecaccd21d68099ad1f654bccd015ab319da`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4811baf1f023d21ea625c97101dbaffec612a7fc948ff1d9f1e85badb90282f7`  
		Last Modified: Fri, 21 Dec 2018 14:03:58 GMT  
		Size: 1.5 MB (1453187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66ce10d169b702fb314523985cab18b12c3d56cf08f625154b27d0847e96f089`  
		Last Modified: Fri, 21 Dec 2018 14:03:58 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a89858ddd116f7d2220d5ff7f60ae246411089bb3c686a47294192ef6b55c9d`  
		Last Modified: Fri, 21 Dec 2018 14:03:57 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6043e2c76dbe219109f72235280314072a2217eda96687558d21f8578b3e75ef`  
		Last Modified: Fri, 11 Jan 2019 14:55:05 GMT  
		Size: 12.2 MB (12176111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8440fdedbe0046ed87adf69105b08c449aba4d3bd3c0793adab9f7ff3440694b`  
		Last Modified: Fri, 11 Jan 2019 14:55:04 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8d4733b5cfb1cb0069daa62cf9f209df0ba5b2b750b083d4c5bb84ea8464a8b`  
		Last Modified: Fri, 11 Jan 2019 14:55:08 GMT  
		Size: 16.3 MB (16308650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d841e9114fbd446750277075cec7238a8d521ba32770dc463d8e70b18faf0b5`  
		Last Modified: Fri, 11 Jan 2019 14:55:03 GMT  
		Size: 2.2 KB (2176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aa176c23e31bd93ed00c94293dc542732e58fe45a9a7eb7f7d5d2c41c5a5635`  
		Last Modified: Fri, 11 Jan 2019 14:55:03 GMT  
		Size: 71.0 KB (70990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69278d1d66b65f5c197afc970ea16254f399f69909a42e58aa644f7e5c4a0b22`  
		Last Modified: Fri, 11 Jan 2019 14:55:03 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78d76d1e33feaf865d85eda3797a826c94470919951a86586780f337bae702c3`  
		Last Modified: Fri, 11 Jan 2019 14:55:03 GMT  
		Size: 7.8 KB (7782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5cd947ced97c672316c363d58b5550be129d57012a7aa5a107b27fd72bfaddf`  
		Last Modified: Fri, 11 Jan 2019 16:54:00 GMT  
		Size: 361.9 KB (361894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d41a7f925d1889aac1b1cc18e8eefee4b514119dc86630569c42ce43769d1b28`  
		Last Modified: Fri, 11 Jan 2019 16:53:59 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:277a11fdd18f78e7ff42a5f14de80d0a56a4654fb43c4a78eb6113e84253d019`  
		Last Modified: Fri, 11 Jan 2019 16:53:59 GMT  
		Size: 616.9 KB (616918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8118938b2b8aa84b3b4cda63643c1e5cefb6db317485f80ea6d755c0cfdaf874`  
		Last Modified: Fri, 11 Jan 2019 16:54:00 GMT  
		Size: 2.5 MB (2485641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a29d1dc5496808468d85c6fbd88aa4d9258feb49fd4bd6e64977c4a5d8248363`  
		Last Modified: Fri, 11 Jan 2019 16:53:59 GMT  
		Size: 1.1 KB (1054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27a95d14bf235d6753eca7641bf1e73306729446138b0fe68bb7ec8bc8ea61f2`  
		Last Modified: Fri, 11 Jan 2019 16:53:59 GMT  
		Size: 1.8 KB (1816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `yourls:1.7-fpm-alpine` - linux; ppc64le

```console
$ docker pull yourls@sha256:8caba59e8eaf2267e5e0b9d84205e9844ecd1186844f648c50f569874daf8932
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 MB (34747745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e57716ccbb7b9a3c9f49b6d549848a00eaad9f69e7192ed5c2ec599e6d9183e9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 21 Dec 2018 09:44:05 GMT
ADD file:81f8badc2215d9ccd8f5406b89b63bf0b407b3e877f6232bd11153780c551392 in / 
# Fri, 21 Dec 2018 09:44:06 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:44:10 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 10:32:58 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 21 Dec 2018 10:33:10 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Fri, 21 Dec 2018 10:33:18 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 21 Dec 2018 10:33:23 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 21 Dec 2018 10:33:29 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 21 Dec 2018 10:39:18 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Fri, 21 Dec 2018 10:39:20 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 21 Dec 2018 10:39:22 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 21 Dec 2018 10:39:25 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 21 Dec 2018 10:57:58 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 11 Jan 2019 10:37:49 GMT
ENV PHP_VERSION=7.2.14
# Fri, 11 Jan 2019 10:37:51 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror
# Fri, 11 Jan 2019 10:37:53 GMT
ENV PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f PHP_MD5=
# Fri, 11 Jan 2019 10:38:10 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 11 Jan 2019 10:38:12 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 11 Jan 2019 10:42:28 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libsodium-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 11 Jan 2019 10:42:29 GMT
COPY multi:cbc68fef2c8554b9a23fee7eee16ffda927235f929048638240f97172562665c in /usr/local/bin/ 
# Fri, 11 Jan 2019 10:42:35 GMT
RUN docker-php-ext-enable sodium
# Fri, 11 Jan 2019 10:42:37 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 11 Jan 2019 10:42:40 GMT
WORKDIR /var/www/html
# Fri, 11 Jan 2019 10:42:44 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 11 Jan 2019 10:42:46 GMT
EXPOSE 9000
# Fri, 11 Jan 2019 10:42:48 GMT
CMD ["php-fpm"]
# Fri, 11 Jan 2019 13:44:06 GMT
RUN set -ex;     docker-php-ext-install opcache pdo_mysql mysqli
# Fri, 11 Jan 2019 13:44:10 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 11 Jan 2019 13:44:13 GMT
RUN apk add --no-cache bash
# Fri, 11 Jan 2019 13:44:15 GMT
VOLUME [/var/www/html]
# Fri, 11 Jan 2019 13:44:16 GMT
ENV YOURLS_VERSION=1.7.2
# Fri, 11 Jan 2019 13:44:21 GMT
RUN set -ex; 	curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz"; 	tar -xzf yourls.tar.gz -C /usr/src/; 	mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls; 	rm yourls.tar.gz; 	chown -R www-data:www-data /usr/src/yourls
# Fri, 11 Jan 2019 13:44:22 GMT
COPY file:7722c9d76f082fb2683ec1d4befeaddd6c873c885172752cacb787e076d4dbeb in /usr/local/bin/ 
# Fri, 11 Jan 2019 13:44:23 GMT
COPY file:d375afac6cf463942802d2b27f08ef4d6198ac33f536b334f195e2e479c4cd6f in /var/www/html/ 
# Fri, 11 Jan 2019 13:44:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 13:44:27 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:5fac6f91a5114ca7e803950377d1db527386361cdf48b205eed63d8ab99820c3`  
		Last Modified: Fri, 21 Dec 2018 09:45:58 GMT  
		Size: 2.2 MB (2194772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c21fc409a1bc2fd1e54e11e2bd2beb4251b1c6d49aee187e7d28df20b2004b1`  
		Last Modified: Fri, 21 Dec 2018 09:45:56 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e97d043655dbdb6d40a361d7dc75c1ba30d905a802fa795cf7d567ad05245d76`  
		Last Modified: Fri, 21 Dec 2018 12:04:28 GMT  
		Size: 1.3 MB (1322324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e42ae702569bdff3d1762659fb2ec8eb1a3aa153705c2240bf46a52c81aa408`  
		Last Modified: Fri, 21 Dec 2018 12:04:27 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc7bb9008fe21d12c735aed250535f34b51e732ec5488ca7e1772bca1a0b7028`  
		Last Modified: Fri, 21 Dec 2018 12:04:26 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cec34919370c2384818df7d9f4f38274d4a735df6356b22e9718d2900346fab`  
		Last Modified: Fri, 11 Jan 2019 11:28:44 GMT  
		Size: 12.2 MB (12176123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b7e795fa94c1d605263cefed6b18af78b41b8bc09e0f1a8e0af21d57760ff7`  
		Last Modified: Fri, 11 Jan 2019 11:28:43 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dafa685ce7431d4ac7441095a659bff7369c8ebef767e58b5e3016c64051a5ec`  
		Last Modified: Fri, 11 Jan 2019 11:28:48 GMT  
		Size: 15.5 MB (15520333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6830c0786b7b0018e9fb675e042b6e92069a7a262e1c9a932e03a671a3667d34`  
		Last Modified: Fri, 11 Jan 2019 11:28:40 GMT  
		Size: 2.2 KB (2176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9893e5c1d00fc2bc1ab12822cc8c764d4ddc8e78005f5ca7ae73641fad7d66d`  
		Last Modified: Fri, 11 Jan 2019 11:28:40 GMT  
		Size: 71.6 KB (71637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d417b6dbb5b926e72a79fcf217c400a3ba448cc706b4827fae2ee2aac16294ed`  
		Last Modified: Fri, 11 Jan 2019 11:28:40 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d20b494607f4d906d31390b43388557b1f3851de4bfcc51436d582954225184`  
		Last Modified: Fri, 11 Jan 2019 11:28:40 GMT  
		Size: 7.8 KB (7782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0438dc09a75567fa228d311a251e240f555b533890baa9f26eff447a8d47d954`  
		Last Modified: Fri, 11 Jan 2019 13:46:01 GMT  
		Size: 357.8 KB (357765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2e2f343164d525dbe6bc64a417b6ca80473e626c799a57fbca2e0d85d51a544`  
		Last Modified: Fri, 11 Jan 2019 13:45:57 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf155992d9efa981564a8b1ea76e34b0f1c21e8138a59812874c3f7b47b01abd`  
		Last Modified: Fri, 11 Jan 2019 13:45:58 GMT  
		Size: 603.7 KB (603667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46a8476bc72743c5d14b6a28a843847f642a74ab528d62234e4ec83905feb2a1`  
		Last Modified: Fri, 11 Jan 2019 13:45:58 GMT  
		Size: 2.5 MB (2485644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c92c5dd3bd03e525fbf8a7f3c9c347a1c133a26670a171d7b4a2d8907e5e3e56`  
		Last Modified: Fri, 11 Jan 2019 13:45:57 GMT  
		Size: 1.1 KB (1057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f03b52c13d8480225a74740b540d0fbdb0b87f906ec44d4f448348e0c39d9237`  
		Last Modified: Fri, 11 Jan 2019 13:45:57 GMT  
		Size: 1.8 KB (1816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `yourls:1-apache`

```console
$ docker pull yourls@sha256:b93240de31344e21ece17db55b42551926ebf7ed9edff59de98457cc8ab200bf
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
$ docker pull yourls@sha256:4962218b0809fc8cf63bf9eebfceba12d11f754f3669c23bc3481a952d9fa64c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.6 MB (137592705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c1c2d79eaa9e79809bbd5160f94daac5d40e72035e7c2e289b0ffd4df0af05f`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Sat, 29 Dec 2018 05:03:51 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 11 Jan 2019 01:14:55 GMT
ENV PHP_VERSION=7.2.14
# Fri, 11 Jan 2019 01:14:55 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror
# Fri, 11 Jan 2019 01:14:55 GMT
ENV PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f PHP_MD5=
# Fri, 11 Jan 2019 01:15:04 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 11 Jan 2019 01:15:04 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 11 Jan 2019 01:18:38 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 11 Jan 2019 01:18:38 GMT
COPY multi:0a6fe33cb39694994fa567c75b399b9aa5e477c8770caa9f731607a72819b457 in /usr/local/bin/ 
# Fri, 11 Jan 2019 01:18:39 GMT
RUN docker-php-ext-enable sodium
# Fri, 11 Jan 2019 01:18:39 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 11 Jan 2019 01:18:39 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Fri, 11 Jan 2019 01:18:40 GMT
WORKDIR /var/www/html
# Fri, 11 Jan 2019 01:18:40 GMT
EXPOSE 80
# Fri, 11 Jan 2019 01:18:40 GMT
CMD ["apache2-foreground"]
# Fri, 11 Jan 2019 03:24:43 GMT
RUN set -ex;     docker-php-ext-install opcache pdo_mysql mysqli
# Fri, 11 Jan 2019 03:24:44 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 11 Jan 2019 03:24:44 GMT
RUN a2enmod rewrite expires
# Fri, 11 Jan 2019 03:24:45 GMT
VOLUME [/var/www/html]
# Fri, 11 Jan 2019 03:24:45 GMT
ENV YOURLS_VERSION=1.7.2
# Fri, 11 Jan 2019 03:24:46 GMT
RUN set -ex; 	curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz"; 	tar -xzf yourls.tar.gz -C /usr/src/; 	mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls; 	rm yourls.tar.gz; 	chown -R www-data:www-data /usr/src/yourls
# Fri, 11 Jan 2019 03:24:47 GMT
COPY file:7722c9d76f082fb2683ec1d4befeaddd6c873c885172752cacb787e076d4dbeb in /usr/local/bin/ 
# Fri, 11 Jan 2019 03:24:47 GMT
COPY file:d375afac6cf463942802d2b27f08ef4d6198ac33f536b334f195e2e479c4cd6f in /var/www/html/ 
# Fri, 11 Jan 2019 03:24:47 GMT
COPY file:5b7ff05d0c98ad759c4bec0ef8a7ce74cae42e95b42564b55f43b341c2c3e3f5 in /var/www/html/ 
# Fri, 11 Jan 2019 03:24:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 03:24:48 GMT
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
	-	`sha256:2a25fcb23d183d85904474bbb4a70acd54f799488ca33ee229f2ed1ad0ce9591`  
		Last Modified: Fri, 11 Jan 2019 01:53:42 GMT  
		Size: 12.5 MB (12506427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e496ab19dfffef5f7ced59f3bcf6175c1b94be12564b4d9c5645b7a93560192`  
		Last Modified: Fri, 11 Jan 2019 01:53:41 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a5d39fc92ab1ba459a1b1cf1b7f20656559f9f05537337ae1c51b7fdba66ffb`  
		Last Modified: Fri, 11 Jan 2019 01:53:44 GMT  
		Size: 15.2 MB (15246057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8603dc5a76e7c083140806cf44d4e1690e15d79cb135ba8e1d6705769b0851ba`  
		Last Modified: Fri, 11 Jan 2019 01:53:40 GMT  
		Size: 2.2 KB (2195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4525497200a2b96ba75f12c63aed6a62b6d03a207d2441de88bb6a7d881ac7b3`  
		Last Modified: Fri, 11 Jan 2019 01:53:40 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df66f65de27acc43763a4432f463d3337d0b23fd8db7ab223acc7017eeb4f763`  
		Last Modified: Fri, 11 Jan 2019 01:53:40 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57b8d8fa0610733515eb42761dc0de5de2da32a64d781bba6411fc2166f27e6a`  
		Last Modified: Fri, 11 Jan 2019 03:26:47 GMT  
		Size: 280.6 KB (280552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbca46cb53c4c940b34051582c867fa563da9435def6910244c2aa47a7ad24ba`  
		Last Modified: Fri, 11 Jan 2019 03:26:48 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95c24c90db0469d2cc6aa12ff0b583132ebd112acf6b687a503c292bc137fef1`  
		Last Modified: Fri, 11 Jan 2019 03:26:46 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a7d2a11ebf743bcc5735aa222deebb162a1da746a81fa95face8a97afbb1aa`  
		Last Modified: Fri, 11 Jan 2019 03:26:47 GMT  
		Size: 2.5 MB (2485627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb13aa537f9d9745b40e7d938edfd081be0b6f9ee77ceafcb38deccbf4836ea8`  
		Last Modified: Fri, 11 Jan 2019 03:26:46 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72194353726c756bd51d964bcaa545bd0298914297d8bde7fade176653dedef5`  
		Last Modified: Fri, 11 Jan 2019 03:26:46 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cd18794e74c003815eb6df1fefdcefe87ec988af1834780908349a86f5f07ba`  
		Last Modified: Fri, 11 Jan 2019 03:26:46 GMT  
		Size: 337.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `yourls:1-apache` - linux; arm variant v5

```console
$ docker pull yourls@sha256:f0d07d3d15c8b789d94179d42578cee1caccb2cfe240c57841a5691232b7bc89
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.9 MB (124937488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64e90988afdbf7237c297a523eb6618f00a414c4f6428390529c1b2c57934806`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Sat, 29 Dec 2018 09:55:31 GMT
ADD file:1f3db2bdb8941ca17968251e2af1378e7f7556627ed60eafb5ee40089810bc8b in / 
# Sat, 29 Dec 2018 09:55:32 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 12:32:24 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Sat, 29 Dec 2018 12:32:24 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Sat, 29 Dec 2018 12:33:02 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:33:04 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 29 Dec 2018 12:33:05 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 29 Dec 2018 12:38:00 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:38:00 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Sat, 29 Dec 2018 12:38:01 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Sat, 29 Dec 2018 12:38:02 GMT
RUN set -eux; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Sat, 29 Dec 2018 12:38:03 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Sat, 29 Dec 2018 12:38:05 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Sat, 29 Dec 2018 12:38:05 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Sat, 29 Dec 2018 12:38:06 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Sat, 29 Dec 2018 12:38:06 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 12:38:06 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 12:38:07 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 29 Dec 2018 12:55:20 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Sat, 29 Dec 2018 12:55:20 GMT
ENV PHP_VERSION=7.2.13
# Sat, 29 Dec 2018 12:55:20 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.13.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.13.tar.xz.asc/from/this/mirror
# Sat, 29 Dec 2018 12:55:21 GMT
ENV PHP_SHA256=14b0429abdb46b65c843e5882c9a8c46b31dfbf279c747293b8ab950c2644a4b PHP_MD5=
# Sat, 29 Dec 2018 12:55:36 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 29 Dec 2018 12:55:37 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 29 Dec 2018 12:58:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 29 Dec 2018 12:58:42 GMT
COPY multi:0a6fe33cb39694994fa567c75b399b9aa5e477c8770caa9f731607a72819b457 in /usr/local/bin/ 
# Sat, 29 Dec 2018 12:58:44 GMT
RUN docker-php-ext-enable sodium
# Sat, 29 Dec 2018 12:58:44 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 29 Dec 2018 12:58:44 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Sat, 29 Dec 2018 12:58:45 GMT
WORKDIR /var/www/html
# Sat, 29 Dec 2018 12:58:45 GMT
EXPOSE 80
# Sat, 29 Dec 2018 12:58:46 GMT
CMD ["apache2-foreground"]
# Fri, 04 Jan 2019 11:10:51 GMT
RUN set -ex;     docker-php-ext-install opcache pdo_mysql mysqli
# Fri, 04 Jan 2019 11:10:53 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 04 Jan 2019 11:10:54 GMT
RUN a2enmod rewrite expires
# Fri, 04 Jan 2019 11:10:54 GMT
VOLUME [/var/www/html]
# Fri, 04 Jan 2019 11:10:55 GMT
ENV YOURLS_VERSION=1.7.2
# Fri, 04 Jan 2019 11:10:57 GMT
RUN set -ex; 	curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz"; 	tar -xzf yourls.tar.gz -C /usr/src/; 	mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls; 	rm yourls.tar.gz; 	chown -R www-data:www-data /usr/src/yourls
# Fri, 04 Jan 2019 11:10:58 GMT
COPY file:7722c9d76f082fb2683ec1d4befeaddd6c873c885172752cacb787e076d4dbeb in /usr/local/bin/ 
# Fri, 04 Jan 2019 11:10:58 GMT
COPY file:d375afac6cf463942802d2b27f08ef4d6198ac33f536b334f195e2e479c4cd6f in /var/www/html/ 
# Fri, 04 Jan 2019 11:10:59 GMT
COPY file:5b7ff05d0c98ad759c4bec0ef8a7ce74cae42e95b42564b55f43b341c2c3e3f5 in /var/www/html/ 
# Fri, 04 Jan 2019 11:10:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 04 Jan 2019 11:11:00 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:e040f73e39f2c2a1a8429ff270c2d629ef2630ac31581228037724d707862b22`  
		Last Modified: Sat, 29 Dec 2018 10:03:16 GMT  
		Size: 21.2 MB (21167776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dc5107d4e4251d4ef9002026f490e573eff661fe6e2278d1bd3a7d121a3c321`  
		Last Modified: Sat, 29 Dec 2018 15:11:10 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca61229a1118271adc19db58c172d9ceaa14ceb0aef16b2fb0b4237c08f6fe9e`  
		Last Modified: Sat, 29 Dec 2018 15:11:32 GMT  
		Size: 57.5 MB (57464650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2be23d64816b54f39f39a88b24bd971081a558160fdf7667ec44f47c45989c9`  
		Last Modified: Sat, 29 Dec 2018 15:11:10 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dafbaeb7163888e37cf64fb46e91b2cf58eac8540c395f64883103d3bfcf5064`  
		Last Modified: Sat, 29 Dec 2018 15:12:10 GMT  
		Size: 16.7 MB (16654350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49b40f80c9fbf4364d92fdd25059fe5e0c2070334338daf628dec7751de40bd2`  
		Last Modified: Sat, 29 Dec 2018 15:12:03 GMT  
		Size: 1.4 KB (1366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71f2d447d810b660e4c7c64129caf2a8dc24381d6de1e85c964ef7b832a1e02a`  
		Last Modified: Sat, 29 Dec 2018 15:12:03 GMT  
		Size: 473.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0f34a587aa02846d8add6902c1ef4c05955469cf14e7a66b9d752cace0679d3`  
		Last Modified: Sat, 29 Dec 2018 15:12:03 GMT  
		Size: 512.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:365d13d1ea625a32a9a32e3cf22f4f2fab2eb22cb57d25ea93b8917e7bd4c9e4`  
		Last Modified: Sat, 29 Dec 2018 15:13:43 GMT  
		Size: 12.5 MB (12463554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cf03536d58a6e85c385bbd382c2e7345f4a70808bef960488a331948eec6e4e`  
		Last Modified: Sat, 29 Dec 2018 15:13:40 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af1ea384524b42693ba20e3dfc8ae623c3aa1aeff9a2f550712f120bf420d58b`  
		Last Modified: Sat, 29 Dec 2018 15:13:45 GMT  
		Size: 14.4 MB (14421222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e312529f1eae1c5da20e136a83a30b1edc1b4b873516ba670b33affcb827f82`  
		Last Modified: Sat, 29 Dec 2018 15:13:39 GMT  
		Size: 2.2 KB (2197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ec86617119633a2846243f5951735983ec2b6be19b16d863a8b1ad91f864b5d`  
		Last Modified: Sat, 29 Dec 2018 15:13:39 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccb13d532eee04a14b1f1caa52aed72aa37327aebb0e3a3f29e72f29a3c2a9f8`  
		Last Modified: Sat, 29 Dec 2018 15:13:39 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf1300472aed72acd8444e4180bd165644a321eba929baec73b81817032c93d6`  
		Last Modified: Fri, 04 Jan 2019 11:12:53 GMT  
		Size: 269.7 KB (269717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da22acd34f24b0edb67bd4231394b7f78750311489264df2dfa894138cb33d56`  
		Last Modified: Fri, 04 Jan 2019 11:12:52 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:750fb21c7d249a3df6935f490714dcfe0b80e8a2e9f9bc6808805d9f4a5d7126`  
		Last Modified: Fri, 04 Jan 2019 11:12:51 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0124ce182cd58209baab0012c40eb8b2ceb4b990c92bd243a07f8cef1c6bce2e`  
		Last Modified: Fri, 04 Jan 2019 11:12:53 GMT  
		Size: 2.5 MB (2485637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e21c7ec52983b6c56d6b809b84a1f79d826f201aab7af0f8801f2fd2dc3deb80`  
		Last Modified: Fri, 04 Jan 2019 11:12:51 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fee2f6a0e9b8d1b69cf15221931fcb53d48f627ec82548dfc484781667578137`  
		Last Modified: Fri, 04 Jan 2019 11:12:51 GMT  
		Size: 1.8 KB (1832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3c70eb029934442a32abf9541140be383fee6685c335765c457ac0cabf49ec1`  
		Last Modified: Fri, 04 Jan 2019 11:12:51 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `yourls:1-apache` - linux; arm variant v7

```console
$ docker pull yourls@sha256:bfe9dd2cbc5e70e0dafadaa03f87a6c5a6d19c93a3a78b963969d07a02f241f8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.9 MB (117864222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:315103166e802ff42c820d401dc963ea625550f000de6d62c5fae20112fc15a4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Sat, 29 Dec 2018 13:04:57 GMT
ADD file:287bc4fa3803b40afca4bcac26d92079fb862f7b968e960e01ae536b1b5c7aea in / 
# Sat, 29 Dec 2018 13:04:57 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 15:52:23 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Sat, 29 Dec 2018 15:52:23 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Sat, 29 Dec 2018 15:52:54 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 29 Dec 2018 15:52:55 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 29 Dec 2018 15:52:57 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 29 Dec 2018 15:57:28 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 15:57:28 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Sat, 29 Dec 2018 15:57:29 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Sat, 29 Dec 2018 15:57:30 GMT
RUN set -eux; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Sat, 29 Dec 2018 15:57:32 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Sat, 29 Dec 2018 15:57:34 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Sat, 29 Dec 2018 15:57:34 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Sat, 29 Dec 2018 15:57:35 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Sat, 29 Dec 2018 15:57:35 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 15:57:35 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 15:57:36 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 29 Dec 2018 16:31:14 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 11 Jan 2019 13:21:39 GMT
ENV PHP_VERSION=7.2.14
# Fri, 11 Jan 2019 13:21:40 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror
# Fri, 11 Jan 2019 13:21:40 GMT
ENV PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f PHP_MD5=
# Fri, 11 Jan 2019 13:21:54 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 11 Jan 2019 13:21:54 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 11 Jan 2019 13:24:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 11 Jan 2019 13:24:43 GMT
COPY multi:0a6fe33cb39694994fa567c75b399b9aa5e477c8770caa9f731607a72819b457 in /usr/local/bin/ 
# Fri, 11 Jan 2019 13:24:44 GMT
RUN docker-php-ext-enable sodium
# Fri, 11 Jan 2019 13:24:44 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 11 Jan 2019 13:24:45 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Fri, 11 Jan 2019 13:24:45 GMT
WORKDIR /var/www/html
# Fri, 11 Jan 2019 13:24:46 GMT
EXPOSE 80
# Fri, 11 Jan 2019 13:24:46 GMT
CMD ["apache2-foreground"]
# Fri, 11 Jan 2019 14:40:55 GMT
RUN set -ex;     docker-php-ext-install opcache pdo_mysql mysqli
# Fri, 11 Jan 2019 14:40:56 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 11 Jan 2019 14:40:58 GMT
RUN a2enmod rewrite expires
# Fri, 11 Jan 2019 14:40:58 GMT
VOLUME [/var/www/html]
# Fri, 11 Jan 2019 14:40:59 GMT
ENV YOURLS_VERSION=1.7.2
# Fri, 11 Jan 2019 14:41:04 GMT
RUN set -ex; 	curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz"; 	tar -xzf yourls.tar.gz -C /usr/src/; 	mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls; 	rm yourls.tar.gz; 	chown -R www-data:www-data /usr/src/yourls
# Fri, 11 Jan 2019 14:41:04 GMT
COPY file:7722c9d76f082fb2683ec1d4befeaddd6c873c885172752cacb787e076d4dbeb in /usr/local/bin/ 
# Fri, 11 Jan 2019 14:41:05 GMT
COPY file:d375afac6cf463942802d2b27f08ef4d6198ac33f536b334f195e2e479c4cd6f in /var/www/html/ 
# Fri, 11 Jan 2019 14:41:05 GMT
COPY file:5b7ff05d0c98ad759c4bec0ef8a7ce74cae42e95b42564b55f43b341c2c3e3f5 in /var/www/html/ 
# Fri, 11 Jan 2019 14:41:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 14:41:06 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:eb2ab017daa46c13a41d60225632e89c8b5c24a9bdafb2b75b1d415830b41e6b`  
		Last Modified: Sat, 29 Dec 2018 13:12:36 GMT  
		Size: 19.3 MB (19277755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bdd3055b30ec26315bbe73533843047ed98fec35dc5acc5cb0d0878ab8ed597`  
		Last Modified: Mon, 31 Dec 2018 19:12:59 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f79128a6d00730d8aaed6af05f3590337fcecd13119d056c272e9d01043f441`  
		Last Modified: Mon, 31 Dec 2018 19:13:15 GMT  
		Size: 53.6 MB (53582251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56fcb7f3e035561a3c9eced964fa2bf0fb33d76092839e59092e773161523cf0`  
		Last Modified: Mon, 31 Dec 2018 19:12:59 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cec7800b34522c311353f81b69927346012c515d10994684b20a049ba54c724`  
		Last Modified: Mon, 31 Dec 2018 19:13:51 GMT  
		Size: 16.2 MB (16162446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ba5955791d212ded2ccec56cb7e29725d2c3c77eab3d9e3fabf25d3f1b5cf98`  
		Last Modified: Mon, 31 Dec 2018 19:13:46 GMT  
		Size: 1.4 KB (1369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e907a4a42c73b241a2cf041cbfbb96efce659ecfd29561d66ea0f7b6a7aada83`  
		Last Modified: Mon, 31 Dec 2018 19:13:46 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72faa7e759463214ed86856afa0ad160e8b2317f9b955d6da86ff57af479d7e3`  
		Last Modified: Mon, 31 Dec 2018 19:13:45 GMT  
		Size: 510.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8c97be05198c1c418efedb012b4489df469a06214bfea33732dbf5c7f67d0b7`  
		Last Modified: Fri, 11 Jan 2019 14:12:34 GMT  
		Size: 12.5 MB (12504282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45b77b603992c6cccbf6503240e5dbafe9bdb17bddadccf59b226518254f5bb9`  
		Last Modified: Fri, 11 Jan 2019 14:12:30 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b9f6a21d0961decc8e89332fe47d1e8a5cfedb05c5880d3f757809c6749f893`  
		Last Modified: Fri, 11 Jan 2019 14:12:35 GMT  
		Size: 13.6 MB (13594915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a3f66483ced6f333748fcb82e1b6d28a39693793744ad4ca90ddac619a24056`  
		Last Modified: Fri, 11 Jan 2019 14:12:30 GMT  
		Size: 2.2 KB (2195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f127eb60416cb13cb76b16f1d8812c3a2c422d82720afabbe47dd31b23cea2c`  
		Last Modified: Fri, 11 Jan 2019 14:12:30 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03da7fcbc0e760b4475e84579700c77e4559675f4c7d34b55f70e4985c8e774d`  
		Last Modified: Fri, 11 Jan 2019 14:12:31 GMT  
		Size: 903.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c907b851539d2e197cae8a8fc767881587ed073ef35f4b4c283df407396e2ad`  
		Last Modified: Fri, 11 Jan 2019 14:42:47 GMT  
		Size: 246.4 KB (246374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04258081f72767fec60c812c21a0ed83add92aa287a5fb89125ef0a45db41f3f`  
		Last Modified: Fri, 11 Jan 2019 14:42:47 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:543db6bf55a72b9523aef66ef7875c1cb276ca6f9512eaa3e6c5be51977e6f19`  
		Last Modified: Fri, 11 Jan 2019 14:42:46 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0394fbcf889fe2801d611bc7e646c59b298a749020f83b2f3d1cf2c040032f45`  
		Last Modified: Fri, 11 Jan 2019 14:42:47 GMT  
		Size: 2.5 MB (2485630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0da5983cbe1560ba3e0e6837aa0b44c67e59d2edc16fd6404fad19f87b5cb531`  
		Last Modified: Fri, 11 Jan 2019 14:42:46 GMT  
		Size: 1.1 KB (1065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2610fb2b53e5e82ab7875ed95f0abac10e9edbd5cfc2f8311d08a0e4eb75d710`  
		Last Modified: Fri, 11 Jan 2019 14:42:46 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c48f5752809961f1865731d00497b9bf9208581395f8b5a18cb4b275be0745e`  
		Last Modified: Fri, 11 Jan 2019 14:42:46 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `yourls:1-apache` - linux; arm64 variant v8

```console
$ docker pull yourls@sha256:d61727bf29772fae43c48440426f3121bb2fc76dac182cacf52658ad0e1f97ef
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.1 MB (124142419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2716f9247372339bbed11c8808a6374e8e5b4ff2e7f28cbd246aa9e818717c1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:46 GMT
ADD file:e4db5c28a0f74e32be4419aae491e4b9dc7402f3640369289e24c52028c871ad in / 
# Sat, 29 Dec 2018 10:08:47 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 21:39:33 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Sat, 29 Dec 2018 21:39:33 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Sat, 29 Dec 2018 21:41:51 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 29 Dec 2018 21:41:52 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 29 Dec 2018 21:41:54 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 29 Dec 2018 21:55:31 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 21:55:31 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Sat, 29 Dec 2018 21:55:32 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Sat, 29 Dec 2018 21:55:34 GMT
RUN set -eux; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Sat, 29 Dec 2018 21:55:37 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Sat, 29 Dec 2018 21:55:39 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Sat, 29 Dec 2018 21:55:39 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Sat, 29 Dec 2018 21:55:40 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Sat, 29 Dec 2018 21:55:41 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 21:55:41 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 21:55:42 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 29 Dec 2018 22:37:39 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 11 Jan 2019 11:30:51 GMT
ENV PHP_VERSION=7.2.14
# Fri, 11 Jan 2019 11:30:52 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror
# Fri, 11 Jan 2019 11:30:53 GMT
ENV PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f PHP_MD5=
# Fri, 11 Jan 2019 11:31:22 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 11 Jan 2019 11:31:22 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 11 Jan 2019 11:37:55 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 11 Jan 2019 11:37:56 GMT
COPY multi:0a6fe33cb39694994fa567c75b399b9aa5e477c8770caa9f731607a72819b457 in /usr/local/bin/ 
# Fri, 11 Jan 2019 11:37:58 GMT
RUN docker-php-ext-enable sodium
# Fri, 11 Jan 2019 11:37:58 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 11 Jan 2019 11:37:59 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Fri, 11 Jan 2019 11:38:00 GMT
WORKDIR /var/www/html
# Fri, 11 Jan 2019 11:38:01 GMT
EXPOSE 80
# Fri, 11 Jan 2019 11:38:02 GMT
CMD ["apache2-foreground"]
# Fri, 11 Jan 2019 15:03:51 GMT
RUN set -ex;     docker-php-ext-install opcache pdo_mysql mysqli
# Fri, 11 Jan 2019 15:03:53 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 11 Jan 2019 15:03:56 GMT
RUN a2enmod rewrite expires
# Fri, 11 Jan 2019 15:03:57 GMT
VOLUME [/var/www/html]
# Fri, 11 Jan 2019 15:03:58 GMT
ENV YOURLS_VERSION=1.7.2
# Fri, 11 Jan 2019 15:04:12 GMT
RUN set -ex; 	curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz"; 	tar -xzf yourls.tar.gz -C /usr/src/; 	mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls; 	rm yourls.tar.gz; 	chown -R www-data:www-data /usr/src/yourls
# Fri, 11 Jan 2019 15:04:12 GMT
COPY file:7722c9d76f082fb2683ec1d4befeaddd6c873c885172752cacb787e076d4dbeb in /usr/local/bin/ 
# Fri, 11 Jan 2019 15:04:13 GMT
COPY file:d375afac6cf463942802d2b27f08ef4d6198ac33f536b334f195e2e479c4cd6f in /var/www/html/ 
# Fri, 11 Jan 2019 15:04:14 GMT
COPY file:5b7ff05d0c98ad759c4bec0ef8a7ce74cae42e95b42564b55f43b341c2c3e3f5 in /var/www/html/ 
# Fri, 11 Jan 2019 15:04:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 15:04:19 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:1a07b0163994a6d3328beeaa3400f6304e68548ffb84deefcb74427a6b65a489`  
		Last Modified: Sat, 29 Dec 2018 10:15:04 GMT  
		Size: 20.3 MB (20337511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da8dc61ccacab0c571f2793c6c5400180816557fa0140990f997519be3471012`  
		Last Modified: Sun, 30 Dec 2018 01:03:31 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59be51dca15077e7f02edb4376d3e8e194896c4e706c9c03c2fd2d2af47f8cdc`  
		Last Modified: Sun, 30 Dec 2018 01:03:58 GMT  
		Size: 57.6 MB (57606226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f391fc42cee2e19f185ac34d4d4e8404a3209ed5c17b369dc30bdf3a0d29915`  
		Last Modified: Sun, 30 Dec 2018 01:03:31 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624799215cc8ec3f277033b52eefa3e6cdee2c0371b28a4983c3722506e677a6`  
		Last Modified: Sun, 30 Dec 2018 01:04:48 GMT  
		Size: 16.7 MB (16711057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10e7e30b294ed284d673effda7c4615ade5cd952cc3dee17c0116b1c0f6cd106`  
		Last Modified: Sun, 30 Dec 2018 01:04:40 GMT  
		Size: 1.3 KB (1342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1845118be0cdd364592b6079fb43ef235948f820e01b535e9b7da4187f405bd8`  
		Last Modified: Sun, 30 Dec 2018 01:04:40 GMT  
		Size: 446.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8e041c4002a5658f86b77e75593904c0fd11c2aa9f7ed2f36b876f5d4d54225`  
		Last Modified: Sun, 30 Dec 2018 01:04:40 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8e4758eeb14ef9d665ee8e8893a3dc0469e98e71080ff51cecbe20f001338dc`  
		Last Modified: Fri, 11 Jan 2019 13:28:11 GMT  
		Size: 12.5 MB (12504551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0a7715c7889392eb2892d63a5c19702854e3796c8987ae917f98186366120ae`  
		Last Modified: Fri, 11 Jan 2019 13:28:06 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99dd54d4b3d9b98d66331ca76de66e8a17ec67a762262913988d6c22266d77ed`  
		Last Modified: Fri, 11 Jan 2019 13:28:16 GMT  
		Size: 14.2 MB (14224611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:783103c755e67d37a92dbb7c0d026e9d602380ef1e49867419ce963777937ef5`  
		Last Modified: Fri, 11 Jan 2019 13:28:06 GMT  
		Size: 2.2 KB (2199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55581dc088e840fe29e62e8f79131b7a58e97936d4fe7aa7a8e6942bbd8e74f9`  
		Last Modified: Fri, 11 Jan 2019 13:28:06 GMT  
		Size: 261.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14d4b6af964b502f49158c5b653060487ec42d75d9afbe6512384f73b33e1e31`  
		Last Modified: Fri, 11 Jan 2019 13:28:06 GMT  
		Size: 907.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:545e657896019a75e45b577145c6567212a2dd02030ea98870170b5b93b65c7f`  
		Last Modified: Fri, 11 Jan 2019 15:09:01 GMT  
		Size: 262.3 KB (262344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71ecb13c447453d37b5f10e094b81dc29547b4ad0580d414ab98cb140b93a098`  
		Last Modified: Fri, 11 Jan 2019 15:09:01 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb7710e996c32963126e3402425d00ffe4c1fadceb2b25531977ae33148a1aa1`  
		Last Modified: Fri, 11 Jan 2019 15:08:58 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f490cf4284373ca4550c3cf2617f108ef9aab42f97f590ff537b45cda405f5b9`  
		Last Modified: Fri, 11 Jan 2019 15:09:00 GMT  
		Size: 2.5 MB (2485626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ffc0cd2ad70eba0c3a67a26b0904b855a15e4bf24f40567103be04ef5cf12e2`  
		Last Modified: Fri, 11 Jan 2019 15:08:58 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e823a50bf8f5a5694a2ee0d9597fff6b1830fcf0518c5e7b16ab6ced004b69a8`  
		Last Modified: Fri, 11 Jan 2019 15:08:58 GMT  
		Size: 1.8 KB (1832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4763bcd845306818ec0b5a638ddee94aede5786f3b9c2ddc618ab6f47971d43e`  
		Last Modified: Fri, 11 Jan 2019 15:08:59 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `yourls:1-apache` - linux; 386

```console
$ docker pull yourls@sha256:b2035a8f7ab1c3b5de3d23ccc4a7137e7458c283df1ae56878c404863b5124b0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.2 MB (143177459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec184124ebdbc826e1d68e9d5038d3989912c2d76ce9ae2c4bf14da610ae2649`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Sat, 29 Dec 2018 11:56:14 GMT
ADD file:aaa0661c64d46388f46e71ba3d172f3208f6b943dbc1a86e0b50ca5080bdb3ee in / 
# Sat, 29 Dec 2018 11:56:15 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 21:36:24 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Sat, 29 Dec 2018 21:36:24 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Sat, 29 Dec 2018 21:36:48 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 29 Dec 2018 21:36:48 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 29 Dec 2018 21:36:49 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 29 Dec 2018 21:45:50 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 21:45:51 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Sat, 29 Dec 2018 21:45:51 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Sat, 29 Dec 2018 21:45:51 GMT
RUN set -eux; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Sat, 29 Dec 2018 21:45:52 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Sat, 29 Dec 2018 21:45:53 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Sat, 29 Dec 2018 21:45:53 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Sat, 29 Dec 2018 21:45:53 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Sat, 29 Dec 2018 21:45:54 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 21:45:54 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 21:45:54 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 29 Dec 2018 22:07:26 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 11 Jan 2019 12:50:42 GMT
ENV PHP_VERSION=7.2.14
# Fri, 11 Jan 2019 12:50:42 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror
# Fri, 11 Jan 2019 12:50:42 GMT
ENV PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f PHP_MD5=
# Fri, 11 Jan 2019 12:50:53 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 11 Jan 2019 12:50:53 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 11 Jan 2019 12:54:18 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 11 Jan 2019 12:54:18 GMT
COPY multi:0a6fe33cb39694994fa567c75b399b9aa5e477c8770caa9f731607a72819b457 in /usr/local/bin/ 
# Fri, 11 Jan 2019 12:54:19 GMT
RUN docker-php-ext-enable sodium
# Fri, 11 Jan 2019 12:54:19 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 11 Jan 2019 12:54:19 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Fri, 11 Jan 2019 12:54:20 GMT
WORKDIR /var/www/html
# Fri, 11 Jan 2019 12:54:20 GMT
EXPOSE 80
# Fri, 11 Jan 2019 12:54:20 GMT
CMD ["apache2-foreground"]
# Fri, 11 Jan 2019 16:51:33 GMT
RUN set -ex;     docker-php-ext-install opcache pdo_mysql mysqli
# Fri, 11 Jan 2019 16:51:34 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 11 Jan 2019 16:51:34 GMT
RUN a2enmod rewrite expires
# Fri, 11 Jan 2019 16:51:35 GMT
VOLUME [/var/www/html]
# Fri, 11 Jan 2019 16:51:35 GMT
ENV YOURLS_VERSION=1.7.2
# Fri, 11 Jan 2019 16:51:36 GMT
RUN set -ex; 	curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz"; 	tar -xzf yourls.tar.gz -C /usr/src/; 	mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls; 	rm yourls.tar.gz; 	chown -R www-data:www-data /usr/src/yourls
# Fri, 11 Jan 2019 16:51:37 GMT
COPY file:7722c9d76f082fb2683ec1d4befeaddd6c873c885172752cacb787e076d4dbeb in /usr/local/bin/ 
# Fri, 11 Jan 2019 16:51:37 GMT
COPY file:d375afac6cf463942802d2b27f08ef4d6198ac33f536b334f195e2e479c4cd6f in /var/www/html/ 
# Fri, 11 Jan 2019 16:51:37 GMT
COPY file:5b7ff05d0c98ad759c4bec0ef8a7ce74cae42e95b42564b55f43b341c2c3e3f5 in /var/www/html/ 
# Fri, 11 Jan 2019 16:51:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 16:51:37 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:9a1a13172ed974323f7c35153e8b23b8fa1c85355b6b26cc3127e640e45ef0aa`  
		Last Modified: Sat, 29 Dec 2018 12:10:44 GMT  
		Size: 23.1 MB (23133155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5094d5d656a95c6aa92f5f2adc56a794564b1e340bc4065db2947d7ce0c1a394`  
		Last Modified: Sun, 30 Dec 2018 01:57:01 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb2ab2fc6c3875a5ebec4eb6dae731467d2cfbe0c4372b4db6b7f8faad9917e`  
		Last Modified: Sun, 30 Dec 2018 01:57:20 GMT  
		Size: 71.5 MB (71503745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05469bc6d7085ba5736c7bf95032d0bb750ab2fa43b29049cfee7ba36c391e79`  
		Last Modified: Sun, 30 Dec 2018 01:57:01 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cac1a3cba6925217785401a8b972064ba1a0dfe60d4e039f49c4dac4b3f4270e`  
		Last Modified: Sun, 30 Dec 2018 01:57:45 GMT  
		Size: 17.6 MB (17561920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9184c6ff5922580665f40d9e2416d6ff748200ba764489ad442486d61570f8d0`  
		Last Modified: Sun, 30 Dec 2018 01:57:40 GMT  
		Size: 1.3 KB (1336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9edc4d80dca7d81ba8b7a97ebf76890d74ca4d440e11b418c39c09686094da0b`  
		Last Modified: Sun, 30 Dec 2018 01:57:40 GMT  
		Size: 430.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c49d3ce320b30bff15e021157c1b88262d848a456dbdf970c8796accf3e9cc4`  
		Last Modified: Sun, 30 Dec 2018 01:57:40 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd62ef36d94e7c9305ffd2eb8a68bd0b1939d0e5f21ce8a25c7ab5db0748013d`  
		Last Modified: Fri, 11 Jan 2019 14:54:17 GMT  
		Size: 12.5 MB (12505836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b436f91e147a9071b2e0dde2cd2939f63ead4fffb43f92d4dc8d39aabfad96b`  
		Last Modified: Fri, 11 Jan 2019 14:54:12 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2848e63e536187e58765f167f5d942e58c4ba788373f18053046374337e6a498`  
		Last Modified: Fri, 11 Jan 2019 14:54:16 GMT  
		Size: 15.7 MB (15686833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b45df8623fc8e136011d091ed53d924d6820771d844b4c27843c8aac1a4a6ca6`  
		Last Modified: Fri, 11 Jan 2019 14:54:17 GMT  
		Size: 2.2 KB (2197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02b7d92b09c9e14b62d1c385941eabe813b6b3fb137191d2b3d3b91806481ada`  
		Last Modified: Fri, 11 Jan 2019 14:54:16 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64c2910211b6c9223772e7d9203a87d7f51672460245fe15ecf00277389bdaed`  
		Last Modified: Fri, 11 Jan 2019 14:54:16 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95dc45aae2e0964d2a1ca15dc4bb85b376c6ad044d917e80ae7921de2d2c319f`  
		Last Modified: Fri, 11 Jan 2019 16:53:29 GMT  
		Size: 289.9 KB (289900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87dd5f217b94a013757e95bd992b7b62057b4126538eeeaed0bb895a30f4204d`  
		Last Modified: Fri, 11 Jan 2019 16:53:29 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:903227e6f2d86754f057e2c31d64101ffc5d4731d2a61e5dabe5262275d570e8`  
		Last Modified: Fri, 11 Jan 2019 16:53:29 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3448433d93ec7f6c0ab0503cf930d128b88b57582763ed389e2d4ff3905c43cc`  
		Last Modified: Fri, 11 Jan 2019 16:53:29 GMT  
		Size: 2.5 MB (2485625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:468cea8a346ee27bcace5936c73c780e3405caa1c0e6ac073809d845ce32d115`  
		Last Modified: Fri, 11 Jan 2019 16:53:29 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de510317f9126ed6f8412e11413bde598790403a1ee015721ca216b8c7d949bb`  
		Last Modified: Fri, 11 Jan 2019 16:53:29 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bccf2bff7778ae0e482c38ec0d02f9dd398805696e645100abcfcbd3fa7ef83`  
		Last Modified: Fri, 11 Jan 2019 16:53:29 GMT  
		Size: 336.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `yourls:1-apache` - linux; ppc64le

```console
$ docker pull yourls@sha256:b626b79f83abab2dd375417dbde30ef9cb4ccd8a898794ecf28e421bdc3fb9a8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.2 MB (132241096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:189ff37dac130a5be7bc52d2baa5e9cf8dba74fd13fe3f326ed6c615caa61dcf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Sat, 29 Dec 2018 09:22:40 GMT
ADD file:11cdf0dbdac1a774d74f30e9954e3cf02c390d2280ce747bc95a3b774259f226 in / 
# Sat, 29 Dec 2018 09:22:44 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 13:02:33 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Sat, 29 Dec 2018 13:02:35 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Sat, 29 Dec 2018 13:04:54 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:04:59 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 29 Dec 2018 13:05:04 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 29 Dec 2018 13:12:08 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:12:10 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Sat, 29 Dec 2018 13:12:12 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Sat, 29 Dec 2018 13:12:16 GMT
RUN set -eux; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Sat, 29 Dec 2018 13:12:21 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Sat, 29 Dec 2018 13:12:26 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Sat, 29 Dec 2018 13:12:28 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Sat, 29 Dec 2018 13:12:30 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Sat, 29 Dec 2018 13:12:32 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 13:12:34 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 13:12:36 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 29 Dec 2018 13:39:05 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 11 Jan 2019 10:15:38 GMT
ENV PHP_VERSION=7.2.14
# Fri, 11 Jan 2019 10:15:41 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror
# Fri, 11 Jan 2019 10:15:44 GMT
ENV PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f PHP_MD5=
# Fri, 11 Jan 2019 10:16:28 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 11 Jan 2019 10:16:29 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 11 Jan 2019 10:20:30 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 11 Jan 2019 10:20:32 GMT
COPY multi:0a6fe33cb39694994fa567c75b399b9aa5e477c8770caa9f731607a72819b457 in /usr/local/bin/ 
# Fri, 11 Jan 2019 10:20:35 GMT
RUN docker-php-ext-enable sodium
# Fri, 11 Jan 2019 10:20:38 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 11 Jan 2019 10:20:38 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Fri, 11 Jan 2019 10:20:40 GMT
WORKDIR /var/www/html
# Fri, 11 Jan 2019 10:20:42 GMT
EXPOSE 80
# Fri, 11 Jan 2019 10:20:44 GMT
CMD ["apache2-foreground"]
# Fri, 11 Jan 2019 13:41:41 GMT
RUN set -ex;     docker-php-ext-install opcache pdo_mysql mysqli
# Fri, 11 Jan 2019 13:41:44 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 11 Jan 2019 13:41:47 GMT
RUN a2enmod rewrite expires
# Fri, 11 Jan 2019 13:41:48 GMT
VOLUME [/var/www/html]
# Fri, 11 Jan 2019 13:41:49 GMT
ENV YOURLS_VERSION=1.7.2
# Fri, 11 Jan 2019 13:41:53 GMT
RUN set -ex; 	curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz"; 	tar -xzf yourls.tar.gz -C /usr/src/; 	mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls; 	rm yourls.tar.gz; 	chown -R www-data:www-data /usr/src/yourls
# Fri, 11 Jan 2019 13:41:54 GMT
COPY file:7722c9d76f082fb2683ec1d4befeaddd6c873c885172752cacb787e076d4dbeb in /usr/local/bin/ 
# Fri, 11 Jan 2019 13:41:54 GMT
COPY file:d375afac6cf463942802d2b27f08ef4d6198ac33f536b334f195e2e479c4cd6f in /var/www/html/ 
# Fri, 11 Jan 2019 13:41:55 GMT
COPY file:5b7ff05d0c98ad759c4bec0ef8a7ce74cae42e95b42564b55f43b341c2c3e3f5 in /var/www/html/ 
# Fri, 11 Jan 2019 13:41:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 13:41:57 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:ca671aebac61774c6bfa23dd5b097e3a135a33f3987318158787030ee978173a`  
		Last Modified: Sat, 29 Dec 2018 09:28:38 GMT  
		Size: 22.7 MB (22746826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55c9e443128efed70bcb2c05fbf1b7b3c63735856c07a31f95f3422e8e5d6be3`  
		Last Modified: Sat, 29 Dec 2018 15:02:06 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26502f7e153105ac601f4d12e9b72baf9021b49b992fe619264a1933c2daf6b4`  
		Last Modified: Sat, 29 Dec 2018 15:02:32 GMT  
		Size: 61.8 MB (61833074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d327479a214f245c363cea23d6878780e6dbb819938b9511e7b69e2e17e81fbf`  
		Last Modified: Sat, 29 Dec 2018 15:02:06 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3209a003a83f58a4c0b0b6d647aab82cf58aac4488fbea658f96c9340ff4a9d`  
		Last Modified: Sat, 29 Dec 2018 15:03:36 GMT  
		Size: 17.3 MB (17348586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0792d92b3fe4333eec429cc7e973c9758702823c0f9cc84cd02777049c72d16d`  
		Last Modified: Sat, 29 Dec 2018 15:03:28 GMT  
		Size: 1.4 KB (1370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:594e55fae66c4e49f0a9d148262bd186dea8241009a7ebf4ac3ac37b9f04944a`  
		Last Modified: Sat, 29 Dec 2018 15:03:28 GMT  
		Size: 473.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7e36bda981ae059f48a8253566f80ac2c45f8d7490de6f2a6693f68e1c964b2`  
		Last Modified: Sat, 29 Dec 2018 15:03:28 GMT  
		Size: 518.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69bb2d7edd823e60bb4099d2fb4b17b3a2cc874a323577e8db870cd22c60920c`  
		Last Modified: Fri, 11 Jan 2019 11:26:57 GMT  
		Size: 12.5 MB (12504919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22e805ca840d1abcec392afa8d90e0de875ca93dfe0680e24784940fc990d819`  
		Last Modified: Fri, 11 Jan 2019 11:26:52 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eedb850efc629bd03dc72d6c0204586f9f46309639103c96d3ba5f964aeaba8d`  
		Last Modified: Fri, 11 Jan 2019 11:27:00 GMT  
		Size: 15.0 MB (15027223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d83ab29a048cabe65cfd7b7b4ce4b521ffba32cd1aa44e7150b5b94d43c2b69`  
		Last Modified: Fri, 11 Jan 2019 11:26:52 GMT  
		Size: 2.2 KB (2198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36c5059d88355e4c24967d7837f4702d890c3e91b29ff44b8e7df8ba6120c4e3`  
		Last Modified: Fri, 11 Jan 2019 11:26:52 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4def876c28c20732bdd4195fad8a9aadbaecae9ca15a0e948eaf42a989a53b6`  
		Last Modified: Fri, 11 Jan 2019 11:26:52 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40b859f8c1a0dcf62711b25d04b7f19bb139118c87db7e91c40cd7ccff62789b`  
		Last Modified: Fri, 11 Jan 2019 13:44:58 GMT  
		Size: 284.2 KB (284236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1814abbbcc60c8f1c24462eb8dc47f745cefa48246daf5cfdca857829725c08`  
		Last Modified: Fri, 11 Jan 2019 13:44:58 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b742dba48ce1cb3bde9b305cf038ef9a79b85cea257611874fcdee91767fe4a6`  
		Last Modified: Fri, 11 Jan 2019 13:44:54 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57d6f9ae7a02d68d00b5021c6094cb83f881d2c0db79b6bbe8bb8ece97d37921`  
		Last Modified: Fri, 11 Jan 2019 13:44:55 GMT  
		Size: 2.5 MB (2485637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0594c573d027c46238d7fca6e3dbfa69330722ac2092e7b5d948533a4d84564b`  
		Last Modified: Fri, 11 Jan 2019 13:44:54 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75de01c68c15baa5dd95835d11036fef59656ccb052218386adfeca2ccfe8f46`  
		Last Modified: Fri, 11 Jan 2019 13:44:54 GMT  
		Size: 1.8 KB (1832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:356802aa837e0477c136bd67c8c56149c1c944a1179b76c10fe1f20a87854642`  
		Last Modified: Fri, 11 Jan 2019 13:44:54 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `yourls:1-fpm`

```console
$ docker pull yourls@sha256:0c2ef5de4ad4aaeac18a8a1f8906b915fd0bcc3787413639f1ff4af1ac4d1f62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `yourls:1-fpm` - linux; amd64

```console
$ docker pull yourls@sha256:26ae05de2a7ac94205e9cdfea1abfcb2a1732580548de2c3fa81f193f9bf06c9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.9 MB (133909463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbddba19b2fbecaa0c622907f8fbfda84cef133464a3a3ff516d42c6aa0bf88d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

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
# Sat, 29 Dec 2018 04:39:01 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Sat, 29 Dec 2018 04:39:01 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 04:39:01 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 04:39:01 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 29 Dec 2018 05:08:52 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 11 Jan 2019 01:18:55 GMT
ENV PHP_VERSION=7.2.14
# Fri, 11 Jan 2019 01:18:55 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror
# Fri, 11 Jan 2019 01:18:55 GMT
ENV PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f PHP_MD5=
# Fri, 11 Jan 2019 01:19:04 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 11 Jan 2019 01:19:04 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 11 Jan 2019 01:24:51 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 11 Jan 2019 01:24:52 GMT
COPY multi:cbc68fef2c8554b9a23fee7eee16ffda927235f929048638240f97172562665c in /usr/local/bin/ 
# Fri, 11 Jan 2019 01:24:53 GMT
RUN docker-php-ext-enable sodium
# Fri, 11 Jan 2019 01:24:53 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 11 Jan 2019 01:24:53 GMT
WORKDIR /var/www/html
# Fri, 11 Jan 2019 01:24:54 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 11 Jan 2019 01:24:54 GMT
EXPOSE 9000
# Fri, 11 Jan 2019 01:24:55 GMT
CMD ["php-fpm"]
# Fri, 11 Jan 2019 03:25:27 GMT
RUN set -ex;     docker-php-ext-install opcache pdo_mysql mysqli
# Fri, 11 Jan 2019 03:25:29 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 11 Jan 2019 03:25:30 GMT
VOLUME [/var/www/html]
# Fri, 11 Jan 2019 03:25:30 GMT
ENV YOURLS_VERSION=1.7.2
# Fri, 11 Jan 2019 03:25:33 GMT
RUN set -ex; 	curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz"; 	tar -xzf yourls.tar.gz -C /usr/src/; 	mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls; 	rm yourls.tar.gz; 	chown -R www-data:www-data /usr/src/yourls
# Fri, 11 Jan 2019 03:25:33 GMT
COPY file:7722c9d76f082fb2683ec1d4befeaddd6c873c885172752cacb787e076d4dbeb in /usr/local/bin/ 
# Fri, 11 Jan 2019 03:25:33 GMT
COPY file:d375afac6cf463942802d2b27f08ef4d6198ac33f536b334f195e2e479c4cd6f in /var/www/html/ 
# Fri, 11 Jan 2019 03:25:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 03:25:35 GMT
CMD ["php-fpm"]
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
	-	`sha256:59cb134d9879a9923c07326dc3a2920705536fffc7736ccf3949428a30c1842a`  
		Last Modified: Fri, 11 Jan 2019 01:53:51 GMT  
		Size: 12.5 MB (12485194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8358df686e1055512214d9a967e00e9bf3f25c3fcefac313053b9a546a7b769`  
		Last Modified: Fri, 11 Jan 2019 01:53:50 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f143a000adfbe19d15e9553db0da1eb0c3ec3e2a604b60a329fad9d6b2bc1d96`  
		Last Modified: Fri, 11 Jan 2019 01:53:55 GMT  
		Size: 28.7 MB (28707927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d88a4a69379d5d7029089d72039f1e607258059ccece9bcf9f10f138bcc8437c`  
		Last Modified: Fri, 11 Jan 2019 01:53:49 GMT  
		Size: 2.2 KB (2189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6df09c82fa9c15288331b9fe31b5ce7f39597ff8cb9770ca4ac95ff5579f539`  
		Last Modified: Fri, 11 Jan 2019 01:53:49 GMT  
		Size: 261.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7780e07c0fe5558d63852d2bc9e2a81254490880b09c8c57418c030b7725e665`  
		Last Modified: Fri, 11 Jan 2019 01:53:49 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa42310f5592c8c5d61820727c59ae88cacc3d1df352b8af959f9ad5ccddce7b`  
		Last Modified: Fri, 11 Jan 2019 01:53:49 GMT  
		Size: 7.8 KB (7800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7533b841e8adb76972c086a62af5f7c6a9072d211e20843bc80e6ae287e984c`  
		Last Modified: Fri, 11 Jan 2019 03:26:59 GMT  
		Size: 280.6 KB (280555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8b6e9007c7e1823c1a4f5c631db9f25f15cf0b1bcd7e5ff6f0198617f814396`  
		Last Modified: Fri, 11 Jan 2019 03:26:59 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7592678cf5cd60efc29c43bd085e426b31a36320a92f23e1340e691bdb8ee2ee`  
		Last Modified: Fri, 11 Jan 2019 03:26:59 GMT  
		Size: 2.5 MB (2485628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cb756da5ee15940306aef8a76efaaebe89291cdc0e270f7c48d6e91b8612c90`  
		Last Modified: Fri, 11 Jan 2019 03:26:59 GMT  
		Size: 1.1 KB (1065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e97983b859657e27410f6cd6c00f0eeddfc501f624049734208af50f30e9a61`  
		Last Modified: Fri, 11 Jan 2019 03:26:59 GMT  
		Size: 1.8 KB (1817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `yourls:1-fpm` - linux; arm variant v5

```console
$ docker pull yourls@sha256:1cf7ff1ad7ef7764f5b8ca481963093af171a2e77f9c152804bd24be34288a72
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.3 MB (121325631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83a62744fb41906adcfcad53455d34a192c7b14dbca61a297e544411b13a3a60`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Sat, 29 Dec 2018 09:55:31 GMT
ADD file:1f3db2bdb8941ca17968251e2af1378e7f7556627ed60eafb5ee40089810bc8b in / 
# Sat, 29 Dec 2018 09:55:32 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 12:32:24 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Sat, 29 Dec 2018 12:32:24 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Sat, 29 Dec 2018 12:33:02 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:33:04 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 29 Dec 2018 12:33:05 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 29 Dec 2018 12:41:44 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Sat, 29 Dec 2018 12:41:44 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 12:41:44 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 12:41:45 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 29 Dec 2018 12:58:50 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Sat, 29 Dec 2018 12:58:51 GMT
ENV PHP_VERSION=7.2.13
# Sat, 29 Dec 2018 12:58:52 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.13.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.13.tar.xz.asc/from/this/mirror
# Sat, 29 Dec 2018 12:58:52 GMT
ENV PHP_SHA256=14b0429abdb46b65c843e5882c9a8c46b31dfbf279c747293b8ab950c2644a4b PHP_MD5=
# Sat, 29 Dec 2018 12:59:10 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 29 Dec 2018 12:59:11 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 29 Dec 2018 13:03:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 29 Dec 2018 13:03:07 GMT
COPY multi:cbc68fef2c8554b9a23fee7eee16ffda927235f929048638240f97172562665c in /usr/local/bin/ 
# Sat, 29 Dec 2018 13:03:08 GMT
RUN docker-php-ext-enable sodium
# Sat, 29 Dec 2018 13:03:09 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 29 Dec 2018 13:03:10 GMT
WORKDIR /var/www/html
# Sat, 29 Dec 2018 13:03:11 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Sat, 29 Dec 2018 13:03:12 GMT
EXPOSE 9000
# Sat, 29 Dec 2018 13:03:12 GMT
CMD ["php-fpm"]
# Fri, 04 Jan 2019 11:12:20 GMT
RUN set -ex;     docker-php-ext-install opcache pdo_mysql mysqli
# Fri, 04 Jan 2019 11:12:22 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 04 Jan 2019 11:12:22 GMT
VOLUME [/var/www/html]
# Fri, 04 Jan 2019 11:12:22 GMT
ENV YOURLS_VERSION=1.7.2
# Fri, 04 Jan 2019 11:12:25 GMT
RUN set -ex; 	curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz"; 	tar -xzf yourls.tar.gz -C /usr/src/; 	mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls; 	rm yourls.tar.gz; 	chown -R www-data:www-data /usr/src/yourls
# Fri, 04 Jan 2019 11:12:25 GMT
COPY file:7722c9d76f082fb2683ec1d4befeaddd6c873c885172752cacb787e076d4dbeb in /usr/local/bin/ 
# Fri, 04 Jan 2019 11:12:26 GMT
COPY file:d375afac6cf463942802d2b27f08ef4d6198ac33f536b334f195e2e479c4cd6f in /var/www/html/ 
# Fri, 04 Jan 2019 11:12:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 04 Jan 2019 11:12:27 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:e040f73e39f2c2a1a8429ff270c2d629ef2630ac31581228037724d707862b22`  
		Last Modified: Sat, 29 Dec 2018 10:03:16 GMT  
		Size: 21.2 MB (21167776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dc5107d4e4251d4ef9002026f490e573eff661fe6e2278d1bd3a7d121a3c321`  
		Last Modified: Sat, 29 Dec 2018 15:11:10 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca61229a1118271adc19db58c172d9ceaa14ceb0aef16b2fb0b4237c08f6fe9e`  
		Last Modified: Sat, 29 Dec 2018 15:11:32 GMT  
		Size: 57.5 MB (57464650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2be23d64816b54f39f39a88b24bd971081a558160fdf7667ec44f47c45989c9`  
		Last Modified: Sat, 29 Dec 2018 15:11:10 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c490b86c4e9dfbe5a82ddd1640f9f0e0932d4d31215ebfcfb8d6e58bfcc44028`  
		Last Modified: Sat, 29 Dec 2018 15:14:01 GMT  
		Size: 12.4 MB (12442583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3da0708f79abf62d1c022d32cbdaa42258834cacf4901085284672d451021958`  
		Last Modified: Sat, 29 Dec 2018 15:13:58 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab64bec714814213d7b09ad18af25e2455e4dd50f6862d36aeb2031dc56514ea`  
		Last Modified: Sat, 29 Dec 2018 15:14:06 GMT  
		Size: 27.5 MB (27480691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89f8b315cb1f42bcbb6cf2d26daef27ab910d598ebdaa48965cae783a50e7f2b`  
		Last Modified: Sat, 29 Dec 2018 15:13:57 GMT  
		Size: 2.2 KB (2192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f48d933ccdb1a69e07a558caab40830dcbe6e7425b1ad1e8a9cbb5d25c5e1a2`  
		Last Modified: Sat, 29 Dec 2018 15:13:57 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c69b137eb49d2634bf1e3a93f65d63e3b18d95857d3a69d601fc341e28ca658e`  
		Last Modified: Sat, 29 Dec 2018 15:13:57 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be34c72dbda7bbdb3652f7aa43ea2026ebca033562269ee975fef5b81f5b7f7e`  
		Last Modified: Sat, 29 Dec 2018 15:13:57 GMT  
		Size: 7.8 KB (7801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:258aebfbc10c5d59b9a951ba1c79943ea4e8d684f61d3406f4257ef0438ff33b`  
		Last Modified: Fri, 04 Jan 2019 11:13:13 GMT  
		Size: 269.7 KB (269719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc7d431187d3d8c8e72a255de63785025ea4374ac15775db7d38fa91d4e2d9c9`  
		Last Modified: Fri, 04 Jan 2019 11:13:13 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5022ad00d441d23178b71d9609106aef87e3ada6ae7fc5496de66a475924ea7`  
		Last Modified: Fri, 04 Jan 2019 11:13:14 GMT  
		Size: 2.5 MB (2485631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14194467aad24e3d56646647c1a4826cb0dad406e84d436275c19d7471749079`  
		Last Modified: Fri, 04 Jan 2019 11:13:13 GMT  
		Size: 1.1 KB (1065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76b71a0ff4d38218a65e94bf966dbd0b36aa9465964444411f9b92887801ada0`  
		Last Modified: Fri, 04 Jan 2019 11:13:13 GMT  
		Size: 1.8 KB (1817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `yourls:1-fpm` - linux; arm variant v7

```console
$ docker pull yourls@sha256:1d1966cdf09165b1ab98bb6a9c115f0ba63652fc29d732f508263c062600bc66
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.5 MB (114483762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8cef7cb88d1dd7473073a479f639eea6050ea61341ab376d38d91896b92ad37`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Sat, 29 Dec 2018 13:04:57 GMT
ADD file:287bc4fa3803b40afca4bcac26d92079fb862f7b968e960e01ae536b1b5c7aea in / 
# Sat, 29 Dec 2018 13:04:57 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 15:52:23 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Sat, 29 Dec 2018 15:52:23 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Sat, 29 Dec 2018 15:52:54 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 29 Dec 2018 15:52:55 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 29 Dec 2018 15:52:57 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 29 Dec 2018 16:00:56 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Sat, 29 Dec 2018 16:00:56 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 16:00:56 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 16:00:57 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 29 Dec 2018 16:35:39 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 11 Jan 2019 13:24:55 GMT
ENV PHP_VERSION=7.2.14
# Fri, 11 Jan 2019 13:24:55 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror
# Fri, 11 Jan 2019 13:24:56 GMT
ENV PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f PHP_MD5=
# Fri, 11 Jan 2019 13:25:09 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 11 Jan 2019 13:25:09 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 11 Jan 2019 13:28:42 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 11 Jan 2019 13:28:43 GMT
COPY multi:cbc68fef2c8554b9a23fee7eee16ffda927235f929048638240f97172562665c in /usr/local/bin/ 
# Fri, 11 Jan 2019 13:28:44 GMT
RUN docker-php-ext-enable sodium
# Fri, 11 Jan 2019 13:28:45 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 11 Jan 2019 13:28:45 GMT
WORKDIR /var/www/html
# Fri, 11 Jan 2019 13:28:47 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 11 Jan 2019 13:28:47 GMT
EXPOSE 9000
# Fri, 11 Jan 2019 13:28:48 GMT
CMD ["php-fpm"]
# Fri, 11 Jan 2019 14:42:22 GMT
RUN set -ex;     docker-php-ext-install opcache pdo_mysql mysqli
# Fri, 11 Jan 2019 14:42:24 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 11 Jan 2019 14:42:24 GMT
VOLUME [/var/www/html]
# Fri, 11 Jan 2019 14:42:25 GMT
ENV YOURLS_VERSION=1.7.2
# Fri, 11 Jan 2019 14:42:28 GMT
RUN set -ex; 	curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz"; 	tar -xzf yourls.tar.gz -C /usr/src/; 	mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls; 	rm yourls.tar.gz; 	chown -R www-data:www-data /usr/src/yourls
# Fri, 11 Jan 2019 14:42:29 GMT
COPY file:7722c9d76f082fb2683ec1d4befeaddd6c873c885172752cacb787e076d4dbeb in /usr/local/bin/ 
# Fri, 11 Jan 2019 14:42:29 GMT
COPY file:d375afac6cf463942802d2b27f08ef4d6198ac33f536b334f195e2e479c4cd6f in /var/www/html/ 
# Fri, 11 Jan 2019 14:42:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 14:42:30 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:eb2ab017daa46c13a41d60225632e89c8b5c24a9bdafb2b75b1d415830b41e6b`  
		Last Modified: Sat, 29 Dec 2018 13:12:36 GMT  
		Size: 19.3 MB (19277755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bdd3055b30ec26315bbe73533843047ed98fec35dc5acc5cb0d0878ab8ed597`  
		Last Modified: Mon, 31 Dec 2018 19:12:59 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f79128a6d00730d8aaed6af05f3590337fcecd13119d056c272e9d01043f441`  
		Last Modified: Mon, 31 Dec 2018 19:13:15 GMT  
		Size: 53.6 MB (53582251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56fcb7f3e035561a3c9eced964fa2bf0fb33d76092839e59092e773161523cf0`  
		Last Modified: Mon, 31 Dec 2018 19:12:59 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:802eefdb9d134ccd3ddc7694ddbaab63b7d2fb63cc3a5e6bff086425ad43df6e`  
		Last Modified: Fri, 11 Jan 2019 14:12:47 GMT  
		Size: 12.5 MB (12482937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39bfe39d4c9fb7d44a3c80ab3089176061f3c0b32c96c1aa1d31b431b8e86e63`  
		Last Modified: Fri, 11 Jan 2019 14:12:45 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ee186b63800fe82f95c77a3f49036ead842b8e0fe973062a836ebbc9aaed933`  
		Last Modified: Fri, 11 Jan 2019 14:12:52 GMT  
		Size: 26.4 MB (26394230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85aee9a5d890cf991908ed8382a4332d10fbd262580f91e5019acdd4b28e922e`  
		Last Modified: Fri, 11 Jan 2019 14:12:44 GMT  
		Size: 2.2 KB (2190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45572b53ccb475f2e16a6fa31a0fe792c71c80c6371a9ec5b1f4626fc67f88a7`  
		Last Modified: Fri, 11 Jan 2019 14:12:44 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:368570cf648a5678190d39c059956f879eb44c847a048ecb4f1e11509af77790`  
		Last Modified: Fri, 11 Jan 2019 14:12:44 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93e67412e3d7d3ced9f1ea8c2cc13795954d294400e8db227931648e3dc900fc`  
		Last Modified: Fri, 11 Jan 2019 14:12:44 GMT  
		Size: 7.8 KB (7801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30b8492480bf471068c59ba7bba66622cd0a60b13178cd5ac1e237023f3b2bbf`  
		Last Modified: Fri, 11 Jan 2019 14:43:08 GMT  
		Size: 246.4 KB (246380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421d59701eb5a85dd86ab856613f08baa127e6bf0916c5a9fb30eebd94637ce1`  
		Last Modified: Fri, 11 Jan 2019 14:43:08 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c801b4eaf3c54ad0ae389ade81582002f60ad5bc6e5a3c1939ddf268bfed0448`  
		Last Modified: Fri, 11 Jan 2019 14:43:09 GMT  
		Size: 2.5 MB (2485630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0930434773c066749891c95ef77b24e0dd07143ae3fa2389db80851869103f7`  
		Last Modified: Fri, 11 Jan 2019 14:43:09 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aecd25d807002cb7b3a31b3738d7dcbdf925b764874bf1f480febf6a65f17095`  
		Last Modified: Fri, 11 Jan 2019 14:43:09 GMT  
		Size: 1.8 KB (1817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `yourls:1-fpm` - linux; arm64 variant v8

```console
$ docker pull yourls@sha256:2941a26926bbfd0c7696e536fdb29c286bdd22de4a3ee6ffe20b88d0e745091d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.7 MB (120670460 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:695ced429d52797ce7bfc996b80adddef859e5fa9e601998987276c050164915`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:46 GMT
ADD file:e4db5c28a0f74e32be4419aae491e4b9dc7402f3640369289e24c52028c871ad in / 
# Sat, 29 Dec 2018 10:08:47 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 21:39:33 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Sat, 29 Dec 2018 21:39:33 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Sat, 29 Dec 2018 21:41:51 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 29 Dec 2018 21:41:52 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 29 Dec 2018 21:41:54 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 29 Dec 2018 22:04:55 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Sat, 29 Dec 2018 22:04:56 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 22:04:57 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 22:04:57 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 29 Dec 2018 22:46:42 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 11 Jan 2019 11:38:12 GMT
ENV PHP_VERSION=7.2.14
# Fri, 11 Jan 2019 11:38:13 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror
# Fri, 11 Jan 2019 11:38:13 GMT
ENV PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f PHP_MD5=
# Fri, 11 Jan 2019 11:38:46 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 11 Jan 2019 11:38:47 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 11 Jan 2019 11:47:20 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 11 Jan 2019 11:47:25 GMT
COPY multi:cbc68fef2c8554b9a23fee7eee16ffda927235f929048638240f97172562665c in /usr/local/bin/ 
# Fri, 11 Jan 2019 11:47:31 GMT
RUN docker-php-ext-enable sodium
# Fri, 11 Jan 2019 11:47:32 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 11 Jan 2019 11:47:34 GMT
WORKDIR /var/www/html
# Fri, 11 Jan 2019 11:47:38 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 11 Jan 2019 11:47:39 GMT
EXPOSE 9000
# Fri, 11 Jan 2019 11:47:41 GMT
CMD ["php-fpm"]
# Fri, 11 Jan 2019 15:06:19 GMT
RUN set -ex;     docker-php-ext-install opcache pdo_mysql mysqli
# Fri, 11 Jan 2019 15:06:22 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 11 Jan 2019 15:06:22 GMT
VOLUME [/var/www/html]
# Fri, 11 Jan 2019 15:06:23 GMT
ENV YOURLS_VERSION=1.7.2
# Fri, 11 Jan 2019 15:06:28 GMT
RUN set -ex; 	curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz"; 	tar -xzf yourls.tar.gz -C /usr/src/; 	mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls; 	rm yourls.tar.gz; 	chown -R www-data:www-data /usr/src/yourls
# Fri, 11 Jan 2019 15:06:29 GMT
COPY file:7722c9d76f082fb2683ec1d4befeaddd6c873c885172752cacb787e076d4dbeb in /usr/local/bin/ 
# Fri, 11 Jan 2019 15:06:29 GMT
COPY file:d375afac6cf463942802d2b27f08ef4d6198ac33f536b334f195e2e479c4cd6f in /var/www/html/ 
# Fri, 11 Jan 2019 15:06:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 15:06:31 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:1a07b0163994a6d3328beeaa3400f6304e68548ffb84deefcb74427a6b65a489`  
		Last Modified: Sat, 29 Dec 2018 10:15:04 GMT  
		Size: 20.3 MB (20337511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da8dc61ccacab0c571f2793c6c5400180816557fa0140990f997519be3471012`  
		Last Modified: Sun, 30 Dec 2018 01:03:31 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59be51dca15077e7f02edb4376d3e8e194896c4e706c9c03c2fd2d2af47f8cdc`  
		Last Modified: Sun, 30 Dec 2018 01:03:58 GMT  
		Size: 57.6 MB (57606226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f391fc42cee2e19f185ac34d4d4e8404a3209ed5c17b369dc30bdf3a0d29915`  
		Last Modified: Sun, 30 Dec 2018 01:03:31 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8b4bd68fda01b808bffeb6d2ca1a16e7212d9f1b1fea8cb1cfc02ba857473fa`  
		Last Modified: Fri, 11 Jan 2019 13:28:36 GMT  
		Size: 12.5 MB (12483187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b35c504961fd510f4430c3eedfb20c4597f2c6c11fc345babf163b2da375ea0`  
		Last Modified: Fri, 11 Jan 2019 13:28:33 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e316ed52b8b1f111920f59d95ff5430bec008ed8265b7a4f77c2fd539c8dc14b`  
		Last Modified: Fri, 11 Jan 2019 13:28:45 GMT  
		Size: 27.5 MB (27481051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b63a7ded48d7b0325987a234c51806ed095393089fa3bc7f8f070c26aa3cfd08`  
		Last Modified: Fri, 11 Jan 2019 13:28:31 GMT  
		Size: 2.2 KB (2186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:541a7e548b675a23496524efadc152fdb1b7eec6711ecb2e9682cb37bf7969fd`  
		Last Modified: Fri, 11 Jan 2019 13:28:31 GMT  
		Size: 257.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:288a98ed027c68937d19843afd7c4b77266cd092e017f4adc9c15368c6a76e53`  
		Last Modified: Fri, 11 Jan 2019 13:28:31 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:607b3fab8b715de1d2992b1f37c92c2c57b23e05b32483fa8ffae7ea1719da40`  
		Last Modified: Fri, 11 Jan 2019 13:28:31 GMT  
		Size: 7.8 KB (7800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f856cf36ae0f7fb40395f6351153800f2238ee2d496ea66672c5ad2f8f2bdb0f`  
		Last Modified: Fri, 11 Jan 2019 15:09:31 GMT  
		Size: 262.3 KB (262348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d78a6e76c6ab1e481a7eac9f7e22f99b534fa037a88c27eec2bc107da2e801c6`  
		Last Modified: Fri, 11 Jan 2019 15:09:31 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d5f3f82c896e099092bfbeb6ab7deceafc825a81886354985314acff9c6d738`  
		Last Modified: Fri, 11 Jan 2019 15:09:32 GMT  
		Size: 2.5 MB (2485626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce9e9f07b8539361a54dcf3712c60e471a64b266a43f3e2a7112f11ac21d9bac`  
		Last Modified: Fri, 11 Jan 2019 15:09:31 GMT  
		Size: 1.1 KB (1064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89fbb3855eba5b0a545bf86f3fe994f5634ea20dc742aabd7bcf4b87dcd8c4f6`  
		Last Modified: Fri, 11 Jan 2019 15:09:31 GMT  
		Size: 1.8 KB (1813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `yourls:1-fpm` - linux; 386

```console
$ docker pull yourls@sha256:096e415ec95916061c648ad526a1429de11cce1a1e9bce4ac9f315020e2feea1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.2 MB (139244431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:414bd62c76cbdf3a92fac724b5a5a9fc93fa57a9446fc63f2f6c53a490c15290`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Sat, 29 Dec 2018 11:56:14 GMT
ADD file:aaa0661c64d46388f46e71ba3d172f3208f6b943dbc1a86e0b50ca5080bdb3ee in / 
# Sat, 29 Dec 2018 11:56:15 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 21:36:24 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Sat, 29 Dec 2018 21:36:24 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Sat, 29 Dec 2018 21:36:48 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 29 Dec 2018 21:36:48 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 29 Dec 2018 21:36:49 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 29 Dec 2018 21:49:42 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Sat, 29 Dec 2018 21:49:42 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 21:49:43 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 21:49:43 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 29 Dec 2018 22:11:26 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 11 Jan 2019 12:54:26 GMT
ENV PHP_VERSION=7.2.14
# Fri, 11 Jan 2019 12:54:26 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror
# Fri, 11 Jan 2019 12:54:26 GMT
ENV PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f PHP_MD5=
# Fri, 11 Jan 2019 12:54:36 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 11 Jan 2019 12:54:36 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 11 Jan 2019 13:00:04 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 11 Jan 2019 13:00:05 GMT
COPY multi:cbc68fef2c8554b9a23fee7eee16ffda927235f929048638240f97172562665c in /usr/local/bin/ 
# Fri, 11 Jan 2019 13:00:05 GMT
RUN docker-php-ext-enable sodium
# Fri, 11 Jan 2019 13:00:05 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 11 Jan 2019 13:00:06 GMT
WORKDIR /var/www/html
# Fri, 11 Jan 2019 13:00:06 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 11 Jan 2019 13:00:07 GMT
EXPOSE 9000
# Fri, 11 Jan 2019 13:00:07 GMT
CMD ["php-fpm"]
# Fri, 11 Jan 2019 16:52:17 GMT
RUN set -ex;     docker-php-ext-install opcache pdo_mysql mysqli
# Fri, 11 Jan 2019 16:52:18 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 11 Jan 2019 16:52:18 GMT
VOLUME [/var/www/html]
# Fri, 11 Jan 2019 16:52:18 GMT
ENV YOURLS_VERSION=1.7.2
# Fri, 11 Jan 2019 16:52:20 GMT
RUN set -ex; 	curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz"; 	tar -xzf yourls.tar.gz -C /usr/src/; 	mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls; 	rm yourls.tar.gz; 	chown -R www-data:www-data /usr/src/yourls
# Fri, 11 Jan 2019 16:52:20 GMT
COPY file:7722c9d76f082fb2683ec1d4befeaddd6c873c885172752cacb787e076d4dbeb in /usr/local/bin/ 
# Fri, 11 Jan 2019 16:52:20 GMT
COPY file:d375afac6cf463942802d2b27f08ef4d6198ac33f536b334f195e2e479c4cd6f in /var/www/html/ 
# Fri, 11 Jan 2019 16:52:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 16:52:21 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:9a1a13172ed974323f7c35153e8b23b8fa1c85355b6b26cc3127e640e45ef0aa`  
		Last Modified: Sat, 29 Dec 2018 12:10:44 GMT  
		Size: 23.1 MB (23133155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5094d5d656a95c6aa92f5f2adc56a794564b1e340bc4065db2947d7ce0c1a394`  
		Last Modified: Sun, 30 Dec 2018 01:57:01 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb2ab2fc6c3875a5ebec4eb6dae731467d2cfbe0c4372b4db6b7f8faad9917e`  
		Last Modified: Sun, 30 Dec 2018 01:57:20 GMT  
		Size: 71.5 MB (71503745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05469bc6d7085ba5736c7bf95032d0bb750ab2fa43b29049cfee7ba36c391e79`  
		Last Modified: Sun, 30 Dec 2018 01:57:01 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f96c042f31352ffc4706d54dd5e87a2e4f9502aa22ab1a495d43088b47d8d4c`  
		Last Modified: Fri, 11 Jan 2019 14:54:27 GMT  
		Size: 12.5 MB (12484697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c48899a82e4ff4a06d3fe22e3b19d8487b872aab41540f5e8a3b8b96f0fa6fe`  
		Last Modified: Fri, 11 Jan 2019 14:54:26 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb564ff7a873d5c5065ad5333c5bc35a0ccf44be3e542bef90fd6bcedce00417`  
		Last Modified: Fri, 11 Jan 2019 14:54:32 GMT  
		Size: 29.3 MB (29332789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2679b31a3bde8a45d1ef9e44f3bb3a7381ffe8cb994738674cac4cc92c8bc32d`  
		Last Modified: Fri, 11 Jan 2019 14:54:25 GMT  
		Size: 2.2 KB (2189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:618cc564acfe7a10b6ed49868a21c4b895588acef6a135912122f103d3f33567`  
		Last Modified: Fri, 11 Jan 2019 14:54:25 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:418806b632b4a50647c6e7c2bfb6dd19ad2daa5023b8be70e9d3e615d318f040`  
		Last Modified: Fri, 11 Jan 2019 14:54:25 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:333219bdf344bcf1ddfd7a0f198febcf422a761618cd75b05f7881552e764252`  
		Last Modified: Fri, 11 Jan 2019 14:54:25 GMT  
		Size: 7.8 KB (7801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4168eafa28e79883bc619e10017215dc1fc9f280e09b1e71f50e76e706819ac`  
		Last Modified: Fri, 11 Jan 2019 16:53:50 GMT  
		Size: 289.9 KB (289902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eae1adb6eb49b3a116a903573ff5fd1998d9e1dcf5c50f3af14c9b4e1ca10e53`  
		Last Modified: Fri, 11 Jan 2019 16:53:50 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9865682e4af072344267a830c64148acfd3a5d36b1f7ec27c42fc166c3d5abf`  
		Last Modified: Fri, 11 Jan 2019 16:53:51 GMT  
		Size: 2.5 MB (2485626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba60b7371f55254def1e3ab6a9b9e354b4d4891c5ecf0db18e1d2cca00a58e37`  
		Last Modified: Fri, 11 Jan 2019 16:53:50 GMT  
		Size: 1.1 KB (1065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8819e1d182f4fee44792906ebf231c041541931d98ce0e63bbe678446a63d4f9`  
		Last Modified: Fri, 11 Jan 2019 16:53:50 GMT  
		Size: 1.8 KB (1817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `yourls:1-fpm` - linux; ppc64le

```console
$ docker pull yourls@sha256:f98531a41049111ac940f41b527876054de09d6ff13a83520bbf7b967e2cb6d9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.4 MB (128396223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19d5fd3f34d1be1ec2dd5bfedf56dfb364819e3222770c1ca95800db5901986f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Sat, 29 Dec 2018 09:22:40 GMT
ADD file:11cdf0dbdac1a774d74f30e9954e3cf02c390d2280ce747bc95a3b774259f226 in / 
# Sat, 29 Dec 2018 09:22:44 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 13:02:33 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Sat, 29 Dec 2018 13:02:35 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Sat, 29 Dec 2018 13:04:54 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:04:59 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 29 Dec 2018 13:05:04 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 29 Dec 2018 13:18:34 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Sat, 29 Dec 2018 13:18:37 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 13:18:39 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 13:18:42 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 29 Dec 2018 13:44:45 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 11 Jan 2019 10:20:48 GMT
ENV PHP_VERSION=7.2.14
# Fri, 11 Jan 2019 10:20:50 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror
# Fri, 11 Jan 2019 10:20:52 GMT
ENV PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f PHP_MD5=
# Fri, 11 Jan 2019 10:21:24 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 11 Jan 2019 10:21:25 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 11 Jan 2019 10:25:46 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 11 Jan 2019 10:25:49 GMT
COPY multi:cbc68fef2c8554b9a23fee7eee16ffda927235f929048638240f97172562665c in /usr/local/bin/ 
# Fri, 11 Jan 2019 10:25:53 GMT
RUN docker-php-ext-enable sodium
# Fri, 11 Jan 2019 10:25:56 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 11 Jan 2019 10:25:57 GMT
WORKDIR /var/www/html
# Fri, 11 Jan 2019 10:26:01 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 11 Jan 2019 10:26:03 GMT
EXPOSE 9000
# Fri, 11 Jan 2019 10:26:05 GMT
CMD ["php-fpm"]
# Fri, 11 Jan 2019 13:42:50 GMT
RUN set -ex;     docker-php-ext-install opcache pdo_mysql mysqli
# Fri, 11 Jan 2019 13:42:53 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 11 Jan 2019 13:42:54 GMT
VOLUME [/var/www/html]
# Fri, 11 Jan 2019 13:42:56 GMT
ENV YOURLS_VERSION=1.7.2
# Fri, 11 Jan 2019 13:43:02 GMT
RUN set -ex; 	curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz"; 	tar -xzf yourls.tar.gz -C /usr/src/; 	mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls; 	rm yourls.tar.gz; 	chown -R www-data:www-data /usr/src/yourls
# Fri, 11 Jan 2019 13:43:03 GMT
COPY file:7722c9d76f082fb2683ec1d4befeaddd6c873c885172752cacb787e076d4dbeb in /usr/local/bin/ 
# Fri, 11 Jan 2019 13:43:04 GMT
COPY file:d375afac6cf463942802d2b27f08ef4d6198ac33f536b334f195e2e479c4cd6f in /var/www/html/ 
# Fri, 11 Jan 2019 13:43:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 13:43:07 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:ca671aebac61774c6bfa23dd5b097e3a135a33f3987318158787030ee978173a`  
		Last Modified: Sat, 29 Dec 2018 09:28:38 GMT  
		Size: 22.7 MB (22746826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55c9e443128efed70bcb2c05fbf1b7b3c63735856c07a31f95f3422e8e5d6be3`  
		Last Modified: Sat, 29 Dec 2018 15:02:06 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26502f7e153105ac601f4d12e9b72baf9021b49b992fe619264a1933c2daf6b4`  
		Last Modified: Sat, 29 Dec 2018 15:02:32 GMT  
		Size: 61.8 MB (61833074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d327479a214f245c363cea23d6878780e6dbb819938b9511e7b69e2e17e81fbf`  
		Last Modified: Sat, 29 Dec 2018 15:02:06 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a0d4193ba60b5f5f97f688e2de16aad88891b322605b2d11200ba45df50232`  
		Last Modified: Fri, 11 Jan 2019 11:27:21 GMT  
		Size: 12.5 MB (12483483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eccec9fad4aa5d66e47e5a5add6bb729a6e35a675cc25e5f5a094f1ac7c2c7b9`  
		Last Modified: Fri, 11 Jan 2019 11:27:19 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc544ceecc5ea9a6af356fcb8fa9514601b9eb8dbb3b4e89a7514943a1d7bb75`  
		Last Modified: Fri, 11 Jan 2019 11:27:26 GMT  
		Size: 28.5 MB (28548391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32df76e1b2562805df3fc19b39edb226f5b55f2f308235ea1110bf3967598ffc`  
		Last Modified: Fri, 11 Jan 2019 11:27:17 GMT  
		Size: 2.2 KB (2188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6a78c22e48562710e0b2efac92cfe69e96cca168fb8073c07f6a3d90b93ddae`  
		Last Modified: Fri, 11 Jan 2019 11:27:17 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb9e5f88e13292053860abea7ba0084d748c243d9714dc801d9338426bc4ce70`  
		Last Modified: Fri, 11 Jan 2019 11:27:17 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c5864e998d42b19f5ea1905e6c186ab3e961c3ee161b5385da0e31b5f839cab`  
		Last Modified: Fri, 11 Jan 2019 11:27:17 GMT  
		Size: 7.8 KB (7800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:104baa47f8b5c4520f8ecde9937f2791af1db8086fa379c0c3595dfce9bffa9a`  
		Last Modified: Fri, 11 Jan 2019 13:45:35 GMT  
		Size: 284.2 KB (284240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1133676fd186af3dc557e80a38abb6020577b0e5ccb3cfb4bf406b6dede722c6`  
		Last Modified: Fri, 11 Jan 2019 13:45:35 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e319e6216dbd6b10c6ec6b753ccd7b8227174c5864fbf5021a6d8bb40ed76ee5`  
		Last Modified: Fri, 11 Jan 2019 13:45:35 GMT  
		Size: 2.5 MB (2485630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8efacc89b0ff6e4f793cc68bf74162851f4365c60747e08e98cc9f149ab4355f`  
		Last Modified: Fri, 11 Jan 2019 13:45:35 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:148e9c1925b22ebbb7591f954b714f1b3fa51c79dd59b34dcc6c812037deb9c9`  
		Last Modified: Fri, 11 Jan 2019 13:45:35 GMT  
		Size: 1.8 KB (1818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `yourls:1-fpm-alpine`

```console
$ docker pull yourls@sha256:4994030dcf2d6fba6a49865ad554021d1ebfbabcfc2f0d172486952af4bcdd84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `yourls:1-fpm-alpine` - linux; amd64

```console
$ docker pull yourls@sha256:a272259851325e34472b9a3c5a5d12a7f2809302bdd08dfc95e2e4203763a079
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.1 MB (35096772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84f9b16cb1d16f6ac523a816266bce854dfd99a8a6829a2278d5496468221462`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 01:27:04 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 21 Dec 2018 01:27:06 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Fri, 21 Dec 2018 01:27:07 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 21 Dec 2018 01:27:07 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 21 Dec 2018 01:27:08 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 21 Dec 2018 01:39:27 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Fri, 21 Dec 2018 01:39:27 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 21 Dec 2018 01:39:27 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 21 Dec 2018 01:39:28 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 21 Dec 2018 02:14:18 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 11 Jan 2019 01:37:31 GMT
ENV PHP_VERSION=7.2.14
# Fri, 11 Jan 2019 01:37:31 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror
# Fri, 11 Jan 2019 01:37:31 GMT
ENV PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f PHP_MD5=
# Fri, 11 Jan 2019 01:37:36 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 11 Jan 2019 01:37:36 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 11 Jan 2019 01:43:54 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libsodium-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 11 Jan 2019 01:43:54 GMT
COPY multi:cbc68fef2c8554b9a23fee7eee16ffda927235f929048638240f97172562665c in /usr/local/bin/ 
# Fri, 11 Jan 2019 01:43:55 GMT
RUN docker-php-ext-enable sodium
# Fri, 11 Jan 2019 01:43:55 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 11 Jan 2019 01:43:56 GMT
WORKDIR /var/www/html
# Fri, 11 Jan 2019 01:43:56 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 11 Jan 2019 01:43:57 GMT
EXPOSE 9000
# Fri, 11 Jan 2019 01:43:57 GMT
CMD ["php-fpm"]
# Fri, 11 Jan 2019 03:26:23 GMT
RUN set -ex;     docker-php-ext-install opcache pdo_mysql mysqli
# Fri, 11 Jan 2019 03:26:25 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 11 Jan 2019 03:26:26 GMT
RUN apk add --no-cache bash
# Fri, 11 Jan 2019 03:26:27 GMT
VOLUME [/var/www/html]
# Fri, 11 Jan 2019 03:26:27 GMT
ENV YOURLS_VERSION=1.7.2
# Fri, 11 Jan 2019 03:26:30 GMT
RUN set -ex; 	curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz"; 	tar -xzf yourls.tar.gz -C /usr/src/; 	mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls; 	rm yourls.tar.gz; 	chown -R www-data:www-data /usr/src/yourls
# Fri, 11 Jan 2019 03:26:31 GMT
COPY file:7722c9d76f082fb2683ec1d4befeaddd6c873c885172752cacb787e076d4dbeb in /usr/local/bin/ 
# Fri, 11 Jan 2019 03:26:31 GMT
COPY file:d375afac6cf463942802d2b27f08ef4d6198ac33f536b334f195e2e479c4cd6f in /var/www/html/ 
# Fri, 11 Jan 2019 03:26:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 03:26:32 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d207535cd57f878f70cace5fa6b787bea470b519e83a0ad0d8b65fab8c3c4e6d`  
		Last Modified: Fri, 21 Dec 2018 03:57:44 GMT  
		Size: 1.4 MB (1353714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1167ab95319c6a4c7a06ffb91e63738c89f46e9005296b25e2f2ea414b102a16`  
		Last Modified: Fri, 21 Dec 2018 03:57:44 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bff34bff7f50ba85c4ee1c081add1128c1e00de9eb29733452f99cd0508cd0e0`  
		Last Modified: Fri, 21 Dec 2018 03:57:44 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09fbf86b8ee75311d14ab1f14e52c487825f8abfd673ed327b74ada7b8fa9a4`  
		Last Modified: Fri, 11 Jan 2019 01:54:29 GMT  
		Size: 12.2 MB (12176072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cfe903e31f6c8457c1a157f44e5f89cfa1201cbf4b732e84ab0bb600bfc2bea`  
		Last Modified: Fri, 11 Jan 2019 01:54:28 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88d3f120681c5f895e4e7abba7fec687dbc6351dc71c799068b6fc87d3e821b9`  
		Last Modified: Fri, 11 Jan 2019 01:54:31 GMT  
		Size: 15.9 MB (15850690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9077db937f31b26ee5611ad3ae7bc0990dfa2cfad23190c7520ad48940c188fa`  
		Last Modified: Fri, 11 Jan 2019 01:54:27 GMT  
		Size: 2.2 KB (2173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bb3fe9faa6ea3ab065ca5c490b9d3e73402b2d4eafb428ec374b5252256de61`  
		Last Modified: Fri, 11 Jan 2019 01:54:27 GMT  
		Size: 71.8 KB (71846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17142adf57d1cd7af7e226398f6081ca1d67538db0b95590cc2c07983780b236`  
		Last Modified: Fri, 11 Jan 2019 01:54:27 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36147ae6ebdd27e07bff79107107a6966911a54511ebb47e04c1f557c590ba8b`  
		Last Modified: Fri, 11 Jan 2019 01:54:27 GMT  
		Size: 7.8 KB (7783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:215c2985fd751a2f25cca3a1af48e9dec3cb0dad991ce91b9d2eb7a7070b8a21`  
		Last Modified: Fri, 11 Jan 2019 03:27:06 GMT  
		Size: 353.7 KB (353654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77649ddbc6728b419ddd3d5e4b92aa55d54b50a546756a5c16ffea3efab7f2b4`  
		Last Modified: Fri, 11 Jan 2019 03:27:05 GMT  
		Size: 336.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6aa847bf0d2f6256d6eadb75fb0e1343e92634c3f0d33a537e77bdf08788095`  
		Last Modified: Fri, 11 Jan 2019 03:27:05 GMT  
		Size: 582.9 KB (582916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11a240cc06144d0b4fdc53ed6bc9141fb4241a5d098ceba84f90ba8a2d3792e6`  
		Last Modified: Fri, 11 Jan 2019 03:27:06 GMT  
		Size: 2.5 MB (2485639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8620e002af4e3a727ec840b7027ddfdadaae85bfde6280c323f36749d98b7bae`  
		Last Modified: Fri, 11 Jan 2019 03:27:05 GMT  
		Size: 1.1 KB (1059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3db03d63148f25dfe7bb0a5a298dfe1628f60d26d388ea421505fd9bbc7f636c`  
		Last Modified: Fri, 11 Jan 2019 03:27:05 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `yourls:1-fpm-alpine` - linux; arm variant v6

```console
$ docker pull yourls@sha256:86adda5b8ef902a1aed3577a88e0a159fd8bb62da6aaad15958eb444533165bc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.9 MB (33932913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:471b9d2e3dff11c70a3069d2ea2975c918a9b0f05742a265a0bbc7effbc96b22`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 21 Dec 2018 08:49:49 GMT
ADD file:38d34e3ff051a263eab785aca5763d350b82063f0356752117e168349d9e3811 in / 
# Fri, 21 Dec 2018 08:49:50 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:50 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 09:57:17 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 21 Dec 2018 09:57:19 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Fri, 21 Dec 2018 09:57:21 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 21 Dec 2018 09:57:22 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 21 Dec 2018 09:57:23 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 21 Dec 2018 10:02:04 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Fri, 21 Dec 2018 10:02:04 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 21 Dec 2018 10:02:04 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 21 Dec 2018 10:02:05 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 21 Dec 2018 10:16:09 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 11 Jan 2019 09:08:50 GMT
ENV PHP_VERSION=7.2.14
# Fri, 11 Jan 2019 09:08:50 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror
# Fri, 11 Jan 2019 09:08:50 GMT
ENV PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f PHP_MD5=
# Fri, 11 Jan 2019 09:08:56 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 11 Jan 2019 09:08:56 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 11 Jan 2019 09:12:05 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libsodium-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 11 Jan 2019 09:12:07 GMT
COPY multi:cbc68fef2c8554b9a23fee7eee16ffda927235f929048638240f97172562665c in /usr/local/bin/ 
# Fri, 11 Jan 2019 09:12:08 GMT
RUN docker-php-ext-enable sodium
# Fri, 11 Jan 2019 09:12:09 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 11 Jan 2019 09:12:09 GMT
WORKDIR /var/www/html
# Fri, 11 Jan 2019 09:12:10 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 11 Jan 2019 09:12:11 GMT
EXPOSE 9000
# Fri, 11 Jan 2019 09:12:11 GMT
CMD ["php-fpm"]
# Fri, 11 Jan 2019 10:00:12 GMT
RUN set -ex;     docker-php-ext-install opcache pdo_mysql mysqli
# Fri, 11 Jan 2019 10:00:14 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 11 Jan 2019 10:00:16 GMT
RUN apk add --no-cache bash
# Fri, 11 Jan 2019 10:00:16 GMT
VOLUME [/var/www/html]
# Fri, 11 Jan 2019 10:00:16 GMT
ENV YOURLS_VERSION=1.7.2
# Fri, 11 Jan 2019 10:00:19 GMT
RUN set -ex; 	curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz"; 	tar -xzf yourls.tar.gz -C /usr/src/; 	mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls; 	rm yourls.tar.gz; 	chown -R www-data:www-data /usr/src/yourls
# Fri, 11 Jan 2019 10:00:19 GMT
COPY file:7722c9d76f082fb2683ec1d4befeaddd6c873c885172752cacb787e076d4dbeb in /usr/local/bin/ 
# Fri, 11 Jan 2019 10:00:20 GMT
COPY file:d375afac6cf463942802d2b27f08ef4d6198ac33f536b334f195e2e479c4cd6f in /var/www/html/ 
# Fri, 11 Jan 2019 10:00:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 10:00:21 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:5b678b67777fc7983d3563839cc9d511de267ec6de1961f2b590d552d8bfa105`  
		Last Modified: Fri, 21 Dec 2018 08:50:18 GMT  
		Size: 2.1 MB (2145782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f0b2b885d968636a597331169fce72a69964c911558554f1b2a0d21959f34f`  
		Last Modified: Fri, 21 Dec 2018 08:50:17 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdc871048391cb58798d04e007efbbf6dea290177b14aa82474e0cd8a847e5de`  
		Last Modified: Fri, 21 Dec 2018 11:04:45 GMT  
		Size: 1.3 MB (1315320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d14e9b8b66e27ebf8c37feef99cb0c249e36805f3566d73882beca6671f44f61`  
		Last Modified: Fri, 21 Dec 2018 11:04:44 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01a2d87e934f6881656d209530a5523fac4c28881bb465188a3ad7a4d3e4ddcf`  
		Last Modified: Fri, 21 Dec 2018 11:04:44 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:696c1ebf4ee6810b35a62de681eea1dc64fdd53da3094056821cefc8e83b6bd1`  
		Last Modified: Fri, 11 Jan 2019 09:28:39 GMT  
		Size: 12.2 MB (12176107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20edf344459e597273b938c8cc2b35f240a6a8b2744f18af4fe0d0d4afeac06e`  
		Last Modified: Fri, 11 Jan 2019 09:28:37 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea16dd24d9f1abfe1fd20fd8c758d487099491493da09645d669e9e462282911`  
		Last Modified: Fri, 11 Jan 2019 09:28:42 GMT  
		Size: 14.8 MB (14819818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f6f7363efefa22acc9276e23b3af33e7ca06d0876aa7582b6273465195a7bc`  
		Last Modified: Fri, 11 Jan 2019 09:28:35 GMT  
		Size: 2.2 KB (2175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6a88bafb3d42385829f2d6bdd67b0121042656f2203927e594ba4b6dd89bbf6`  
		Last Modified: Fri, 11 Jan 2019 09:28:36 GMT  
		Size: 71.4 KB (71377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cebf6b04113c0621a72dd93ea11c20853b659670f0df6d031e795fc59c878526`  
		Last Modified: Fri, 11 Jan 2019 09:28:35 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca7ca9567a4e5148666d049816b91f6fad8921fe8a67a81449dcb9c8529c7cd4`  
		Last Modified: Fri, 11 Jan 2019 09:28:36 GMT  
		Size: 7.8 KB (7784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cf17bfc7e966a413741586c76ea62265c37fc7cd2d6f87c6de4b422a2fda58e`  
		Last Modified: Fri, 11 Jan 2019 10:00:34 GMT  
		Size: 341.1 KB (341068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4fcd7b04929c907403c4c49f3a724457b6206435c213b194ff04789d1346eea`  
		Last Modified: Fri, 11 Jan 2019 10:00:33 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59773a3720235be33b423fb0cce6558de075b93c2494ddc140e69506142e532a`  
		Last Modified: Fri, 11 Jan 2019 10:00:32 GMT  
		Size: 562.3 KB (562331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85ce91f5250d9d818e1d63f8186dc0e41f700e4de052814b9d522fc98e0d8029`  
		Last Modified: Fri, 11 Jan 2019 10:00:33 GMT  
		Size: 2.5 MB (2485639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:087fe181d76b4e8ad52154e5dce09d4c99bccd7c279fbe02cabc4f64dc38a870`  
		Last Modified: Fri, 11 Jan 2019 10:00:32 GMT  
		Size: 1.1 KB (1055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3166dad388f87de165dea37e38352ecaddf5d296acf54da39b6cce78587f3bf`  
		Last Modified: Fri, 11 Jan 2019 10:00:32 GMT  
		Size: 1.8 KB (1817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `yourls:1-fpm-alpine` - linux; arm64 variant v8

```console
$ docker pull yourls@sha256:af3c21158d32d19decf672fe9d9a4ff33a81f9a6ef5940a161f555c775b595ee
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 MB (33695447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56fe55b6a1429d4e7613d0a4f8b171ffcf2fb249cb05a258a134249a32ea7d3d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 12:10:06 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 21 Dec 2018 12:10:08 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Fri, 21 Dec 2018 12:10:11 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 21 Dec 2018 12:10:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 21 Dec 2018 12:10:13 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 21 Dec 2018 12:19:38 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Fri, 21 Dec 2018 12:19:39 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 21 Dec 2018 12:19:40 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 21 Dec 2018 12:19:40 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 21 Dec 2018 12:51:23 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 11 Jan 2019 12:05:25 GMT
ENV PHP_VERSION=7.2.14
# Fri, 11 Jan 2019 12:05:26 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror
# Fri, 11 Jan 2019 12:05:26 GMT
ENV PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f PHP_MD5=
# Fri, 11 Jan 2019 12:05:38 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 11 Jan 2019 12:05:39 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 11 Jan 2019 12:12:27 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libsodium-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 11 Jan 2019 12:12:28 GMT
COPY multi:cbc68fef2c8554b9a23fee7eee16ffda927235f929048638240f97172562665c in /usr/local/bin/ 
# Fri, 11 Jan 2019 12:12:30 GMT
RUN docker-php-ext-enable sodium
# Fri, 11 Jan 2019 12:12:31 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 11 Jan 2019 12:12:32 GMT
WORKDIR /var/www/html
# Fri, 11 Jan 2019 12:12:33 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 11 Jan 2019 12:12:34 GMT
EXPOSE 9000
# Fri, 11 Jan 2019 12:12:35 GMT
CMD ["php-fpm"]
# Fri, 11 Jan 2019 15:08:18 GMT
RUN set -ex;     docker-php-ext-install opcache pdo_mysql mysqli
# Fri, 11 Jan 2019 15:08:20 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 11 Jan 2019 15:08:22 GMT
RUN apk add --no-cache bash
# Fri, 11 Jan 2019 15:08:23 GMT
VOLUME [/var/www/html]
# Fri, 11 Jan 2019 15:08:25 GMT
ENV YOURLS_VERSION=1.7.2
# Fri, 11 Jan 2019 15:08:29 GMT
RUN set -ex; 	curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz"; 	tar -xzf yourls.tar.gz -C /usr/src/; 	mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls; 	rm yourls.tar.gz; 	chown -R www-data:www-data /usr/src/yourls
# Fri, 11 Jan 2019 15:08:29 GMT
COPY file:7722c9d76f082fb2683ec1d4befeaddd6c873c885172752cacb787e076d4dbeb in /usr/local/bin/ 
# Fri, 11 Jan 2019 15:08:30 GMT
COPY file:d375afac6cf463942802d2b27f08ef4d6198ac33f536b334f195e2e479c4cd6f in /var/www/html/ 
# Fri, 11 Jan 2019 15:08:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 15:08:31 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:e3c488b39803d9194cf010f6127b1121d5387b90a1562d44b50b749d0e7a69bf`  
		Last Modified: Fri, 21 Dec 2018 09:43:51 GMT  
		Size: 2.1 MB (2099839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a63128803b1ea223f87244cb8d3faa97817f6cf3ca8249e485430218758510`  
		Last Modified: Fri, 21 Dec 2018 09:43:50 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73bf4a12ae92b20610d889c240ddcd72b338a21e3fa4f3d6c077d9fcad3566f1`  
		Last Modified: Fri, 21 Dec 2018 14:38:54 GMT  
		Size: 1.3 MB (1274014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf309e8a13c2d5f8e92a71c30f189658629d7079402a4dbd6c42d8a5302b755e`  
		Last Modified: Fri, 21 Dec 2018 14:38:54 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2290f763cb3e9ff58547451226cdcbb3b5083ab00da970fb03b03604c2c78716`  
		Last Modified: Fri, 21 Dec 2018 14:38:53 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08ff3daeaeb2c6f80e985fe6a65ebcf4c174894b1111553a77038b106db4dfa4`  
		Last Modified: Fri, 11 Jan 2019 13:30:07 GMT  
		Size: 12.2 MB (12176103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f415816cc27b5f850a1475f2264f6b325f08fddb036f2a484f1c38cee60562d8`  
		Last Modified: Fri, 11 Jan 2019 13:30:05 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0d8dfc978e0329562a72d717cad6d3114bd6a2a392d761a2bda797f0476f485`  
		Last Modified: Fri, 11 Jan 2019 13:30:12 GMT  
		Size: 14.7 MB (14694310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d42bfc57b96f2b8d3a77f54cf48ff03022b5bdf4581f96b39b42328593a847c`  
		Last Modified: Fri, 11 Jan 2019 13:30:03 GMT  
		Size: 2.2 KB (2176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d3ef9fa25c04f4c400cff945c823594bce0253ba6e692c7ebf62d8d23a63d2d`  
		Last Modified: Fri, 11 Jan 2019 13:30:03 GMT  
		Size: 70.9 KB (70866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdd07133ba580f4b004c26bffcdf7cb09e1ec7a007886f3759a8313202efab70`  
		Last Modified: Fri, 11 Jan 2019 13:30:03 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f39c56929428921ec4c76fd858639f743ade99b41aaaa8e894727a2ea43dd5f`  
		Last Modified: Fri, 11 Jan 2019 13:30:03 GMT  
		Size: 7.8 KB (7782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a989c78153fd943251b38a22bb705bcd2e79d143e56fe2984dc7f30c14955139`  
		Last Modified: Fri, 11 Jan 2019 15:09:50 GMT  
		Size: 333.1 KB (333128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04058535e18aa091c884ae3a02da61ef655e073f1f5c836493773bd09365d61c`  
		Last Modified: Fri, 11 Jan 2019 15:09:49 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92a802450ed6c42347e47c4e82dd0f1ed40d2c9484d2121215fe94d8e3fbb264`  
		Last Modified: Fri, 11 Jan 2019 15:09:48 GMT  
		Size: 546.2 KB (546158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36cc1c0494d188d0277bb8c4fa2fdfbbfbbaec3ab075758fb036b866c6b342aa`  
		Last Modified: Fri, 11 Jan 2019 15:09:49 GMT  
		Size: 2.5 MB (2485641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dede82cde6f809b407e2a9c9d339cc58e808a6f6a9684cfa5f012e8f5e5c1d9f`  
		Last Modified: Fri, 11 Jan 2019 15:09:48 GMT  
		Size: 1.1 KB (1056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c5e81c98f79f73580422ba19b768fcda0a0007551e4b9fdb59789544d6001e`  
		Last Modified: Fri, 11 Jan 2019 15:09:48 GMT  
		Size: 1.8 KB (1819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `yourls:1-fpm-alpine` - linux; 386

```console
$ docker pull yourls@sha256:e476760a986c0508d4f468ed1411aca6bcc44f15d6572ece2f9e19b52503bc43
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.8 MB (35760343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e35a7032db54317f89e5c2d79d08a5fc4f7eecde3bc1ab593d468d8fc3df2f9e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 21 Dec 2018 11:40:13 GMT
ADD file:38576b24298c124265c8fffb7bc8fdb0c144d99dcce4e9942bdcceb936830ba6 in / 
# Fri, 21 Dec 2018 11:40:14 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 11:40:14 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 12:26:09 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 21 Dec 2018 12:26:10 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Fri, 21 Dec 2018 12:26:11 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 21 Dec 2018 12:26:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 21 Dec 2018 12:26:12 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 21 Dec 2018 12:32:56 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Fri, 21 Dec 2018 12:32:56 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 21 Dec 2018 12:32:56 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 21 Dec 2018 12:32:56 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 21 Dec 2018 12:53:43 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 11 Jan 2019 13:12:03 GMT
ENV PHP_VERSION=7.2.14
# Fri, 11 Jan 2019 13:12:03 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror
# Fri, 11 Jan 2019 13:12:03 GMT
ENV PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f PHP_MD5=
# Fri, 11 Jan 2019 13:12:08 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 11 Jan 2019 13:12:08 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 11 Jan 2019 13:17:40 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libsodium-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 11 Jan 2019 13:17:41 GMT
COPY multi:cbc68fef2c8554b9a23fee7eee16ffda927235f929048638240f97172562665c in /usr/local/bin/ 
# Fri, 11 Jan 2019 13:17:42 GMT
RUN docker-php-ext-enable sodium
# Fri, 11 Jan 2019 13:17:42 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 11 Jan 2019 13:17:42 GMT
WORKDIR /var/www/html
# Fri, 11 Jan 2019 13:17:43 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 11 Jan 2019 13:17:43 GMT
EXPOSE 9000
# Fri, 11 Jan 2019 13:17:43 GMT
CMD ["php-fpm"]
# Fri, 11 Jan 2019 16:53:05 GMT
RUN set -ex;     docker-php-ext-install opcache pdo_mysql mysqli
# Fri, 11 Jan 2019 16:53:05 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 11 Jan 2019 16:53:06 GMT
RUN apk add --no-cache bash
# Fri, 11 Jan 2019 16:53:07 GMT
VOLUME [/var/www/html]
# Fri, 11 Jan 2019 16:53:07 GMT
ENV YOURLS_VERSION=1.7.2
# Fri, 11 Jan 2019 16:53:08 GMT
RUN set -ex; 	curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz"; 	tar -xzf yourls.tar.gz -C /usr/src/; 	mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls; 	rm yourls.tar.gz; 	chown -R www-data:www-data /usr/src/yourls
# Fri, 11 Jan 2019 16:53:08 GMT
COPY file:7722c9d76f082fb2683ec1d4befeaddd6c873c885172752cacb787e076d4dbeb in /usr/local/bin/ 
# Fri, 11 Jan 2019 16:53:09 GMT
COPY file:d375afac6cf463942802d2b27f08ef4d6198ac33f536b334f195e2e479c4cd6f in /var/www/html/ 
# Fri, 11 Jan 2019 16:53:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 16:53:09 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:25bcd1068fdd02354e6b3fb4ebbad1a9c1df7f5ec2d61aa88a337345415dc102`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 2.3 MB (2271567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795c3ef9c057ef60e7a4a088655adecaccd21d68099ad1f654bccd015ab319da`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4811baf1f023d21ea625c97101dbaffec612a7fc948ff1d9f1e85badb90282f7`  
		Last Modified: Fri, 21 Dec 2018 14:03:58 GMT  
		Size: 1.5 MB (1453187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66ce10d169b702fb314523985cab18b12c3d56cf08f625154b27d0847e96f089`  
		Last Modified: Fri, 21 Dec 2018 14:03:58 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a89858ddd116f7d2220d5ff7f60ae246411089bb3c686a47294192ef6b55c9d`  
		Last Modified: Fri, 21 Dec 2018 14:03:57 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6043e2c76dbe219109f72235280314072a2217eda96687558d21f8578b3e75ef`  
		Last Modified: Fri, 11 Jan 2019 14:55:05 GMT  
		Size: 12.2 MB (12176111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8440fdedbe0046ed87adf69105b08c449aba4d3bd3c0793adab9f7ff3440694b`  
		Last Modified: Fri, 11 Jan 2019 14:55:04 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8d4733b5cfb1cb0069daa62cf9f209df0ba5b2b750b083d4c5bb84ea8464a8b`  
		Last Modified: Fri, 11 Jan 2019 14:55:08 GMT  
		Size: 16.3 MB (16308650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d841e9114fbd446750277075cec7238a8d521ba32770dc463d8e70b18faf0b5`  
		Last Modified: Fri, 11 Jan 2019 14:55:03 GMT  
		Size: 2.2 KB (2176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aa176c23e31bd93ed00c94293dc542732e58fe45a9a7eb7f7d5d2c41c5a5635`  
		Last Modified: Fri, 11 Jan 2019 14:55:03 GMT  
		Size: 71.0 KB (70990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69278d1d66b65f5c197afc970ea16254f399f69909a42e58aa644f7e5c4a0b22`  
		Last Modified: Fri, 11 Jan 2019 14:55:03 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78d76d1e33feaf865d85eda3797a826c94470919951a86586780f337bae702c3`  
		Last Modified: Fri, 11 Jan 2019 14:55:03 GMT  
		Size: 7.8 KB (7782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5cd947ced97c672316c363d58b5550be129d57012a7aa5a107b27fd72bfaddf`  
		Last Modified: Fri, 11 Jan 2019 16:54:00 GMT  
		Size: 361.9 KB (361894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d41a7f925d1889aac1b1cc18e8eefee4b514119dc86630569c42ce43769d1b28`  
		Last Modified: Fri, 11 Jan 2019 16:53:59 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:277a11fdd18f78e7ff42a5f14de80d0a56a4654fb43c4a78eb6113e84253d019`  
		Last Modified: Fri, 11 Jan 2019 16:53:59 GMT  
		Size: 616.9 KB (616918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8118938b2b8aa84b3b4cda63643c1e5cefb6db317485f80ea6d755c0cfdaf874`  
		Last Modified: Fri, 11 Jan 2019 16:54:00 GMT  
		Size: 2.5 MB (2485641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a29d1dc5496808468d85c6fbd88aa4d9258feb49fd4bd6e64977c4a5d8248363`  
		Last Modified: Fri, 11 Jan 2019 16:53:59 GMT  
		Size: 1.1 KB (1054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27a95d14bf235d6753eca7641bf1e73306729446138b0fe68bb7ec8bc8ea61f2`  
		Last Modified: Fri, 11 Jan 2019 16:53:59 GMT  
		Size: 1.8 KB (1816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `yourls:1-fpm-alpine` - linux; ppc64le

```console
$ docker pull yourls@sha256:8caba59e8eaf2267e5e0b9d84205e9844ecd1186844f648c50f569874daf8932
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 MB (34747745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e57716ccbb7b9a3c9f49b6d549848a00eaad9f69e7192ed5c2ec599e6d9183e9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 21 Dec 2018 09:44:05 GMT
ADD file:81f8badc2215d9ccd8f5406b89b63bf0b407b3e877f6232bd11153780c551392 in / 
# Fri, 21 Dec 2018 09:44:06 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:44:10 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 10:32:58 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 21 Dec 2018 10:33:10 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Fri, 21 Dec 2018 10:33:18 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 21 Dec 2018 10:33:23 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 21 Dec 2018 10:33:29 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 21 Dec 2018 10:39:18 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Fri, 21 Dec 2018 10:39:20 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 21 Dec 2018 10:39:22 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 21 Dec 2018 10:39:25 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 21 Dec 2018 10:57:58 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 11 Jan 2019 10:37:49 GMT
ENV PHP_VERSION=7.2.14
# Fri, 11 Jan 2019 10:37:51 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror
# Fri, 11 Jan 2019 10:37:53 GMT
ENV PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f PHP_MD5=
# Fri, 11 Jan 2019 10:38:10 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 11 Jan 2019 10:38:12 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 11 Jan 2019 10:42:28 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libsodium-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 11 Jan 2019 10:42:29 GMT
COPY multi:cbc68fef2c8554b9a23fee7eee16ffda927235f929048638240f97172562665c in /usr/local/bin/ 
# Fri, 11 Jan 2019 10:42:35 GMT
RUN docker-php-ext-enable sodium
# Fri, 11 Jan 2019 10:42:37 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 11 Jan 2019 10:42:40 GMT
WORKDIR /var/www/html
# Fri, 11 Jan 2019 10:42:44 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 11 Jan 2019 10:42:46 GMT
EXPOSE 9000
# Fri, 11 Jan 2019 10:42:48 GMT
CMD ["php-fpm"]
# Fri, 11 Jan 2019 13:44:06 GMT
RUN set -ex;     docker-php-ext-install opcache pdo_mysql mysqli
# Fri, 11 Jan 2019 13:44:10 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 11 Jan 2019 13:44:13 GMT
RUN apk add --no-cache bash
# Fri, 11 Jan 2019 13:44:15 GMT
VOLUME [/var/www/html]
# Fri, 11 Jan 2019 13:44:16 GMT
ENV YOURLS_VERSION=1.7.2
# Fri, 11 Jan 2019 13:44:21 GMT
RUN set -ex; 	curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz"; 	tar -xzf yourls.tar.gz -C /usr/src/; 	mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls; 	rm yourls.tar.gz; 	chown -R www-data:www-data /usr/src/yourls
# Fri, 11 Jan 2019 13:44:22 GMT
COPY file:7722c9d76f082fb2683ec1d4befeaddd6c873c885172752cacb787e076d4dbeb in /usr/local/bin/ 
# Fri, 11 Jan 2019 13:44:23 GMT
COPY file:d375afac6cf463942802d2b27f08ef4d6198ac33f536b334f195e2e479c4cd6f in /var/www/html/ 
# Fri, 11 Jan 2019 13:44:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 13:44:27 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:5fac6f91a5114ca7e803950377d1db527386361cdf48b205eed63d8ab99820c3`  
		Last Modified: Fri, 21 Dec 2018 09:45:58 GMT  
		Size: 2.2 MB (2194772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c21fc409a1bc2fd1e54e11e2bd2beb4251b1c6d49aee187e7d28df20b2004b1`  
		Last Modified: Fri, 21 Dec 2018 09:45:56 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e97d043655dbdb6d40a361d7dc75c1ba30d905a802fa795cf7d567ad05245d76`  
		Last Modified: Fri, 21 Dec 2018 12:04:28 GMT  
		Size: 1.3 MB (1322324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e42ae702569bdff3d1762659fb2ec8eb1a3aa153705c2240bf46a52c81aa408`  
		Last Modified: Fri, 21 Dec 2018 12:04:27 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc7bb9008fe21d12c735aed250535f34b51e732ec5488ca7e1772bca1a0b7028`  
		Last Modified: Fri, 21 Dec 2018 12:04:26 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cec34919370c2384818df7d9f4f38274d4a735df6356b22e9718d2900346fab`  
		Last Modified: Fri, 11 Jan 2019 11:28:44 GMT  
		Size: 12.2 MB (12176123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b7e795fa94c1d605263cefed6b18af78b41b8bc09e0f1a8e0af21d57760ff7`  
		Last Modified: Fri, 11 Jan 2019 11:28:43 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dafa685ce7431d4ac7441095a659bff7369c8ebef767e58b5e3016c64051a5ec`  
		Last Modified: Fri, 11 Jan 2019 11:28:48 GMT  
		Size: 15.5 MB (15520333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6830c0786b7b0018e9fb675e042b6e92069a7a262e1c9a932e03a671a3667d34`  
		Last Modified: Fri, 11 Jan 2019 11:28:40 GMT  
		Size: 2.2 KB (2176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9893e5c1d00fc2bc1ab12822cc8c764d4ddc8e78005f5ca7ae73641fad7d66d`  
		Last Modified: Fri, 11 Jan 2019 11:28:40 GMT  
		Size: 71.6 KB (71637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d417b6dbb5b926e72a79fcf217c400a3ba448cc706b4827fae2ee2aac16294ed`  
		Last Modified: Fri, 11 Jan 2019 11:28:40 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d20b494607f4d906d31390b43388557b1f3851de4bfcc51436d582954225184`  
		Last Modified: Fri, 11 Jan 2019 11:28:40 GMT  
		Size: 7.8 KB (7782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0438dc09a75567fa228d311a251e240f555b533890baa9f26eff447a8d47d954`  
		Last Modified: Fri, 11 Jan 2019 13:46:01 GMT  
		Size: 357.8 KB (357765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2e2f343164d525dbe6bc64a417b6ca80473e626c799a57fbca2e0d85d51a544`  
		Last Modified: Fri, 11 Jan 2019 13:45:57 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf155992d9efa981564a8b1ea76e34b0f1c21e8138a59812874c3f7b47b01abd`  
		Last Modified: Fri, 11 Jan 2019 13:45:58 GMT  
		Size: 603.7 KB (603667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46a8476bc72743c5d14b6a28a843847f642a74ab528d62234e4ec83905feb2a1`  
		Last Modified: Fri, 11 Jan 2019 13:45:58 GMT  
		Size: 2.5 MB (2485644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c92c5dd3bd03e525fbf8a7f3c9c347a1c133a26670a171d7b4a2d8907e5e3e56`  
		Last Modified: Fri, 11 Jan 2019 13:45:57 GMT  
		Size: 1.1 KB (1057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f03b52c13d8480225a74740b540d0fbdb0b87f906ec44d4f448348e0c39d9237`  
		Last Modified: Fri, 11 Jan 2019 13:45:57 GMT  
		Size: 1.8 KB (1816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `yourls:apache`

```console
$ docker pull yourls@sha256:b93240de31344e21ece17db55b42551926ebf7ed9edff59de98457cc8ab200bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `yourls:apache` - linux; amd64

```console
$ docker pull yourls@sha256:4962218b0809fc8cf63bf9eebfceba12d11f754f3669c23bc3481a952d9fa64c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.6 MB (137592705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c1c2d79eaa9e79809bbd5160f94daac5d40e72035e7c2e289b0ffd4df0af05f`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Sat, 29 Dec 2018 05:03:51 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 11 Jan 2019 01:14:55 GMT
ENV PHP_VERSION=7.2.14
# Fri, 11 Jan 2019 01:14:55 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror
# Fri, 11 Jan 2019 01:14:55 GMT
ENV PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f PHP_MD5=
# Fri, 11 Jan 2019 01:15:04 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 11 Jan 2019 01:15:04 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 11 Jan 2019 01:18:38 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 11 Jan 2019 01:18:38 GMT
COPY multi:0a6fe33cb39694994fa567c75b399b9aa5e477c8770caa9f731607a72819b457 in /usr/local/bin/ 
# Fri, 11 Jan 2019 01:18:39 GMT
RUN docker-php-ext-enable sodium
# Fri, 11 Jan 2019 01:18:39 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 11 Jan 2019 01:18:39 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Fri, 11 Jan 2019 01:18:40 GMT
WORKDIR /var/www/html
# Fri, 11 Jan 2019 01:18:40 GMT
EXPOSE 80
# Fri, 11 Jan 2019 01:18:40 GMT
CMD ["apache2-foreground"]
# Fri, 11 Jan 2019 03:24:43 GMT
RUN set -ex;     docker-php-ext-install opcache pdo_mysql mysqli
# Fri, 11 Jan 2019 03:24:44 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 11 Jan 2019 03:24:44 GMT
RUN a2enmod rewrite expires
# Fri, 11 Jan 2019 03:24:45 GMT
VOLUME [/var/www/html]
# Fri, 11 Jan 2019 03:24:45 GMT
ENV YOURLS_VERSION=1.7.2
# Fri, 11 Jan 2019 03:24:46 GMT
RUN set -ex; 	curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz"; 	tar -xzf yourls.tar.gz -C /usr/src/; 	mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls; 	rm yourls.tar.gz; 	chown -R www-data:www-data /usr/src/yourls
# Fri, 11 Jan 2019 03:24:47 GMT
COPY file:7722c9d76f082fb2683ec1d4befeaddd6c873c885172752cacb787e076d4dbeb in /usr/local/bin/ 
# Fri, 11 Jan 2019 03:24:47 GMT
COPY file:d375afac6cf463942802d2b27f08ef4d6198ac33f536b334f195e2e479c4cd6f in /var/www/html/ 
# Fri, 11 Jan 2019 03:24:47 GMT
COPY file:5b7ff05d0c98ad759c4bec0ef8a7ce74cae42e95b42564b55f43b341c2c3e3f5 in /var/www/html/ 
# Fri, 11 Jan 2019 03:24:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 03:24:48 GMT
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
	-	`sha256:2a25fcb23d183d85904474bbb4a70acd54f799488ca33ee229f2ed1ad0ce9591`  
		Last Modified: Fri, 11 Jan 2019 01:53:42 GMT  
		Size: 12.5 MB (12506427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e496ab19dfffef5f7ced59f3bcf6175c1b94be12564b4d9c5645b7a93560192`  
		Last Modified: Fri, 11 Jan 2019 01:53:41 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a5d39fc92ab1ba459a1b1cf1b7f20656559f9f05537337ae1c51b7fdba66ffb`  
		Last Modified: Fri, 11 Jan 2019 01:53:44 GMT  
		Size: 15.2 MB (15246057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8603dc5a76e7c083140806cf44d4e1690e15d79cb135ba8e1d6705769b0851ba`  
		Last Modified: Fri, 11 Jan 2019 01:53:40 GMT  
		Size: 2.2 KB (2195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4525497200a2b96ba75f12c63aed6a62b6d03a207d2441de88bb6a7d881ac7b3`  
		Last Modified: Fri, 11 Jan 2019 01:53:40 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df66f65de27acc43763a4432f463d3337d0b23fd8db7ab223acc7017eeb4f763`  
		Last Modified: Fri, 11 Jan 2019 01:53:40 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57b8d8fa0610733515eb42761dc0de5de2da32a64d781bba6411fc2166f27e6a`  
		Last Modified: Fri, 11 Jan 2019 03:26:47 GMT  
		Size: 280.6 KB (280552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbca46cb53c4c940b34051582c867fa563da9435def6910244c2aa47a7ad24ba`  
		Last Modified: Fri, 11 Jan 2019 03:26:48 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95c24c90db0469d2cc6aa12ff0b583132ebd112acf6b687a503c292bc137fef1`  
		Last Modified: Fri, 11 Jan 2019 03:26:46 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a7d2a11ebf743bcc5735aa222deebb162a1da746a81fa95face8a97afbb1aa`  
		Last Modified: Fri, 11 Jan 2019 03:26:47 GMT  
		Size: 2.5 MB (2485627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb13aa537f9d9745b40e7d938edfd081be0b6f9ee77ceafcb38deccbf4836ea8`  
		Last Modified: Fri, 11 Jan 2019 03:26:46 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72194353726c756bd51d964bcaa545bd0298914297d8bde7fade176653dedef5`  
		Last Modified: Fri, 11 Jan 2019 03:26:46 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cd18794e74c003815eb6df1fefdcefe87ec988af1834780908349a86f5f07ba`  
		Last Modified: Fri, 11 Jan 2019 03:26:46 GMT  
		Size: 337.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `yourls:apache` - linux; arm variant v5

```console
$ docker pull yourls@sha256:f0d07d3d15c8b789d94179d42578cee1caccb2cfe240c57841a5691232b7bc89
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.9 MB (124937488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64e90988afdbf7237c297a523eb6618f00a414c4f6428390529c1b2c57934806`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Sat, 29 Dec 2018 09:55:31 GMT
ADD file:1f3db2bdb8941ca17968251e2af1378e7f7556627ed60eafb5ee40089810bc8b in / 
# Sat, 29 Dec 2018 09:55:32 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 12:32:24 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Sat, 29 Dec 2018 12:32:24 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Sat, 29 Dec 2018 12:33:02 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:33:04 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 29 Dec 2018 12:33:05 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 29 Dec 2018 12:38:00 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:38:00 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Sat, 29 Dec 2018 12:38:01 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Sat, 29 Dec 2018 12:38:02 GMT
RUN set -eux; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Sat, 29 Dec 2018 12:38:03 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Sat, 29 Dec 2018 12:38:05 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Sat, 29 Dec 2018 12:38:05 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Sat, 29 Dec 2018 12:38:06 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Sat, 29 Dec 2018 12:38:06 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 12:38:06 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 12:38:07 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 29 Dec 2018 12:55:20 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Sat, 29 Dec 2018 12:55:20 GMT
ENV PHP_VERSION=7.2.13
# Sat, 29 Dec 2018 12:55:20 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.13.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.13.tar.xz.asc/from/this/mirror
# Sat, 29 Dec 2018 12:55:21 GMT
ENV PHP_SHA256=14b0429abdb46b65c843e5882c9a8c46b31dfbf279c747293b8ab950c2644a4b PHP_MD5=
# Sat, 29 Dec 2018 12:55:36 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 29 Dec 2018 12:55:37 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 29 Dec 2018 12:58:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 29 Dec 2018 12:58:42 GMT
COPY multi:0a6fe33cb39694994fa567c75b399b9aa5e477c8770caa9f731607a72819b457 in /usr/local/bin/ 
# Sat, 29 Dec 2018 12:58:44 GMT
RUN docker-php-ext-enable sodium
# Sat, 29 Dec 2018 12:58:44 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 29 Dec 2018 12:58:44 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Sat, 29 Dec 2018 12:58:45 GMT
WORKDIR /var/www/html
# Sat, 29 Dec 2018 12:58:45 GMT
EXPOSE 80
# Sat, 29 Dec 2018 12:58:46 GMT
CMD ["apache2-foreground"]
# Fri, 04 Jan 2019 11:10:51 GMT
RUN set -ex;     docker-php-ext-install opcache pdo_mysql mysqli
# Fri, 04 Jan 2019 11:10:53 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 04 Jan 2019 11:10:54 GMT
RUN a2enmod rewrite expires
# Fri, 04 Jan 2019 11:10:54 GMT
VOLUME [/var/www/html]
# Fri, 04 Jan 2019 11:10:55 GMT
ENV YOURLS_VERSION=1.7.2
# Fri, 04 Jan 2019 11:10:57 GMT
RUN set -ex; 	curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz"; 	tar -xzf yourls.tar.gz -C /usr/src/; 	mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls; 	rm yourls.tar.gz; 	chown -R www-data:www-data /usr/src/yourls
# Fri, 04 Jan 2019 11:10:58 GMT
COPY file:7722c9d76f082fb2683ec1d4befeaddd6c873c885172752cacb787e076d4dbeb in /usr/local/bin/ 
# Fri, 04 Jan 2019 11:10:58 GMT
COPY file:d375afac6cf463942802d2b27f08ef4d6198ac33f536b334f195e2e479c4cd6f in /var/www/html/ 
# Fri, 04 Jan 2019 11:10:59 GMT
COPY file:5b7ff05d0c98ad759c4bec0ef8a7ce74cae42e95b42564b55f43b341c2c3e3f5 in /var/www/html/ 
# Fri, 04 Jan 2019 11:10:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 04 Jan 2019 11:11:00 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:e040f73e39f2c2a1a8429ff270c2d629ef2630ac31581228037724d707862b22`  
		Last Modified: Sat, 29 Dec 2018 10:03:16 GMT  
		Size: 21.2 MB (21167776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dc5107d4e4251d4ef9002026f490e573eff661fe6e2278d1bd3a7d121a3c321`  
		Last Modified: Sat, 29 Dec 2018 15:11:10 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca61229a1118271adc19db58c172d9ceaa14ceb0aef16b2fb0b4237c08f6fe9e`  
		Last Modified: Sat, 29 Dec 2018 15:11:32 GMT  
		Size: 57.5 MB (57464650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2be23d64816b54f39f39a88b24bd971081a558160fdf7667ec44f47c45989c9`  
		Last Modified: Sat, 29 Dec 2018 15:11:10 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dafbaeb7163888e37cf64fb46e91b2cf58eac8540c395f64883103d3bfcf5064`  
		Last Modified: Sat, 29 Dec 2018 15:12:10 GMT  
		Size: 16.7 MB (16654350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49b40f80c9fbf4364d92fdd25059fe5e0c2070334338daf628dec7751de40bd2`  
		Last Modified: Sat, 29 Dec 2018 15:12:03 GMT  
		Size: 1.4 KB (1366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71f2d447d810b660e4c7c64129caf2a8dc24381d6de1e85c964ef7b832a1e02a`  
		Last Modified: Sat, 29 Dec 2018 15:12:03 GMT  
		Size: 473.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0f34a587aa02846d8add6902c1ef4c05955469cf14e7a66b9d752cace0679d3`  
		Last Modified: Sat, 29 Dec 2018 15:12:03 GMT  
		Size: 512.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:365d13d1ea625a32a9a32e3cf22f4f2fab2eb22cb57d25ea93b8917e7bd4c9e4`  
		Last Modified: Sat, 29 Dec 2018 15:13:43 GMT  
		Size: 12.5 MB (12463554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cf03536d58a6e85c385bbd382c2e7345f4a70808bef960488a331948eec6e4e`  
		Last Modified: Sat, 29 Dec 2018 15:13:40 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af1ea384524b42693ba20e3dfc8ae623c3aa1aeff9a2f550712f120bf420d58b`  
		Last Modified: Sat, 29 Dec 2018 15:13:45 GMT  
		Size: 14.4 MB (14421222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e312529f1eae1c5da20e136a83a30b1edc1b4b873516ba670b33affcb827f82`  
		Last Modified: Sat, 29 Dec 2018 15:13:39 GMT  
		Size: 2.2 KB (2197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ec86617119633a2846243f5951735983ec2b6be19b16d863a8b1ad91f864b5d`  
		Last Modified: Sat, 29 Dec 2018 15:13:39 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccb13d532eee04a14b1f1caa52aed72aa37327aebb0e3a3f29e72f29a3c2a9f8`  
		Last Modified: Sat, 29 Dec 2018 15:13:39 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf1300472aed72acd8444e4180bd165644a321eba929baec73b81817032c93d6`  
		Last Modified: Fri, 04 Jan 2019 11:12:53 GMT  
		Size: 269.7 KB (269717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da22acd34f24b0edb67bd4231394b7f78750311489264df2dfa894138cb33d56`  
		Last Modified: Fri, 04 Jan 2019 11:12:52 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:750fb21c7d249a3df6935f490714dcfe0b80e8a2e9f9bc6808805d9f4a5d7126`  
		Last Modified: Fri, 04 Jan 2019 11:12:51 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0124ce182cd58209baab0012c40eb8b2ceb4b990c92bd243a07f8cef1c6bce2e`  
		Last Modified: Fri, 04 Jan 2019 11:12:53 GMT  
		Size: 2.5 MB (2485637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e21c7ec52983b6c56d6b809b84a1f79d826f201aab7af0f8801f2fd2dc3deb80`  
		Last Modified: Fri, 04 Jan 2019 11:12:51 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fee2f6a0e9b8d1b69cf15221931fcb53d48f627ec82548dfc484781667578137`  
		Last Modified: Fri, 04 Jan 2019 11:12:51 GMT  
		Size: 1.8 KB (1832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3c70eb029934442a32abf9541140be383fee6685c335765c457ac0cabf49ec1`  
		Last Modified: Fri, 04 Jan 2019 11:12:51 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `yourls:apache` - linux; arm variant v7

```console
$ docker pull yourls@sha256:bfe9dd2cbc5e70e0dafadaa03f87a6c5a6d19c93a3a78b963969d07a02f241f8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.9 MB (117864222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:315103166e802ff42c820d401dc963ea625550f000de6d62c5fae20112fc15a4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Sat, 29 Dec 2018 13:04:57 GMT
ADD file:287bc4fa3803b40afca4bcac26d92079fb862f7b968e960e01ae536b1b5c7aea in / 
# Sat, 29 Dec 2018 13:04:57 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 15:52:23 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Sat, 29 Dec 2018 15:52:23 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Sat, 29 Dec 2018 15:52:54 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 29 Dec 2018 15:52:55 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 29 Dec 2018 15:52:57 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 29 Dec 2018 15:57:28 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 15:57:28 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Sat, 29 Dec 2018 15:57:29 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Sat, 29 Dec 2018 15:57:30 GMT
RUN set -eux; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Sat, 29 Dec 2018 15:57:32 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Sat, 29 Dec 2018 15:57:34 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Sat, 29 Dec 2018 15:57:34 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Sat, 29 Dec 2018 15:57:35 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Sat, 29 Dec 2018 15:57:35 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 15:57:35 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 15:57:36 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 29 Dec 2018 16:31:14 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 11 Jan 2019 13:21:39 GMT
ENV PHP_VERSION=7.2.14
# Fri, 11 Jan 2019 13:21:40 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror
# Fri, 11 Jan 2019 13:21:40 GMT
ENV PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f PHP_MD5=
# Fri, 11 Jan 2019 13:21:54 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 11 Jan 2019 13:21:54 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 11 Jan 2019 13:24:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 11 Jan 2019 13:24:43 GMT
COPY multi:0a6fe33cb39694994fa567c75b399b9aa5e477c8770caa9f731607a72819b457 in /usr/local/bin/ 
# Fri, 11 Jan 2019 13:24:44 GMT
RUN docker-php-ext-enable sodium
# Fri, 11 Jan 2019 13:24:44 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 11 Jan 2019 13:24:45 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Fri, 11 Jan 2019 13:24:45 GMT
WORKDIR /var/www/html
# Fri, 11 Jan 2019 13:24:46 GMT
EXPOSE 80
# Fri, 11 Jan 2019 13:24:46 GMT
CMD ["apache2-foreground"]
# Fri, 11 Jan 2019 14:40:55 GMT
RUN set -ex;     docker-php-ext-install opcache pdo_mysql mysqli
# Fri, 11 Jan 2019 14:40:56 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 11 Jan 2019 14:40:58 GMT
RUN a2enmod rewrite expires
# Fri, 11 Jan 2019 14:40:58 GMT
VOLUME [/var/www/html]
# Fri, 11 Jan 2019 14:40:59 GMT
ENV YOURLS_VERSION=1.7.2
# Fri, 11 Jan 2019 14:41:04 GMT
RUN set -ex; 	curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz"; 	tar -xzf yourls.tar.gz -C /usr/src/; 	mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls; 	rm yourls.tar.gz; 	chown -R www-data:www-data /usr/src/yourls
# Fri, 11 Jan 2019 14:41:04 GMT
COPY file:7722c9d76f082fb2683ec1d4befeaddd6c873c885172752cacb787e076d4dbeb in /usr/local/bin/ 
# Fri, 11 Jan 2019 14:41:05 GMT
COPY file:d375afac6cf463942802d2b27f08ef4d6198ac33f536b334f195e2e479c4cd6f in /var/www/html/ 
# Fri, 11 Jan 2019 14:41:05 GMT
COPY file:5b7ff05d0c98ad759c4bec0ef8a7ce74cae42e95b42564b55f43b341c2c3e3f5 in /var/www/html/ 
# Fri, 11 Jan 2019 14:41:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 14:41:06 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:eb2ab017daa46c13a41d60225632e89c8b5c24a9bdafb2b75b1d415830b41e6b`  
		Last Modified: Sat, 29 Dec 2018 13:12:36 GMT  
		Size: 19.3 MB (19277755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bdd3055b30ec26315bbe73533843047ed98fec35dc5acc5cb0d0878ab8ed597`  
		Last Modified: Mon, 31 Dec 2018 19:12:59 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f79128a6d00730d8aaed6af05f3590337fcecd13119d056c272e9d01043f441`  
		Last Modified: Mon, 31 Dec 2018 19:13:15 GMT  
		Size: 53.6 MB (53582251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56fcb7f3e035561a3c9eced964fa2bf0fb33d76092839e59092e773161523cf0`  
		Last Modified: Mon, 31 Dec 2018 19:12:59 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cec7800b34522c311353f81b69927346012c515d10994684b20a049ba54c724`  
		Last Modified: Mon, 31 Dec 2018 19:13:51 GMT  
		Size: 16.2 MB (16162446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ba5955791d212ded2ccec56cb7e29725d2c3c77eab3d9e3fabf25d3f1b5cf98`  
		Last Modified: Mon, 31 Dec 2018 19:13:46 GMT  
		Size: 1.4 KB (1369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e907a4a42c73b241a2cf041cbfbb96efce659ecfd29561d66ea0f7b6a7aada83`  
		Last Modified: Mon, 31 Dec 2018 19:13:46 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72faa7e759463214ed86856afa0ad160e8b2317f9b955d6da86ff57af479d7e3`  
		Last Modified: Mon, 31 Dec 2018 19:13:45 GMT  
		Size: 510.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8c97be05198c1c418efedb012b4489df469a06214bfea33732dbf5c7f67d0b7`  
		Last Modified: Fri, 11 Jan 2019 14:12:34 GMT  
		Size: 12.5 MB (12504282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45b77b603992c6cccbf6503240e5dbafe9bdb17bddadccf59b226518254f5bb9`  
		Last Modified: Fri, 11 Jan 2019 14:12:30 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b9f6a21d0961decc8e89332fe47d1e8a5cfedb05c5880d3f757809c6749f893`  
		Last Modified: Fri, 11 Jan 2019 14:12:35 GMT  
		Size: 13.6 MB (13594915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a3f66483ced6f333748fcb82e1b6d28a39693793744ad4ca90ddac619a24056`  
		Last Modified: Fri, 11 Jan 2019 14:12:30 GMT  
		Size: 2.2 KB (2195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f127eb60416cb13cb76b16f1d8812c3a2c422d82720afabbe47dd31b23cea2c`  
		Last Modified: Fri, 11 Jan 2019 14:12:30 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03da7fcbc0e760b4475e84579700c77e4559675f4c7d34b55f70e4985c8e774d`  
		Last Modified: Fri, 11 Jan 2019 14:12:31 GMT  
		Size: 903.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c907b851539d2e197cae8a8fc767881587ed073ef35f4b4c283df407396e2ad`  
		Last Modified: Fri, 11 Jan 2019 14:42:47 GMT  
		Size: 246.4 KB (246374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04258081f72767fec60c812c21a0ed83add92aa287a5fb89125ef0a45db41f3f`  
		Last Modified: Fri, 11 Jan 2019 14:42:47 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:543db6bf55a72b9523aef66ef7875c1cb276ca6f9512eaa3e6c5be51977e6f19`  
		Last Modified: Fri, 11 Jan 2019 14:42:46 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0394fbcf889fe2801d611bc7e646c59b298a749020f83b2f3d1cf2c040032f45`  
		Last Modified: Fri, 11 Jan 2019 14:42:47 GMT  
		Size: 2.5 MB (2485630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0da5983cbe1560ba3e0e6837aa0b44c67e59d2edc16fd6404fad19f87b5cb531`  
		Last Modified: Fri, 11 Jan 2019 14:42:46 GMT  
		Size: 1.1 KB (1065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2610fb2b53e5e82ab7875ed95f0abac10e9edbd5cfc2f8311d08a0e4eb75d710`  
		Last Modified: Fri, 11 Jan 2019 14:42:46 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c48f5752809961f1865731d00497b9bf9208581395f8b5a18cb4b275be0745e`  
		Last Modified: Fri, 11 Jan 2019 14:42:46 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `yourls:apache` - linux; arm64 variant v8

```console
$ docker pull yourls@sha256:d61727bf29772fae43c48440426f3121bb2fc76dac182cacf52658ad0e1f97ef
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.1 MB (124142419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2716f9247372339bbed11c8808a6374e8e5b4ff2e7f28cbd246aa9e818717c1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:46 GMT
ADD file:e4db5c28a0f74e32be4419aae491e4b9dc7402f3640369289e24c52028c871ad in / 
# Sat, 29 Dec 2018 10:08:47 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 21:39:33 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Sat, 29 Dec 2018 21:39:33 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Sat, 29 Dec 2018 21:41:51 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 29 Dec 2018 21:41:52 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 29 Dec 2018 21:41:54 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 29 Dec 2018 21:55:31 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 21:55:31 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Sat, 29 Dec 2018 21:55:32 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Sat, 29 Dec 2018 21:55:34 GMT
RUN set -eux; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Sat, 29 Dec 2018 21:55:37 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Sat, 29 Dec 2018 21:55:39 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Sat, 29 Dec 2018 21:55:39 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Sat, 29 Dec 2018 21:55:40 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Sat, 29 Dec 2018 21:55:41 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 21:55:41 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 21:55:42 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 29 Dec 2018 22:37:39 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 11 Jan 2019 11:30:51 GMT
ENV PHP_VERSION=7.2.14
# Fri, 11 Jan 2019 11:30:52 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror
# Fri, 11 Jan 2019 11:30:53 GMT
ENV PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f PHP_MD5=
# Fri, 11 Jan 2019 11:31:22 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 11 Jan 2019 11:31:22 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 11 Jan 2019 11:37:55 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 11 Jan 2019 11:37:56 GMT
COPY multi:0a6fe33cb39694994fa567c75b399b9aa5e477c8770caa9f731607a72819b457 in /usr/local/bin/ 
# Fri, 11 Jan 2019 11:37:58 GMT
RUN docker-php-ext-enable sodium
# Fri, 11 Jan 2019 11:37:58 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 11 Jan 2019 11:37:59 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Fri, 11 Jan 2019 11:38:00 GMT
WORKDIR /var/www/html
# Fri, 11 Jan 2019 11:38:01 GMT
EXPOSE 80
# Fri, 11 Jan 2019 11:38:02 GMT
CMD ["apache2-foreground"]
# Fri, 11 Jan 2019 15:03:51 GMT
RUN set -ex;     docker-php-ext-install opcache pdo_mysql mysqli
# Fri, 11 Jan 2019 15:03:53 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 11 Jan 2019 15:03:56 GMT
RUN a2enmod rewrite expires
# Fri, 11 Jan 2019 15:03:57 GMT
VOLUME [/var/www/html]
# Fri, 11 Jan 2019 15:03:58 GMT
ENV YOURLS_VERSION=1.7.2
# Fri, 11 Jan 2019 15:04:12 GMT
RUN set -ex; 	curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz"; 	tar -xzf yourls.tar.gz -C /usr/src/; 	mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls; 	rm yourls.tar.gz; 	chown -R www-data:www-data /usr/src/yourls
# Fri, 11 Jan 2019 15:04:12 GMT
COPY file:7722c9d76f082fb2683ec1d4befeaddd6c873c885172752cacb787e076d4dbeb in /usr/local/bin/ 
# Fri, 11 Jan 2019 15:04:13 GMT
COPY file:d375afac6cf463942802d2b27f08ef4d6198ac33f536b334f195e2e479c4cd6f in /var/www/html/ 
# Fri, 11 Jan 2019 15:04:14 GMT
COPY file:5b7ff05d0c98ad759c4bec0ef8a7ce74cae42e95b42564b55f43b341c2c3e3f5 in /var/www/html/ 
# Fri, 11 Jan 2019 15:04:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 15:04:19 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:1a07b0163994a6d3328beeaa3400f6304e68548ffb84deefcb74427a6b65a489`  
		Last Modified: Sat, 29 Dec 2018 10:15:04 GMT  
		Size: 20.3 MB (20337511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da8dc61ccacab0c571f2793c6c5400180816557fa0140990f997519be3471012`  
		Last Modified: Sun, 30 Dec 2018 01:03:31 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59be51dca15077e7f02edb4376d3e8e194896c4e706c9c03c2fd2d2af47f8cdc`  
		Last Modified: Sun, 30 Dec 2018 01:03:58 GMT  
		Size: 57.6 MB (57606226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f391fc42cee2e19f185ac34d4d4e8404a3209ed5c17b369dc30bdf3a0d29915`  
		Last Modified: Sun, 30 Dec 2018 01:03:31 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624799215cc8ec3f277033b52eefa3e6cdee2c0371b28a4983c3722506e677a6`  
		Last Modified: Sun, 30 Dec 2018 01:04:48 GMT  
		Size: 16.7 MB (16711057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10e7e30b294ed284d673effda7c4615ade5cd952cc3dee17c0116b1c0f6cd106`  
		Last Modified: Sun, 30 Dec 2018 01:04:40 GMT  
		Size: 1.3 KB (1342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1845118be0cdd364592b6079fb43ef235948f820e01b535e9b7da4187f405bd8`  
		Last Modified: Sun, 30 Dec 2018 01:04:40 GMT  
		Size: 446.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8e041c4002a5658f86b77e75593904c0fd11c2aa9f7ed2f36b876f5d4d54225`  
		Last Modified: Sun, 30 Dec 2018 01:04:40 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8e4758eeb14ef9d665ee8e8893a3dc0469e98e71080ff51cecbe20f001338dc`  
		Last Modified: Fri, 11 Jan 2019 13:28:11 GMT  
		Size: 12.5 MB (12504551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0a7715c7889392eb2892d63a5c19702854e3796c8987ae917f98186366120ae`  
		Last Modified: Fri, 11 Jan 2019 13:28:06 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99dd54d4b3d9b98d66331ca76de66e8a17ec67a762262913988d6c22266d77ed`  
		Last Modified: Fri, 11 Jan 2019 13:28:16 GMT  
		Size: 14.2 MB (14224611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:783103c755e67d37a92dbb7c0d026e9d602380ef1e49867419ce963777937ef5`  
		Last Modified: Fri, 11 Jan 2019 13:28:06 GMT  
		Size: 2.2 KB (2199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55581dc088e840fe29e62e8f79131b7a58e97936d4fe7aa7a8e6942bbd8e74f9`  
		Last Modified: Fri, 11 Jan 2019 13:28:06 GMT  
		Size: 261.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14d4b6af964b502f49158c5b653060487ec42d75d9afbe6512384f73b33e1e31`  
		Last Modified: Fri, 11 Jan 2019 13:28:06 GMT  
		Size: 907.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:545e657896019a75e45b577145c6567212a2dd02030ea98870170b5b93b65c7f`  
		Last Modified: Fri, 11 Jan 2019 15:09:01 GMT  
		Size: 262.3 KB (262344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71ecb13c447453d37b5f10e094b81dc29547b4ad0580d414ab98cb140b93a098`  
		Last Modified: Fri, 11 Jan 2019 15:09:01 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb7710e996c32963126e3402425d00ffe4c1fadceb2b25531977ae33148a1aa1`  
		Last Modified: Fri, 11 Jan 2019 15:08:58 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f490cf4284373ca4550c3cf2617f108ef9aab42f97f590ff537b45cda405f5b9`  
		Last Modified: Fri, 11 Jan 2019 15:09:00 GMT  
		Size: 2.5 MB (2485626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ffc0cd2ad70eba0c3a67a26b0904b855a15e4bf24f40567103be04ef5cf12e2`  
		Last Modified: Fri, 11 Jan 2019 15:08:58 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e823a50bf8f5a5694a2ee0d9597fff6b1830fcf0518c5e7b16ab6ced004b69a8`  
		Last Modified: Fri, 11 Jan 2019 15:08:58 GMT  
		Size: 1.8 KB (1832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4763bcd845306818ec0b5a638ddee94aede5786f3b9c2ddc618ab6f47971d43e`  
		Last Modified: Fri, 11 Jan 2019 15:08:59 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `yourls:apache` - linux; 386

```console
$ docker pull yourls@sha256:b2035a8f7ab1c3b5de3d23ccc4a7137e7458c283df1ae56878c404863b5124b0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.2 MB (143177459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec184124ebdbc826e1d68e9d5038d3989912c2d76ce9ae2c4bf14da610ae2649`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Sat, 29 Dec 2018 11:56:14 GMT
ADD file:aaa0661c64d46388f46e71ba3d172f3208f6b943dbc1a86e0b50ca5080bdb3ee in / 
# Sat, 29 Dec 2018 11:56:15 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 21:36:24 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Sat, 29 Dec 2018 21:36:24 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Sat, 29 Dec 2018 21:36:48 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 29 Dec 2018 21:36:48 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 29 Dec 2018 21:36:49 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 29 Dec 2018 21:45:50 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 21:45:51 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Sat, 29 Dec 2018 21:45:51 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Sat, 29 Dec 2018 21:45:51 GMT
RUN set -eux; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Sat, 29 Dec 2018 21:45:52 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Sat, 29 Dec 2018 21:45:53 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Sat, 29 Dec 2018 21:45:53 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Sat, 29 Dec 2018 21:45:53 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Sat, 29 Dec 2018 21:45:54 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 21:45:54 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 21:45:54 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 29 Dec 2018 22:07:26 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 11 Jan 2019 12:50:42 GMT
ENV PHP_VERSION=7.2.14
# Fri, 11 Jan 2019 12:50:42 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror
# Fri, 11 Jan 2019 12:50:42 GMT
ENV PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f PHP_MD5=
# Fri, 11 Jan 2019 12:50:53 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 11 Jan 2019 12:50:53 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 11 Jan 2019 12:54:18 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 11 Jan 2019 12:54:18 GMT
COPY multi:0a6fe33cb39694994fa567c75b399b9aa5e477c8770caa9f731607a72819b457 in /usr/local/bin/ 
# Fri, 11 Jan 2019 12:54:19 GMT
RUN docker-php-ext-enable sodium
# Fri, 11 Jan 2019 12:54:19 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 11 Jan 2019 12:54:19 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Fri, 11 Jan 2019 12:54:20 GMT
WORKDIR /var/www/html
# Fri, 11 Jan 2019 12:54:20 GMT
EXPOSE 80
# Fri, 11 Jan 2019 12:54:20 GMT
CMD ["apache2-foreground"]
# Fri, 11 Jan 2019 16:51:33 GMT
RUN set -ex;     docker-php-ext-install opcache pdo_mysql mysqli
# Fri, 11 Jan 2019 16:51:34 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 11 Jan 2019 16:51:34 GMT
RUN a2enmod rewrite expires
# Fri, 11 Jan 2019 16:51:35 GMT
VOLUME [/var/www/html]
# Fri, 11 Jan 2019 16:51:35 GMT
ENV YOURLS_VERSION=1.7.2
# Fri, 11 Jan 2019 16:51:36 GMT
RUN set -ex; 	curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz"; 	tar -xzf yourls.tar.gz -C /usr/src/; 	mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls; 	rm yourls.tar.gz; 	chown -R www-data:www-data /usr/src/yourls
# Fri, 11 Jan 2019 16:51:37 GMT
COPY file:7722c9d76f082fb2683ec1d4befeaddd6c873c885172752cacb787e076d4dbeb in /usr/local/bin/ 
# Fri, 11 Jan 2019 16:51:37 GMT
COPY file:d375afac6cf463942802d2b27f08ef4d6198ac33f536b334f195e2e479c4cd6f in /var/www/html/ 
# Fri, 11 Jan 2019 16:51:37 GMT
COPY file:5b7ff05d0c98ad759c4bec0ef8a7ce74cae42e95b42564b55f43b341c2c3e3f5 in /var/www/html/ 
# Fri, 11 Jan 2019 16:51:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 16:51:37 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:9a1a13172ed974323f7c35153e8b23b8fa1c85355b6b26cc3127e640e45ef0aa`  
		Last Modified: Sat, 29 Dec 2018 12:10:44 GMT  
		Size: 23.1 MB (23133155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5094d5d656a95c6aa92f5f2adc56a794564b1e340bc4065db2947d7ce0c1a394`  
		Last Modified: Sun, 30 Dec 2018 01:57:01 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb2ab2fc6c3875a5ebec4eb6dae731467d2cfbe0c4372b4db6b7f8faad9917e`  
		Last Modified: Sun, 30 Dec 2018 01:57:20 GMT  
		Size: 71.5 MB (71503745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05469bc6d7085ba5736c7bf95032d0bb750ab2fa43b29049cfee7ba36c391e79`  
		Last Modified: Sun, 30 Dec 2018 01:57:01 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cac1a3cba6925217785401a8b972064ba1a0dfe60d4e039f49c4dac4b3f4270e`  
		Last Modified: Sun, 30 Dec 2018 01:57:45 GMT  
		Size: 17.6 MB (17561920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9184c6ff5922580665f40d9e2416d6ff748200ba764489ad442486d61570f8d0`  
		Last Modified: Sun, 30 Dec 2018 01:57:40 GMT  
		Size: 1.3 KB (1336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9edc4d80dca7d81ba8b7a97ebf76890d74ca4d440e11b418c39c09686094da0b`  
		Last Modified: Sun, 30 Dec 2018 01:57:40 GMT  
		Size: 430.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c49d3ce320b30bff15e021157c1b88262d848a456dbdf970c8796accf3e9cc4`  
		Last Modified: Sun, 30 Dec 2018 01:57:40 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd62ef36d94e7c9305ffd2eb8a68bd0b1939d0e5f21ce8a25c7ab5db0748013d`  
		Last Modified: Fri, 11 Jan 2019 14:54:17 GMT  
		Size: 12.5 MB (12505836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b436f91e147a9071b2e0dde2cd2939f63ead4fffb43f92d4dc8d39aabfad96b`  
		Last Modified: Fri, 11 Jan 2019 14:54:12 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2848e63e536187e58765f167f5d942e58c4ba788373f18053046374337e6a498`  
		Last Modified: Fri, 11 Jan 2019 14:54:16 GMT  
		Size: 15.7 MB (15686833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b45df8623fc8e136011d091ed53d924d6820771d844b4c27843c8aac1a4a6ca6`  
		Last Modified: Fri, 11 Jan 2019 14:54:17 GMT  
		Size: 2.2 KB (2197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02b7d92b09c9e14b62d1c385941eabe813b6b3fb137191d2b3d3b91806481ada`  
		Last Modified: Fri, 11 Jan 2019 14:54:16 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64c2910211b6c9223772e7d9203a87d7f51672460245fe15ecf00277389bdaed`  
		Last Modified: Fri, 11 Jan 2019 14:54:16 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95dc45aae2e0964d2a1ca15dc4bb85b376c6ad044d917e80ae7921de2d2c319f`  
		Last Modified: Fri, 11 Jan 2019 16:53:29 GMT  
		Size: 289.9 KB (289900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87dd5f217b94a013757e95bd992b7b62057b4126538eeeaed0bb895a30f4204d`  
		Last Modified: Fri, 11 Jan 2019 16:53:29 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:903227e6f2d86754f057e2c31d64101ffc5d4731d2a61e5dabe5262275d570e8`  
		Last Modified: Fri, 11 Jan 2019 16:53:29 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3448433d93ec7f6c0ab0503cf930d128b88b57582763ed389e2d4ff3905c43cc`  
		Last Modified: Fri, 11 Jan 2019 16:53:29 GMT  
		Size: 2.5 MB (2485625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:468cea8a346ee27bcace5936c73c780e3405caa1c0e6ac073809d845ce32d115`  
		Last Modified: Fri, 11 Jan 2019 16:53:29 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de510317f9126ed6f8412e11413bde598790403a1ee015721ca216b8c7d949bb`  
		Last Modified: Fri, 11 Jan 2019 16:53:29 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bccf2bff7778ae0e482c38ec0d02f9dd398805696e645100abcfcbd3fa7ef83`  
		Last Modified: Fri, 11 Jan 2019 16:53:29 GMT  
		Size: 336.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `yourls:apache` - linux; ppc64le

```console
$ docker pull yourls@sha256:b626b79f83abab2dd375417dbde30ef9cb4ccd8a898794ecf28e421bdc3fb9a8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.2 MB (132241096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:189ff37dac130a5be7bc52d2baa5e9cf8dba74fd13fe3f326ed6c615caa61dcf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Sat, 29 Dec 2018 09:22:40 GMT
ADD file:11cdf0dbdac1a774d74f30e9954e3cf02c390d2280ce747bc95a3b774259f226 in / 
# Sat, 29 Dec 2018 09:22:44 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 13:02:33 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Sat, 29 Dec 2018 13:02:35 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Sat, 29 Dec 2018 13:04:54 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:04:59 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 29 Dec 2018 13:05:04 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 29 Dec 2018 13:12:08 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:12:10 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Sat, 29 Dec 2018 13:12:12 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Sat, 29 Dec 2018 13:12:16 GMT
RUN set -eux; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Sat, 29 Dec 2018 13:12:21 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Sat, 29 Dec 2018 13:12:26 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Sat, 29 Dec 2018 13:12:28 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Sat, 29 Dec 2018 13:12:30 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Sat, 29 Dec 2018 13:12:32 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 13:12:34 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 13:12:36 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 29 Dec 2018 13:39:05 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 11 Jan 2019 10:15:38 GMT
ENV PHP_VERSION=7.2.14
# Fri, 11 Jan 2019 10:15:41 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror
# Fri, 11 Jan 2019 10:15:44 GMT
ENV PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f PHP_MD5=
# Fri, 11 Jan 2019 10:16:28 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 11 Jan 2019 10:16:29 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 11 Jan 2019 10:20:30 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 11 Jan 2019 10:20:32 GMT
COPY multi:0a6fe33cb39694994fa567c75b399b9aa5e477c8770caa9f731607a72819b457 in /usr/local/bin/ 
# Fri, 11 Jan 2019 10:20:35 GMT
RUN docker-php-ext-enable sodium
# Fri, 11 Jan 2019 10:20:38 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 11 Jan 2019 10:20:38 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Fri, 11 Jan 2019 10:20:40 GMT
WORKDIR /var/www/html
# Fri, 11 Jan 2019 10:20:42 GMT
EXPOSE 80
# Fri, 11 Jan 2019 10:20:44 GMT
CMD ["apache2-foreground"]
# Fri, 11 Jan 2019 13:41:41 GMT
RUN set -ex;     docker-php-ext-install opcache pdo_mysql mysqli
# Fri, 11 Jan 2019 13:41:44 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 11 Jan 2019 13:41:47 GMT
RUN a2enmod rewrite expires
# Fri, 11 Jan 2019 13:41:48 GMT
VOLUME [/var/www/html]
# Fri, 11 Jan 2019 13:41:49 GMT
ENV YOURLS_VERSION=1.7.2
# Fri, 11 Jan 2019 13:41:53 GMT
RUN set -ex; 	curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz"; 	tar -xzf yourls.tar.gz -C /usr/src/; 	mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls; 	rm yourls.tar.gz; 	chown -R www-data:www-data /usr/src/yourls
# Fri, 11 Jan 2019 13:41:54 GMT
COPY file:7722c9d76f082fb2683ec1d4befeaddd6c873c885172752cacb787e076d4dbeb in /usr/local/bin/ 
# Fri, 11 Jan 2019 13:41:54 GMT
COPY file:d375afac6cf463942802d2b27f08ef4d6198ac33f536b334f195e2e479c4cd6f in /var/www/html/ 
# Fri, 11 Jan 2019 13:41:55 GMT
COPY file:5b7ff05d0c98ad759c4bec0ef8a7ce74cae42e95b42564b55f43b341c2c3e3f5 in /var/www/html/ 
# Fri, 11 Jan 2019 13:41:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 13:41:57 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:ca671aebac61774c6bfa23dd5b097e3a135a33f3987318158787030ee978173a`  
		Last Modified: Sat, 29 Dec 2018 09:28:38 GMT  
		Size: 22.7 MB (22746826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55c9e443128efed70bcb2c05fbf1b7b3c63735856c07a31f95f3422e8e5d6be3`  
		Last Modified: Sat, 29 Dec 2018 15:02:06 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26502f7e153105ac601f4d12e9b72baf9021b49b992fe619264a1933c2daf6b4`  
		Last Modified: Sat, 29 Dec 2018 15:02:32 GMT  
		Size: 61.8 MB (61833074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d327479a214f245c363cea23d6878780e6dbb819938b9511e7b69e2e17e81fbf`  
		Last Modified: Sat, 29 Dec 2018 15:02:06 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3209a003a83f58a4c0b0b6d647aab82cf58aac4488fbea658f96c9340ff4a9d`  
		Last Modified: Sat, 29 Dec 2018 15:03:36 GMT  
		Size: 17.3 MB (17348586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0792d92b3fe4333eec429cc7e973c9758702823c0f9cc84cd02777049c72d16d`  
		Last Modified: Sat, 29 Dec 2018 15:03:28 GMT  
		Size: 1.4 KB (1370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:594e55fae66c4e49f0a9d148262bd186dea8241009a7ebf4ac3ac37b9f04944a`  
		Last Modified: Sat, 29 Dec 2018 15:03:28 GMT  
		Size: 473.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7e36bda981ae059f48a8253566f80ac2c45f8d7490de6f2a6693f68e1c964b2`  
		Last Modified: Sat, 29 Dec 2018 15:03:28 GMT  
		Size: 518.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69bb2d7edd823e60bb4099d2fb4b17b3a2cc874a323577e8db870cd22c60920c`  
		Last Modified: Fri, 11 Jan 2019 11:26:57 GMT  
		Size: 12.5 MB (12504919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22e805ca840d1abcec392afa8d90e0de875ca93dfe0680e24784940fc990d819`  
		Last Modified: Fri, 11 Jan 2019 11:26:52 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eedb850efc629bd03dc72d6c0204586f9f46309639103c96d3ba5f964aeaba8d`  
		Last Modified: Fri, 11 Jan 2019 11:27:00 GMT  
		Size: 15.0 MB (15027223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d83ab29a048cabe65cfd7b7b4ce4b521ffba32cd1aa44e7150b5b94d43c2b69`  
		Last Modified: Fri, 11 Jan 2019 11:26:52 GMT  
		Size: 2.2 KB (2198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36c5059d88355e4c24967d7837f4702d890c3e91b29ff44b8e7df8ba6120c4e3`  
		Last Modified: Fri, 11 Jan 2019 11:26:52 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4def876c28c20732bdd4195fad8a9aadbaecae9ca15a0e948eaf42a989a53b6`  
		Last Modified: Fri, 11 Jan 2019 11:26:52 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40b859f8c1a0dcf62711b25d04b7f19bb139118c87db7e91c40cd7ccff62789b`  
		Last Modified: Fri, 11 Jan 2019 13:44:58 GMT  
		Size: 284.2 KB (284236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1814abbbcc60c8f1c24462eb8dc47f745cefa48246daf5cfdca857829725c08`  
		Last Modified: Fri, 11 Jan 2019 13:44:58 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b742dba48ce1cb3bde9b305cf038ef9a79b85cea257611874fcdee91767fe4a6`  
		Last Modified: Fri, 11 Jan 2019 13:44:54 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57d6f9ae7a02d68d00b5021c6094cb83f881d2c0db79b6bbe8bb8ece97d37921`  
		Last Modified: Fri, 11 Jan 2019 13:44:55 GMT  
		Size: 2.5 MB (2485637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0594c573d027c46238d7fca6e3dbfa69330722ac2092e7b5d948533a4d84564b`  
		Last Modified: Fri, 11 Jan 2019 13:44:54 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75de01c68c15baa5dd95835d11036fef59656ccb052218386adfeca2ccfe8f46`  
		Last Modified: Fri, 11 Jan 2019 13:44:54 GMT  
		Size: 1.8 KB (1832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:356802aa837e0477c136bd67c8c56149c1c944a1179b76c10fe1f20a87854642`  
		Last Modified: Fri, 11 Jan 2019 13:44:54 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `yourls:fpm`

```console
$ docker pull yourls@sha256:0c2ef5de4ad4aaeac18a8a1f8906b915fd0bcc3787413639f1ff4af1ac4d1f62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `yourls:fpm` - linux; amd64

```console
$ docker pull yourls@sha256:26ae05de2a7ac94205e9cdfea1abfcb2a1732580548de2c3fa81f193f9bf06c9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.9 MB (133909463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbddba19b2fbecaa0c622907f8fbfda84cef133464a3a3ff516d42c6aa0bf88d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

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
# Sat, 29 Dec 2018 04:39:01 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Sat, 29 Dec 2018 04:39:01 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 04:39:01 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 04:39:01 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 29 Dec 2018 05:08:52 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 11 Jan 2019 01:18:55 GMT
ENV PHP_VERSION=7.2.14
# Fri, 11 Jan 2019 01:18:55 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror
# Fri, 11 Jan 2019 01:18:55 GMT
ENV PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f PHP_MD5=
# Fri, 11 Jan 2019 01:19:04 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 11 Jan 2019 01:19:04 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 11 Jan 2019 01:24:51 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 11 Jan 2019 01:24:52 GMT
COPY multi:cbc68fef2c8554b9a23fee7eee16ffda927235f929048638240f97172562665c in /usr/local/bin/ 
# Fri, 11 Jan 2019 01:24:53 GMT
RUN docker-php-ext-enable sodium
# Fri, 11 Jan 2019 01:24:53 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 11 Jan 2019 01:24:53 GMT
WORKDIR /var/www/html
# Fri, 11 Jan 2019 01:24:54 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 11 Jan 2019 01:24:54 GMT
EXPOSE 9000
# Fri, 11 Jan 2019 01:24:55 GMT
CMD ["php-fpm"]
# Fri, 11 Jan 2019 03:25:27 GMT
RUN set -ex;     docker-php-ext-install opcache pdo_mysql mysqli
# Fri, 11 Jan 2019 03:25:29 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 11 Jan 2019 03:25:30 GMT
VOLUME [/var/www/html]
# Fri, 11 Jan 2019 03:25:30 GMT
ENV YOURLS_VERSION=1.7.2
# Fri, 11 Jan 2019 03:25:33 GMT
RUN set -ex; 	curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz"; 	tar -xzf yourls.tar.gz -C /usr/src/; 	mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls; 	rm yourls.tar.gz; 	chown -R www-data:www-data /usr/src/yourls
# Fri, 11 Jan 2019 03:25:33 GMT
COPY file:7722c9d76f082fb2683ec1d4befeaddd6c873c885172752cacb787e076d4dbeb in /usr/local/bin/ 
# Fri, 11 Jan 2019 03:25:33 GMT
COPY file:d375afac6cf463942802d2b27f08ef4d6198ac33f536b334f195e2e479c4cd6f in /var/www/html/ 
# Fri, 11 Jan 2019 03:25:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 03:25:35 GMT
CMD ["php-fpm"]
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
	-	`sha256:59cb134d9879a9923c07326dc3a2920705536fffc7736ccf3949428a30c1842a`  
		Last Modified: Fri, 11 Jan 2019 01:53:51 GMT  
		Size: 12.5 MB (12485194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8358df686e1055512214d9a967e00e9bf3f25c3fcefac313053b9a546a7b769`  
		Last Modified: Fri, 11 Jan 2019 01:53:50 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f143a000adfbe19d15e9553db0da1eb0c3ec3e2a604b60a329fad9d6b2bc1d96`  
		Last Modified: Fri, 11 Jan 2019 01:53:55 GMT  
		Size: 28.7 MB (28707927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d88a4a69379d5d7029089d72039f1e607258059ccece9bcf9f10f138bcc8437c`  
		Last Modified: Fri, 11 Jan 2019 01:53:49 GMT  
		Size: 2.2 KB (2189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6df09c82fa9c15288331b9fe31b5ce7f39597ff8cb9770ca4ac95ff5579f539`  
		Last Modified: Fri, 11 Jan 2019 01:53:49 GMT  
		Size: 261.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7780e07c0fe5558d63852d2bc9e2a81254490880b09c8c57418c030b7725e665`  
		Last Modified: Fri, 11 Jan 2019 01:53:49 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa42310f5592c8c5d61820727c59ae88cacc3d1df352b8af959f9ad5ccddce7b`  
		Last Modified: Fri, 11 Jan 2019 01:53:49 GMT  
		Size: 7.8 KB (7800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7533b841e8adb76972c086a62af5f7c6a9072d211e20843bc80e6ae287e984c`  
		Last Modified: Fri, 11 Jan 2019 03:26:59 GMT  
		Size: 280.6 KB (280555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8b6e9007c7e1823c1a4f5c631db9f25f15cf0b1bcd7e5ff6f0198617f814396`  
		Last Modified: Fri, 11 Jan 2019 03:26:59 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7592678cf5cd60efc29c43bd085e426b31a36320a92f23e1340e691bdb8ee2ee`  
		Last Modified: Fri, 11 Jan 2019 03:26:59 GMT  
		Size: 2.5 MB (2485628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cb756da5ee15940306aef8a76efaaebe89291cdc0e270f7c48d6e91b8612c90`  
		Last Modified: Fri, 11 Jan 2019 03:26:59 GMT  
		Size: 1.1 KB (1065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e97983b859657e27410f6cd6c00f0eeddfc501f624049734208af50f30e9a61`  
		Last Modified: Fri, 11 Jan 2019 03:26:59 GMT  
		Size: 1.8 KB (1817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `yourls:fpm` - linux; arm variant v5

```console
$ docker pull yourls@sha256:1cf7ff1ad7ef7764f5b8ca481963093af171a2e77f9c152804bd24be34288a72
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.3 MB (121325631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83a62744fb41906adcfcad53455d34a192c7b14dbca61a297e544411b13a3a60`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Sat, 29 Dec 2018 09:55:31 GMT
ADD file:1f3db2bdb8941ca17968251e2af1378e7f7556627ed60eafb5ee40089810bc8b in / 
# Sat, 29 Dec 2018 09:55:32 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 12:32:24 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Sat, 29 Dec 2018 12:32:24 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Sat, 29 Dec 2018 12:33:02 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:33:04 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 29 Dec 2018 12:33:05 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 29 Dec 2018 12:41:44 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Sat, 29 Dec 2018 12:41:44 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 12:41:44 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 12:41:45 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 29 Dec 2018 12:58:50 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Sat, 29 Dec 2018 12:58:51 GMT
ENV PHP_VERSION=7.2.13
# Sat, 29 Dec 2018 12:58:52 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.13.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.13.tar.xz.asc/from/this/mirror
# Sat, 29 Dec 2018 12:58:52 GMT
ENV PHP_SHA256=14b0429abdb46b65c843e5882c9a8c46b31dfbf279c747293b8ab950c2644a4b PHP_MD5=
# Sat, 29 Dec 2018 12:59:10 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 29 Dec 2018 12:59:11 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 29 Dec 2018 13:03:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 29 Dec 2018 13:03:07 GMT
COPY multi:cbc68fef2c8554b9a23fee7eee16ffda927235f929048638240f97172562665c in /usr/local/bin/ 
# Sat, 29 Dec 2018 13:03:08 GMT
RUN docker-php-ext-enable sodium
# Sat, 29 Dec 2018 13:03:09 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 29 Dec 2018 13:03:10 GMT
WORKDIR /var/www/html
# Sat, 29 Dec 2018 13:03:11 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Sat, 29 Dec 2018 13:03:12 GMT
EXPOSE 9000
# Sat, 29 Dec 2018 13:03:12 GMT
CMD ["php-fpm"]
# Fri, 04 Jan 2019 11:12:20 GMT
RUN set -ex;     docker-php-ext-install opcache pdo_mysql mysqli
# Fri, 04 Jan 2019 11:12:22 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 04 Jan 2019 11:12:22 GMT
VOLUME [/var/www/html]
# Fri, 04 Jan 2019 11:12:22 GMT
ENV YOURLS_VERSION=1.7.2
# Fri, 04 Jan 2019 11:12:25 GMT
RUN set -ex; 	curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz"; 	tar -xzf yourls.tar.gz -C /usr/src/; 	mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls; 	rm yourls.tar.gz; 	chown -R www-data:www-data /usr/src/yourls
# Fri, 04 Jan 2019 11:12:25 GMT
COPY file:7722c9d76f082fb2683ec1d4befeaddd6c873c885172752cacb787e076d4dbeb in /usr/local/bin/ 
# Fri, 04 Jan 2019 11:12:26 GMT
COPY file:d375afac6cf463942802d2b27f08ef4d6198ac33f536b334f195e2e479c4cd6f in /var/www/html/ 
# Fri, 04 Jan 2019 11:12:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 04 Jan 2019 11:12:27 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:e040f73e39f2c2a1a8429ff270c2d629ef2630ac31581228037724d707862b22`  
		Last Modified: Sat, 29 Dec 2018 10:03:16 GMT  
		Size: 21.2 MB (21167776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dc5107d4e4251d4ef9002026f490e573eff661fe6e2278d1bd3a7d121a3c321`  
		Last Modified: Sat, 29 Dec 2018 15:11:10 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca61229a1118271adc19db58c172d9ceaa14ceb0aef16b2fb0b4237c08f6fe9e`  
		Last Modified: Sat, 29 Dec 2018 15:11:32 GMT  
		Size: 57.5 MB (57464650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2be23d64816b54f39f39a88b24bd971081a558160fdf7667ec44f47c45989c9`  
		Last Modified: Sat, 29 Dec 2018 15:11:10 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c490b86c4e9dfbe5a82ddd1640f9f0e0932d4d31215ebfcfb8d6e58bfcc44028`  
		Last Modified: Sat, 29 Dec 2018 15:14:01 GMT  
		Size: 12.4 MB (12442583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3da0708f79abf62d1c022d32cbdaa42258834cacf4901085284672d451021958`  
		Last Modified: Sat, 29 Dec 2018 15:13:58 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab64bec714814213d7b09ad18af25e2455e4dd50f6862d36aeb2031dc56514ea`  
		Last Modified: Sat, 29 Dec 2018 15:14:06 GMT  
		Size: 27.5 MB (27480691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89f8b315cb1f42bcbb6cf2d26daef27ab910d598ebdaa48965cae783a50e7f2b`  
		Last Modified: Sat, 29 Dec 2018 15:13:57 GMT  
		Size: 2.2 KB (2192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f48d933ccdb1a69e07a558caab40830dcbe6e7425b1ad1e8a9cbb5d25c5e1a2`  
		Last Modified: Sat, 29 Dec 2018 15:13:57 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c69b137eb49d2634bf1e3a93f65d63e3b18d95857d3a69d601fc341e28ca658e`  
		Last Modified: Sat, 29 Dec 2018 15:13:57 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be34c72dbda7bbdb3652f7aa43ea2026ebca033562269ee975fef5b81f5b7f7e`  
		Last Modified: Sat, 29 Dec 2018 15:13:57 GMT  
		Size: 7.8 KB (7801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:258aebfbc10c5d59b9a951ba1c79943ea4e8d684f61d3406f4257ef0438ff33b`  
		Last Modified: Fri, 04 Jan 2019 11:13:13 GMT  
		Size: 269.7 KB (269719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc7d431187d3d8c8e72a255de63785025ea4374ac15775db7d38fa91d4e2d9c9`  
		Last Modified: Fri, 04 Jan 2019 11:13:13 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5022ad00d441d23178b71d9609106aef87e3ada6ae7fc5496de66a475924ea7`  
		Last Modified: Fri, 04 Jan 2019 11:13:14 GMT  
		Size: 2.5 MB (2485631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14194467aad24e3d56646647c1a4826cb0dad406e84d436275c19d7471749079`  
		Last Modified: Fri, 04 Jan 2019 11:13:13 GMT  
		Size: 1.1 KB (1065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76b71a0ff4d38218a65e94bf966dbd0b36aa9465964444411f9b92887801ada0`  
		Last Modified: Fri, 04 Jan 2019 11:13:13 GMT  
		Size: 1.8 KB (1817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `yourls:fpm` - linux; arm variant v7

```console
$ docker pull yourls@sha256:1d1966cdf09165b1ab98bb6a9c115f0ba63652fc29d732f508263c062600bc66
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.5 MB (114483762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8cef7cb88d1dd7473073a479f639eea6050ea61341ab376d38d91896b92ad37`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Sat, 29 Dec 2018 13:04:57 GMT
ADD file:287bc4fa3803b40afca4bcac26d92079fb862f7b968e960e01ae536b1b5c7aea in / 
# Sat, 29 Dec 2018 13:04:57 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 15:52:23 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Sat, 29 Dec 2018 15:52:23 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Sat, 29 Dec 2018 15:52:54 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 29 Dec 2018 15:52:55 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 29 Dec 2018 15:52:57 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 29 Dec 2018 16:00:56 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Sat, 29 Dec 2018 16:00:56 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 16:00:56 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 16:00:57 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 29 Dec 2018 16:35:39 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 11 Jan 2019 13:24:55 GMT
ENV PHP_VERSION=7.2.14
# Fri, 11 Jan 2019 13:24:55 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror
# Fri, 11 Jan 2019 13:24:56 GMT
ENV PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f PHP_MD5=
# Fri, 11 Jan 2019 13:25:09 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 11 Jan 2019 13:25:09 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 11 Jan 2019 13:28:42 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 11 Jan 2019 13:28:43 GMT
COPY multi:cbc68fef2c8554b9a23fee7eee16ffda927235f929048638240f97172562665c in /usr/local/bin/ 
# Fri, 11 Jan 2019 13:28:44 GMT
RUN docker-php-ext-enable sodium
# Fri, 11 Jan 2019 13:28:45 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 11 Jan 2019 13:28:45 GMT
WORKDIR /var/www/html
# Fri, 11 Jan 2019 13:28:47 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 11 Jan 2019 13:28:47 GMT
EXPOSE 9000
# Fri, 11 Jan 2019 13:28:48 GMT
CMD ["php-fpm"]
# Fri, 11 Jan 2019 14:42:22 GMT
RUN set -ex;     docker-php-ext-install opcache pdo_mysql mysqli
# Fri, 11 Jan 2019 14:42:24 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 11 Jan 2019 14:42:24 GMT
VOLUME [/var/www/html]
# Fri, 11 Jan 2019 14:42:25 GMT
ENV YOURLS_VERSION=1.7.2
# Fri, 11 Jan 2019 14:42:28 GMT
RUN set -ex; 	curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz"; 	tar -xzf yourls.tar.gz -C /usr/src/; 	mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls; 	rm yourls.tar.gz; 	chown -R www-data:www-data /usr/src/yourls
# Fri, 11 Jan 2019 14:42:29 GMT
COPY file:7722c9d76f082fb2683ec1d4befeaddd6c873c885172752cacb787e076d4dbeb in /usr/local/bin/ 
# Fri, 11 Jan 2019 14:42:29 GMT
COPY file:d375afac6cf463942802d2b27f08ef4d6198ac33f536b334f195e2e479c4cd6f in /var/www/html/ 
# Fri, 11 Jan 2019 14:42:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 14:42:30 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:eb2ab017daa46c13a41d60225632e89c8b5c24a9bdafb2b75b1d415830b41e6b`  
		Last Modified: Sat, 29 Dec 2018 13:12:36 GMT  
		Size: 19.3 MB (19277755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bdd3055b30ec26315bbe73533843047ed98fec35dc5acc5cb0d0878ab8ed597`  
		Last Modified: Mon, 31 Dec 2018 19:12:59 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f79128a6d00730d8aaed6af05f3590337fcecd13119d056c272e9d01043f441`  
		Last Modified: Mon, 31 Dec 2018 19:13:15 GMT  
		Size: 53.6 MB (53582251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56fcb7f3e035561a3c9eced964fa2bf0fb33d76092839e59092e773161523cf0`  
		Last Modified: Mon, 31 Dec 2018 19:12:59 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:802eefdb9d134ccd3ddc7694ddbaab63b7d2fb63cc3a5e6bff086425ad43df6e`  
		Last Modified: Fri, 11 Jan 2019 14:12:47 GMT  
		Size: 12.5 MB (12482937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39bfe39d4c9fb7d44a3c80ab3089176061f3c0b32c96c1aa1d31b431b8e86e63`  
		Last Modified: Fri, 11 Jan 2019 14:12:45 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ee186b63800fe82f95c77a3f49036ead842b8e0fe973062a836ebbc9aaed933`  
		Last Modified: Fri, 11 Jan 2019 14:12:52 GMT  
		Size: 26.4 MB (26394230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85aee9a5d890cf991908ed8382a4332d10fbd262580f91e5019acdd4b28e922e`  
		Last Modified: Fri, 11 Jan 2019 14:12:44 GMT  
		Size: 2.2 KB (2190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45572b53ccb475f2e16a6fa31a0fe792c71c80c6371a9ec5b1f4626fc67f88a7`  
		Last Modified: Fri, 11 Jan 2019 14:12:44 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:368570cf648a5678190d39c059956f879eb44c847a048ecb4f1e11509af77790`  
		Last Modified: Fri, 11 Jan 2019 14:12:44 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93e67412e3d7d3ced9f1ea8c2cc13795954d294400e8db227931648e3dc900fc`  
		Last Modified: Fri, 11 Jan 2019 14:12:44 GMT  
		Size: 7.8 KB (7801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30b8492480bf471068c59ba7bba66622cd0a60b13178cd5ac1e237023f3b2bbf`  
		Last Modified: Fri, 11 Jan 2019 14:43:08 GMT  
		Size: 246.4 KB (246380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421d59701eb5a85dd86ab856613f08baa127e6bf0916c5a9fb30eebd94637ce1`  
		Last Modified: Fri, 11 Jan 2019 14:43:08 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c801b4eaf3c54ad0ae389ade81582002f60ad5bc6e5a3c1939ddf268bfed0448`  
		Last Modified: Fri, 11 Jan 2019 14:43:09 GMT  
		Size: 2.5 MB (2485630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0930434773c066749891c95ef77b24e0dd07143ae3fa2389db80851869103f7`  
		Last Modified: Fri, 11 Jan 2019 14:43:09 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aecd25d807002cb7b3a31b3738d7dcbdf925b764874bf1f480febf6a65f17095`  
		Last Modified: Fri, 11 Jan 2019 14:43:09 GMT  
		Size: 1.8 KB (1817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `yourls:fpm` - linux; arm64 variant v8

```console
$ docker pull yourls@sha256:2941a26926bbfd0c7696e536fdb29c286bdd22de4a3ee6ffe20b88d0e745091d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.7 MB (120670460 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:695ced429d52797ce7bfc996b80adddef859e5fa9e601998987276c050164915`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:46 GMT
ADD file:e4db5c28a0f74e32be4419aae491e4b9dc7402f3640369289e24c52028c871ad in / 
# Sat, 29 Dec 2018 10:08:47 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 21:39:33 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Sat, 29 Dec 2018 21:39:33 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Sat, 29 Dec 2018 21:41:51 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 29 Dec 2018 21:41:52 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 29 Dec 2018 21:41:54 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 29 Dec 2018 22:04:55 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Sat, 29 Dec 2018 22:04:56 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 22:04:57 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 22:04:57 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 29 Dec 2018 22:46:42 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 11 Jan 2019 11:38:12 GMT
ENV PHP_VERSION=7.2.14
# Fri, 11 Jan 2019 11:38:13 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror
# Fri, 11 Jan 2019 11:38:13 GMT
ENV PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f PHP_MD5=
# Fri, 11 Jan 2019 11:38:46 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 11 Jan 2019 11:38:47 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 11 Jan 2019 11:47:20 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 11 Jan 2019 11:47:25 GMT
COPY multi:cbc68fef2c8554b9a23fee7eee16ffda927235f929048638240f97172562665c in /usr/local/bin/ 
# Fri, 11 Jan 2019 11:47:31 GMT
RUN docker-php-ext-enable sodium
# Fri, 11 Jan 2019 11:47:32 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 11 Jan 2019 11:47:34 GMT
WORKDIR /var/www/html
# Fri, 11 Jan 2019 11:47:38 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 11 Jan 2019 11:47:39 GMT
EXPOSE 9000
# Fri, 11 Jan 2019 11:47:41 GMT
CMD ["php-fpm"]
# Fri, 11 Jan 2019 15:06:19 GMT
RUN set -ex;     docker-php-ext-install opcache pdo_mysql mysqli
# Fri, 11 Jan 2019 15:06:22 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 11 Jan 2019 15:06:22 GMT
VOLUME [/var/www/html]
# Fri, 11 Jan 2019 15:06:23 GMT
ENV YOURLS_VERSION=1.7.2
# Fri, 11 Jan 2019 15:06:28 GMT
RUN set -ex; 	curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz"; 	tar -xzf yourls.tar.gz -C /usr/src/; 	mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls; 	rm yourls.tar.gz; 	chown -R www-data:www-data /usr/src/yourls
# Fri, 11 Jan 2019 15:06:29 GMT
COPY file:7722c9d76f082fb2683ec1d4befeaddd6c873c885172752cacb787e076d4dbeb in /usr/local/bin/ 
# Fri, 11 Jan 2019 15:06:29 GMT
COPY file:d375afac6cf463942802d2b27f08ef4d6198ac33f536b334f195e2e479c4cd6f in /var/www/html/ 
# Fri, 11 Jan 2019 15:06:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 15:06:31 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:1a07b0163994a6d3328beeaa3400f6304e68548ffb84deefcb74427a6b65a489`  
		Last Modified: Sat, 29 Dec 2018 10:15:04 GMT  
		Size: 20.3 MB (20337511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da8dc61ccacab0c571f2793c6c5400180816557fa0140990f997519be3471012`  
		Last Modified: Sun, 30 Dec 2018 01:03:31 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59be51dca15077e7f02edb4376d3e8e194896c4e706c9c03c2fd2d2af47f8cdc`  
		Last Modified: Sun, 30 Dec 2018 01:03:58 GMT  
		Size: 57.6 MB (57606226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f391fc42cee2e19f185ac34d4d4e8404a3209ed5c17b369dc30bdf3a0d29915`  
		Last Modified: Sun, 30 Dec 2018 01:03:31 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8b4bd68fda01b808bffeb6d2ca1a16e7212d9f1b1fea8cb1cfc02ba857473fa`  
		Last Modified: Fri, 11 Jan 2019 13:28:36 GMT  
		Size: 12.5 MB (12483187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b35c504961fd510f4430c3eedfb20c4597f2c6c11fc345babf163b2da375ea0`  
		Last Modified: Fri, 11 Jan 2019 13:28:33 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e316ed52b8b1f111920f59d95ff5430bec008ed8265b7a4f77c2fd539c8dc14b`  
		Last Modified: Fri, 11 Jan 2019 13:28:45 GMT  
		Size: 27.5 MB (27481051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b63a7ded48d7b0325987a234c51806ed095393089fa3bc7f8f070c26aa3cfd08`  
		Last Modified: Fri, 11 Jan 2019 13:28:31 GMT  
		Size: 2.2 KB (2186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:541a7e548b675a23496524efadc152fdb1b7eec6711ecb2e9682cb37bf7969fd`  
		Last Modified: Fri, 11 Jan 2019 13:28:31 GMT  
		Size: 257.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:288a98ed027c68937d19843afd7c4b77266cd092e017f4adc9c15368c6a76e53`  
		Last Modified: Fri, 11 Jan 2019 13:28:31 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:607b3fab8b715de1d2992b1f37c92c2c57b23e05b32483fa8ffae7ea1719da40`  
		Last Modified: Fri, 11 Jan 2019 13:28:31 GMT  
		Size: 7.8 KB (7800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f856cf36ae0f7fb40395f6351153800f2238ee2d496ea66672c5ad2f8f2bdb0f`  
		Last Modified: Fri, 11 Jan 2019 15:09:31 GMT  
		Size: 262.3 KB (262348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d78a6e76c6ab1e481a7eac9f7e22f99b534fa037a88c27eec2bc107da2e801c6`  
		Last Modified: Fri, 11 Jan 2019 15:09:31 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d5f3f82c896e099092bfbeb6ab7deceafc825a81886354985314acff9c6d738`  
		Last Modified: Fri, 11 Jan 2019 15:09:32 GMT  
		Size: 2.5 MB (2485626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce9e9f07b8539361a54dcf3712c60e471a64b266a43f3e2a7112f11ac21d9bac`  
		Last Modified: Fri, 11 Jan 2019 15:09:31 GMT  
		Size: 1.1 KB (1064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89fbb3855eba5b0a545bf86f3fe994f5634ea20dc742aabd7bcf4b87dcd8c4f6`  
		Last Modified: Fri, 11 Jan 2019 15:09:31 GMT  
		Size: 1.8 KB (1813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `yourls:fpm` - linux; 386

```console
$ docker pull yourls@sha256:096e415ec95916061c648ad526a1429de11cce1a1e9bce4ac9f315020e2feea1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.2 MB (139244431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:414bd62c76cbdf3a92fac724b5a5a9fc93fa57a9446fc63f2f6c53a490c15290`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Sat, 29 Dec 2018 11:56:14 GMT
ADD file:aaa0661c64d46388f46e71ba3d172f3208f6b943dbc1a86e0b50ca5080bdb3ee in / 
# Sat, 29 Dec 2018 11:56:15 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 21:36:24 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Sat, 29 Dec 2018 21:36:24 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Sat, 29 Dec 2018 21:36:48 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 29 Dec 2018 21:36:48 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 29 Dec 2018 21:36:49 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 29 Dec 2018 21:49:42 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Sat, 29 Dec 2018 21:49:42 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 21:49:43 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 21:49:43 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 29 Dec 2018 22:11:26 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 11 Jan 2019 12:54:26 GMT
ENV PHP_VERSION=7.2.14
# Fri, 11 Jan 2019 12:54:26 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror
# Fri, 11 Jan 2019 12:54:26 GMT
ENV PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f PHP_MD5=
# Fri, 11 Jan 2019 12:54:36 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 11 Jan 2019 12:54:36 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 11 Jan 2019 13:00:04 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 11 Jan 2019 13:00:05 GMT
COPY multi:cbc68fef2c8554b9a23fee7eee16ffda927235f929048638240f97172562665c in /usr/local/bin/ 
# Fri, 11 Jan 2019 13:00:05 GMT
RUN docker-php-ext-enable sodium
# Fri, 11 Jan 2019 13:00:05 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 11 Jan 2019 13:00:06 GMT
WORKDIR /var/www/html
# Fri, 11 Jan 2019 13:00:06 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 11 Jan 2019 13:00:07 GMT
EXPOSE 9000
# Fri, 11 Jan 2019 13:00:07 GMT
CMD ["php-fpm"]
# Fri, 11 Jan 2019 16:52:17 GMT
RUN set -ex;     docker-php-ext-install opcache pdo_mysql mysqli
# Fri, 11 Jan 2019 16:52:18 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 11 Jan 2019 16:52:18 GMT
VOLUME [/var/www/html]
# Fri, 11 Jan 2019 16:52:18 GMT
ENV YOURLS_VERSION=1.7.2
# Fri, 11 Jan 2019 16:52:20 GMT
RUN set -ex; 	curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz"; 	tar -xzf yourls.tar.gz -C /usr/src/; 	mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls; 	rm yourls.tar.gz; 	chown -R www-data:www-data /usr/src/yourls
# Fri, 11 Jan 2019 16:52:20 GMT
COPY file:7722c9d76f082fb2683ec1d4befeaddd6c873c885172752cacb787e076d4dbeb in /usr/local/bin/ 
# Fri, 11 Jan 2019 16:52:20 GMT
COPY file:d375afac6cf463942802d2b27f08ef4d6198ac33f536b334f195e2e479c4cd6f in /var/www/html/ 
# Fri, 11 Jan 2019 16:52:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 16:52:21 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:9a1a13172ed974323f7c35153e8b23b8fa1c85355b6b26cc3127e640e45ef0aa`  
		Last Modified: Sat, 29 Dec 2018 12:10:44 GMT  
		Size: 23.1 MB (23133155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5094d5d656a95c6aa92f5f2adc56a794564b1e340bc4065db2947d7ce0c1a394`  
		Last Modified: Sun, 30 Dec 2018 01:57:01 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb2ab2fc6c3875a5ebec4eb6dae731467d2cfbe0c4372b4db6b7f8faad9917e`  
		Last Modified: Sun, 30 Dec 2018 01:57:20 GMT  
		Size: 71.5 MB (71503745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05469bc6d7085ba5736c7bf95032d0bb750ab2fa43b29049cfee7ba36c391e79`  
		Last Modified: Sun, 30 Dec 2018 01:57:01 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f96c042f31352ffc4706d54dd5e87a2e4f9502aa22ab1a495d43088b47d8d4c`  
		Last Modified: Fri, 11 Jan 2019 14:54:27 GMT  
		Size: 12.5 MB (12484697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c48899a82e4ff4a06d3fe22e3b19d8487b872aab41540f5e8a3b8b96f0fa6fe`  
		Last Modified: Fri, 11 Jan 2019 14:54:26 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb564ff7a873d5c5065ad5333c5bc35a0ccf44be3e542bef90fd6bcedce00417`  
		Last Modified: Fri, 11 Jan 2019 14:54:32 GMT  
		Size: 29.3 MB (29332789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2679b31a3bde8a45d1ef9e44f3bb3a7381ffe8cb994738674cac4cc92c8bc32d`  
		Last Modified: Fri, 11 Jan 2019 14:54:25 GMT  
		Size: 2.2 KB (2189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:618cc564acfe7a10b6ed49868a21c4b895588acef6a135912122f103d3f33567`  
		Last Modified: Fri, 11 Jan 2019 14:54:25 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:418806b632b4a50647c6e7c2bfb6dd19ad2daa5023b8be70e9d3e615d318f040`  
		Last Modified: Fri, 11 Jan 2019 14:54:25 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:333219bdf344bcf1ddfd7a0f198febcf422a761618cd75b05f7881552e764252`  
		Last Modified: Fri, 11 Jan 2019 14:54:25 GMT  
		Size: 7.8 KB (7801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4168eafa28e79883bc619e10017215dc1fc9f280e09b1e71f50e76e706819ac`  
		Last Modified: Fri, 11 Jan 2019 16:53:50 GMT  
		Size: 289.9 KB (289902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eae1adb6eb49b3a116a903573ff5fd1998d9e1dcf5c50f3af14c9b4e1ca10e53`  
		Last Modified: Fri, 11 Jan 2019 16:53:50 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9865682e4af072344267a830c64148acfd3a5d36b1f7ec27c42fc166c3d5abf`  
		Last Modified: Fri, 11 Jan 2019 16:53:51 GMT  
		Size: 2.5 MB (2485626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba60b7371f55254def1e3ab6a9b9e354b4d4891c5ecf0db18e1d2cca00a58e37`  
		Last Modified: Fri, 11 Jan 2019 16:53:50 GMT  
		Size: 1.1 KB (1065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8819e1d182f4fee44792906ebf231c041541931d98ce0e63bbe678446a63d4f9`  
		Last Modified: Fri, 11 Jan 2019 16:53:50 GMT  
		Size: 1.8 KB (1817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `yourls:fpm` - linux; ppc64le

```console
$ docker pull yourls@sha256:f98531a41049111ac940f41b527876054de09d6ff13a83520bbf7b967e2cb6d9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.4 MB (128396223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19d5fd3f34d1be1ec2dd5bfedf56dfb364819e3222770c1ca95800db5901986f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Sat, 29 Dec 2018 09:22:40 GMT
ADD file:11cdf0dbdac1a774d74f30e9954e3cf02c390d2280ce747bc95a3b774259f226 in / 
# Sat, 29 Dec 2018 09:22:44 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 13:02:33 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Sat, 29 Dec 2018 13:02:35 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Sat, 29 Dec 2018 13:04:54 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:04:59 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 29 Dec 2018 13:05:04 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 29 Dec 2018 13:18:34 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Sat, 29 Dec 2018 13:18:37 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 13:18:39 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 13:18:42 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 29 Dec 2018 13:44:45 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 11 Jan 2019 10:20:48 GMT
ENV PHP_VERSION=7.2.14
# Fri, 11 Jan 2019 10:20:50 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror
# Fri, 11 Jan 2019 10:20:52 GMT
ENV PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f PHP_MD5=
# Fri, 11 Jan 2019 10:21:24 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 11 Jan 2019 10:21:25 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 11 Jan 2019 10:25:46 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 11 Jan 2019 10:25:49 GMT
COPY multi:cbc68fef2c8554b9a23fee7eee16ffda927235f929048638240f97172562665c in /usr/local/bin/ 
# Fri, 11 Jan 2019 10:25:53 GMT
RUN docker-php-ext-enable sodium
# Fri, 11 Jan 2019 10:25:56 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 11 Jan 2019 10:25:57 GMT
WORKDIR /var/www/html
# Fri, 11 Jan 2019 10:26:01 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 11 Jan 2019 10:26:03 GMT
EXPOSE 9000
# Fri, 11 Jan 2019 10:26:05 GMT
CMD ["php-fpm"]
# Fri, 11 Jan 2019 13:42:50 GMT
RUN set -ex;     docker-php-ext-install opcache pdo_mysql mysqli
# Fri, 11 Jan 2019 13:42:53 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 11 Jan 2019 13:42:54 GMT
VOLUME [/var/www/html]
# Fri, 11 Jan 2019 13:42:56 GMT
ENV YOURLS_VERSION=1.7.2
# Fri, 11 Jan 2019 13:43:02 GMT
RUN set -ex; 	curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz"; 	tar -xzf yourls.tar.gz -C /usr/src/; 	mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls; 	rm yourls.tar.gz; 	chown -R www-data:www-data /usr/src/yourls
# Fri, 11 Jan 2019 13:43:03 GMT
COPY file:7722c9d76f082fb2683ec1d4befeaddd6c873c885172752cacb787e076d4dbeb in /usr/local/bin/ 
# Fri, 11 Jan 2019 13:43:04 GMT
COPY file:d375afac6cf463942802d2b27f08ef4d6198ac33f536b334f195e2e479c4cd6f in /var/www/html/ 
# Fri, 11 Jan 2019 13:43:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 13:43:07 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:ca671aebac61774c6bfa23dd5b097e3a135a33f3987318158787030ee978173a`  
		Last Modified: Sat, 29 Dec 2018 09:28:38 GMT  
		Size: 22.7 MB (22746826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55c9e443128efed70bcb2c05fbf1b7b3c63735856c07a31f95f3422e8e5d6be3`  
		Last Modified: Sat, 29 Dec 2018 15:02:06 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26502f7e153105ac601f4d12e9b72baf9021b49b992fe619264a1933c2daf6b4`  
		Last Modified: Sat, 29 Dec 2018 15:02:32 GMT  
		Size: 61.8 MB (61833074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d327479a214f245c363cea23d6878780e6dbb819938b9511e7b69e2e17e81fbf`  
		Last Modified: Sat, 29 Dec 2018 15:02:06 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a0d4193ba60b5f5f97f688e2de16aad88891b322605b2d11200ba45df50232`  
		Last Modified: Fri, 11 Jan 2019 11:27:21 GMT  
		Size: 12.5 MB (12483483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eccec9fad4aa5d66e47e5a5add6bb729a6e35a675cc25e5f5a094f1ac7c2c7b9`  
		Last Modified: Fri, 11 Jan 2019 11:27:19 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc544ceecc5ea9a6af356fcb8fa9514601b9eb8dbb3b4e89a7514943a1d7bb75`  
		Last Modified: Fri, 11 Jan 2019 11:27:26 GMT  
		Size: 28.5 MB (28548391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32df76e1b2562805df3fc19b39edb226f5b55f2f308235ea1110bf3967598ffc`  
		Last Modified: Fri, 11 Jan 2019 11:27:17 GMT  
		Size: 2.2 KB (2188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6a78c22e48562710e0b2efac92cfe69e96cca168fb8073c07f6a3d90b93ddae`  
		Last Modified: Fri, 11 Jan 2019 11:27:17 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb9e5f88e13292053860abea7ba0084d748c243d9714dc801d9338426bc4ce70`  
		Last Modified: Fri, 11 Jan 2019 11:27:17 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c5864e998d42b19f5ea1905e6c186ab3e961c3ee161b5385da0e31b5f839cab`  
		Last Modified: Fri, 11 Jan 2019 11:27:17 GMT  
		Size: 7.8 KB (7800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:104baa47f8b5c4520f8ecde9937f2791af1db8086fa379c0c3595dfce9bffa9a`  
		Last Modified: Fri, 11 Jan 2019 13:45:35 GMT  
		Size: 284.2 KB (284240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1133676fd186af3dc557e80a38abb6020577b0e5ccb3cfb4bf406b6dede722c6`  
		Last Modified: Fri, 11 Jan 2019 13:45:35 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e319e6216dbd6b10c6ec6b753ccd7b8227174c5864fbf5021a6d8bb40ed76ee5`  
		Last Modified: Fri, 11 Jan 2019 13:45:35 GMT  
		Size: 2.5 MB (2485630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8efacc89b0ff6e4f793cc68bf74162851f4365c60747e08e98cc9f149ab4355f`  
		Last Modified: Fri, 11 Jan 2019 13:45:35 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:148e9c1925b22ebbb7591f954b714f1b3fa51c79dd59b34dcc6c812037deb9c9`  
		Last Modified: Fri, 11 Jan 2019 13:45:35 GMT  
		Size: 1.8 KB (1818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `yourls:fpm-alpine`

```console
$ docker pull yourls@sha256:4994030dcf2d6fba6a49865ad554021d1ebfbabcfc2f0d172486952af4bcdd84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `yourls:fpm-alpine` - linux; amd64

```console
$ docker pull yourls@sha256:a272259851325e34472b9a3c5a5d12a7f2809302bdd08dfc95e2e4203763a079
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.1 MB (35096772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84f9b16cb1d16f6ac523a816266bce854dfd99a8a6829a2278d5496468221462`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 01:27:04 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 21 Dec 2018 01:27:06 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Fri, 21 Dec 2018 01:27:07 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 21 Dec 2018 01:27:07 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 21 Dec 2018 01:27:08 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 21 Dec 2018 01:39:27 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Fri, 21 Dec 2018 01:39:27 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 21 Dec 2018 01:39:27 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 21 Dec 2018 01:39:28 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 21 Dec 2018 02:14:18 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 11 Jan 2019 01:37:31 GMT
ENV PHP_VERSION=7.2.14
# Fri, 11 Jan 2019 01:37:31 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror
# Fri, 11 Jan 2019 01:37:31 GMT
ENV PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f PHP_MD5=
# Fri, 11 Jan 2019 01:37:36 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 11 Jan 2019 01:37:36 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 11 Jan 2019 01:43:54 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libsodium-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 11 Jan 2019 01:43:54 GMT
COPY multi:cbc68fef2c8554b9a23fee7eee16ffda927235f929048638240f97172562665c in /usr/local/bin/ 
# Fri, 11 Jan 2019 01:43:55 GMT
RUN docker-php-ext-enable sodium
# Fri, 11 Jan 2019 01:43:55 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 11 Jan 2019 01:43:56 GMT
WORKDIR /var/www/html
# Fri, 11 Jan 2019 01:43:56 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 11 Jan 2019 01:43:57 GMT
EXPOSE 9000
# Fri, 11 Jan 2019 01:43:57 GMT
CMD ["php-fpm"]
# Fri, 11 Jan 2019 03:26:23 GMT
RUN set -ex;     docker-php-ext-install opcache pdo_mysql mysqli
# Fri, 11 Jan 2019 03:26:25 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 11 Jan 2019 03:26:26 GMT
RUN apk add --no-cache bash
# Fri, 11 Jan 2019 03:26:27 GMT
VOLUME [/var/www/html]
# Fri, 11 Jan 2019 03:26:27 GMT
ENV YOURLS_VERSION=1.7.2
# Fri, 11 Jan 2019 03:26:30 GMT
RUN set -ex; 	curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz"; 	tar -xzf yourls.tar.gz -C /usr/src/; 	mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls; 	rm yourls.tar.gz; 	chown -R www-data:www-data /usr/src/yourls
# Fri, 11 Jan 2019 03:26:31 GMT
COPY file:7722c9d76f082fb2683ec1d4befeaddd6c873c885172752cacb787e076d4dbeb in /usr/local/bin/ 
# Fri, 11 Jan 2019 03:26:31 GMT
COPY file:d375afac6cf463942802d2b27f08ef4d6198ac33f536b334f195e2e479c4cd6f in /var/www/html/ 
# Fri, 11 Jan 2019 03:26:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 03:26:32 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d207535cd57f878f70cace5fa6b787bea470b519e83a0ad0d8b65fab8c3c4e6d`  
		Last Modified: Fri, 21 Dec 2018 03:57:44 GMT  
		Size: 1.4 MB (1353714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1167ab95319c6a4c7a06ffb91e63738c89f46e9005296b25e2f2ea414b102a16`  
		Last Modified: Fri, 21 Dec 2018 03:57:44 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bff34bff7f50ba85c4ee1c081add1128c1e00de9eb29733452f99cd0508cd0e0`  
		Last Modified: Fri, 21 Dec 2018 03:57:44 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09fbf86b8ee75311d14ab1f14e52c487825f8abfd673ed327b74ada7b8fa9a4`  
		Last Modified: Fri, 11 Jan 2019 01:54:29 GMT  
		Size: 12.2 MB (12176072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cfe903e31f6c8457c1a157f44e5f89cfa1201cbf4b732e84ab0bb600bfc2bea`  
		Last Modified: Fri, 11 Jan 2019 01:54:28 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88d3f120681c5f895e4e7abba7fec687dbc6351dc71c799068b6fc87d3e821b9`  
		Last Modified: Fri, 11 Jan 2019 01:54:31 GMT  
		Size: 15.9 MB (15850690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9077db937f31b26ee5611ad3ae7bc0990dfa2cfad23190c7520ad48940c188fa`  
		Last Modified: Fri, 11 Jan 2019 01:54:27 GMT  
		Size: 2.2 KB (2173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bb3fe9faa6ea3ab065ca5c490b9d3e73402b2d4eafb428ec374b5252256de61`  
		Last Modified: Fri, 11 Jan 2019 01:54:27 GMT  
		Size: 71.8 KB (71846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17142adf57d1cd7af7e226398f6081ca1d67538db0b95590cc2c07983780b236`  
		Last Modified: Fri, 11 Jan 2019 01:54:27 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36147ae6ebdd27e07bff79107107a6966911a54511ebb47e04c1f557c590ba8b`  
		Last Modified: Fri, 11 Jan 2019 01:54:27 GMT  
		Size: 7.8 KB (7783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:215c2985fd751a2f25cca3a1af48e9dec3cb0dad991ce91b9d2eb7a7070b8a21`  
		Last Modified: Fri, 11 Jan 2019 03:27:06 GMT  
		Size: 353.7 KB (353654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77649ddbc6728b419ddd3d5e4b92aa55d54b50a546756a5c16ffea3efab7f2b4`  
		Last Modified: Fri, 11 Jan 2019 03:27:05 GMT  
		Size: 336.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6aa847bf0d2f6256d6eadb75fb0e1343e92634c3f0d33a537e77bdf08788095`  
		Last Modified: Fri, 11 Jan 2019 03:27:05 GMT  
		Size: 582.9 KB (582916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11a240cc06144d0b4fdc53ed6bc9141fb4241a5d098ceba84f90ba8a2d3792e6`  
		Last Modified: Fri, 11 Jan 2019 03:27:06 GMT  
		Size: 2.5 MB (2485639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8620e002af4e3a727ec840b7027ddfdadaae85bfde6280c323f36749d98b7bae`  
		Last Modified: Fri, 11 Jan 2019 03:27:05 GMT  
		Size: 1.1 KB (1059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3db03d63148f25dfe7bb0a5a298dfe1628f60d26d388ea421505fd9bbc7f636c`  
		Last Modified: Fri, 11 Jan 2019 03:27:05 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `yourls:fpm-alpine` - linux; arm variant v6

```console
$ docker pull yourls@sha256:86adda5b8ef902a1aed3577a88e0a159fd8bb62da6aaad15958eb444533165bc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.9 MB (33932913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:471b9d2e3dff11c70a3069d2ea2975c918a9b0f05742a265a0bbc7effbc96b22`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 21 Dec 2018 08:49:49 GMT
ADD file:38d34e3ff051a263eab785aca5763d350b82063f0356752117e168349d9e3811 in / 
# Fri, 21 Dec 2018 08:49:50 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:50 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 09:57:17 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 21 Dec 2018 09:57:19 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Fri, 21 Dec 2018 09:57:21 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 21 Dec 2018 09:57:22 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 21 Dec 2018 09:57:23 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 21 Dec 2018 10:02:04 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Fri, 21 Dec 2018 10:02:04 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 21 Dec 2018 10:02:04 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 21 Dec 2018 10:02:05 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 21 Dec 2018 10:16:09 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 11 Jan 2019 09:08:50 GMT
ENV PHP_VERSION=7.2.14
# Fri, 11 Jan 2019 09:08:50 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror
# Fri, 11 Jan 2019 09:08:50 GMT
ENV PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f PHP_MD5=
# Fri, 11 Jan 2019 09:08:56 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 11 Jan 2019 09:08:56 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 11 Jan 2019 09:12:05 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libsodium-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 11 Jan 2019 09:12:07 GMT
COPY multi:cbc68fef2c8554b9a23fee7eee16ffda927235f929048638240f97172562665c in /usr/local/bin/ 
# Fri, 11 Jan 2019 09:12:08 GMT
RUN docker-php-ext-enable sodium
# Fri, 11 Jan 2019 09:12:09 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 11 Jan 2019 09:12:09 GMT
WORKDIR /var/www/html
# Fri, 11 Jan 2019 09:12:10 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 11 Jan 2019 09:12:11 GMT
EXPOSE 9000
# Fri, 11 Jan 2019 09:12:11 GMT
CMD ["php-fpm"]
# Fri, 11 Jan 2019 10:00:12 GMT
RUN set -ex;     docker-php-ext-install opcache pdo_mysql mysqli
# Fri, 11 Jan 2019 10:00:14 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 11 Jan 2019 10:00:16 GMT
RUN apk add --no-cache bash
# Fri, 11 Jan 2019 10:00:16 GMT
VOLUME [/var/www/html]
# Fri, 11 Jan 2019 10:00:16 GMT
ENV YOURLS_VERSION=1.7.2
# Fri, 11 Jan 2019 10:00:19 GMT
RUN set -ex; 	curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz"; 	tar -xzf yourls.tar.gz -C /usr/src/; 	mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls; 	rm yourls.tar.gz; 	chown -R www-data:www-data /usr/src/yourls
# Fri, 11 Jan 2019 10:00:19 GMT
COPY file:7722c9d76f082fb2683ec1d4befeaddd6c873c885172752cacb787e076d4dbeb in /usr/local/bin/ 
# Fri, 11 Jan 2019 10:00:20 GMT
COPY file:d375afac6cf463942802d2b27f08ef4d6198ac33f536b334f195e2e479c4cd6f in /var/www/html/ 
# Fri, 11 Jan 2019 10:00:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 10:00:21 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:5b678b67777fc7983d3563839cc9d511de267ec6de1961f2b590d552d8bfa105`  
		Last Modified: Fri, 21 Dec 2018 08:50:18 GMT  
		Size: 2.1 MB (2145782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f0b2b885d968636a597331169fce72a69964c911558554f1b2a0d21959f34f`  
		Last Modified: Fri, 21 Dec 2018 08:50:17 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdc871048391cb58798d04e007efbbf6dea290177b14aa82474e0cd8a847e5de`  
		Last Modified: Fri, 21 Dec 2018 11:04:45 GMT  
		Size: 1.3 MB (1315320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d14e9b8b66e27ebf8c37feef99cb0c249e36805f3566d73882beca6671f44f61`  
		Last Modified: Fri, 21 Dec 2018 11:04:44 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01a2d87e934f6881656d209530a5523fac4c28881bb465188a3ad7a4d3e4ddcf`  
		Last Modified: Fri, 21 Dec 2018 11:04:44 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:696c1ebf4ee6810b35a62de681eea1dc64fdd53da3094056821cefc8e83b6bd1`  
		Last Modified: Fri, 11 Jan 2019 09:28:39 GMT  
		Size: 12.2 MB (12176107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20edf344459e597273b938c8cc2b35f240a6a8b2744f18af4fe0d0d4afeac06e`  
		Last Modified: Fri, 11 Jan 2019 09:28:37 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea16dd24d9f1abfe1fd20fd8c758d487099491493da09645d669e9e462282911`  
		Last Modified: Fri, 11 Jan 2019 09:28:42 GMT  
		Size: 14.8 MB (14819818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f6f7363efefa22acc9276e23b3af33e7ca06d0876aa7582b6273465195a7bc`  
		Last Modified: Fri, 11 Jan 2019 09:28:35 GMT  
		Size: 2.2 KB (2175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6a88bafb3d42385829f2d6bdd67b0121042656f2203927e594ba4b6dd89bbf6`  
		Last Modified: Fri, 11 Jan 2019 09:28:36 GMT  
		Size: 71.4 KB (71377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cebf6b04113c0621a72dd93ea11c20853b659670f0df6d031e795fc59c878526`  
		Last Modified: Fri, 11 Jan 2019 09:28:35 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca7ca9567a4e5148666d049816b91f6fad8921fe8a67a81449dcb9c8529c7cd4`  
		Last Modified: Fri, 11 Jan 2019 09:28:36 GMT  
		Size: 7.8 KB (7784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cf17bfc7e966a413741586c76ea62265c37fc7cd2d6f87c6de4b422a2fda58e`  
		Last Modified: Fri, 11 Jan 2019 10:00:34 GMT  
		Size: 341.1 KB (341068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4fcd7b04929c907403c4c49f3a724457b6206435c213b194ff04789d1346eea`  
		Last Modified: Fri, 11 Jan 2019 10:00:33 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59773a3720235be33b423fb0cce6558de075b93c2494ddc140e69506142e532a`  
		Last Modified: Fri, 11 Jan 2019 10:00:32 GMT  
		Size: 562.3 KB (562331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85ce91f5250d9d818e1d63f8186dc0e41f700e4de052814b9d522fc98e0d8029`  
		Last Modified: Fri, 11 Jan 2019 10:00:33 GMT  
		Size: 2.5 MB (2485639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:087fe181d76b4e8ad52154e5dce09d4c99bccd7c279fbe02cabc4f64dc38a870`  
		Last Modified: Fri, 11 Jan 2019 10:00:32 GMT  
		Size: 1.1 KB (1055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3166dad388f87de165dea37e38352ecaddf5d296acf54da39b6cce78587f3bf`  
		Last Modified: Fri, 11 Jan 2019 10:00:32 GMT  
		Size: 1.8 KB (1817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `yourls:fpm-alpine` - linux; arm64 variant v8

```console
$ docker pull yourls@sha256:af3c21158d32d19decf672fe9d9a4ff33a81f9a6ef5940a161f555c775b595ee
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 MB (33695447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56fe55b6a1429d4e7613d0a4f8b171ffcf2fb249cb05a258a134249a32ea7d3d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 12:10:06 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 21 Dec 2018 12:10:08 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Fri, 21 Dec 2018 12:10:11 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 21 Dec 2018 12:10:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 21 Dec 2018 12:10:13 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 21 Dec 2018 12:19:38 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Fri, 21 Dec 2018 12:19:39 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 21 Dec 2018 12:19:40 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 21 Dec 2018 12:19:40 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 21 Dec 2018 12:51:23 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 11 Jan 2019 12:05:25 GMT
ENV PHP_VERSION=7.2.14
# Fri, 11 Jan 2019 12:05:26 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror
# Fri, 11 Jan 2019 12:05:26 GMT
ENV PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f PHP_MD5=
# Fri, 11 Jan 2019 12:05:38 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 11 Jan 2019 12:05:39 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 11 Jan 2019 12:12:27 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libsodium-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 11 Jan 2019 12:12:28 GMT
COPY multi:cbc68fef2c8554b9a23fee7eee16ffda927235f929048638240f97172562665c in /usr/local/bin/ 
# Fri, 11 Jan 2019 12:12:30 GMT
RUN docker-php-ext-enable sodium
# Fri, 11 Jan 2019 12:12:31 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 11 Jan 2019 12:12:32 GMT
WORKDIR /var/www/html
# Fri, 11 Jan 2019 12:12:33 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 11 Jan 2019 12:12:34 GMT
EXPOSE 9000
# Fri, 11 Jan 2019 12:12:35 GMT
CMD ["php-fpm"]
# Fri, 11 Jan 2019 15:08:18 GMT
RUN set -ex;     docker-php-ext-install opcache pdo_mysql mysqli
# Fri, 11 Jan 2019 15:08:20 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 11 Jan 2019 15:08:22 GMT
RUN apk add --no-cache bash
# Fri, 11 Jan 2019 15:08:23 GMT
VOLUME [/var/www/html]
# Fri, 11 Jan 2019 15:08:25 GMT
ENV YOURLS_VERSION=1.7.2
# Fri, 11 Jan 2019 15:08:29 GMT
RUN set -ex; 	curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz"; 	tar -xzf yourls.tar.gz -C /usr/src/; 	mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls; 	rm yourls.tar.gz; 	chown -R www-data:www-data /usr/src/yourls
# Fri, 11 Jan 2019 15:08:29 GMT
COPY file:7722c9d76f082fb2683ec1d4befeaddd6c873c885172752cacb787e076d4dbeb in /usr/local/bin/ 
# Fri, 11 Jan 2019 15:08:30 GMT
COPY file:d375afac6cf463942802d2b27f08ef4d6198ac33f536b334f195e2e479c4cd6f in /var/www/html/ 
# Fri, 11 Jan 2019 15:08:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 15:08:31 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:e3c488b39803d9194cf010f6127b1121d5387b90a1562d44b50b749d0e7a69bf`  
		Last Modified: Fri, 21 Dec 2018 09:43:51 GMT  
		Size: 2.1 MB (2099839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a63128803b1ea223f87244cb8d3faa97817f6cf3ca8249e485430218758510`  
		Last Modified: Fri, 21 Dec 2018 09:43:50 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73bf4a12ae92b20610d889c240ddcd72b338a21e3fa4f3d6c077d9fcad3566f1`  
		Last Modified: Fri, 21 Dec 2018 14:38:54 GMT  
		Size: 1.3 MB (1274014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf309e8a13c2d5f8e92a71c30f189658629d7079402a4dbd6c42d8a5302b755e`  
		Last Modified: Fri, 21 Dec 2018 14:38:54 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2290f763cb3e9ff58547451226cdcbb3b5083ab00da970fb03b03604c2c78716`  
		Last Modified: Fri, 21 Dec 2018 14:38:53 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08ff3daeaeb2c6f80e985fe6a65ebcf4c174894b1111553a77038b106db4dfa4`  
		Last Modified: Fri, 11 Jan 2019 13:30:07 GMT  
		Size: 12.2 MB (12176103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f415816cc27b5f850a1475f2264f6b325f08fddb036f2a484f1c38cee60562d8`  
		Last Modified: Fri, 11 Jan 2019 13:30:05 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0d8dfc978e0329562a72d717cad6d3114bd6a2a392d761a2bda797f0476f485`  
		Last Modified: Fri, 11 Jan 2019 13:30:12 GMT  
		Size: 14.7 MB (14694310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d42bfc57b96f2b8d3a77f54cf48ff03022b5bdf4581f96b39b42328593a847c`  
		Last Modified: Fri, 11 Jan 2019 13:30:03 GMT  
		Size: 2.2 KB (2176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d3ef9fa25c04f4c400cff945c823594bce0253ba6e692c7ebf62d8d23a63d2d`  
		Last Modified: Fri, 11 Jan 2019 13:30:03 GMT  
		Size: 70.9 KB (70866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdd07133ba580f4b004c26bffcdf7cb09e1ec7a007886f3759a8313202efab70`  
		Last Modified: Fri, 11 Jan 2019 13:30:03 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f39c56929428921ec4c76fd858639f743ade99b41aaaa8e894727a2ea43dd5f`  
		Last Modified: Fri, 11 Jan 2019 13:30:03 GMT  
		Size: 7.8 KB (7782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a989c78153fd943251b38a22bb705bcd2e79d143e56fe2984dc7f30c14955139`  
		Last Modified: Fri, 11 Jan 2019 15:09:50 GMT  
		Size: 333.1 KB (333128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04058535e18aa091c884ae3a02da61ef655e073f1f5c836493773bd09365d61c`  
		Last Modified: Fri, 11 Jan 2019 15:09:49 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92a802450ed6c42347e47c4e82dd0f1ed40d2c9484d2121215fe94d8e3fbb264`  
		Last Modified: Fri, 11 Jan 2019 15:09:48 GMT  
		Size: 546.2 KB (546158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36cc1c0494d188d0277bb8c4fa2fdfbbfbbaec3ab075758fb036b866c6b342aa`  
		Last Modified: Fri, 11 Jan 2019 15:09:49 GMT  
		Size: 2.5 MB (2485641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dede82cde6f809b407e2a9c9d339cc58e808a6f6a9684cfa5f012e8f5e5c1d9f`  
		Last Modified: Fri, 11 Jan 2019 15:09:48 GMT  
		Size: 1.1 KB (1056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c5e81c98f79f73580422ba19b768fcda0a0007551e4b9fdb59789544d6001e`  
		Last Modified: Fri, 11 Jan 2019 15:09:48 GMT  
		Size: 1.8 KB (1819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `yourls:fpm-alpine` - linux; 386

```console
$ docker pull yourls@sha256:e476760a986c0508d4f468ed1411aca6bcc44f15d6572ece2f9e19b52503bc43
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.8 MB (35760343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e35a7032db54317f89e5c2d79d08a5fc4f7eecde3bc1ab593d468d8fc3df2f9e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 21 Dec 2018 11:40:13 GMT
ADD file:38576b24298c124265c8fffb7bc8fdb0c144d99dcce4e9942bdcceb936830ba6 in / 
# Fri, 21 Dec 2018 11:40:14 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 11:40:14 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 12:26:09 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 21 Dec 2018 12:26:10 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Fri, 21 Dec 2018 12:26:11 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 21 Dec 2018 12:26:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 21 Dec 2018 12:26:12 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 21 Dec 2018 12:32:56 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Fri, 21 Dec 2018 12:32:56 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 21 Dec 2018 12:32:56 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 21 Dec 2018 12:32:56 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 21 Dec 2018 12:53:43 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 11 Jan 2019 13:12:03 GMT
ENV PHP_VERSION=7.2.14
# Fri, 11 Jan 2019 13:12:03 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror
# Fri, 11 Jan 2019 13:12:03 GMT
ENV PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f PHP_MD5=
# Fri, 11 Jan 2019 13:12:08 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 11 Jan 2019 13:12:08 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 11 Jan 2019 13:17:40 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libsodium-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 11 Jan 2019 13:17:41 GMT
COPY multi:cbc68fef2c8554b9a23fee7eee16ffda927235f929048638240f97172562665c in /usr/local/bin/ 
# Fri, 11 Jan 2019 13:17:42 GMT
RUN docker-php-ext-enable sodium
# Fri, 11 Jan 2019 13:17:42 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 11 Jan 2019 13:17:42 GMT
WORKDIR /var/www/html
# Fri, 11 Jan 2019 13:17:43 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 11 Jan 2019 13:17:43 GMT
EXPOSE 9000
# Fri, 11 Jan 2019 13:17:43 GMT
CMD ["php-fpm"]
# Fri, 11 Jan 2019 16:53:05 GMT
RUN set -ex;     docker-php-ext-install opcache pdo_mysql mysqli
# Fri, 11 Jan 2019 16:53:05 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 11 Jan 2019 16:53:06 GMT
RUN apk add --no-cache bash
# Fri, 11 Jan 2019 16:53:07 GMT
VOLUME [/var/www/html]
# Fri, 11 Jan 2019 16:53:07 GMT
ENV YOURLS_VERSION=1.7.2
# Fri, 11 Jan 2019 16:53:08 GMT
RUN set -ex; 	curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz"; 	tar -xzf yourls.tar.gz -C /usr/src/; 	mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls; 	rm yourls.tar.gz; 	chown -R www-data:www-data /usr/src/yourls
# Fri, 11 Jan 2019 16:53:08 GMT
COPY file:7722c9d76f082fb2683ec1d4befeaddd6c873c885172752cacb787e076d4dbeb in /usr/local/bin/ 
# Fri, 11 Jan 2019 16:53:09 GMT
COPY file:d375afac6cf463942802d2b27f08ef4d6198ac33f536b334f195e2e479c4cd6f in /var/www/html/ 
# Fri, 11 Jan 2019 16:53:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 16:53:09 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:25bcd1068fdd02354e6b3fb4ebbad1a9c1df7f5ec2d61aa88a337345415dc102`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 2.3 MB (2271567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795c3ef9c057ef60e7a4a088655adecaccd21d68099ad1f654bccd015ab319da`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4811baf1f023d21ea625c97101dbaffec612a7fc948ff1d9f1e85badb90282f7`  
		Last Modified: Fri, 21 Dec 2018 14:03:58 GMT  
		Size: 1.5 MB (1453187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66ce10d169b702fb314523985cab18b12c3d56cf08f625154b27d0847e96f089`  
		Last Modified: Fri, 21 Dec 2018 14:03:58 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a89858ddd116f7d2220d5ff7f60ae246411089bb3c686a47294192ef6b55c9d`  
		Last Modified: Fri, 21 Dec 2018 14:03:57 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6043e2c76dbe219109f72235280314072a2217eda96687558d21f8578b3e75ef`  
		Last Modified: Fri, 11 Jan 2019 14:55:05 GMT  
		Size: 12.2 MB (12176111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8440fdedbe0046ed87adf69105b08c449aba4d3bd3c0793adab9f7ff3440694b`  
		Last Modified: Fri, 11 Jan 2019 14:55:04 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8d4733b5cfb1cb0069daa62cf9f209df0ba5b2b750b083d4c5bb84ea8464a8b`  
		Last Modified: Fri, 11 Jan 2019 14:55:08 GMT  
		Size: 16.3 MB (16308650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d841e9114fbd446750277075cec7238a8d521ba32770dc463d8e70b18faf0b5`  
		Last Modified: Fri, 11 Jan 2019 14:55:03 GMT  
		Size: 2.2 KB (2176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aa176c23e31bd93ed00c94293dc542732e58fe45a9a7eb7f7d5d2c41c5a5635`  
		Last Modified: Fri, 11 Jan 2019 14:55:03 GMT  
		Size: 71.0 KB (70990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69278d1d66b65f5c197afc970ea16254f399f69909a42e58aa644f7e5c4a0b22`  
		Last Modified: Fri, 11 Jan 2019 14:55:03 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78d76d1e33feaf865d85eda3797a826c94470919951a86586780f337bae702c3`  
		Last Modified: Fri, 11 Jan 2019 14:55:03 GMT  
		Size: 7.8 KB (7782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5cd947ced97c672316c363d58b5550be129d57012a7aa5a107b27fd72bfaddf`  
		Last Modified: Fri, 11 Jan 2019 16:54:00 GMT  
		Size: 361.9 KB (361894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d41a7f925d1889aac1b1cc18e8eefee4b514119dc86630569c42ce43769d1b28`  
		Last Modified: Fri, 11 Jan 2019 16:53:59 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:277a11fdd18f78e7ff42a5f14de80d0a56a4654fb43c4a78eb6113e84253d019`  
		Last Modified: Fri, 11 Jan 2019 16:53:59 GMT  
		Size: 616.9 KB (616918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8118938b2b8aa84b3b4cda63643c1e5cefb6db317485f80ea6d755c0cfdaf874`  
		Last Modified: Fri, 11 Jan 2019 16:54:00 GMT  
		Size: 2.5 MB (2485641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a29d1dc5496808468d85c6fbd88aa4d9258feb49fd4bd6e64977c4a5d8248363`  
		Last Modified: Fri, 11 Jan 2019 16:53:59 GMT  
		Size: 1.1 KB (1054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27a95d14bf235d6753eca7641bf1e73306729446138b0fe68bb7ec8bc8ea61f2`  
		Last Modified: Fri, 11 Jan 2019 16:53:59 GMT  
		Size: 1.8 KB (1816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `yourls:fpm-alpine` - linux; ppc64le

```console
$ docker pull yourls@sha256:8caba59e8eaf2267e5e0b9d84205e9844ecd1186844f648c50f569874daf8932
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 MB (34747745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e57716ccbb7b9a3c9f49b6d549848a00eaad9f69e7192ed5c2ec599e6d9183e9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 21 Dec 2018 09:44:05 GMT
ADD file:81f8badc2215d9ccd8f5406b89b63bf0b407b3e877f6232bd11153780c551392 in / 
# Fri, 21 Dec 2018 09:44:06 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:44:10 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 10:32:58 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 21 Dec 2018 10:33:10 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Fri, 21 Dec 2018 10:33:18 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 21 Dec 2018 10:33:23 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 21 Dec 2018 10:33:29 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 21 Dec 2018 10:39:18 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Fri, 21 Dec 2018 10:39:20 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 21 Dec 2018 10:39:22 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 21 Dec 2018 10:39:25 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 21 Dec 2018 10:57:58 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 11 Jan 2019 10:37:49 GMT
ENV PHP_VERSION=7.2.14
# Fri, 11 Jan 2019 10:37:51 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror
# Fri, 11 Jan 2019 10:37:53 GMT
ENV PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f PHP_MD5=
# Fri, 11 Jan 2019 10:38:10 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 11 Jan 2019 10:38:12 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 11 Jan 2019 10:42:28 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libsodium-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 11 Jan 2019 10:42:29 GMT
COPY multi:cbc68fef2c8554b9a23fee7eee16ffda927235f929048638240f97172562665c in /usr/local/bin/ 
# Fri, 11 Jan 2019 10:42:35 GMT
RUN docker-php-ext-enable sodium
# Fri, 11 Jan 2019 10:42:37 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 11 Jan 2019 10:42:40 GMT
WORKDIR /var/www/html
# Fri, 11 Jan 2019 10:42:44 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Fri, 11 Jan 2019 10:42:46 GMT
EXPOSE 9000
# Fri, 11 Jan 2019 10:42:48 GMT
CMD ["php-fpm"]
# Fri, 11 Jan 2019 13:44:06 GMT
RUN set -ex;     docker-php-ext-install opcache pdo_mysql mysqli
# Fri, 11 Jan 2019 13:44:10 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 11 Jan 2019 13:44:13 GMT
RUN apk add --no-cache bash
# Fri, 11 Jan 2019 13:44:15 GMT
VOLUME [/var/www/html]
# Fri, 11 Jan 2019 13:44:16 GMT
ENV YOURLS_VERSION=1.7.2
# Fri, 11 Jan 2019 13:44:21 GMT
RUN set -ex; 	curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz"; 	tar -xzf yourls.tar.gz -C /usr/src/; 	mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls; 	rm yourls.tar.gz; 	chown -R www-data:www-data /usr/src/yourls
# Fri, 11 Jan 2019 13:44:22 GMT
COPY file:7722c9d76f082fb2683ec1d4befeaddd6c873c885172752cacb787e076d4dbeb in /usr/local/bin/ 
# Fri, 11 Jan 2019 13:44:23 GMT
COPY file:d375afac6cf463942802d2b27f08ef4d6198ac33f536b334f195e2e479c4cd6f in /var/www/html/ 
# Fri, 11 Jan 2019 13:44:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 13:44:27 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:5fac6f91a5114ca7e803950377d1db527386361cdf48b205eed63d8ab99820c3`  
		Last Modified: Fri, 21 Dec 2018 09:45:58 GMT  
		Size: 2.2 MB (2194772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c21fc409a1bc2fd1e54e11e2bd2beb4251b1c6d49aee187e7d28df20b2004b1`  
		Last Modified: Fri, 21 Dec 2018 09:45:56 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e97d043655dbdb6d40a361d7dc75c1ba30d905a802fa795cf7d567ad05245d76`  
		Last Modified: Fri, 21 Dec 2018 12:04:28 GMT  
		Size: 1.3 MB (1322324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e42ae702569bdff3d1762659fb2ec8eb1a3aa153705c2240bf46a52c81aa408`  
		Last Modified: Fri, 21 Dec 2018 12:04:27 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc7bb9008fe21d12c735aed250535f34b51e732ec5488ca7e1772bca1a0b7028`  
		Last Modified: Fri, 21 Dec 2018 12:04:26 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cec34919370c2384818df7d9f4f38274d4a735df6356b22e9718d2900346fab`  
		Last Modified: Fri, 11 Jan 2019 11:28:44 GMT  
		Size: 12.2 MB (12176123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b7e795fa94c1d605263cefed6b18af78b41b8bc09e0f1a8e0af21d57760ff7`  
		Last Modified: Fri, 11 Jan 2019 11:28:43 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dafa685ce7431d4ac7441095a659bff7369c8ebef767e58b5e3016c64051a5ec`  
		Last Modified: Fri, 11 Jan 2019 11:28:48 GMT  
		Size: 15.5 MB (15520333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6830c0786b7b0018e9fb675e042b6e92069a7a262e1c9a932e03a671a3667d34`  
		Last Modified: Fri, 11 Jan 2019 11:28:40 GMT  
		Size: 2.2 KB (2176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9893e5c1d00fc2bc1ab12822cc8c764d4ddc8e78005f5ca7ae73641fad7d66d`  
		Last Modified: Fri, 11 Jan 2019 11:28:40 GMT  
		Size: 71.6 KB (71637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d417b6dbb5b926e72a79fcf217c400a3ba448cc706b4827fae2ee2aac16294ed`  
		Last Modified: Fri, 11 Jan 2019 11:28:40 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d20b494607f4d906d31390b43388557b1f3851de4bfcc51436d582954225184`  
		Last Modified: Fri, 11 Jan 2019 11:28:40 GMT  
		Size: 7.8 KB (7782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0438dc09a75567fa228d311a251e240f555b533890baa9f26eff447a8d47d954`  
		Last Modified: Fri, 11 Jan 2019 13:46:01 GMT  
		Size: 357.8 KB (357765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2e2f343164d525dbe6bc64a417b6ca80473e626c799a57fbca2e0d85d51a544`  
		Last Modified: Fri, 11 Jan 2019 13:45:57 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf155992d9efa981564a8b1ea76e34b0f1c21e8138a59812874c3f7b47b01abd`  
		Last Modified: Fri, 11 Jan 2019 13:45:58 GMT  
		Size: 603.7 KB (603667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46a8476bc72743c5d14b6a28a843847f642a74ab528d62234e4ec83905feb2a1`  
		Last Modified: Fri, 11 Jan 2019 13:45:58 GMT  
		Size: 2.5 MB (2485644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c92c5dd3bd03e525fbf8a7f3c9c347a1c133a26670a171d7b4a2d8907e5e3e56`  
		Last Modified: Fri, 11 Jan 2019 13:45:57 GMT  
		Size: 1.1 KB (1057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f03b52c13d8480225a74740b540d0fbdb0b87f906ec44d4f448348e0c39d9237`  
		Last Modified: Fri, 11 Jan 2019 13:45:57 GMT  
		Size: 1.8 KB (1816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `yourls:latest`

```console
$ docker pull yourls@sha256:b93240de31344e21ece17db55b42551926ebf7ed9edff59de98457cc8ab200bf
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
$ docker pull yourls@sha256:4962218b0809fc8cf63bf9eebfceba12d11f754f3669c23bc3481a952d9fa64c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.6 MB (137592705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c1c2d79eaa9e79809bbd5160f94daac5d40e72035e7c2e289b0ffd4df0af05f`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Sat, 29 Dec 2018 05:03:51 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 11 Jan 2019 01:14:55 GMT
ENV PHP_VERSION=7.2.14
# Fri, 11 Jan 2019 01:14:55 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror
# Fri, 11 Jan 2019 01:14:55 GMT
ENV PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f PHP_MD5=
# Fri, 11 Jan 2019 01:15:04 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 11 Jan 2019 01:15:04 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 11 Jan 2019 01:18:38 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 11 Jan 2019 01:18:38 GMT
COPY multi:0a6fe33cb39694994fa567c75b399b9aa5e477c8770caa9f731607a72819b457 in /usr/local/bin/ 
# Fri, 11 Jan 2019 01:18:39 GMT
RUN docker-php-ext-enable sodium
# Fri, 11 Jan 2019 01:18:39 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 11 Jan 2019 01:18:39 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Fri, 11 Jan 2019 01:18:40 GMT
WORKDIR /var/www/html
# Fri, 11 Jan 2019 01:18:40 GMT
EXPOSE 80
# Fri, 11 Jan 2019 01:18:40 GMT
CMD ["apache2-foreground"]
# Fri, 11 Jan 2019 03:24:43 GMT
RUN set -ex;     docker-php-ext-install opcache pdo_mysql mysqli
# Fri, 11 Jan 2019 03:24:44 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 11 Jan 2019 03:24:44 GMT
RUN a2enmod rewrite expires
# Fri, 11 Jan 2019 03:24:45 GMT
VOLUME [/var/www/html]
# Fri, 11 Jan 2019 03:24:45 GMT
ENV YOURLS_VERSION=1.7.2
# Fri, 11 Jan 2019 03:24:46 GMT
RUN set -ex; 	curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz"; 	tar -xzf yourls.tar.gz -C /usr/src/; 	mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls; 	rm yourls.tar.gz; 	chown -R www-data:www-data /usr/src/yourls
# Fri, 11 Jan 2019 03:24:47 GMT
COPY file:7722c9d76f082fb2683ec1d4befeaddd6c873c885172752cacb787e076d4dbeb in /usr/local/bin/ 
# Fri, 11 Jan 2019 03:24:47 GMT
COPY file:d375afac6cf463942802d2b27f08ef4d6198ac33f536b334f195e2e479c4cd6f in /var/www/html/ 
# Fri, 11 Jan 2019 03:24:47 GMT
COPY file:5b7ff05d0c98ad759c4bec0ef8a7ce74cae42e95b42564b55f43b341c2c3e3f5 in /var/www/html/ 
# Fri, 11 Jan 2019 03:24:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 03:24:48 GMT
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
	-	`sha256:2a25fcb23d183d85904474bbb4a70acd54f799488ca33ee229f2ed1ad0ce9591`  
		Last Modified: Fri, 11 Jan 2019 01:53:42 GMT  
		Size: 12.5 MB (12506427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e496ab19dfffef5f7ced59f3bcf6175c1b94be12564b4d9c5645b7a93560192`  
		Last Modified: Fri, 11 Jan 2019 01:53:41 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a5d39fc92ab1ba459a1b1cf1b7f20656559f9f05537337ae1c51b7fdba66ffb`  
		Last Modified: Fri, 11 Jan 2019 01:53:44 GMT  
		Size: 15.2 MB (15246057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8603dc5a76e7c083140806cf44d4e1690e15d79cb135ba8e1d6705769b0851ba`  
		Last Modified: Fri, 11 Jan 2019 01:53:40 GMT  
		Size: 2.2 KB (2195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4525497200a2b96ba75f12c63aed6a62b6d03a207d2441de88bb6a7d881ac7b3`  
		Last Modified: Fri, 11 Jan 2019 01:53:40 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df66f65de27acc43763a4432f463d3337d0b23fd8db7ab223acc7017eeb4f763`  
		Last Modified: Fri, 11 Jan 2019 01:53:40 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57b8d8fa0610733515eb42761dc0de5de2da32a64d781bba6411fc2166f27e6a`  
		Last Modified: Fri, 11 Jan 2019 03:26:47 GMT  
		Size: 280.6 KB (280552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbca46cb53c4c940b34051582c867fa563da9435def6910244c2aa47a7ad24ba`  
		Last Modified: Fri, 11 Jan 2019 03:26:48 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95c24c90db0469d2cc6aa12ff0b583132ebd112acf6b687a503c292bc137fef1`  
		Last Modified: Fri, 11 Jan 2019 03:26:46 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a7d2a11ebf743bcc5735aa222deebb162a1da746a81fa95face8a97afbb1aa`  
		Last Modified: Fri, 11 Jan 2019 03:26:47 GMT  
		Size: 2.5 MB (2485627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb13aa537f9d9745b40e7d938edfd081be0b6f9ee77ceafcb38deccbf4836ea8`  
		Last Modified: Fri, 11 Jan 2019 03:26:46 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72194353726c756bd51d964bcaa545bd0298914297d8bde7fade176653dedef5`  
		Last Modified: Fri, 11 Jan 2019 03:26:46 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cd18794e74c003815eb6df1fefdcefe87ec988af1834780908349a86f5f07ba`  
		Last Modified: Fri, 11 Jan 2019 03:26:46 GMT  
		Size: 337.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `yourls:latest` - linux; arm variant v5

```console
$ docker pull yourls@sha256:f0d07d3d15c8b789d94179d42578cee1caccb2cfe240c57841a5691232b7bc89
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.9 MB (124937488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64e90988afdbf7237c297a523eb6618f00a414c4f6428390529c1b2c57934806`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Sat, 29 Dec 2018 09:55:31 GMT
ADD file:1f3db2bdb8941ca17968251e2af1378e7f7556627ed60eafb5ee40089810bc8b in / 
# Sat, 29 Dec 2018 09:55:32 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 12:32:24 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Sat, 29 Dec 2018 12:32:24 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Sat, 29 Dec 2018 12:33:02 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:33:04 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 29 Dec 2018 12:33:05 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 29 Dec 2018 12:38:00 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:38:00 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Sat, 29 Dec 2018 12:38:01 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Sat, 29 Dec 2018 12:38:02 GMT
RUN set -eux; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Sat, 29 Dec 2018 12:38:03 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Sat, 29 Dec 2018 12:38:05 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Sat, 29 Dec 2018 12:38:05 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Sat, 29 Dec 2018 12:38:06 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Sat, 29 Dec 2018 12:38:06 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 12:38:06 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 12:38:07 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 29 Dec 2018 12:55:20 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Sat, 29 Dec 2018 12:55:20 GMT
ENV PHP_VERSION=7.2.13
# Sat, 29 Dec 2018 12:55:20 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.13.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.13.tar.xz.asc/from/this/mirror
# Sat, 29 Dec 2018 12:55:21 GMT
ENV PHP_SHA256=14b0429abdb46b65c843e5882c9a8c46b31dfbf279c747293b8ab950c2644a4b PHP_MD5=
# Sat, 29 Dec 2018 12:55:36 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 29 Dec 2018 12:55:37 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 29 Dec 2018 12:58:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 29 Dec 2018 12:58:42 GMT
COPY multi:0a6fe33cb39694994fa567c75b399b9aa5e477c8770caa9f731607a72819b457 in /usr/local/bin/ 
# Sat, 29 Dec 2018 12:58:44 GMT
RUN docker-php-ext-enable sodium
# Sat, 29 Dec 2018 12:58:44 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 29 Dec 2018 12:58:44 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Sat, 29 Dec 2018 12:58:45 GMT
WORKDIR /var/www/html
# Sat, 29 Dec 2018 12:58:45 GMT
EXPOSE 80
# Sat, 29 Dec 2018 12:58:46 GMT
CMD ["apache2-foreground"]
# Fri, 04 Jan 2019 11:10:51 GMT
RUN set -ex;     docker-php-ext-install opcache pdo_mysql mysqli
# Fri, 04 Jan 2019 11:10:53 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 04 Jan 2019 11:10:54 GMT
RUN a2enmod rewrite expires
# Fri, 04 Jan 2019 11:10:54 GMT
VOLUME [/var/www/html]
# Fri, 04 Jan 2019 11:10:55 GMT
ENV YOURLS_VERSION=1.7.2
# Fri, 04 Jan 2019 11:10:57 GMT
RUN set -ex; 	curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz"; 	tar -xzf yourls.tar.gz -C /usr/src/; 	mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls; 	rm yourls.tar.gz; 	chown -R www-data:www-data /usr/src/yourls
# Fri, 04 Jan 2019 11:10:58 GMT
COPY file:7722c9d76f082fb2683ec1d4befeaddd6c873c885172752cacb787e076d4dbeb in /usr/local/bin/ 
# Fri, 04 Jan 2019 11:10:58 GMT
COPY file:d375afac6cf463942802d2b27f08ef4d6198ac33f536b334f195e2e479c4cd6f in /var/www/html/ 
# Fri, 04 Jan 2019 11:10:59 GMT
COPY file:5b7ff05d0c98ad759c4bec0ef8a7ce74cae42e95b42564b55f43b341c2c3e3f5 in /var/www/html/ 
# Fri, 04 Jan 2019 11:10:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 04 Jan 2019 11:11:00 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:e040f73e39f2c2a1a8429ff270c2d629ef2630ac31581228037724d707862b22`  
		Last Modified: Sat, 29 Dec 2018 10:03:16 GMT  
		Size: 21.2 MB (21167776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dc5107d4e4251d4ef9002026f490e573eff661fe6e2278d1bd3a7d121a3c321`  
		Last Modified: Sat, 29 Dec 2018 15:11:10 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca61229a1118271adc19db58c172d9ceaa14ceb0aef16b2fb0b4237c08f6fe9e`  
		Last Modified: Sat, 29 Dec 2018 15:11:32 GMT  
		Size: 57.5 MB (57464650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2be23d64816b54f39f39a88b24bd971081a558160fdf7667ec44f47c45989c9`  
		Last Modified: Sat, 29 Dec 2018 15:11:10 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dafbaeb7163888e37cf64fb46e91b2cf58eac8540c395f64883103d3bfcf5064`  
		Last Modified: Sat, 29 Dec 2018 15:12:10 GMT  
		Size: 16.7 MB (16654350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49b40f80c9fbf4364d92fdd25059fe5e0c2070334338daf628dec7751de40bd2`  
		Last Modified: Sat, 29 Dec 2018 15:12:03 GMT  
		Size: 1.4 KB (1366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71f2d447d810b660e4c7c64129caf2a8dc24381d6de1e85c964ef7b832a1e02a`  
		Last Modified: Sat, 29 Dec 2018 15:12:03 GMT  
		Size: 473.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0f34a587aa02846d8add6902c1ef4c05955469cf14e7a66b9d752cace0679d3`  
		Last Modified: Sat, 29 Dec 2018 15:12:03 GMT  
		Size: 512.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:365d13d1ea625a32a9a32e3cf22f4f2fab2eb22cb57d25ea93b8917e7bd4c9e4`  
		Last Modified: Sat, 29 Dec 2018 15:13:43 GMT  
		Size: 12.5 MB (12463554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cf03536d58a6e85c385bbd382c2e7345f4a70808bef960488a331948eec6e4e`  
		Last Modified: Sat, 29 Dec 2018 15:13:40 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af1ea384524b42693ba20e3dfc8ae623c3aa1aeff9a2f550712f120bf420d58b`  
		Last Modified: Sat, 29 Dec 2018 15:13:45 GMT  
		Size: 14.4 MB (14421222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e312529f1eae1c5da20e136a83a30b1edc1b4b873516ba670b33affcb827f82`  
		Last Modified: Sat, 29 Dec 2018 15:13:39 GMT  
		Size: 2.2 KB (2197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ec86617119633a2846243f5951735983ec2b6be19b16d863a8b1ad91f864b5d`  
		Last Modified: Sat, 29 Dec 2018 15:13:39 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccb13d532eee04a14b1f1caa52aed72aa37327aebb0e3a3f29e72f29a3c2a9f8`  
		Last Modified: Sat, 29 Dec 2018 15:13:39 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf1300472aed72acd8444e4180bd165644a321eba929baec73b81817032c93d6`  
		Last Modified: Fri, 04 Jan 2019 11:12:53 GMT  
		Size: 269.7 KB (269717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da22acd34f24b0edb67bd4231394b7f78750311489264df2dfa894138cb33d56`  
		Last Modified: Fri, 04 Jan 2019 11:12:52 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:750fb21c7d249a3df6935f490714dcfe0b80e8a2e9f9bc6808805d9f4a5d7126`  
		Last Modified: Fri, 04 Jan 2019 11:12:51 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0124ce182cd58209baab0012c40eb8b2ceb4b990c92bd243a07f8cef1c6bce2e`  
		Last Modified: Fri, 04 Jan 2019 11:12:53 GMT  
		Size: 2.5 MB (2485637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e21c7ec52983b6c56d6b809b84a1f79d826f201aab7af0f8801f2fd2dc3deb80`  
		Last Modified: Fri, 04 Jan 2019 11:12:51 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fee2f6a0e9b8d1b69cf15221931fcb53d48f627ec82548dfc484781667578137`  
		Last Modified: Fri, 04 Jan 2019 11:12:51 GMT  
		Size: 1.8 KB (1832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3c70eb029934442a32abf9541140be383fee6685c335765c457ac0cabf49ec1`  
		Last Modified: Fri, 04 Jan 2019 11:12:51 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `yourls:latest` - linux; arm variant v7

```console
$ docker pull yourls@sha256:bfe9dd2cbc5e70e0dafadaa03f87a6c5a6d19c93a3a78b963969d07a02f241f8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.9 MB (117864222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:315103166e802ff42c820d401dc963ea625550f000de6d62c5fae20112fc15a4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Sat, 29 Dec 2018 13:04:57 GMT
ADD file:287bc4fa3803b40afca4bcac26d92079fb862f7b968e960e01ae536b1b5c7aea in / 
# Sat, 29 Dec 2018 13:04:57 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 15:52:23 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Sat, 29 Dec 2018 15:52:23 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Sat, 29 Dec 2018 15:52:54 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 29 Dec 2018 15:52:55 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 29 Dec 2018 15:52:57 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 29 Dec 2018 15:57:28 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 15:57:28 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Sat, 29 Dec 2018 15:57:29 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Sat, 29 Dec 2018 15:57:30 GMT
RUN set -eux; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Sat, 29 Dec 2018 15:57:32 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Sat, 29 Dec 2018 15:57:34 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Sat, 29 Dec 2018 15:57:34 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Sat, 29 Dec 2018 15:57:35 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Sat, 29 Dec 2018 15:57:35 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 15:57:35 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 15:57:36 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 29 Dec 2018 16:31:14 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 11 Jan 2019 13:21:39 GMT
ENV PHP_VERSION=7.2.14
# Fri, 11 Jan 2019 13:21:40 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror
# Fri, 11 Jan 2019 13:21:40 GMT
ENV PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f PHP_MD5=
# Fri, 11 Jan 2019 13:21:54 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 11 Jan 2019 13:21:54 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 11 Jan 2019 13:24:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 11 Jan 2019 13:24:43 GMT
COPY multi:0a6fe33cb39694994fa567c75b399b9aa5e477c8770caa9f731607a72819b457 in /usr/local/bin/ 
# Fri, 11 Jan 2019 13:24:44 GMT
RUN docker-php-ext-enable sodium
# Fri, 11 Jan 2019 13:24:44 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 11 Jan 2019 13:24:45 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Fri, 11 Jan 2019 13:24:45 GMT
WORKDIR /var/www/html
# Fri, 11 Jan 2019 13:24:46 GMT
EXPOSE 80
# Fri, 11 Jan 2019 13:24:46 GMT
CMD ["apache2-foreground"]
# Fri, 11 Jan 2019 14:40:55 GMT
RUN set -ex;     docker-php-ext-install opcache pdo_mysql mysqli
# Fri, 11 Jan 2019 14:40:56 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 11 Jan 2019 14:40:58 GMT
RUN a2enmod rewrite expires
# Fri, 11 Jan 2019 14:40:58 GMT
VOLUME [/var/www/html]
# Fri, 11 Jan 2019 14:40:59 GMT
ENV YOURLS_VERSION=1.7.2
# Fri, 11 Jan 2019 14:41:04 GMT
RUN set -ex; 	curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz"; 	tar -xzf yourls.tar.gz -C /usr/src/; 	mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls; 	rm yourls.tar.gz; 	chown -R www-data:www-data /usr/src/yourls
# Fri, 11 Jan 2019 14:41:04 GMT
COPY file:7722c9d76f082fb2683ec1d4befeaddd6c873c885172752cacb787e076d4dbeb in /usr/local/bin/ 
# Fri, 11 Jan 2019 14:41:05 GMT
COPY file:d375afac6cf463942802d2b27f08ef4d6198ac33f536b334f195e2e479c4cd6f in /var/www/html/ 
# Fri, 11 Jan 2019 14:41:05 GMT
COPY file:5b7ff05d0c98ad759c4bec0ef8a7ce74cae42e95b42564b55f43b341c2c3e3f5 in /var/www/html/ 
# Fri, 11 Jan 2019 14:41:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 14:41:06 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:eb2ab017daa46c13a41d60225632e89c8b5c24a9bdafb2b75b1d415830b41e6b`  
		Last Modified: Sat, 29 Dec 2018 13:12:36 GMT  
		Size: 19.3 MB (19277755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bdd3055b30ec26315bbe73533843047ed98fec35dc5acc5cb0d0878ab8ed597`  
		Last Modified: Mon, 31 Dec 2018 19:12:59 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f79128a6d00730d8aaed6af05f3590337fcecd13119d056c272e9d01043f441`  
		Last Modified: Mon, 31 Dec 2018 19:13:15 GMT  
		Size: 53.6 MB (53582251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56fcb7f3e035561a3c9eced964fa2bf0fb33d76092839e59092e773161523cf0`  
		Last Modified: Mon, 31 Dec 2018 19:12:59 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cec7800b34522c311353f81b69927346012c515d10994684b20a049ba54c724`  
		Last Modified: Mon, 31 Dec 2018 19:13:51 GMT  
		Size: 16.2 MB (16162446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ba5955791d212ded2ccec56cb7e29725d2c3c77eab3d9e3fabf25d3f1b5cf98`  
		Last Modified: Mon, 31 Dec 2018 19:13:46 GMT  
		Size: 1.4 KB (1369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e907a4a42c73b241a2cf041cbfbb96efce659ecfd29561d66ea0f7b6a7aada83`  
		Last Modified: Mon, 31 Dec 2018 19:13:46 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72faa7e759463214ed86856afa0ad160e8b2317f9b955d6da86ff57af479d7e3`  
		Last Modified: Mon, 31 Dec 2018 19:13:45 GMT  
		Size: 510.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8c97be05198c1c418efedb012b4489df469a06214bfea33732dbf5c7f67d0b7`  
		Last Modified: Fri, 11 Jan 2019 14:12:34 GMT  
		Size: 12.5 MB (12504282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45b77b603992c6cccbf6503240e5dbafe9bdb17bddadccf59b226518254f5bb9`  
		Last Modified: Fri, 11 Jan 2019 14:12:30 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b9f6a21d0961decc8e89332fe47d1e8a5cfedb05c5880d3f757809c6749f893`  
		Last Modified: Fri, 11 Jan 2019 14:12:35 GMT  
		Size: 13.6 MB (13594915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a3f66483ced6f333748fcb82e1b6d28a39693793744ad4ca90ddac619a24056`  
		Last Modified: Fri, 11 Jan 2019 14:12:30 GMT  
		Size: 2.2 KB (2195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f127eb60416cb13cb76b16f1d8812c3a2c422d82720afabbe47dd31b23cea2c`  
		Last Modified: Fri, 11 Jan 2019 14:12:30 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03da7fcbc0e760b4475e84579700c77e4559675f4c7d34b55f70e4985c8e774d`  
		Last Modified: Fri, 11 Jan 2019 14:12:31 GMT  
		Size: 903.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c907b851539d2e197cae8a8fc767881587ed073ef35f4b4c283df407396e2ad`  
		Last Modified: Fri, 11 Jan 2019 14:42:47 GMT  
		Size: 246.4 KB (246374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04258081f72767fec60c812c21a0ed83add92aa287a5fb89125ef0a45db41f3f`  
		Last Modified: Fri, 11 Jan 2019 14:42:47 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:543db6bf55a72b9523aef66ef7875c1cb276ca6f9512eaa3e6c5be51977e6f19`  
		Last Modified: Fri, 11 Jan 2019 14:42:46 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0394fbcf889fe2801d611bc7e646c59b298a749020f83b2f3d1cf2c040032f45`  
		Last Modified: Fri, 11 Jan 2019 14:42:47 GMT  
		Size: 2.5 MB (2485630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0da5983cbe1560ba3e0e6837aa0b44c67e59d2edc16fd6404fad19f87b5cb531`  
		Last Modified: Fri, 11 Jan 2019 14:42:46 GMT  
		Size: 1.1 KB (1065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2610fb2b53e5e82ab7875ed95f0abac10e9edbd5cfc2f8311d08a0e4eb75d710`  
		Last Modified: Fri, 11 Jan 2019 14:42:46 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c48f5752809961f1865731d00497b9bf9208581395f8b5a18cb4b275be0745e`  
		Last Modified: Fri, 11 Jan 2019 14:42:46 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `yourls:latest` - linux; arm64 variant v8

```console
$ docker pull yourls@sha256:d61727bf29772fae43c48440426f3121bb2fc76dac182cacf52658ad0e1f97ef
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.1 MB (124142419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2716f9247372339bbed11c8808a6374e8e5b4ff2e7f28cbd246aa9e818717c1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:46 GMT
ADD file:e4db5c28a0f74e32be4419aae491e4b9dc7402f3640369289e24c52028c871ad in / 
# Sat, 29 Dec 2018 10:08:47 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 21:39:33 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Sat, 29 Dec 2018 21:39:33 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Sat, 29 Dec 2018 21:41:51 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 29 Dec 2018 21:41:52 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 29 Dec 2018 21:41:54 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 29 Dec 2018 21:55:31 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 21:55:31 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Sat, 29 Dec 2018 21:55:32 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Sat, 29 Dec 2018 21:55:34 GMT
RUN set -eux; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Sat, 29 Dec 2018 21:55:37 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Sat, 29 Dec 2018 21:55:39 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Sat, 29 Dec 2018 21:55:39 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Sat, 29 Dec 2018 21:55:40 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Sat, 29 Dec 2018 21:55:41 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 21:55:41 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 21:55:42 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 29 Dec 2018 22:37:39 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 11 Jan 2019 11:30:51 GMT
ENV PHP_VERSION=7.2.14
# Fri, 11 Jan 2019 11:30:52 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror
# Fri, 11 Jan 2019 11:30:53 GMT
ENV PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f PHP_MD5=
# Fri, 11 Jan 2019 11:31:22 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 11 Jan 2019 11:31:22 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 11 Jan 2019 11:37:55 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 11 Jan 2019 11:37:56 GMT
COPY multi:0a6fe33cb39694994fa567c75b399b9aa5e477c8770caa9f731607a72819b457 in /usr/local/bin/ 
# Fri, 11 Jan 2019 11:37:58 GMT
RUN docker-php-ext-enable sodium
# Fri, 11 Jan 2019 11:37:58 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 11 Jan 2019 11:37:59 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Fri, 11 Jan 2019 11:38:00 GMT
WORKDIR /var/www/html
# Fri, 11 Jan 2019 11:38:01 GMT
EXPOSE 80
# Fri, 11 Jan 2019 11:38:02 GMT
CMD ["apache2-foreground"]
# Fri, 11 Jan 2019 15:03:51 GMT
RUN set -ex;     docker-php-ext-install opcache pdo_mysql mysqli
# Fri, 11 Jan 2019 15:03:53 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 11 Jan 2019 15:03:56 GMT
RUN a2enmod rewrite expires
# Fri, 11 Jan 2019 15:03:57 GMT
VOLUME [/var/www/html]
# Fri, 11 Jan 2019 15:03:58 GMT
ENV YOURLS_VERSION=1.7.2
# Fri, 11 Jan 2019 15:04:12 GMT
RUN set -ex; 	curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz"; 	tar -xzf yourls.tar.gz -C /usr/src/; 	mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls; 	rm yourls.tar.gz; 	chown -R www-data:www-data /usr/src/yourls
# Fri, 11 Jan 2019 15:04:12 GMT
COPY file:7722c9d76f082fb2683ec1d4befeaddd6c873c885172752cacb787e076d4dbeb in /usr/local/bin/ 
# Fri, 11 Jan 2019 15:04:13 GMT
COPY file:d375afac6cf463942802d2b27f08ef4d6198ac33f536b334f195e2e479c4cd6f in /var/www/html/ 
# Fri, 11 Jan 2019 15:04:14 GMT
COPY file:5b7ff05d0c98ad759c4bec0ef8a7ce74cae42e95b42564b55f43b341c2c3e3f5 in /var/www/html/ 
# Fri, 11 Jan 2019 15:04:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 15:04:19 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:1a07b0163994a6d3328beeaa3400f6304e68548ffb84deefcb74427a6b65a489`  
		Last Modified: Sat, 29 Dec 2018 10:15:04 GMT  
		Size: 20.3 MB (20337511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da8dc61ccacab0c571f2793c6c5400180816557fa0140990f997519be3471012`  
		Last Modified: Sun, 30 Dec 2018 01:03:31 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59be51dca15077e7f02edb4376d3e8e194896c4e706c9c03c2fd2d2af47f8cdc`  
		Last Modified: Sun, 30 Dec 2018 01:03:58 GMT  
		Size: 57.6 MB (57606226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f391fc42cee2e19f185ac34d4d4e8404a3209ed5c17b369dc30bdf3a0d29915`  
		Last Modified: Sun, 30 Dec 2018 01:03:31 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624799215cc8ec3f277033b52eefa3e6cdee2c0371b28a4983c3722506e677a6`  
		Last Modified: Sun, 30 Dec 2018 01:04:48 GMT  
		Size: 16.7 MB (16711057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10e7e30b294ed284d673effda7c4615ade5cd952cc3dee17c0116b1c0f6cd106`  
		Last Modified: Sun, 30 Dec 2018 01:04:40 GMT  
		Size: 1.3 KB (1342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1845118be0cdd364592b6079fb43ef235948f820e01b535e9b7da4187f405bd8`  
		Last Modified: Sun, 30 Dec 2018 01:04:40 GMT  
		Size: 446.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8e041c4002a5658f86b77e75593904c0fd11c2aa9f7ed2f36b876f5d4d54225`  
		Last Modified: Sun, 30 Dec 2018 01:04:40 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8e4758eeb14ef9d665ee8e8893a3dc0469e98e71080ff51cecbe20f001338dc`  
		Last Modified: Fri, 11 Jan 2019 13:28:11 GMT  
		Size: 12.5 MB (12504551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0a7715c7889392eb2892d63a5c19702854e3796c8987ae917f98186366120ae`  
		Last Modified: Fri, 11 Jan 2019 13:28:06 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99dd54d4b3d9b98d66331ca76de66e8a17ec67a762262913988d6c22266d77ed`  
		Last Modified: Fri, 11 Jan 2019 13:28:16 GMT  
		Size: 14.2 MB (14224611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:783103c755e67d37a92dbb7c0d026e9d602380ef1e49867419ce963777937ef5`  
		Last Modified: Fri, 11 Jan 2019 13:28:06 GMT  
		Size: 2.2 KB (2199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55581dc088e840fe29e62e8f79131b7a58e97936d4fe7aa7a8e6942bbd8e74f9`  
		Last Modified: Fri, 11 Jan 2019 13:28:06 GMT  
		Size: 261.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14d4b6af964b502f49158c5b653060487ec42d75d9afbe6512384f73b33e1e31`  
		Last Modified: Fri, 11 Jan 2019 13:28:06 GMT  
		Size: 907.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:545e657896019a75e45b577145c6567212a2dd02030ea98870170b5b93b65c7f`  
		Last Modified: Fri, 11 Jan 2019 15:09:01 GMT  
		Size: 262.3 KB (262344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71ecb13c447453d37b5f10e094b81dc29547b4ad0580d414ab98cb140b93a098`  
		Last Modified: Fri, 11 Jan 2019 15:09:01 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb7710e996c32963126e3402425d00ffe4c1fadceb2b25531977ae33148a1aa1`  
		Last Modified: Fri, 11 Jan 2019 15:08:58 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f490cf4284373ca4550c3cf2617f108ef9aab42f97f590ff537b45cda405f5b9`  
		Last Modified: Fri, 11 Jan 2019 15:09:00 GMT  
		Size: 2.5 MB (2485626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ffc0cd2ad70eba0c3a67a26b0904b855a15e4bf24f40567103be04ef5cf12e2`  
		Last Modified: Fri, 11 Jan 2019 15:08:58 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e823a50bf8f5a5694a2ee0d9597fff6b1830fcf0518c5e7b16ab6ced004b69a8`  
		Last Modified: Fri, 11 Jan 2019 15:08:58 GMT  
		Size: 1.8 KB (1832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4763bcd845306818ec0b5a638ddee94aede5786f3b9c2ddc618ab6f47971d43e`  
		Last Modified: Fri, 11 Jan 2019 15:08:59 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `yourls:latest` - linux; 386

```console
$ docker pull yourls@sha256:b2035a8f7ab1c3b5de3d23ccc4a7137e7458c283df1ae56878c404863b5124b0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.2 MB (143177459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec184124ebdbc826e1d68e9d5038d3989912c2d76ce9ae2c4bf14da610ae2649`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Sat, 29 Dec 2018 11:56:14 GMT
ADD file:aaa0661c64d46388f46e71ba3d172f3208f6b943dbc1a86e0b50ca5080bdb3ee in / 
# Sat, 29 Dec 2018 11:56:15 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 21:36:24 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Sat, 29 Dec 2018 21:36:24 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Sat, 29 Dec 2018 21:36:48 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 29 Dec 2018 21:36:48 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 29 Dec 2018 21:36:49 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 29 Dec 2018 21:45:50 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 21:45:51 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Sat, 29 Dec 2018 21:45:51 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Sat, 29 Dec 2018 21:45:51 GMT
RUN set -eux; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Sat, 29 Dec 2018 21:45:52 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Sat, 29 Dec 2018 21:45:53 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Sat, 29 Dec 2018 21:45:53 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Sat, 29 Dec 2018 21:45:53 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Sat, 29 Dec 2018 21:45:54 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 21:45:54 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 21:45:54 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 29 Dec 2018 22:07:26 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 11 Jan 2019 12:50:42 GMT
ENV PHP_VERSION=7.2.14
# Fri, 11 Jan 2019 12:50:42 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror
# Fri, 11 Jan 2019 12:50:42 GMT
ENV PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f PHP_MD5=
# Fri, 11 Jan 2019 12:50:53 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 11 Jan 2019 12:50:53 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 11 Jan 2019 12:54:18 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 11 Jan 2019 12:54:18 GMT
COPY multi:0a6fe33cb39694994fa567c75b399b9aa5e477c8770caa9f731607a72819b457 in /usr/local/bin/ 
# Fri, 11 Jan 2019 12:54:19 GMT
RUN docker-php-ext-enable sodium
# Fri, 11 Jan 2019 12:54:19 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 11 Jan 2019 12:54:19 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Fri, 11 Jan 2019 12:54:20 GMT
WORKDIR /var/www/html
# Fri, 11 Jan 2019 12:54:20 GMT
EXPOSE 80
# Fri, 11 Jan 2019 12:54:20 GMT
CMD ["apache2-foreground"]
# Fri, 11 Jan 2019 16:51:33 GMT
RUN set -ex;     docker-php-ext-install opcache pdo_mysql mysqli
# Fri, 11 Jan 2019 16:51:34 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 11 Jan 2019 16:51:34 GMT
RUN a2enmod rewrite expires
# Fri, 11 Jan 2019 16:51:35 GMT
VOLUME [/var/www/html]
# Fri, 11 Jan 2019 16:51:35 GMT
ENV YOURLS_VERSION=1.7.2
# Fri, 11 Jan 2019 16:51:36 GMT
RUN set -ex; 	curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz"; 	tar -xzf yourls.tar.gz -C /usr/src/; 	mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls; 	rm yourls.tar.gz; 	chown -R www-data:www-data /usr/src/yourls
# Fri, 11 Jan 2019 16:51:37 GMT
COPY file:7722c9d76f082fb2683ec1d4befeaddd6c873c885172752cacb787e076d4dbeb in /usr/local/bin/ 
# Fri, 11 Jan 2019 16:51:37 GMT
COPY file:d375afac6cf463942802d2b27f08ef4d6198ac33f536b334f195e2e479c4cd6f in /var/www/html/ 
# Fri, 11 Jan 2019 16:51:37 GMT
COPY file:5b7ff05d0c98ad759c4bec0ef8a7ce74cae42e95b42564b55f43b341c2c3e3f5 in /var/www/html/ 
# Fri, 11 Jan 2019 16:51:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 16:51:37 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:9a1a13172ed974323f7c35153e8b23b8fa1c85355b6b26cc3127e640e45ef0aa`  
		Last Modified: Sat, 29 Dec 2018 12:10:44 GMT  
		Size: 23.1 MB (23133155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5094d5d656a95c6aa92f5f2adc56a794564b1e340bc4065db2947d7ce0c1a394`  
		Last Modified: Sun, 30 Dec 2018 01:57:01 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb2ab2fc6c3875a5ebec4eb6dae731467d2cfbe0c4372b4db6b7f8faad9917e`  
		Last Modified: Sun, 30 Dec 2018 01:57:20 GMT  
		Size: 71.5 MB (71503745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05469bc6d7085ba5736c7bf95032d0bb750ab2fa43b29049cfee7ba36c391e79`  
		Last Modified: Sun, 30 Dec 2018 01:57:01 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cac1a3cba6925217785401a8b972064ba1a0dfe60d4e039f49c4dac4b3f4270e`  
		Last Modified: Sun, 30 Dec 2018 01:57:45 GMT  
		Size: 17.6 MB (17561920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9184c6ff5922580665f40d9e2416d6ff748200ba764489ad442486d61570f8d0`  
		Last Modified: Sun, 30 Dec 2018 01:57:40 GMT  
		Size: 1.3 KB (1336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9edc4d80dca7d81ba8b7a97ebf76890d74ca4d440e11b418c39c09686094da0b`  
		Last Modified: Sun, 30 Dec 2018 01:57:40 GMT  
		Size: 430.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c49d3ce320b30bff15e021157c1b88262d848a456dbdf970c8796accf3e9cc4`  
		Last Modified: Sun, 30 Dec 2018 01:57:40 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd62ef36d94e7c9305ffd2eb8a68bd0b1939d0e5f21ce8a25c7ab5db0748013d`  
		Last Modified: Fri, 11 Jan 2019 14:54:17 GMT  
		Size: 12.5 MB (12505836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b436f91e147a9071b2e0dde2cd2939f63ead4fffb43f92d4dc8d39aabfad96b`  
		Last Modified: Fri, 11 Jan 2019 14:54:12 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2848e63e536187e58765f167f5d942e58c4ba788373f18053046374337e6a498`  
		Last Modified: Fri, 11 Jan 2019 14:54:16 GMT  
		Size: 15.7 MB (15686833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b45df8623fc8e136011d091ed53d924d6820771d844b4c27843c8aac1a4a6ca6`  
		Last Modified: Fri, 11 Jan 2019 14:54:17 GMT  
		Size: 2.2 KB (2197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02b7d92b09c9e14b62d1c385941eabe813b6b3fb137191d2b3d3b91806481ada`  
		Last Modified: Fri, 11 Jan 2019 14:54:16 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64c2910211b6c9223772e7d9203a87d7f51672460245fe15ecf00277389bdaed`  
		Last Modified: Fri, 11 Jan 2019 14:54:16 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95dc45aae2e0964d2a1ca15dc4bb85b376c6ad044d917e80ae7921de2d2c319f`  
		Last Modified: Fri, 11 Jan 2019 16:53:29 GMT  
		Size: 289.9 KB (289900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87dd5f217b94a013757e95bd992b7b62057b4126538eeeaed0bb895a30f4204d`  
		Last Modified: Fri, 11 Jan 2019 16:53:29 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:903227e6f2d86754f057e2c31d64101ffc5d4731d2a61e5dabe5262275d570e8`  
		Last Modified: Fri, 11 Jan 2019 16:53:29 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3448433d93ec7f6c0ab0503cf930d128b88b57582763ed389e2d4ff3905c43cc`  
		Last Modified: Fri, 11 Jan 2019 16:53:29 GMT  
		Size: 2.5 MB (2485625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:468cea8a346ee27bcace5936c73c780e3405caa1c0e6ac073809d845ce32d115`  
		Last Modified: Fri, 11 Jan 2019 16:53:29 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de510317f9126ed6f8412e11413bde598790403a1ee015721ca216b8c7d949bb`  
		Last Modified: Fri, 11 Jan 2019 16:53:29 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bccf2bff7778ae0e482c38ec0d02f9dd398805696e645100abcfcbd3fa7ef83`  
		Last Modified: Fri, 11 Jan 2019 16:53:29 GMT  
		Size: 336.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `yourls:latest` - linux; ppc64le

```console
$ docker pull yourls@sha256:b626b79f83abab2dd375417dbde30ef9cb4ccd8a898794ecf28e421bdc3fb9a8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.2 MB (132241096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:189ff37dac130a5be7bc52d2baa5e9cf8dba74fd13fe3f326ed6c615caa61dcf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Sat, 29 Dec 2018 09:22:40 GMT
ADD file:11cdf0dbdac1a774d74f30e9954e3cf02c390d2280ce747bc95a3b774259f226 in / 
# Sat, 29 Dec 2018 09:22:44 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 13:02:33 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Sat, 29 Dec 2018 13:02:35 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Sat, 29 Dec 2018 13:04:54 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:04:59 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 29 Dec 2018 13:05:04 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 29 Dec 2018 13:12:08 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:12:10 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Sat, 29 Dec 2018 13:12:12 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Sat, 29 Dec 2018 13:12:16 GMT
RUN set -eux; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Sat, 29 Dec 2018 13:12:21 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Sat, 29 Dec 2018 13:12:26 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Sat, 29 Dec 2018 13:12:28 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Sat, 29 Dec 2018 13:12:30 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Sat, 29 Dec 2018 13:12:32 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 13:12:34 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 29 Dec 2018 13:12:36 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 29 Dec 2018 13:39:05 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 11 Jan 2019 10:15:38 GMT
ENV PHP_VERSION=7.2.14
# Fri, 11 Jan 2019 10:15:41 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror
# Fri, 11 Jan 2019 10:15:44 GMT
ENV PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f PHP_MD5=
# Fri, 11 Jan 2019 10:16:28 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 11 Jan 2019 10:16:29 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Fri, 11 Jan 2019 10:20:30 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 11 Jan 2019 10:20:32 GMT
COPY multi:0a6fe33cb39694994fa567c75b399b9aa5e477c8770caa9f731607a72819b457 in /usr/local/bin/ 
# Fri, 11 Jan 2019 10:20:35 GMT
RUN docker-php-ext-enable sodium
# Fri, 11 Jan 2019 10:20:38 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 11 Jan 2019 10:20:38 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Fri, 11 Jan 2019 10:20:40 GMT
WORKDIR /var/www/html
# Fri, 11 Jan 2019 10:20:42 GMT
EXPOSE 80
# Fri, 11 Jan 2019 10:20:44 GMT
CMD ["apache2-foreground"]
# Fri, 11 Jan 2019 13:41:41 GMT
RUN set -ex;     docker-php-ext-install opcache pdo_mysql mysqli
# Fri, 11 Jan 2019 13:41:44 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 11 Jan 2019 13:41:47 GMT
RUN a2enmod rewrite expires
# Fri, 11 Jan 2019 13:41:48 GMT
VOLUME [/var/www/html]
# Fri, 11 Jan 2019 13:41:49 GMT
ENV YOURLS_VERSION=1.7.2
# Fri, 11 Jan 2019 13:41:53 GMT
RUN set -ex; 	curl -o yourls.tar.gz -fsSL "https://github.com/YOURLS/YOURLS/archive/${YOURLS_VERSION}.tar.gz"; 	tar -xzf yourls.tar.gz -C /usr/src/; 	mv "/usr/src/YOURLS-${YOURLS_VERSION}" /usr/src/yourls; 	rm yourls.tar.gz; 	chown -R www-data:www-data /usr/src/yourls
# Fri, 11 Jan 2019 13:41:54 GMT
COPY file:7722c9d76f082fb2683ec1d4befeaddd6c873c885172752cacb787e076d4dbeb in /usr/local/bin/ 
# Fri, 11 Jan 2019 13:41:54 GMT
COPY file:d375afac6cf463942802d2b27f08ef4d6198ac33f536b334f195e2e479c4cd6f in /var/www/html/ 
# Fri, 11 Jan 2019 13:41:55 GMT
COPY file:5b7ff05d0c98ad759c4bec0ef8a7ce74cae42e95b42564b55f43b341c2c3e3f5 in /var/www/html/ 
# Fri, 11 Jan 2019 13:41:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 13:41:57 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:ca671aebac61774c6bfa23dd5b097e3a135a33f3987318158787030ee978173a`  
		Last Modified: Sat, 29 Dec 2018 09:28:38 GMT  
		Size: 22.7 MB (22746826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55c9e443128efed70bcb2c05fbf1b7b3c63735856c07a31f95f3422e8e5d6be3`  
		Last Modified: Sat, 29 Dec 2018 15:02:06 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26502f7e153105ac601f4d12e9b72baf9021b49b992fe619264a1933c2daf6b4`  
		Last Modified: Sat, 29 Dec 2018 15:02:32 GMT  
		Size: 61.8 MB (61833074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d327479a214f245c363cea23d6878780e6dbb819938b9511e7b69e2e17e81fbf`  
		Last Modified: Sat, 29 Dec 2018 15:02:06 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3209a003a83f58a4c0b0b6d647aab82cf58aac4488fbea658f96c9340ff4a9d`  
		Last Modified: Sat, 29 Dec 2018 15:03:36 GMT  
		Size: 17.3 MB (17348586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0792d92b3fe4333eec429cc7e973c9758702823c0f9cc84cd02777049c72d16d`  
		Last Modified: Sat, 29 Dec 2018 15:03:28 GMT  
		Size: 1.4 KB (1370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:594e55fae66c4e49f0a9d148262bd186dea8241009a7ebf4ac3ac37b9f04944a`  
		Last Modified: Sat, 29 Dec 2018 15:03:28 GMT  
		Size: 473.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7e36bda981ae059f48a8253566f80ac2c45f8d7490de6f2a6693f68e1c964b2`  
		Last Modified: Sat, 29 Dec 2018 15:03:28 GMT  
		Size: 518.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69bb2d7edd823e60bb4099d2fb4b17b3a2cc874a323577e8db870cd22c60920c`  
		Last Modified: Fri, 11 Jan 2019 11:26:57 GMT  
		Size: 12.5 MB (12504919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22e805ca840d1abcec392afa8d90e0de875ca93dfe0680e24784940fc990d819`  
		Last Modified: Fri, 11 Jan 2019 11:26:52 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eedb850efc629bd03dc72d6c0204586f9f46309639103c96d3ba5f964aeaba8d`  
		Last Modified: Fri, 11 Jan 2019 11:27:00 GMT  
		Size: 15.0 MB (15027223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d83ab29a048cabe65cfd7b7b4ce4b521ffba32cd1aa44e7150b5b94d43c2b69`  
		Last Modified: Fri, 11 Jan 2019 11:26:52 GMT  
		Size: 2.2 KB (2198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36c5059d88355e4c24967d7837f4702d890c3e91b29ff44b8e7df8ba6120c4e3`  
		Last Modified: Fri, 11 Jan 2019 11:26:52 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4def876c28c20732bdd4195fad8a9aadbaecae9ca15a0e948eaf42a989a53b6`  
		Last Modified: Fri, 11 Jan 2019 11:26:52 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40b859f8c1a0dcf62711b25d04b7f19bb139118c87db7e91c40cd7ccff62789b`  
		Last Modified: Fri, 11 Jan 2019 13:44:58 GMT  
		Size: 284.2 KB (284236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1814abbbcc60c8f1c24462eb8dc47f745cefa48246daf5cfdca857829725c08`  
		Last Modified: Fri, 11 Jan 2019 13:44:58 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b742dba48ce1cb3bde9b305cf038ef9a79b85cea257611874fcdee91767fe4a6`  
		Last Modified: Fri, 11 Jan 2019 13:44:54 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57d6f9ae7a02d68d00b5021c6094cb83f881d2c0db79b6bbe8bb8ece97d37921`  
		Last Modified: Fri, 11 Jan 2019 13:44:55 GMT  
		Size: 2.5 MB (2485637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0594c573d027c46238d7fca6e3dbfa69330722ac2092e7b5d948533a4d84564b`  
		Last Modified: Fri, 11 Jan 2019 13:44:54 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75de01c68c15baa5dd95835d11036fef59656ccb052218386adfeca2ccfe8f46`  
		Last Modified: Fri, 11 Jan 2019 13:44:54 GMT  
		Size: 1.8 KB (1832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:356802aa837e0477c136bd67c8c56149c1c944a1179b76c10fe1f20a87854642`  
		Last Modified: Fri, 11 Jan 2019 13:44:54 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
