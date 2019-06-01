<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mediawiki`

-	[`mediawiki:1.27`](#mediawiki127)
-	[`mediawiki:1.27.5`](#mediawiki1275)
-	[`mediawiki:1.31`](#mediawiki131)
-	[`mediawiki:1.31.1`](#mediawiki1311)
-	[`mediawiki:1.32`](#mediawiki132)
-	[`mediawiki:1.32.1`](#mediawiki1321)
-	[`mediawiki:latest`](#mediawikilatest)
-	[`mediawiki:legacy`](#mediawikilegacy)
-	[`mediawiki:legacylts`](#mediawikilegacylts)
-	[`mediawiki:lts`](#mediawikilts)
-	[`mediawiki:stable`](#mediawikistable)

## `mediawiki:1.27`

```console
$ docker pull mediawiki@sha256:0f5813db505920092eb7f3d8c6f85baf60ec21eafeeb65b60f812a562ec76ffb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `mediawiki:1.27` - linux; amd64

```console
$ docker pull mediawiki@sha256:2cb8c7bdbdbf0f50ac3528af2f6593aa1e315fde9bf1483e9f1e6d5564bcfbf4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.5 MB (196495693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e8aec3fcbd75474566d8b1ec1404352e6ded7c82957a78179430f26fc9d0b76`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 02:29:59 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 08 May 2019 02:29:59 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 08 May 2019 02:30:20 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 08 May 2019 02:30:21 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 08 May 2019 02:30:21 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 08 May 2019 02:37:00 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 08 May 2019 02:37:00 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 08 May 2019 02:37:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Wed, 08 May 2019 02:37:13 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 08 May 2019 02:37:14 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 08 May 2019 02:37:15 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 08 May 2019 02:37:15 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 08 May 2019 02:37:16 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 02:37:16 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 02:37:17 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 08 May 2019 03:26:01 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Wed, 08 May 2019 03:26:01 GMT
ENV PHP_VERSION=7.1.29
# Wed, 08 May 2019 03:26:01 GMT
ENV PHP_URL=https://www.php.net/get/php-7.1.29.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.1.29.tar.xz.asc/from/this/mirror
# Wed, 08 May 2019 03:26:01 GMT
ENV PHP_SHA256=b9a9b094687edc2d9c9553d5531e38e249b569127cf3b32fe1c84280509746fb PHP_MD5=
# Wed, 08 May 2019 03:26:11 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 08 May 2019 03:26:11 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Wed, 08 May 2019 03:31:16 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 08 May 2019 03:31:16 GMT
COPY multi:0002d7d5b06fb24f987aa4b027705dc71f81957419a02be5b9014431514c25b5 in /usr/local/bin/ 
# Wed, 08 May 2019 03:31:17 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 08 May 2019 03:31:17 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Wed, 08 May 2019 03:31:17 GMT
WORKDIR /var/www/html
# Wed, 08 May 2019 03:31:17 GMT
EXPOSE 80
# Wed, 08 May 2019 03:31:18 GMT
CMD ["apache2-foreground"]
# Wed, 08 May 2019 10:18:46 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		git 		imagemagick 		python 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 10:22:13 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libicu-dev 	; 		docker-php-ext-install 		intl 		mbstring 		mysqli 		opcache 	; 		pecl install apcu-5.1.16; 	docker-php-ext-enable 		apcu 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 10:22:14 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 08 May 2019 10:22:15 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Wed, 08 May 2019 10:22:15 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.27
# Wed, 08 May 2019 10:22:15 GMT
ENV MEDIAWIKI_BRANCH=REL1_27
# Wed, 08 May 2019 10:22:15 GMT
ENV MEDIAWIKI_VERSION=1.27.5
# Wed, 08 May 2019 10:22:16 GMT
ENV MEDIAWIKI_SHA512=2f341ed5afab24b81c315db6bcc58dd617f95231f71408c08bb2a8b974c95b7edd93d0f3c857f24058111c3228b9919a0f1c2fd2f85be940dc571e390225027a
# Wed, 08 May 2019 10:22:23 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6307e89982cc66cd480a6f5cfe17fabddae5e6ae4e735d8f0bf857892d299772`  
		Last Modified: Wed, 08 May 2019 04:41:06 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:807218e72ce2aeb1df368e9757482e7304772ccf439962eb68d1731a0b023802`  
		Last Modified: Wed, 08 May 2019 04:41:20 GMT  
		Size: 67.4 MB (67447543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5108df1d03f88b91e3a940361ab6bc2d60d60a6f52a1ba29d8283a00d71cb0c8`  
		Last Modified: Wed, 08 May 2019 04:41:06 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:901e0b6a7fe58d5615158528d37602cd806ecab9718a880d76f85d609742f5ea`  
		Last Modified: Wed, 08 May 2019 04:41:48 GMT  
		Size: 17.1 MB (17124934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ffe11e7ab2c09aa7e0167044fe111b6a03a5e93f517405f4c416e3220e0b197`  
		Last Modified: Wed, 08 May 2019 04:41:43 GMT  
		Size: 429.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da5f7a5079567ba0d853934f7275591bd53f6740d13e4499a15a9a109982f7e8`  
		Last Modified: Wed, 08 May 2019 04:41:43 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f32e22a66725825d41f9a17da5b225afa748c2b7a539ee909620231dd28e004b`  
		Last Modified: Wed, 08 May 2019 04:43:58 GMT  
		Size: 12.6 MB (12571229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e089551c1dc7108aaee1768bf77c64dd1c515ff095ad09efe290ff68f550a18f`  
		Last Modified: Wed, 08 May 2019 04:43:57 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89e76ec2844d3e54257901622fd80a0a7c27ea2c39cef7d194550d7c78d553a6`  
		Last Modified: Wed, 08 May 2019 04:44:02 GMT  
		Size: 14.2 MB (14235233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c4e90874d18a46d992b7b9bf35dd940dcc5470e29667ac7a9910e815f20094f`  
		Last Modified: Wed, 08 May 2019 04:43:57 GMT  
		Size: 2.2 KB (2199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c74eb0b2a498480f8d81177f30b8cf8eecf7e7915ebbc86775bf49a428c08677`  
		Last Modified: Wed, 08 May 2019 04:43:57 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46063c1dd414dbe81a319d3a28492c100644af6d7646e433111926d6325bd3bb`  
		Last Modified: Wed, 08 May 2019 10:23:43 GMT  
		Size: 28.2 MB (28232360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a477e1dd84fb0b0fa056213ff4347857284623e12731a88059f437f64853bd5`  
		Last Modified: Wed, 08 May 2019 10:23:36 GMT  
		Size: 2.5 MB (2456078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e72ae3d108ae222bdba2015df8807f4fdded6f7833defa61dcd402f737a7f70`  
		Last Modified: Wed, 08 May 2019 10:23:35 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:240f6ec799baba0bb218043167db04bbdf1996c870ffbd5d58d1e4867b16155e`  
		Last Modified: Wed, 08 May 2019 10:23:35 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f79d23cfcbea900f414016d7ffd66a7546ca5c39fab4dc55e1dc26501e0b814c`  
		Last Modified: Wed, 08 May 2019 10:23:50 GMT  
		Size: 31.9 MB (31933499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.27` - linux; arm variant v5

```console
$ docker pull mediawiki@sha256:bbce1b1932f2f0431d7496becfc1b9e0a7fe09f21ae3154beb79da2f6c12103f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.7 MB (182714929 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a324709bbfe2631150e816e4de5f96cd61e8fb1211d52a6e17419a82e3aeedfa`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 08 May 2019 08:53:38 GMT
ADD file:d9cc007a953434e1439cc534f397967f4f0f1bf149f1288a52f6209eca436852 in / 
# Wed, 08 May 2019 08:53:39 GMT
CMD ["bash"]
# Wed, 08 May 2019 09:48:37 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 08 May 2019 09:48:38 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 08 May 2019 09:49:17 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 08 May 2019 09:49:18 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 08 May 2019 09:49:20 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 08 May 2019 09:53:54 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 08 May 2019 09:53:54 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 08 May 2019 09:54:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Wed, 08 May 2019 09:54:17 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 08 May 2019 09:54:18 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 08 May 2019 09:54:19 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 08 May 2019 09:54:19 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 08 May 2019 09:54:20 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 09:54:20 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 09:54:21 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 08 May 2019 10:28:09 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Sat, 01 Jun 2019 00:32:50 GMT
ENV PHP_VERSION=7.1.30
# Sat, 01 Jun 2019 00:32:51 GMT
ENV PHP_URL=https://www.php.net/get/php-7.1.30.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.1.30.tar.xz.asc/from/this/mirror
# Sat, 01 Jun 2019 00:32:51 GMT
ENV PHP_SHA256=6310599811536dbe87e4bcf212bf93196bdfaff519d0c821e4c0068efd096a7c PHP_MD5=
# Sat, 01 Jun 2019 00:33:08 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 01 Jun 2019 00:33:09 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 01 Jun 2019 00:36:13 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 01 Jun 2019 00:36:14 GMT
COPY multi:0002d7d5b06fb24f987aa4b027705dc71f81957419a02be5b9014431514c25b5 in /usr/local/bin/ 
# Sat, 01 Jun 2019 00:36:15 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 01 Jun 2019 00:36:15 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Sat, 01 Jun 2019 00:36:16 GMT
WORKDIR /var/www/html
# Sat, 01 Jun 2019 00:36:16 GMT
EXPOSE 80
# Sat, 01 Jun 2019 00:36:17 GMT
CMD ["apache2-foreground"]
# Sat, 01 Jun 2019 02:31:40 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		git 		imagemagick 		python 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 02:35:28 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libicu-dev 	; 		docker-php-ext-install 		intl 		mbstring 		mysqli 		opcache 	; 		pecl install apcu-5.1.16; 	docker-php-ext-enable 		apcu 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 02:35:31 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 01 Jun 2019 02:35:33 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 01 Jun 2019 02:35:33 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.27
# Sat, 01 Jun 2019 02:35:33 GMT
ENV MEDIAWIKI_BRANCH=REL1_27
# Sat, 01 Jun 2019 02:35:34 GMT
ENV MEDIAWIKI_VERSION=1.27.5
# Sat, 01 Jun 2019 02:35:34 GMT
ENV MEDIAWIKI_SHA512=2f341ed5afab24b81c315db6bcc58dd617f95231f71408c08bb2a8b974c95b7edd93d0f3c857f24058111c3228b9919a0f1c2fd2f85be940dc571e390225027a
# Sat, 01 Jun 2019 02:35:49 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:f23f9ce99dc288927adafc8d503252a16b6ea2b40c9cb0dca688223c56bd0235`  
		Last Modified: Wed, 08 May 2019 08:59:29 GMT  
		Size: 21.2 MB (21155863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:375098c17606cf891dc6c2de639c2d9b69384583b36d1f12394d245cb131e539`  
		Last Modified: Wed, 08 May 2019 11:06:12 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:091ccac4f8817d1ccf73efd2fd3d421caaea5daab5cf6c0574ba160a012728d2`  
		Last Modified: Wed, 08 May 2019 11:06:33 GMT  
		Size: 57.5 MB (57477758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:825181d9c853e494b46e5d4a8d3eb39bb10ec9f0c5cab11f274faec90f876cef`  
		Last Modified: Wed, 08 May 2019 11:06:12 GMT  
		Size: 286.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:099d1d7d4434733003b46ad3c7824ce4e924bc48db25b33413a65c77ad3dfe2d`  
		Last Modified: Wed, 08 May 2019 11:07:08 GMT  
		Size: 16.7 MB (16651726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15629ed4b2662d162ebc33e2d122007c635a7254b4b55d0edf277dec13d74c9a`  
		Last Modified: Wed, 08 May 2019 11:07:03 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:560f7cc5ef807ab6fb5da234ac471e25d0aa2a5aa7015801be27d254ff521db0`  
		Last Modified: Wed, 08 May 2019 11:07:03 GMT  
		Size: 511.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afb5c586e97070ff08158ec3820f0703b1839012a20bb04f40f5ff1bce4ffa62`  
		Last Modified: Sat, 01 Jun 2019 01:16:55 GMT  
		Size: 12.6 MB (12569095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f23870b0aee1e4078b8b6f89748358713b426403a00fbfe9067e5d60ee41338`  
		Last Modified: Sat, 01 Jun 2019 01:16:53 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14521c03718e8831a88aa68febb5b9eed84376a46063716dc1268d174e1304d8`  
		Last Modified: Sat, 01 Jun 2019 01:16:58 GMT  
		Size: 13.6 MB (13566491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a23208306055ec5d42a8449b671e8e1ed1e499f32774d79f772fc639a0deefd3`  
		Last Modified: Sat, 01 Jun 2019 01:16:53 GMT  
		Size: 2.2 KB (2204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9f836b29cbaec3a036c91d19a3353202a9526a6fe8f46f6070663197827c190`  
		Last Modified: Sat, 01 Jun 2019 01:16:53 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15c7aadef37b3d1c1c0268da70a723390e932fb2eadc58a91b3325a2d120a08a`  
		Last Modified: Sat, 01 Jun 2019 02:37:27 GMT  
		Size: 27.0 MB (26979266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe1203723386d86abe72ae4cf3ca84ff360408372f9a7dbeb0f58c6cbf76aa2b`  
		Last Modified: Sat, 01 Jun 2019 02:37:19 GMT  
		Size: 2.4 MB (2375508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c2cac572a2d0234b108eb1c64c38e06d13f3c3ef4f35a3e043d7ece8283180e`  
		Last Modified: Sat, 01 Jun 2019 02:37:18 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21f3a75c7ce873a8ae3bff5bbb3e08487233b0530e1af925df06c1422e39cf05`  
		Last Modified: Sat, 01 Jun 2019 02:37:19 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbeb1cbb486a6520289cfd3cb39ac97c3dd57f1956b9541eb52a836c2b9325c5`  
		Last Modified: Sat, 01 Jun 2019 02:37:38 GMT  
		Size: 31.9 MB (31933592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.27` - linux; arm variant v7

```console
$ docker pull mediawiki@sha256:45c24668e3b8a770f20357e5b815d8b6d12d60992a368fc73d3748e1390efe55
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.6 MB (173553112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33da55581d123f2eee336930f024245623da6acaee7a47b32e46814cbdc1c60e`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 08 May 2019 12:03:54 GMT
ADD file:7813549b5e7862c4d5ecec9e7d8da27b520dd2cc1433e66637c57bb695d4f55a in / 
# Wed, 08 May 2019 12:03:54 GMT
CMD ["bash"]
# Wed, 08 May 2019 14:37:05 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 08 May 2019 14:37:06 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 08 May 2019 14:37:37 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 08 May 2019 14:37:39 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 08 May 2019 14:37:40 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 08 May 2019 14:42:38 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 08 May 2019 14:42:39 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 08 May 2019 14:42:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Wed, 08 May 2019 14:42:58 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 08 May 2019 14:42:59 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 08 May 2019 14:43:00 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 08 May 2019 14:43:00 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 08 May 2019 14:43:01 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 14:43:01 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 14:43:02 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 08 May 2019 15:16:38 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Sat, 01 Jun 2019 01:03:51 GMT
ENV PHP_VERSION=7.1.30
# Sat, 01 Jun 2019 01:03:52 GMT
ENV PHP_URL=https://www.php.net/get/php-7.1.30.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.1.30.tar.xz.asc/from/this/mirror
# Sat, 01 Jun 2019 01:03:52 GMT
ENV PHP_SHA256=6310599811536dbe87e4bcf212bf93196bdfaff519d0c821e4c0068efd096a7c PHP_MD5=
# Sat, 01 Jun 2019 01:04:06 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 01 Jun 2019 01:04:07 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 01 Jun 2019 01:06:55 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 01 Jun 2019 01:06:56 GMT
COPY multi:0002d7d5b06fb24f987aa4b027705dc71f81957419a02be5b9014431514c25b5 in /usr/local/bin/ 
# Sat, 01 Jun 2019 01:06:57 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 01 Jun 2019 01:06:58 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Sat, 01 Jun 2019 01:06:58 GMT
WORKDIR /var/www/html
# Sat, 01 Jun 2019 01:06:59 GMT
EXPOSE 80
# Sat, 01 Jun 2019 01:06:59 GMT
CMD ["apache2-foreground"]
# Sat, 01 Jun 2019 02:36:36 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		git 		imagemagick 		python 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 02:39:55 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libicu-dev 	; 		docker-php-ext-install 		intl 		mbstring 		mysqli 		opcache 	; 		pecl install apcu-5.1.16; 	docker-php-ext-enable 		apcu 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 02:39:57 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 01 Jun 2019 02:39:59 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 01 Jun 2019 02:39:59 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.27
# Sat, 01 Jun 2019 02:40:00 GMT
ENV MEDIAWIKI_BRANCH=REL1_27
# Sat, 01 Jun 2019 02:40:00 GMT
ENV MEDIAWIKI_VERSION=1.27.5
# Sat, 01 Jun 2019 02:40:01 GMT
ENV MEDIAWIKI_SHA512=2f341ed5afab24b81c315db6bcc58dd617f95231f71408c08bb2a8b974c95b7edd93d0f3c857f24058111c3228b9919a0f1c2fd2f85be940dc571e390225027a
# Sat, 01 Jun 2019 02:40:18 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:b0727b1ec48ef8920082aec023c050c83b563ae08080d9951d68fba55934bbd6`  
		Last Modified: Wed, 08 May 2019 12:10:01 GMT  
		Size: 19.3 MB (19276216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e208b62bc2ef8e00c39842047e209f0ee05486c604af8359d624ad326285642`  
		Last Modified: Wed, 08 May 2019 15:56:06 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b654776010960d429044df18c3d563b768a92d765adb835d874503dbc872672`  
		Last Modified: Wed, 08 May 2019 15:56:28 GMT  
		Size: 53.6 MB (53589670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0718556bb7e27c667cb22749130f30d651e5cb73cc88535d3cbb2f7a4fe6224e`  
		Last Modified: Wed, 08 May 2019 15:56:05 GMT  
		Size: 286.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21d279750d7c2122da564efb42a89a55b0a6cba5f6a2ac0f7a97191db4ae4fe6`  
		Last Modified: Wed, 08 May 2019 15:57:12 GMT  
		Size: 16.2 MB (16159683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a060b1fb5eab7537b954cc199873b54c44dcbddbfab9c2bb3e8bfdc8c51ec2ce`  
		Last Modified: Wed, 08 May 2019 15:57:03 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56397f3718603009afb913087c72dc6bb3b6465bb82f8f00c6bc4550aec76747`  
		Last Modified: Wed, 08 May 2019 15:57:02 GMT  
		Size: 516.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:711ca833e0b2b7874bfad1f3ea514bcfcd43f8aab1af9c9e93a8c28ee4792e19`  
		Last Modified: Sat, 01 Jun 2019 01:58:25 GMT  
		Size: 12.6 MB (12569113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c577f5a6ce3b3ec82eb40a417ad501ef98dceeffada7372e05255172a753879`  
		Last Modified: Sat, 01 Jun 2019 01:58:22 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b68b896bf50b808274e7b0aa065b94fe9833138e1a090916431b11b23e1c230a`  
		Last Modified: Sat, 01 Jun 2019 01:58:31 GMT  
		Size: 12.8 MB (12772749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c487ec2306106ada064ef56ae379f143579da9fa09b9647b0bed768bb3c4b098`  
		Last Modified: Sat, 01 Jun 2019 01:58:22 GMT  
		Size: 2.2 KB (2202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4728e682eb026d237c58520da3650d9e002ed161ec7d1f62e2bc43d4c415d030`  
		Last Modified: Sat, 01 Jun 2019 01:58:22 GMT  
		Size: 903.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:414797b3b7dd209b2c4e61746ddf3f3f32668266e219e6c01cae5206576681f2`  
		Last Modified: Sat, 01 Jun 2019 02:41:52 GMT  
		Size: 24.9 MB (24921047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48c68b0740708e5eaceed5bb9e8f24c1058e03af4de7d23214840ba110f3129f`  
		Last Modified: Sat, 01 Jun 2019 02:41:45 GMT  
		Size: 2.3 MB (2325395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:463f37f11193637206c565bdb4684472f366892e524f831d4aa4163ff1424f62`  
		Last Modified: Sat, 01 Jun 2019 02:41:45 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c094677296ad17d7ad8b980d81848e669b84b27ee992141614774d1057aa47b`  
		Last Modified: Sat, 01 Jun 2019 02:41:45 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:954a958faa2292ce63d227656fbad12e37eab0864e871d2a4fbb082b7024c2e8`  
		Last Modified: Sat, 01 Jun 2019 02:42:06 GMT  
		Size: 31.9 MB (31933612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.27` - linux; arm64 variant v8

```console
$ docker pull mediawiki@sha256:8f5e339ef65dff2f405eba5d9e9933ab7860164cdd687afdbdb106328fa358e8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.8 MB (180808064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c758b7c86ed1ca60fbafb67392a791d9165b2bc184c4d125b3db460dee3aa79`
-	Entrypoint: `["docker-php-entrypoint"]`
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
# Wed, 08 May 2019 14:59:35 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Wed, 08 May 2019 14:59:36 GMT
ENV PHP_VERSION=7.1.29
# Wed, 08 May 2019 14:59:37 GMT
ENV PHP_URL=https://www.php.net/get/php-7.1.29.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.1.29.tar.xz.asc/from/this/mirror
# Wed, 08 May 2019 14:59:37 GMT
ENV PHP_SHA256=b9a9b094687edc2d9c9553d5531e38e249b569127cf3b32fe1c84280509746fb PHP_MD5=
# Wed, 08 May 2019 15:00:08 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 08 May 2019 15:00:08 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Wed, 08 May 2019 15:07:18 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 08 May 2019 15:07:19 GMT
COPY multi:0002d7d5b06fb24f987aa4b027705dc71f81957419a02be5b9014431514c25b5 in /usr/local/bin/ 
# Wed, 08 May 2019 15:07:20 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 08 May 2019 15:07:22 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Wed, 08 May 2019 15:07:23 GMT
WORKDIR /var/www/html
# Wed, 08 May 2019 15:07:24 GMT
EXPOSE 80
# Wed, 08 May 2019 15:07:25 GMT
CMD ["apache2-foreground"]
# Thu, 09 May 2019 05:12:31 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		git 		imagemagick 		python 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 05:17:06 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libicu-dev 	; 		docker-php-ext-install 		intl 		mbstring 		mysqli 		opcache 	; 		pecl install apcu-5.1.16; 	docker-php-ext-enable 		apcu 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 05:17:08 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 09 May 2019 05:17:10 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Thu, 09 May 2019 05:17:11 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.27
# Thu, 09 May 2019 05:17:12 GMT
ENV MEDIAWIKI_BRANCH=REL1_27
# Thu, 09 May 2019 05:17:12 GMT
ENV MEDIAWIKI_VERSION=1.27.5
# Thu, 09 May 2019 05:17:13 GMT
ENV MEDIAWIKI_SHA512=2f341ed5afab24b81c315db6bcc58dd617f95231f71408c08bb2a8b974c95b7edd93d0f3c857f24058111c3228b9919a0f1c2fd2f85be940dc571e390225027a
# Thu, 09 May 2019 05:17:27 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
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
	-	`sha256:332690384408e6ebfe236a51f5153e3244504cc79c887339d9aedbfb8c25dede`  
		Last Modified: Wed, 08 May 2019 15:37:20 GMT  
		Size: 12.6 MB (12569343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf4fd0edb9cc8ab3d0e5a52955b507a60864290c51047d0cc34334863d289247`  
		Last Modified: Wed, 08 May 2019 15:37:18 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06aad4afb2b27e250f9d016f5a891aa85de84eb85b79ad45d73f6b169a72dec3`  
		Last Modified: Wed, 08 May 2019 15:37:24 GMT  
		Size: 13.4 MB (13381848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5fc690638478b3fccaa96ddb9d60e58184075a7f56575c6fa13e83de84d64f3`  
		Last Modified: Wed, 08 May 2019 15:37:17 GMT  
		Size: 2.2 KB (2205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99e8f4d09b3bc2b273e5a6a80c9177107b37cd62150515db7c4265a80c3f419b`  
		Last Modified: Wed, 08 May 2019 15:37:17 GMT  
		Size: 906.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dbe2b24d5e9b48c2bc99af14fdfbfdef32eee4a3ebab21dc2e1c11d43b50be7`  
		Last Modified: Thu, 09 May 2019 05:19:20 GMT  
		Size: 25.9 MB (25887204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33ca6529bbb672187f334db72804a5257de224295b6b98f843f95a6f288bf7a4`  
		Last Modified: Thu, 09 May 2019 05:19:11 GMT  
		Size: 2.4 MB (2382759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24da7e3a1ea7a02cade59a02e70f118b5d104033e5f136e2ef2c85461c4081e5`  
		Last Modified: Thu, 09 May 2019 05:19:10 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae196bb0149ef12b85542adc394c03be681e60655fd4856650e5a45a01fa6dda`  
		Last Modified: Thu, 09 May 2019 05:19:10 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e8981bab940cfceb335447d4881c03f4c2a6104933e6c8f77d0c000e64ed772`  
		Last Modified: Thu, 09 May 2019 05:19:34 GMT  
		Size: 31.9 MB (31933500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.27` - linux; 386

```console
$ docker pull mediawiki@sha256:e08f235439d6d07404037b7de0e31384c960a924a822073e7e971cbb023889a1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.8 MB (203789984 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:250ae86d68a4fd70965b6522c079ccfe5402f8f1dbcec5ce0d1a2a8068a02102`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 08 May 2019 10:49:55 GMT
ADD file:32d77a56ac954d1cd433a660591f374200929db022f1d0cfcf99eb6ab9e1679c in / 
# Wed, 08 May 2019 10:49:55 GMT
CMD ["bash"]
# Wed, 08 May 2019 16:35:40 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 08 May 2019 16:35:40 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 08 May 2019 16:36:06 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 08 May 2019 16:36:06 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 08 May 2019 16:36:07 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 08 May 2019 16:41:56 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 08 May 2019 16:41:57 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 08 May 2019 16:42:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Wed, 08 May 2019 16:42:09 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 08 May 2019 16:42:09 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 08 May 2019 16:42:10 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 08 May 2019 16:42:10 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 08 May 2019 16:42:10 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 16:42:10 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 16:42:10 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 08 May 2019 17:25:53 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Wed, 08 May 2019 17:25:53 GMT
ENV PHP_VERSION=7.1.29
# Wed, 08 May 2019 17:25:53 GMT
ENV PHP_URL=https://www.php.net/get/php-7.1.29.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.1.29.tar.xz.asc/from/this/mirror
# Wed, 08 May 2019 17:25:53 GMT
ENV PHP_SHA256=b9a9b094687edc2d9c9553d5531e38e249b569127cf3b32fe1c84280509746fb PHP_MD5=
# Wed, 08 May 2019 17:26:03 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 08 May 2019 17:26:03 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Wed, 08 May 2019 17:29:09 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 08 May 2019 17:29:10 GMT
COPY multi:0002d7d5b06fb24f987aa4b027705dc71f81957419a02be5b9014431514c25b5 in /usr/local/bin/ 
# Wed, 08 May 2019 17:29:10 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 08 May 2019 17:29:10 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Wed, 08 May 2019 17:29:10 GMT
WORKDIR /var/www/html
# Wed, 08 May 2019 17:29:10 GMT
EXPOSE 80
# Wed, 08 May 2019 17:29:11 GMT
CMD ["apache2-foreground"]
# Thu, 09 May 2019 02:51:02 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		git 		imagemagick 		python 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 02:53:02 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libicu-dev 	; 		docker-php-ext-install 		intl 		mbstring 		mysqli 		opcache 	; 		pecl install apcu-5.1.16; 	docker-php-ext-enable 		apcu 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 02:53:03 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 09 May 2019 02:53:03 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Thu, 09 May 2019 02:53:04 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.27
# Thu, 09 May 2019 02:53:04 GMT
ENV MEDIAWIKI_BRANCH=REL1_27
# Thu, 09 May 2019 02:53:04 GMT
ENV MEDIAWIKI_VERSION=1.27.5
# Thu, 09 May 2019 02:53:04 GMT
ENV MEDIAWIKI_SHA512=2f341ed5afab24b81c315db6bcc58dd617f95231f71408c08bb2a8b974c95b7edd93d0f3c857f24058111c3228b9919a0f1c2fd2f85be940dc571e390225027a
# Thu, 09 May 2019 02:53:12 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:3cf56ed221cf05f73233419fcc3a71b0afd424761fc83037e3a5cf101af5df46`  
		Last Modified: Wed, 08 May 2019 10:57:50 GMT  
		Size: 23.1 MB (23120843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2e394799d7fd8bb494dd3068fa793d651e7ccb426989bd27defd081a6bcc12f`  
		Last Modified: Wed, 08 May 2019 18:38:36 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d053425c85d9196337b5a25e4b3194f8f91c7540e201df765bb55f179df390d`  
		Last Modified: Wed, 08 May 2019 18:38:54 GMT  
		Size: 71.5 MB (71518824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:375ceda7fc26c2edccb175b8a009dd8db8b6159d82b589045c749fc2a90b409c`  
		Last Modified: Wed, 08 May 2019 18:38:35 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcee9f239c4761d5fb6def94e207d25f66b6dd1b06aca20ef921f0b7cec5fd2b`  
		Last Modified: Wed, 08 May 2019 18:39:23 GMT  
		Size: 17.6 MB (17559084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f37941543cfc620e1f153eec1e6627f09d2995dc4e11881df4b2fec57d024fc`  
		Last Modified: Wed, 08 May 2019 18:39:18 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e81f09a18a1e21c876bdb2b93ab40c2d32294938c8c14da1306afc78c85dc5b`  
		Last Modified: Wed, 08 May 2019 18:39:18 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc427cdf6cff5d89c88e8b2c4abc93c117e6b2c5259dbc59dedaf3ded4152a64`  
		Last Modified: Wed, 08 May 2019 18:41:40 GMT  
		Size: 12.6 MB (12570615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7698dcb7705a5037d64765cdcf53eb99fa6d646e2b708ce98804cb8ac7d08fa`  
		Last Modified: Wed, 08 May 2019 18:41:38 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31b9e48aa3a4bbba733e2f92d18123754c1877626867056b3aea637bd1622d26`  
		Last Modified: Wed, 08 May 2019 18:41:42 GMT  
		Size: 14.7 MB (14722081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:995fefbfadf66490187fbc94346367ed34bb3f96b840258fc872fb2ba5928235`  
		Last Modified: Wed, 08 May 2019 18:41:38 GMT  
		Size: 2.2 KB (2202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb4b629355e9b3e8fd02615130e270b1961d115451943890a2b0bd0e35a3524d`  
		Last Modified: Wed, 08 May 2019 18:41:38 GMT  
		Size: 903.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3da2ed88eb13235673c1a4cb6b987acaf381763c0168e1d7a971124132249987`  
		Last Modified: Thu, 09 May 2019 02:54:11 GMT  
		Size: 29.9 MB (29913855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5cbd5f7de1bde56ddde0215389922bdd34502612c57f2f1ebc698a3f0b6efed`  
		Last Modified: Thu, 09 May 2019 02:54:04 GMT  
		Size: 2.4 MB (2445823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2a16aadc575f409cfbd19ec55b9258d8824b1c3d94e855781f3669529aac4c6`  
		Last Modified: Thu, 09 May 2019 02:54:03 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeabc3e2ce4dbbf62a06c817a40ded005955dedd1aae7aa4677586891dfd30af`  
		Last Modified: Thu, 09 May 2019 02:54:03 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0646242db78e514efba68d7f4870811323f9eaa07d8bd729cafb138ea5e6a78`  
		Last Modified: Thu, 09 May 2019 02:54:18 GMT  
		Size: 31.9 MB (31933385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.27` - linux; ppc64le

```console
$ docker pull mediawiki@sha256:f816578d0c1819306ab78a438c2cca580eb44097ec34a4aa87f918aff6ed86ec
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.9 MB (190902978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3cdc6e65f5b54c808f9820e363d1837be0ba218bc38639424bcdea124cc5857`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 08 May 2019 09:05:46 GMT
ADD file:fa23694e2ef3b1ff3ac824d7d18d6951725f7f1ebfd5350392edd91f6b90d89e in / 
# Wed, 08 May 2019 09:05:50 GMT
CMD ["bash"]
# Wed, 08 May 2019 16:33:12 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 08 May 2019 16:33:15 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 08 May 2019 16:36:22 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 08 May 2019 16:36:29 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 08 May 2019 16:36:37 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 08 May 2019 16:45:05 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 08 May 2019 16:45:07 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 08 May 2019 16:46:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Wed, 08 May 2019 16:46:21 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 08 May 2019 16:46:32 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 08 May 2019 16:46:36 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 08 May 2019 16:46:39 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 08 May 2019 16:46:41 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 16:46:44 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 16:46:47 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 08 May 2019 18:00:21 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Wed, 08 May 2019 18:00:25 GMT
ENV PHP_VERSION=7.1.29
# Wed, 08 May 2019 18:00:31 GMT
ENV PHP_URL=https://www.php.net/get/php-7.1.29.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.1.29.tar.xz.asc/from/this/mirror
# Wed, 08 May 2019 18:00:36 GMT
ENV PHP_SHA256=b9a9b094687edc2d9c9553d5531e38e249b569127cf3b32fe1c84280509746fb PHP_MD5=
# Wed, 08 May 2019 18:01:28 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 08 May 2019 18:01:30 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Wed, 08 May 2019 18:08:40 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 08 May 2019 18:08:45 GMT
COPY multi:0002d7d5b06fb24f987aa4b027705dc71f81957419a02be5b9014431514c25b5 in /usr/local/bin/ 
# Wed, 08 May 2019 18:08:50 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 08 May 2019 18:08:52 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Wed, 08 May 2019 18:08:55 GMT
WORKDIR /var/www/html
# Wed, 08 May 2019 18:08:58 GMT
EXPOSE 80
# Wed, 08 May 2019 18:09:01 GMT
CMD ["apache2-foreground"]
# Thu, 09 May 2019 01:38:43 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		git 		imagemagick 		python 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 01:42:05 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libicu-dev 	; 		docker-php-ext-install 		intl 		mbstring 		mysqli 		opcache 	; 		pecl install apcu-5.1.16; 	docker-php-ext-enable 		apcu 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 01:42:14 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 09 May 2019 01:42:21 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Thu, 09 May 2019 01:42:23 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.27
# Thu, 09 May 2019 01:42:26 GMT
ENV MEDIAWIKI_BRANCH=REL1_27
# Thu, 09 May 2019 01:42:28 GMT
ENV MEDIAWIKI_VERSION=1.27.5
# Thu, 09 May 2019 01:42:31 GMT
ENV MEDIAWIKI_SHA512=2f341ed5afab24b81c315db6bcc58dd617f95231f71408c08bb2a8b974c95b7edd93d0f3c857f24058111c3228b9919a0f1c2fd2f85be940dc571e390225027a
# Thu, 09 May 2019 01:43:02 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:64bfe8794b280a764f2e07634dce2977621d140ae17fb34a03635710e84c3dfb`  
		Last Modified: Wed, 08 May 2019 09:26:17 GMT  
		Size: 22.7 MB (22744914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a41e81735fa83432331becf8dd5c79995a99c53ff4febd68f25916282e96fee5`  
		Last Modified: Wed, 08 May 2019 18:32:38 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74dcd7f44931915566fc2ab31df6e0da7972d7c1761a1e352f59834ab7b12288`  
		Last Modified: Wed, 08 May 2019 18:33:35 GMT  
		Size: 61.8 MB (61833424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8267f05b2cde025cb67ff60ba71e3ab4bb1d8c894385033a77f3592d3d86a1e9`  
		Last Modified: Wed, 08 May 2019 18:32:39 GMT  
		Size: 286.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b7902741744762d78bf30128d3aaad75defd223148cf4e8013abf2b472a23e7`  
		Last Modified: Wed, 08 May 2019 18:34:58 GMT  
		Size: 17.3 MB (17345860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8304e87d7eae9b221a89adc93eabf206be22236d6aa8fd6ef9bb71b82bd3349`  
		Last Modified: Wed, 08 May 2019 18:34:37 GMT  
		Size: 479.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:480539350c707aed3dba31a230406b23f267cb31ec2d6fa3dc7f239af8dcb64e`  
		Last Modified: Wed, 08 May 2019 18:34:37 GMT  
		Size: 518.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a543d7298a32a9daa541f904373a909055b21b1dd43853614c053709be06e33`  
		Last Modified: Wed, 08 May 2019 18:40:40 GMT  
		Size: 12.6 MB (12569919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0dfeb92068c6b3876290ad2cb3246a82db9362ce9a301974239520bc91fbc78`  
		Last Modified: Wed, 08 May 2019 18:40:35 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48002a3b3f3724623560e681d7cd6b937cb897f12aebb80fed1e42228475170b`  
		Last Modified: Wed, 08 May 2019 18:40:48 GMT  
		Size: 14.0 MB (14009828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd961fa4d930b8fe5b04f14611e6cfc90b2955c477ca2d97a48ccd8c3b95bc43`  
		Last Modified: Wed, 08 May 2019 18:40:36 GMT  
		Size: 2.2 KB (2203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3c66236b7251a883f067c3e5dd0a03346feab1a22ecbf0c3a14cd926269c871`  
		Last Modified: Wed, 08 May 2019 18:40:36 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16c00c28b02f2dded9ca72b6f3fe01e73fa04366039ec8c7fa325b5a73e0dbe1`  
		Last Modified: Thu, 09 May 2019 01:44:46 GMT  
		Size: 28.0 MB (28023672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f42a243a32a52b50e02a712eb7f0e236048e4f23cf9984ad7d3cb614991347cf`  
		Last Modified: Thu, 09 May 2019 01:44:39 GMT  
		Size: 2.4 MB (2436073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcde00e5f374816b51dd21f7d2dc1bd7f38296fa140074a5947e43c66e8644c4`  
		Last Modified: Thu, 09 May 2019 01:44:38 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33101b8b97d6e2b7687fde42af1ab4f95f031e9161a56d04b62446e49df0bddf`  
		Last Modified: Thu, 09 May 2019 01:44:38 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221bbcd0febd22da044aed505ce87375edcd80d7893efacd81c6fd94f308edf2`  
		Last Modified: Thu, 09 May 2019 01:44:52 GMT  
		Size: 31.9 MB (31933647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mediawiki:1.27.5`

```console
$ docker pull mediawiki@sha256:0f5813db505920092eb7f3d8c6f85baf60ec21eafeeb65b60f812a562ec76ffb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `mediawiki:1.27.5` - linux; amd64

```console
$ docker pull mediawiki@sha256:2cb8c7bdbdbf0f50ac3528af2f6593aa1e315fde9bf1483e9f1e6d5564bcfbf4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.5 MB (196495693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e8aec3fcbd75474566d8b1ec1404352e6ded7c82957a78179430f26fc9d0b76`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 02:29:59 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 08 May 2019 02:29:59 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 08 May 2019 02:30:20 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 08 May 2019 02:30:21 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 08 May 2019 02:30:21 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 08 May 2019 02:37:00 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 08 May 2019 02:37:00 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 08 May 2019 02:37:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Wed, 08 May 2019 02:37:13 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 08 May 2019 02:37:14 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 08 May 2019 02:37:15 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 08 May 2019 02:37:15 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 08 May 2019 02:37:16 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 02:37:16 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 02:37:17 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 08 May 2019 03:26:01 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Wed, 08 May 2019 03:26:01 GMT
ENV PHP_VERSION=7.1.29
# Wed, 08 May 2019 03:26:01 GMT
ENV PHP_URL=https://www.php.net/get/php-7.1.29.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.1.29.tar.xz.asc/from/this/mirror
# Wed, 08 May 2019 03:26:01 GMT
ENV PHP_SHA256=b9a9b094687edc2d9c9553d5531e38e249b569127cf3b32fe1c84280509746fb PHP_MD5=
# Wed, 08 May 2019 03:26:11 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 08 May 2019 03:26:11 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Wed, 08 May 2019 03:31:16 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 08 May 2019 03:31:16 GMT
COPY multi:0002d7d5b06fb24f987aa4b027705dc71f81957419a02be5b9014431514c25b5 in /usr/local/bin/ 
# Wed, 08 May 2019 03:31:17 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 08 May 2019 03:31:17 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Wed, 08 May 2019 03:31:17 GMT
WORKDIR /var/www/html
# Wed, 08 May 2019 03:31:17 GMT
EXPOSE 80
# Wed, 08 May 2019 03:31:18 GMT
CMD ["apache2-foreground"]
# Wed, 08 May 2019 10:18:46 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		git 		imagemagick 		python 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 10:22:13 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libicu-dev 	; 		docker-php-ext-install 		intl 		mbstring 		mysqli 		opcache 	; 		pecl install apcu-5.1.16; 	docker-php-ext-enable 		apcu 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 10:22:14 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 08 May 2019 10:22:15 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Wed, 08 May 2019 10:22:15 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.27
# Wed, 08 May 2019 10:22:15 GMT
ENV MEDIAWIKI_BRANCH=REL1_27
# Wed, 08 May 2019 10:22:15 GMT
ENV MEDIAWIKI_VERSION=1.27.5
# Wed, 08 May 2019 10:22:16 GMT
ENV MEDIAWIKI_SHA512=2f341ed5afab24b81c315db6bcc58dd617f95231f71408c08bb2a8b974c95b7edd93d0f3c857f24058111c3228b9919a0f1c2fd2f85be940dc571e390225027a
# Wed, 08 May 2019 10:22:23 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6307e89982cc66cd480a6f5cfe17fabddae5e6ae4e735d8f0bf857892d299772`  
		Last Modified: Wed, 08 May 2019 04:41:06 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:807218e72ce2aeb1df368e9757482e7304772ccf439962eb68d1731a0b023802`  
		Last Modified: Wed, 08 May 2019 04:41:20 GMT  
		Size: 67.4 MB (67447543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5108df1d03f88b91e3a940361ab6bc2d60d60a6f52a1ba29d8283a00d71cb0c8`  
		Last Modified: Wed, 08 May 2019 04:41:06 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:901e0b6a7fe58d5615158528d37602cd806ecab9718a880d76f85d609742f5ea`  
		Last Modified: Wed, 08 May 2019 04:41:48 GMT  
		Size: 17.1 MB (17124934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ffe11e7ab2c09aa7e0167044fe111b6a03a5e93f517405f4c416e3220e0b197`  
		Last Modified: Wed, 08 May 2019 04:41:43 GMT  
		Size: 429.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da5f7a5079567ba0d853934f7275591bd53f6740d13e4499a15a9a109982f7e8`  
		Last Modified: Wed, 08 May 2019 04:41:43 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f32e22a66725825d41f9a17da5b225afa748c2b7a539ee909620231dd28e004b`  
		Last Modified: Wed, 08 May 2019 04:43:58 GMT  
		Size: 12.6 MB (12571229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e089551c1dc7108aaee1768bf77c64dd1c515ff095ad09efe290ff68f550a18f`  
		Last Modified: Wed, 08 May 2019 04:43:57 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89e76ec2844d3e54257901622fd80a0a7c27ea2c39cef7d194550d7c78d553a6`  
		Last Modified: Wed, 08 May 2019 04:44:02 GMT  
		Size: 14.2 MB (14235233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c4e90874d18a46d992b7b9bf35dd940dcc5470e29667ac7a9910e815f20094f`  
		Last Modified: Wed, 08 May 2019 04:43:57 GMT  
		Size: 2.2 KB (2199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c74eb0b2a498480f8d81177f30b8cf8eecf7e7915ebbc86775bf49a428c08677`  
		Last Modified: Wed, 08 May 2019 04:43:57 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46063c1dd414dbe81a319d3a28492c100644af6d7646e433111926d6325bd3bb`  
		Last Modified: Wed, 08 May 2019 10:23:43 GMT  
		Size: 28.2 MB (28232360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a477e1dd84fb0b0fa056213ff4347857284623e12731a88059f437f64853bd5`  
		Last Modified: Wed, 08 May 2019 10:23:36 GMT  
		Size: 2.5 MB (2456078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e72ae3d108ae222bdba2015df8807f4fdded6f7833defa61dcd402f737a7f70`  
		Last Modified: Wed, 08 May 2019 10:23:35 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:240f6ec799baba0bb218043167db04bbdf1996c870ffbd5d58d1e4867b16155e`  
		Last Modified: Wed, 08 May 2019 10:23:35 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f79d23cfcbea900f414016d7ffd66a7546ca5c39fab4dc55e1dc26501e0b814c`  
		Last Modified: Wed, 08 May 2019 10:23:50 GMT  
		Size: 31.9 MB (31933499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.27.5` - linux; arm variant v5

```console
$ docker pull mediawiki@sha256:bbce1b1932f2f0431d7496becfc1b9e0a7fe09f21ae3154beb79da2f6c12103f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.7 MB (182714929 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a324709bbfe2631150e816e4de5f96cd61e8fb1211d52a6e17419a82e3aeedfa`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 08 May 2019 08:53:38 GMT
ADD file:d9cc007a953434e1439cc534f397967f4f0f1bf149f1288a52f6209eca436852 in / 
# Wed, 08 May 2019 08:53:39 GMT
CMD ["bash"]
# Wed, 08 May 2019 09:48:37 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 08 May 2019 09:48:38 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 08 May 2019 09:49:17 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 08 May 2019 09:49:18 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 08 May 2019 09:49:20 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 08 May 2019 09:53:54 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 08 May 2019 09:53:54 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 08 May 2019 09:54:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Wed, 08 May 2019 09:54:17 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 08 May 2019 09:54:18 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 08 May 2019 09:54:19 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 08 May 2019 09:54:19 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 08 May 2019 09:54:20 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 09:54:20 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 09:54:21 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 08 May 2019 10:28:09 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Sat, 01 Jun 2019 00:32:50 GMT
ENV PHP_VERSION=7.1.30
# Sat, 01 Jun 2019 00:32:51 GMT
ENV PHP_URL=https://www.php.net/get/php-7.1.30.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.1.30.tar.xz.asc/from/this/mirror
# Sat, 01 Jun 2019 00:32:51 GMT
ENV PHP_SHA256=6310599811536dbe87e4bcf212bf93196bdfaff519d0c821e4c0068efd096a7c PHP_MD5=
# Sat, 01 Jun 2019 00:33:08 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 01 Jun 2019 00:33:09 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 01 Jun 2019 00:36:13 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 01 Jun 2019 00:36:14 GMT
COPY multi:0002d7d5b06fb24f987aa4b027705dc71f81957419a02be5b9014431514c25b5 in /usr/local/bin/ 
# Sat, 01 Jun 2019 00:36:15 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 01 Jun 2019 00:36:15 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Sat, 01 Jun 2019 00:36:16 GMT
WORKDIR /var/www/html
# Sat, 01 Jun 2019 00:36:16 GMT
EXPOSE 80
# Sat, 01 Jun 2019 00:36:17 GMT
CMD ["apache2-foreground"]
# Sat, 01 Jun 2019 02:31:40 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		git 		imagemagick 		python 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 02:35:28 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libicu-dev 	; 		docker-php-ext-install 		intl 		mbstring 		mysqli 		opcache 	; 		pecl install apcu-5.1.16; 	docker-php-ext-enable 		apcu 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 02:35:31 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 01 Jun 2019 02:35:33 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 01 Jun 2019 02:35:33 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.27
# Sat, 01 Jun 2019 02:35:33 GMT
ENV MEDIAWIKI_BRANCH=REL1_27
# Sat, 01 Jun 2019 02:35:34 GMT
ENV MEDIAWIKI_VERSION=1.27.5
# Sat, 01 Jun 2019 02:35:34 GMT
ENV MEDIAWIKI_SHA512=2f341ed5afab24b81c315db6bcc58dd617f95231f71408c08bb2a8b974c95b7edd93d0f3c857f24058111c3228b9919a0f1c2fd2f85be940dc571e390225027a
# Sat, 01 Jun 2019 02:35:49 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:f23f9ce99dc288927adafc8d503252a16b6ea2b40c9cb0dca688223c56bd0235`  
		Last Modified: Wed, 08 May 2019 08:59:29 GMT  
		Size: 21.2 MB (21155863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:375098c17606cf891dc6c2de639c2d9b69384583b36d1f12394d245cb131e539`  
		Last Modified: Wed, 08 May 2019 11:06:12 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:091ccac4f8817d1ccf73efd2fd3d421caaea5daab5cf6c0574ba160a012728d2`  
		Last Modified: Wed, 08 May 2019 11:06:33 GMT  
		Size: 57.5 MB (57477758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:825181d9c853e494b46e5d4a8d3eb39bb10ec9f0c5cab11f274faec90f876cef`  
		Last Modified: Wed, 08 May 2019 11:06:12 GMT  
		Size: 286.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:099d1d7d4434733003b46ad3c7824ce4e924bc48db25b33413a65c77ad3dfe2d`  
		Last Modified: Wed, 08 May 2019 11:07:08 GMT  
		Size: 16.7 MB (16651726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15629ed4b2662d162ebc33e2d122007c635a7254b4b55d0edf277dec13d74c9a`  
		Last Modified: Wed, 08 May 2019 11:07:03 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:560f7cc5ef807ab6fb5da234ac471e25d0aa2a5aa7015801be27d254ff521db0`  
		Last Modified: Wed, 08 May 2019 11:07:03 GMT  
		Size: 511.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afb5c586e97070ff08158ec3820f0703b1839012a20bb04f40f5ff1bce4ffa62`  
		Last Modified: Sat, 01 Jun 2019 01:16:55 GMT  
		Size: 12.6 MB (12569095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f23870b0aee1e4078b8b6f89748358713b426403a00fbfe9067e5d60ee41338`  
		Last Modified: Sat, 01 Jun 2019 01:16:53 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14521c03718e8831a88aa68febb5b9eed84376a46063716dc1268d174e1304d8`  
		Last Modified: Sat, 01 Jun 2019 01:16:58 GMT  
		Size: 13.6 MB (13566491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a23208306055ec5d42a8449b671e8e1ed1e499f32774d79f772fc639a0deefd3`  
		Last Modified: Sat, 01 Jun 2019 01:16:53 GMT  
		Size: 2.2 KB (2204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9f836b29cbaec3a036c91d19a3353202a9526a6fe8f46f6070663197827c190`  
		Last Modified: Sat, 01 Jun 2019 01:16:53 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15c7aadef37b3d1c1c0268da70a723390e932fb2eadc58a91b3325a2d120a08a`  
		Last Modified: Sat, 01 Jun 2019 02:37:27 GMT  
		Size: 27.0 MB (26979266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe1203723386d86abe72ae4cf3ca84ff360408372f9a7dbeb0f58c6cbf76aa2b`  
		Last Modified: Sat, 01 Jun 2019 02:37:19 GMT  
		Size: 2.4 MB (2375508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c2cac572a2d0234b108eb1c64c38e06d13f3c3ef4f35a3e043d7ece8283180e`  
		Last Modified: Sat, 01 Jun 2019 02:37:18 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21f3a75c7ce873a8ae3bff5bbb3e08487233b0530e1af925df06c1422e39cf05`  
		Last Modified: Sat, 01 Jun 2019 02:37:19 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbeb1cbb486a6520289cfd3cb39ac97c3dd57f1956b9541eb52a836c2b9325c5`  
		Last Modified: Sat, 01 Jun 2019 02:37:38 GMT  
		Size: 31.9 MB (31933592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.27.5` - linux; arm variant v7

```console
$ docker pull mediawiki@sha256:45c24668e3b8a770f20357e5b815d8b6d12d60992a368fc73d3748e1390efe55
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.6 MB (173553112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33da55581d123f2eee336930f024245623da6acaee7a47b32e46814cbdc1c60e`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 08 May 2019 12:03:54 GMT
ADD file:7813549b5e7862c4d5ecec9e7d8da27b520dd2cc1433e66637c57bb695d4f55a in / 
# Wed, 08 May 2019 12:03:54 GMT
CMD ["bash"]
# Wed, 08 May 2019 14:37:05 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 08 May 2019 14:37:06 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 08 May 2019 14:37:37 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 08 May 2019 14:37:39 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 08 May 2019 14:37:40 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 08 May 2019 14:42:38 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 08 May 2019 14:42:39 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 08 May 2019 14:42:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Wed, 08 May 2019 14:42:58 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 08 May 2019 14:42:59 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 08 May 2019 14:43:00 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 08 May 2019 14:43:00 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 08 May 2019 14:43:01 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 14:43:01 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 14:43:02 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 08 May 2019 15:16:38 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Sat, 01 Jun 2019 01:03:51 GMT
ENV PHP_VERSION=7.1.30
# Sat, 01 Jun 2019 01:03:52 GMT
ENV PHP_URL=https://www.php.net/get/php-7.1.30.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.1.30.tar.xz.asc/from/this/mirror
# Sat, 01 Jun 2019 01:03:52 GMT
ENV PHP_SHA256=6310599811536dbe87e4bcf212bf93196bdfaff519d0c821e4c0068efd096a7c PHP_MD5=
# Sat, 01 Jun 2019 01:04:06 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 01 Jun 2019 01:04:07 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 01 Jun 2019 01:06:55 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 01 Jun 2019 01:06:56 GMT
COPY multi:0002d7d5b06fb24f987aa4b027705dc71f81957419a02be5b9014431514c25b5 in /usr/local/bin/ 
# Sat, 01 Jun 2019 01:06:57 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 01 Jun 2019 01:06:58 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Sat, 01 Jun 2019 01:06:58 GMT
WORKDIR /var/www/html
# Sat, 01 Jun 2019 01:06:59 GMT
EXPOSE 80
# Sat, 01 Jun 2019 01:06:59 GMT
CMD ["apache2-foreground"]
# Sat, 01 Jun 2019 02:36:36 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		git 		imagemagick 		python 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 02:39:55 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libicu-dev 	; 		docker-php-ext-install 		intl 		mbstring 		mysqli 		opcache 	; 		pecl install apcu-5.1.16; 	docker-php-ext-enable 		apcu 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 02:39:57 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 01 Jun 2019 02:39:59 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 01 Jun 2019 02:39:59 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.27
# Sat, 01 Jun 2019 02:40:00 GMT
ENV MEDIAWIKI_BRANCH=REL1_27
# Sat, 01 Jun 2019 02:40:00 GMT
ENV MEDIAWIKI_VERSION=1.27.5
# Sat, 01 Jun 2019 02:40:01 GMT
ENV MEDIAWIKI_SHA512=2f341ed5afab24b81c315db6bcc58dd617f95231f71408c08bb2a8b974c95b7edd93d0f3c857f24058111c3228b9919a0f1c2fd2f85be940dc571e390225027a
# Sat, 01 Jun 2019 02:40:18 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:b0727b1ec48ef8920082aec023c050c83b563ae08080d9951d68fba55934bbd6`  
		Last Modified: Wed, 08 May 2019 12:10:01 GMT  
		Size: 19.3 MB (19276216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e208b62bc2ef8e00c39842047e209f0ee05486c604af8359d624ad326285642`  
		Last Modified: Wed, 08 May 2019 15:56:06 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b654776010960d429044df18c3d563b768a92d765adb835d874503dbc872672`  
		Last Modified: Wed, 08 May 2019 15:56:28 GMT  
		Size: 53.6 MB (53589670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0718556bb7e27c667cb22749130f30d651e5cb73cc88535d3cbb2f7a4fe6224e`  
		Last Modified: Wed, 08 May 2019 15:56:05 GMT  
		Size: 286.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21d279750d7c2122da564efb42a89a55b0a6cba5f6a2ac0f7a97191db4ae4fe6`  
		Last Modified: Wed, 08 May 2019 15:57:12 GMT  
		Size: 16.2 MB (16159683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a060b1fb5eab7537b954cc199873b54c44dcbddbfab9c2bb3e8bfdc8c51ec2ce`  
		Last Modified: Wed, 08 May 2019 15:57:03 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56397f3718603009afb913087c72dc6bb3b6465bb82f8f00c6bc4550aec76747`  
		Last Modified: Wed, 08 May 2019 15:57:02 GMT  
		Size: 516.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:711ca833e0b2b7874bfad1f3ea514bcfcd43f8aab1af9c9e93a8c28ee4792e19`  
		Last Modified: Sat, 01 Jun 2019 01:58:25 GMT  
		Size: 12.6 MB (12569113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c577f5a6ce3b3ec82eb40a417ad501ef98dceeffada7372e05255172a753879`  
		Last Modified: Sat, 01 Jun 2019 01:58:22 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b68b896bf50b808274e7b0aa065b94fe9833138e1a090916431b11b23e1c230a`  
		Last Modified: Sat, 01 Jun 2019 01:58:31 GMT  
		Size: 12.8 MB (12772749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c487ec2306106ada064ef56ae379f143579da9fa09b9647b0bed768bb3c4b098`  
		Last Modified: Sat, 01 Jun 2019 01:58:22 GMT  
		Size: 2.2 KB (2202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4728e682eb026d237c58520da3650d9e002ed161ec7d1f62e2bc43d4c415d030`  
		Last Modified: Sat, 01 Jun 2019 01:58:22 GMT  
		Size: 903.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:414797b3b7dd209b2c4e61746ddf3f3f32668266e219e6c01cae5206576681f2`  
		Last Modified: Sat, 01 Jun 2019 02:41:52 GMT  
		Size: 24.9 MB (24921047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48c68b0740708e5eaceed5bb9e8f24c1058e03af4de7d23214840ba110f3129f`  
		Last Modified: Sat, 01 Jun 2019 02:41:45 GMT  
		Size: 2.3 MB (2325395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:463f37f11193637206c565bdb4684472f366892e524f831d4aa4163ff1424f62`  
		Last Modified: Sat, 01 Jun 2019 02:41:45 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c094677296ad17d7ad8b980d81848e669b84b27ee992141614774d1057aa47b`  
		Last Modified: Sat, 01 Jun 2019 02:41:45 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:954a958faa2292ce63d227656fbad12e37eab0864e871d2a4fbb082b7024c2e8`  
		Last Modified: Sat, 01 Jun 2019 02:42:06 GMT  
		Size: 31.9 MB (31933612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.27.5` - linux; arm64 variant v8

```console
$ docker pull mediawiki@sha256:8f5e339ef65dff2f405eba5d9e9933ab7860164cdd687afdbdb106328fa358e8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.8 MB (180808064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c758b7c86ed1ca60fbafb67392a791d9165b2bc184c4d125b3db460dee3aa79`
-	Entrypoint: `["docker-php-entrypoint"]`
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
# Wed, 08 May 2019 14:59:35 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Wed, 08 May 2019 14:59:36 GMT
ENV PHP_VERSION=7.1.29
# Wed, 08 May 2019 14:59:37 GMT
ENV PHP_URL=https://www.php.net/get/php-7.1.29.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.1.29.tar.xz.asc/from/this/mirror
# Wed, 08 May 2019 14:59:37 GMT
ENV PHP_SHA256=b9a9b094687edc2d9c9553d5531e38e249b569127cf3b32fe1c84280509746fb PHP_MD5=
# Wed, 08 May 2019 15:00:08 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 08 May 2019 15:00:08 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Wed, 08 May 2019 15:07:18 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 08 May 2019 15:07:19 GMT
COPY multi:0002d7d5b06fb24f987aa4b027705dc71f81957419a02be5b9014431514c25b5 in /usr/local/bin/ 
# Wed, 08 May 2019 15:07:20 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 08 May 2019 15:07:22 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Wed, 08 May 2019 15:07:23 GMT
WORKDIR /var/www/html
# Wed, 08 May 2019 15:07:24 GMT
EXPOSE 80
# Wed, 08 May 2019 15:07:25 GMT
CMD ["apache2-foreground"]
# Thu, 09 May 2019 05:12:31 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		git 		imagemagick 		python 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 05:17:06 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libicu-dev 	; 		docker-php-ext-install 		intl 		mbstring 		mysqli 		opcache 	; 		pecl install apcu-5.1.16; 	docker-php-ext-enable 		apcu 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 05:17:08 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 09 May 2019 05:17:10 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Thu, 09 May 2019 05:17:11 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.27
# Thu, 09 May 2019 05:17:12 GMT
ENV MEDIAWIKI_BRANCH=REL1_27
# Thu, 09 May 2019 05:17:12 GMT
ENV MEDIAWIKI_VERSION=1.27.5
# Thu, 09 May 2019 05:17:13 GMT
ENV MEDIAWIKI_SHA512=2f341ed5afab24b81c315db6bcc58dd617f95231f71408c08bb2a8b974c95b7edd93d0f3c857f24058111c3228b9919a0f1c2fd2f85be940dc571e390225027a
# Thu, 09 May 2019 05:17:27 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
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
	-	`sha256:332690384408e6ebfe236a51f5153e3244504cc79c887339d9aedbfb8c25dede`  
		Last Modified: Wed, 08 May 2019 15:37:20 GMT  
		Size: 12.6 MB (12569343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf4fd0edb9cc8ab3d0e5a52955b507a60864290c51047d0cc34334863d289247`  
		Last Modified: Wed, 08 May 2019 15:37:18 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06aad4afb2b27e250f9d016f5a891aa85de84eb85b79ad45d73f6b169a72dec3`  
		Last Modified: Wed, 08 May 2019 15:37:24 GMT  
		Size: 13.4 MB (13381848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5fc690638478b3fccaa96ddb9d60e58184075a7f56575c6fa13e83de84d64f3`  
		Last Modified: Wed, 08 May 2019 15:37:17 GMT  
		Size: 2.2 KB (2205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99e8f4d09b3bc2b273e5a6a80c9177107b37cd62150515db7c4265a80c3f419b`  
		Last Modified: Wed, 08 May 2019 15:37:17 GMT  
		Size: 906.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dbe2b24d5e9b48c2bc99af14fdfbfdef32eee4a3ebab21dc2e1c11d43b50be7`  
		Last Modified: Thu, 09 May 2019 05:19:20 GMT  
		Size: 25.9 MB (25887204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33ca6529bbb672187f334db72804a5257de224295b6b98f843f95a6f288bf7a4`  
		Last Modified: Thu, 09 May 2019 05:19:11 GMT  
		Size: 2.4 MB (2382759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24da7e3a1ea7a02cade59a02e70f118b5d104033e5f136e2ef2c85461c4081e5`  
		Last Modified: Thu, 09 May 2019 05:19:10 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae196bb0149ef12b85542adc394c03be681e60655fd4856650e5a45a01fa6dda`  
		Last Modified: Thu, 09 May 2019 05:19:10 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e8981bab940cfceb335447d4881c03f4c2a6104933e6c8f77d0c000e64ed772`  
		Last Modified: Thu, 09 May 2019 05:19:34 GMT  
		Size: 31.9 MB (31933500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.27.5` - linux; 386

```console
$ docker pull mediawiki@sha256:e08f235439d6d07404037b7de0e31384c960a924a822073e7e971cbb023889a1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.8 MB (203789984 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:250ae86d68a4fd70965b6522c079ccfe5402f8f1dbcec5ce0d1a2a8068a02102`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 08 May 2019 10:49:55 GMT
ADD file:32d77a56ac954d1cd433a660591f374200929db022f1d0cfcf99eb6ab9e1679c in / 
# Wed, 08 May 2019 10:49:55 GMT
CMD ["bash"]
# Wed, 08 May 2019 16:35:40 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 08 May 2019 16:35:40 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 08 May 2019 16:36:06 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 08 May 2019 16:36:06 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 08 May 2019 16:36:07 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 08 May 2019 16:41:56 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 08 May 2019 16:41:57 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 08 May 2019 16:42:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Wed, 08 May 2019 16:42:09 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 08 May 2019 16:42:09 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 08 May 2019 16:42:10 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 08 May 2019 16:42:10 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 08 May 2019 16:42:10 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 16:42:10 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 16:42:10 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 08 May 2019 17:25:53 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Wed, 08 May 2019 17:25:53 GMT
ENV PHP_VERSION=7.1.29
# Wed, 08 May 2019 17:25:53 GMT
ENV PHP_URL=https://www.php.net/get/php-7.1.29.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.1.29.tar.xz.asc/from/this/mirror
# Wed, 08 May 2019 17:25:53 GMT
ENV PHP_SHA256=b9a9b094687edc2d9c9553d5531e38e249b569127cf3b32fe1c84280509746fb PHP_MD5=
# Wed, 08 May 2019 17:26:03 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 08 May 2019 17:26:03 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Wed, 08 May 2019 17:29:09 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 08 May 2019 17:29:10 GMT
COPY multi:0002d7d5b06fb24f987aa4b027705dc71f81957419a02be5b9014431514c25b5 in /usr/local/bin/ 
# Wed, 08 May 2019 17:29:10 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 08 May 2019 17:29:10 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Wed, 08 May 2019 17:29:10 GMT
WORKDIR /var/www/html
# Wed, 08 May 2019 17:29:10 GMT
EXPOSE 80
# Wed, 08 May 2019 17:29:11 GMT
CMD ["apache2-foreground"]
# Thu, 09 May 2019 02:51:02 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		git 		imagemagick 		python 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 02:53:02 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libicu-dev 	; 		docker-php-ext-install 		intl 		mbstring 		mysqli 		opcache 	; 		pecl install apcu-5.1.16; 	docker-php-ext-enable 		apcu 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 02:53:03 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 09 May 2019 02:53:03 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Thu, 09 May 2019 02:53:04 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.27
# Thu, 09 May 2019 02:53:04 GMT
ENV MEDIAWIKI_BRANCH=REL1_27
# Thu, 09 May 2019 02:53:04 GMT
ENV MEDIAWIKI_VERSION=1.27.5
# Thu, 09 May 2019 02:53:04 GMT
ENV MEDIAWIKI_SHA512=2f341ed5afab24b81c315db6bcc58dd617f95231f71408c08bb2a8b974c95b7edd93d0f3c857f24058111c3228b9919a0f1c2fd2f85be940dc571e390225027a
# Thu, 09 May 2019 02:53:12 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:3cf56ed221cf05f73233419fcc3a71b0afd424761fc83037e3a5cf101af5df46`  
		Last Modified: Wed, 08 May 2019 10:57:50 GMT  
		Size: 23.1 MB (23120843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2e394799d7fd8bb494dd3068fa793d651e7ccb426989bd27defd081a6bcc12f`  
		Last Modified: Wed, 08 May 2019 18:38:36 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d053425c85d9196337b5a25e4b3194f8f91c7540e201df765bb55f179df390d`  
		Last Modified: Wed, 08 May 2019 18:38:54 GMT  
		Size: 71.5 MB (71518824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:375ceda7fc26c2edccb175b8a009dd8db8b6159d82b589045c749fc2a90b409c`  
		Last Modified: Wed, 08 May 2019 18:38:35 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcee9f239c4761d5fb6def94e207d25f66b6dd1b06aca20ef921f0b7cec5fd2b`  
		Last Modified: Wed, 08 May 2019 18:39:23 GMT  
		Size: 17.6 MB (17559084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f37941543cfc620e1f153eec1e6627f09d2995dc4e11881df4b2fec57d024fc`  
		Last Modified: Wed, 08 May 2019 18:39:18 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e81f09a18a1e21c876bdb2b93ab40c2d32294938c8c14da1306afc78c85dc5b`  
		Last Modified: Wed, 08 May 2019 18:39:18 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc427cdf6cff5d89c88e8b2c4abc93c117e6b2c5259dbc59dedaf3ded4152a64`  
		Last Modified: Wed, 08 May 2019 18:41:40 GMT  
		Size: 12.6 MB (12570615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7698dcb7705a5037d64765cdcf53eb99fa6d646e2b708ce98804cb8ac7d08fa`  
		Last Modified: Wed, 08 May 2019 18:41:38 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31b9e48aa3a4bbba733e2f92d18123754c1877626867056b3aea637bd1622d26`  
		Last Modified: Wed, 08 May 2019 18:41:42 GMT  
		Size: 14.7 MB (14722081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:995fefbfadf66490187fbc94346367ed34bb3f96b840258fc872fb2ba5928235`  
		Last Modified: Wed, 08 May 2019 18:41:38 GMT  
		Size: 2.2 KB (2202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb4b629355e9b3e8fd02615130e270b1961d115451943890a2b0bd0e35a3524d`  
		Last Modified: Wed, 08 May 2019 18:41:38 GMT  
		Size: 903.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3da2ed88eb13235673c1a4cb6b987acaf381763c0168e1d7a971124132249987`  
		Last Modified: Thu, 09 May 2019 02:54:11 GMT  
		Size: 29.9 MB (29913855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5cbd5f7de1bde56ddde0215389922bdd34502612c57f2f1ebc698a3f0b6efed`  
		Last Modified: Thu, 09 May 2019 02:54:04 GMT  
		Size: 2.4 MB (2445823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2a16aadc575f409cfbd19ec55b9258d8824b1c3d94e855781f3669529aac4c6`  
		Last Modified: Thu, 09 May 2019 02:54:03 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeabc3e2ce4dbbf62a06c817a40ded005955dedd1aae7aa4677586891dfd30af`  
		Last Modified: Thu, 09 May 2019 02:54:03 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0646242db78e514efba68d7f4870811323f9eaa07d8bd729cafb138ea5e6a78`  
		Last Modified: Thu, 09 May 2019 02:54:18 GMT  
		Size: 31.9 MB (31933385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.27.5` - linux; ppc64le

```console
$ docker pull mediawiki@sha256:f816578d0c1819306ab78a438c2cca580eb44097ec34a4aa87f918aff6ed86ec
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.9 MB (190902978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3cdc6e65f5b54c808f9820e363d1837be0ba218bc38639424bcdea124cc5857`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 08 May 2019 09:05:46 GMT
ADD file:fa23694e2ef3b1ff3ac824d7d18d6951725f7f1ebfd5350392edd91f6b90d89e in / 
# Wed, 08 May 2019 09:05:50 GMT
CMD ["bash"]
# Wed, 08 May 2019 16:33:12 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 08 May 2019 16:33:15 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 08 May 2019 16:36:22 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 08 May 2019 16:36:29 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 08 May 2019 16:36:37 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 08 May 2019 16:45:05 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 08 May 2019 16:45:07 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 08 May 2019 16:46:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Wed, 08 May 2019 16:46:21 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 08 May 2019 16:46:32 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 08 May 2019 16:46:36 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 08 May 2019 16:46:39 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 08 May 2019 16:46:41 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 16:46:44 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 16:46:47 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 08 May 2019 18:00:21 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Wed, 08 May 2019 18:00:25 GMT
ENV PHP_VERSION=7.1.29
# Wed, 08 May 2019 18:00:31 GMT
ENV PHP_URL=https://www.php.net/get/php-7.1.29.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.1.29.tar.xz.asc/from/this/mirror
# Wed, 08 May 2019 18:00:36 GMT
ENV PHP_SHA256=b9a9b094687edc2d9c9553d5531e38e249b569127cf3b32fe1c84280509746fb PHP_MD5=
# Wed, 08 May 2019 18:01:28 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 08 May 2019 18:01:30 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Wed, 08 May 2019 18:08:40 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 08 May 2019 18:08:45 GMT
COPY multi:0002d7d5b06fb24f987aa4b027705dc71f81957419a02be5b9014431514c25b5 in /usr/local/bin/ 
# Wed, 08 May 2019 18:08:50 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 08 May 2019 18:08:52 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Wed, 08 May 2019 18:08:55 GMT
WORKDIR /var/www/html
# Wed, 08 May 2019 18:08:58 GMT
EXPOSE 80
# Wed, 08 May 2019 18:09:01 GMT
CMD ["apache2-foreground"]
# Thu, 09 May 2019 01:38:43 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		git 		imagemagick 		python 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 01:42:05 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libicu-dev 	; 		docker-php-ext-install 		intl 		mbstring 		mysqli 		opcache 	; 		pecl install apcu-5.1.16; 	docker-php-ext-enable 		apcu 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 01:42:14 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 09 May 2019 01:42:21 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Thu, 09 May 2019 01:42:23 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.27
# Thu, 09 May 2019 01:42:26 GMT
ENV MEDIAWIKI_BRANCH=REL1_27
# Thu, 09 May 2019 01:42:28 GMT
ENV MEDIAWIKI_VERSION=1.27.5
# Thu, 09 May 2019 01:42:31 GMT
ENV MEDIAWIKI_SHA512=2f341ed5afab24b81c315db6bcc58dd617f95231f71408c08bb2a8b974c95b7edd93d0f3c857f24058111c3228b9919a0f1c2fd2f85be940dc571e390225027a
# Thu, 09 May 2019 01:43:02 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:64bfe8794b280a764f2e07634dce2977621d140ae17fb34a03635710e84c3dfb`  
		Last Modified: Wed, 08 May 2019 09:26:17 GMT  
		Size: 22.7 MB (22744914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a41e81735fa83432331becf8dd5c79995a99c53ff4febd68f25916282e96fee5`  
		Last Modified: Wed, 08 May 2019 18:32:38 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74dcd7f44931915566fc2ab31df6e0da7972d7c1761a1e352f59834ab7b12288`  
		Last Modified: Wed, 08 May 2019 18:33:35 GMT  
		Size: 61.8 MB (61833424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8267f05b2cde025cb67ff60ba71e3ab4bb1d8c894385033a77f3592d3d86a1e9`  
		Last Modified: Wed, 08 May 2019 18:32:39 GMT  
		Size: 286.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b7902741744762d78bf30128d3aaad75defd223148cf4e8013abf2b472a23e7`  
		Last Modified: Wed, 08 May 2019 18:34:58 GMT  
		Size: 17.3 MB (17345860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8304e87d7eae9b221a89adc93eabf206be22236d6aa8fd6ef9bb71b82bd3349`  
		Last Modified: Wed, 08 May 2019 18:34:37 GMT  
		Size: 479.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:480539350c707aed3dba31a230406b23f267cb31ec2d6fa3dc7f239af8dcb64e`  
		Last Modified: Wed, 08 May 2019 18:34:37 GMT  
		Size: 518.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a543d7298a32a9daa541f904373a909055b21b1dd43853614c053709be06e33`  
		Last Modified: Wed, 08 May 2019 18:40:40 GMT  
		Size: 12.6 MB (12569919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0dfeb92068c6b3876290ad2cb3246a82db9362ce9a301974239520bc91fbc78`  
		Last Modified: Wed, 08 May 2019 18:40:35 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48002a3b3f3724623560e681d7cd6b937cb897f12aebb80fed1e42228475170b`  
		Last Modified: Wed, 08 May 2019 18:40:48 GMT  
		Size: 14.0 MB (14009828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd961fa4d930b8fe5b04f14611e6cfc90b2955c477ca2d97a48ccd8c3b95bc43`  
		Last Modified: Wed, 08 May 2019 18:40:36 GMT  
		Size: 2.2 KB (2203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3c66236b7251a883f067c3e5dd0a03346feab1a22ecbf0c3a14cd926269c871`  
		Last Modified: Wed, 08 May 2019 18:40:36 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16c00c28b02f2dded9ca72b6f3fe01e73fa04366039ec8c7fa325b5a73e0dbe1`  
		Last Modified: Thu, 09 May 2019 01:44:46 GMT  
		Size: 28.0 MB (28023672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f42a243a32a52b50e02a712eb7f0e236048e4f23cf9984ad7d3cb614991347cf`  
		Last Modified: Thu, 09 May 2019 01:44:39 GMT  
		Size: 2.4 MB (2436073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcde00e5f374816b51dd21f7d2dc1bd7f38296fa140074a5947e43c66e8644c4`  
		Last Modified: Thu, 09 May 2019 01:44:38 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33101b8b97d6e2b7687fde42af1ab4f95f031e9161a56d04b62446e49df0bddf`  
		Last Modified: Thu, 09 May 2019 01:44:38 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221bbcd0febd22da044aed505ce87375edcd80d7893efacd81c6fd94f308edf2`  
		Last Modified: Thu, 09 May 2019 01:44:52 GMT  
		Size: 31.9 MB (31933647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mediawiki:1.31`

```console
$ docker pull mediawiki@sha256:0ad76ff61080467dc35a37b41289e1d525780aac7aad92c3578e163b5eaa1c2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `mediawiki:1.31` - linux; amd64

```console
$ docker pull mediawiki@sha256:9a04779de1cca798f12a5d271266b5c708b8a282a8ac2efea870ac32fbd62e79
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.4 MB (203375792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d7f61ee04a64baf519cff73c4fce2265767993ea1084e9bc9ca47445c07d83e`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 02:29:59 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 08 May 2019 02:29:59 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 08 May 2019 02:30:20 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 08 May 2019 02:30:21 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 08 May 2019 02:30:21 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 08 May 2019 02:37:00 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 08 May 2019 02:37:00 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 08 May 2019 02:37:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Wed, 08 May 2019 02:37:13 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 08 May 2019 02:37:14 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 08 May 2019 02:37:15 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 08 May 2019 02:37:15 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 08 May 2019 02:37:16 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 02:37:16 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 02:37:17 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 08 May 2019 03:02:10 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Wed, 08 May 2019 03:02:10 GMT
ENV PHP_VERSION=7.2.18
# Wed, 08 May 2019 03:02:11 GMT
ENV PHP_URL=https://www.php.net/get/php-7.2.18.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.2.18.tar.xz.asc/from/this/mirror
# Wed, 08 May 2019 03:02:11 GMT
ENV PHP_SHA256=9970dbb3ab1298c9e6aac54bebfa841c8ad14b18eead65594a68fa841364cb8d PHP_MD5=
# Wed, 08 May 2019 03:02:20 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 08 May 2019 03:02:21 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Wed, 08 May 2019 03:06:04 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 08 May 2019 03:06:04 GMT
COPY multi:0002d7d5b06fb24f987aa4b027705dc71f81957419a02be5b9014431514c25b5 in /usr/local/bin/ 
# Wed, 08 May 2019 03:06:05 GMT
RUN docker-php-ext-enable sodium
# Wed, 08 May 2019 03:06:05 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 08 May 2019 03:06:06 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Wed, 08 May 2019 03:06:06 GMT
WORKDIR /var/www/html
# Wed, 08 May 2019 03:06:06 GMT
EXPOSE 80
# Wed, 08 May 2019 03:06:06 GMT
CMD ["apache2-foreground"]
# Wed, 08 May 2019 10:13:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		git 		imagemagick 		python3 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 10:17:31 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libicu-dev 	; 		docker-php-ext-install 		intl 		mbstring 		mysqli 		opcache 	; 		pecl install apcu-5.1.16; 	docker-php-ext-enable 		apcu 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 10:18:06 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 08 May 2019 10:18:07 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Wed, 08 May 2019 10:18:08 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.31
# Wed, 08 May 2019 10:18:08 GMT
ENV MEDIAWIKI_BRANCH=REL1_31
# Wed, 08 May 2019 10:18:08 GMT
ENV MEDIAWIKI_VERSION=1.31.1
# Wed, 08 May 2019 10:18:08 GMT
ENV MEDIAWIKI_SHA512=ee49649cc37d0a7d45a7c6d90c822c2a595df290be2b5bf085affbec3318768700a458a6e5b5b7e437651400b9641424429d6d304f870c22ec63fae86ffc5152
# Wed, 08 May 2019 10:18:20 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6307e89982cc66cd480a6f5cfe17fabddae5e6ae4e735d8f0bf857892d299772`  
		Last Modified: Wed, 08 May 2019 04:41:06 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:807218e72ce2aeb1df368e9757482e7304772ccf439962eb68d1731a0b023802`  
		Last Modified: Wed, 08 May 2019 04:41:20 GMT  
		Size: 67.4 MB (67447543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5108df1d03f88b91e3a940361ab6bc2d60d60a6f52a1ba29d8283a00d71cb0c8`  
		Last Modified: Wed, 08 May 2019 04:41:06 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:901e0b6a7fe58d5615158528d37602cd806ecab9718a880d76f85d609742f5ea`  
		Last Modified: Wed, 08 May 2019 04:41:48 GMT  
		Size: 17.1 MB (17124934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ffe11e7ab2c09aa7e0167044fe111b6a03a5e93f517405f4c416e3220e0b197`  
		Last Modified: Wed, 08 May 2019 04:41:43 GMT  
		Size: 429.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da5f7a5079567ba0d853934f7275591bd53f6740d13e4499a15a9a109982f7e8`  
		Last Modified: Wed, 08 May 2019 04:41:43 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1828a6068039e36669a6a6b2dde9750808c22d86ac075c99ac739dcbbb1e3b67`  
		Last Modified: Wed, 08 May 2019 04:42:59 GMT  
		Size: 12.5 MB (12522340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64e8e1a9a6dd712ede73018cda885173b14dfb5b41d8de2b94a6e40b579b933c`  
		Last Modified: Wed, 08 May 2019 04:42:57 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:947776ecc4cf45b79a1eb8811d0cede95489c496920cc63c3504a78d8c57a14e`  
		Last Modified: Wed, 08 May 2019 04:43:04 GMT  
		Size: 15.3 MB (15259643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:983802cfe132fab1cec030a7b88d0cb6315561c92ff7226cce5f851eb206687d`  
		Last Modified: Wed, 08 May 2019 04:42:56 GMT  
		Size: 2.2 KB (2202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e372111ec71d644fe9452c7ddb71c723515b94807261e2a9937b1c918adf5716`  
		Last Modified: Wed, 08 May 2019 04:42:56 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70d278e5adabe0687ae4a5f6ce0a8e99a53f3554bdcdee8b154635cb360d3088`  
		Last Modified: Wed, 08 May 2019 04:42:56 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7038b6910d573df901cd4193d8ab32b4f9bf611d3d0f15140e41345122b85996`  
		Last Modified: Wed, 08 May 2019 10:23:03 GMT  
		Size: 30.2 MB (30221982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f06e09b6d9eac4655ccbf25966abab364f4ddecb24861f9b0a9c460afafa8fa`  
		Last Modified: Wed, 08 May 2019 10:22:53 GMT  
		Size: 2.6 MB (2553575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a58f2049b16f7182c6f4e099be1b22fb8617db0fad9ad829f597ba54e41ff830`  
		Last Modified: Wed, 08 May 2019 10:23:15 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d49c9aacc1910a838ad3a173f4a68071884ef306a2361278fca0e651b6591d3`  
		Last Modified: Wed, 08 May 2019 10:23:15 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df1fac7dcfd9716dde9c2d46474c20578f25194cc5f1e39517d1923675201782`  
		Last Modified: Wed, 08 May 2019 10:23:28 GMT  
		Size: 35.8 MB (35750693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.31` - linux; arm variant v5

```console
$ docker pull mediawiki@sha256:52ee5a53c7c817243a693953712da1864d59dcecd9f8e92711d4e9cf9cc19815
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.4 MB (189364289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ad0f7bf78417bae2cc48cc0b9fb660fc4715b9b4adf5bcf6ccb8042bbd8b737`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 08 May 2019 08:53:38 GMT
ADD file:d9cc007a953434e1439cc534f397967f4f0f1bf149f1288a52f6209eca436852 in / 
# Wed, 08 May 2019 08:53:39 GMT
CMD ["bash"]
# Wed, 08 May 2019 09:48:37 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 08 May 2019 09:48:38 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 08 May 2019 09:49:17 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 08 May 2019 09:49:18 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 08 May 2019 09:49:20 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 08 May 2019 09:53:54 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 08 May 2019 09:53:54 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 08 May 2019 09:54:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Wed, 08 May 2019 09:54:17 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 08 May 2019 09:54:18 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 08 May 2019 09:54:19 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 08 May 2019 09:54:19 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 08 May 2019 09:54:20 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 09:54:20 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 09:54:21 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 08 May 2019 10:11:33 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Sat, 01 Jun 2019 00:13:37 GMT
ENV PHP_VERSION=7.2.19
# Sat, 01 Jun 2019 00:13:38 GMT
ENV PHP_URL=https://www.php.net/get/php-7.2.19.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.2.19.tar.xz.asc/from/this/mirror
# Sat, 01 Jun 2019 00:13:38 GMT
ENV PHP_SHA256=4ffa2404a88d60e993a9fe69f829ebec3eb1e006de41b6048ce5e91bbeaa9282 PHP_MD5=
# Sat, 01 Jun 2019 00:13:58 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 01 Jun 2019 00:13:58 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 01 Jun 2019 00:17:32 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 01 Jun 2019 00:17:33 GMT
COPY multi:0002d7d5b06fb24f987aa4b027705dc71f81957419a02be5b9014431514c25b5 in /usr/local/bin/ 
# Sat, 01 Jun 2019 00:17:35 GMT
RUN docker-php-ext-enable sodium
# Sat, 01 Jun 2019 00:17:35 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 01 Jun 2019 00:17:36 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Sat, 01 Jun 2019 00:17:36 GMT
WORKDIR /var/www/html
# Sat, 01 Jun 2019 00:17:37 GMT
EXPOSE 80
# Sat, 01 Jun 2019 00:17:37 GMT
CMD ["apache2-foreground"]
# Sat, 01 Jun 2019 02:26:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		git 		imagemagick 		python3 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 02:30:08 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libicu-dev 	; 		docker-php-ext-install 		intl 		mbstring 		mysqli 		opcache 	; 		pecl install apcu-5.1.16; 	docker-php-ext-enable 		apcu 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 02:30:43 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 01 Jun 2019 02:30:45 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 01 Jun 2019 02:30:45 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.31
# Sat, 01 Jun 2019 02:30:46 GMT
ENV MEDIAWIKI_BRANCH=REL1_31
# Sat, 01 Jun 2019 02:30:46 GMT
ENV MEDIAWIKI_VERSION=1.31.1
# Sat, 01 Jun 2019 02:30:47 GMT
ENV MEDIAWIKI_SHA512=ee49649cc37d0a7d45a7c6d90c822c2a595df290be2b5bf085affbec3318768700a458a6e5b5b7e437651400b9641424429d6d304f870c22ec63fae86ffc5152
# Sat, 01 Jun 2019 02:31:03 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:f23f9ce99dc288927adafc8d503252a16b6ea2b40c9cb0dca688223c56bd0235`  
		Last Modified: Wed, 08 May 2019 08:59:29 GMT  
		Size: 21.2 MB (21155863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:375098c17606cf891dc6c2de639c2d9b69384583b36d1f12394d245cb131e539`  
		Last Modified: Wed, 08 May 2019 11:06:12 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:091ccac4f8817d1ccf73efd2fd3d421caaea5daab5cf6c0574ba160a012728d2`  
		Last Modified: Wed, 08 May 2019 11:06:33 GMT  
		Size: 57.5 MB (57477758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:825181d9c853e494b46e5d4a8d3eb39bb10ec9f0c5cab11f274faec90f876cef`  
		Last Modified: Wed, 08 May 2019 11:06:12 GMT  
		Size: 286.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:099d1d7d4434733003b46ad3c7824ce4e924bc48db25b33413a65c77ad3dfe2d`  
		Last Modified: Wed, 08 May 2019 11:07:08 GMT  
		Size: 16.7 MB (16651726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15629ed4b2662d162ebc33e2d122007c635a7254b4b55d0edf277dec13d74c9a`  
		Last Modified: Wed, 08 May 2019 11:07:03 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:560f7cc5ef807ab6fb5da234ac471e25d0aa2a5aa7015801be27d254ff521db0`  
		Last Modified: Wed, 08 May 2019 11:07:03 GMT  
		Size: 511.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df32f7a9b2f08479016d154d91afd1b2fa0ff2e4a352257c4fb51a63aaf8b02d`  
		Last Modified: Sat, 01 Jun 2019 01:15:28 GMT  
		Size: 12.5 MB (12524431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0c68434605bf878852626807456ff6d8ea9dd6471ea09f260e236c3497e8613`  
		Last Modified: Sat, 01 Jun 2019 01:15:24 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e09142a09324552b0e51e19a715ce31a622fa1225e6feaf11aae256e89ddb70`  
		Last Modified: Sat, 01 Jun 2019 01:15:31 GMT  
		Size: 14.4 MB (14437073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b345e81f1997c48b7694506985bef3dffbc597da936e526362af3ee8a1b2951`  
		Last Modified: Sat, 01 Jun 2019 01:15:24 GMT  
		Size: 2.2 KB (2204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f6d6e11b4d848ecda0d319dddf54d8583afb48316414071064f949575b56443`  
		Last Modified: Sat, 01 Jun 2019 01:15:25 GMT  
		Size: 262.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afc689b77a160847dc5ed98756528ee5349e02cb23547352fa1f14a44a3419c2`  
		Last Modified: Sat, 01 Jun 2019 01:15:24 GMT  
		Size: 905.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f75d84530645037cc8070cec1c647561afb6fbab0c800c9172f6965839633b48`  
		Last Modified: Sat, 01 Jun 2019 02:36:19 GMT  
		Size: 28.9 MB (28888933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd82164e306b36d62658e5f7b318b79e0b6976810962e695b86d617abf21e236`  
		Last Modified: Sat, 01 Jun 2019 02:36:08 GMT  
		Size: 2.5 MB (2471333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48d9f23f40c9da91c714e872ad91238282226a082ca2e801c08b05e55a57afe8`  
		Last Modified: Sat, 01 Jun 2019 02:36:44 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a70b71bea22d5ebac84741a87e3582191d7b8af86dc99a56b534b407a3ecaea7`  
		Last Modified: Sat, 01 Jun 2019 02:36:44 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f5340ef485a252871e683832b3384d8dffa222cb4ca3d7d5d14272da73eeb18`  
		Last Modified: Sat, 01 Jun 2019 02:37:07 GMT  
		Size: 35.8 MB (35751278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.31` - linux; arm variant v7

```console
$ docker pull mediawiki@sha256:527a5e0c2422a1c85cabb03cccedb88a8e52c092cc33ff40b3e0ea5469bfa662
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.1 MB (180138763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96b71e7545600991228602ad552389a89f71b3447a94e4b2b9587fffd9c32155`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 08 May 2019 12:03:54 GMT
ADD file:7813549b5e7862c4d5ecec9e7d8da27b520dd2cc1433e66637c57bb695d4f55a in / 
# Wed, 08 May 2019 12:03:54 GMT
CMD ["bash"]
# Wed, 08 May 2019 14:37:05 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 08 May 2019 14:37:06 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 08 May 2019 14:37:37 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 08 May 2019 14:37:39 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 08 May 2019 14:37:40 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 08 May 2019 14:42:38 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 08 May 2019 14:42:39 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 08 May 2019 14:42:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Wed, 08 May 2019 14:42:58 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 08 May 2019 14:42:59 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 08 May 2019 14:43:00 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 08 May 2019 14:43:00 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 08 May 2019 14:43:01 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 14:43:01 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 14:43:02 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 08 May 2019 14:59:32 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Sat, 01 Jun 2019 00:34:09 GMT
ENV PHP_VERSION=7.2.19
# Sat, 01 Jun 2019 00:34:09 GMT
ENV PHP_URL=https://www.php.net/get/php-7.2.19.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.2.19.tar.xz.asc/from/this/mirror
# Sat, 01 Jun 2019 00:34:10 GMT
ENV PHP_SHA256=4ffa2404a88d60e993a9fe69f829ebec3eb1e006de41b6048ce5e91bbeaa9282 PHP_MD5=
# Sat, 01 Jun 2019 00:34:26 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 01 Jun 2019 00:34:26 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 01 Jun 2019 00:37:25 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 01 Jun 2019 00:37:26 GMT
COPY multi:0002d7d5b06fb24f987aa4b027705dc71f81957419a02be5b9014431514c25b5 in /usr/local/bin/ 
# Sat, 01 Jun 2019 00:37:28 GMT
RUN docker-php-ext-enable sodium
# Sat, 01 Jun 2019 00:37:29 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 01 Jun 2019 00:37:29 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Sat, 01 Jun 2019 00:37:29 GMT
WORKDIR /var/www/html
# Sat, 01 Jun 2019 00:37:30 GMT
EXPOSE 80
# Sat, 01 Jun 2019 00:37:30 GMT
CMD ["apache2-foreground"]
# Sat, 01 Jun 2019 02:31:28 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		git 		imagemagick 		python3 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 02:35:07 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libicu-dev 	; 		docker-php-ext-install 		intl 		mbstring 		mysqli 		opcache 	; 		pecl install apcu-5.1.16; 	docker-php-ext-enable 		apcu 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 02:35:48 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 01 Jun 2019 02:35:50 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 01 Jun 2019 02:35:50 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.31
# Sat, 01 Jun 2019 02:35:51 GMT
ENV MEDIAWIKI_BRANCH=REL1_31
# Sat, 01 Jun 2019 02:35:51 GMT
ENV MEDIAWIKI_VERSION=1.31.1
# Sat, 01 Jun 2019 02:35:52 GMT
ENV MEDIAWIKI_SHA512=ee49649cc37d0a7d45a7c6d90c822c2a595df290be2b5bf085affbec3318768700a458a6e5b5b7e437651400b9641424429d6d304f870c22ec63fae86ffc5152
# Sat, 01 Jun 2019 02:36:07 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:b0727b1ec48ef8920082aec023c050c83b563ae08080d9951d68fba55934bbd6`  
		Last Modified: Wed, 08 May 2019 12:10:01 GMT  
		Size: 19.3 MB (19276216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e208b62bc2ef8e00c39842047e209f0ee05486c604af8359d624ad326285642`  
		Last Modified: Wed, 08 May 2019 15:56:06 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b654776010960d429044df18c3d563b768a92d765adb835d874503dbc872672`  
		Last Modified: Wed, 08 May 2019 15:56:28 GMT  
		Size: 53.6 MB (53589670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0718556bb7e27c667cb22749130f30d651e5cb73cc88535d3cbb2f7a4fe6224e`  
		Last Modified: Wed, 08 May 2019 15:56:05 GMT  
		Size: 286.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21d279750d7c2122da564efb42a89a55b0a6cba5f6a2ac0f7a97191db4ae4fe6`  
		Last Modified: Wed, 08 May 2019 15:57:12 GMT  
		Size: 16.2 MB (16159683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a060b1fb5eab7537b954cc199873b54c44dcbddbfab9c2bb3e8bfdc8c51ec2ce`  
		Last Modified: Wed, 08 May 2019 15:57:03 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56397f3718603009afb913087c72dc6bb3b6465bb82f8f00c6bc4550aec76747`  
		Last Modified: Wed, 08 May 2019 15:57:02 GMT  
		Size: 516.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faa05c80ed7e7320a3d5d347517275b340e34b2f06c5e65f435e621ba0cbb2d3`  
		Last Modified: Sat, 01 Jun 2019 01:56:19 GMT  
		Size: 12.5 MB (12524432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdd8dbbffa7e7154464a5c254ad80d02317c8bb91c11a44e2c9297bae25d1fcd`  
		Last Modified: Sat, 01 Jun 2019 01:56:16 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1438d8a59ecaa26b06a9e60ed3ecc703c52a63336a9e437519c7143534a8726`  
		Last Modified: Sat, 01 Jun 2019 01:56:20 GMT  
		Size: 13.6 MB (13602981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77e049fa064e154f28c8acae37128f5a95ed4af0d03f6e007f376710dcaf0a8e`  
		Last Modified: Sat, 01 Jun 2019 01:56:16 GMT  
		Size: 2.2 KB (2201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1a62d3145013a434f0acaf723805b3e94cfa9e183f349b48fd89ce97b56ad40`  
		Last Modified: Sat, 01 Jun 2019 01:56:16 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5432c4c59238dfc901afc53a70b515fd76da212265f2f658254faef604ef5ab9`  
		Last Modified: Sat, 01 Jun 2019 01:56:16 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c0f414ae38167acfdcd5910440f50358bf101593555d7643cd8d7cf06632c2a`  
		Last Modified: Sat, 01 Jun 2019 02:40:50 GMT  
		Size: 26.8 MB (26812739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80632ac31b9ea95cf32141f80a93560c47359fab89617e59a254ced1a64c1819`  
		Last Modified: Sat, 01 Jun 2019 02:40:40 GMT  
		Size: 2.4 MB (2415904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eded040df3c351bde063bd79089523e60e9253817ee9b9b6d4217d1628e3b17`  
		Last Modified: Sat, 01 Jun 2019 02:41:15 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adec3b84aa9f1f29578b8178aba9f436a2b839bf3d430ee0e19179bc7eb00c7a`  
		Last Modified: Sat, 01 Jun 2019 02:41:14 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016a81d505ed877541ec4ce9c998fb49fe9cf7595e45079d86f8985ba954382b`  
		Last Modified: Sat, 01 Jun 2019 02:41:34 GMT  
		Size: 35.8 MB (35751252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.31` - linux; arm64 variant v8

```console
$ docker pull mediawiki@sha256:14a01be07945c62247810bca38f3729718f8e0093f4038f3253b86651cef68b8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.0 MB (187044504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11f41a764ea075c942aa5e589716622cf21b6c7343620dcbe434c25306bd1977`
-	Entrypoint: `["docker-php-entrypoint"]`
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
# Wed, 08 May 2019 14:17:39 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Wed, 08 May 2019 14:17:40 GMT
ENV PHP_VERSION=7.2.18
# Wed, 08 May 2019 14:17:41 GMT
ENV PHP_URL=https://www.php.net/get/php-7.2.18.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.2.18.tar.xz.asc/from/this/mirror
# Wed, 08 May 2019 14:17:42 GMT
ENV PHP_SHA256=9970dbb3ab1298c9e6aac54bebfa841c8ad14b18eead65594a68fa841364cb8d PHP_MD5=
# Wed, 08 May 2019 14:18:13 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 08 May 2019 14:18:14 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Wed, 08 May 2019 14:24:59 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 08 May 2019 14:25:00 GMT
COPY multi:0002d7d5b06fb24f987aa4b027705dc71f81957419a02be5b9014431514c25b5 in /usr/local/bin/ 
# Wed, 08 May 2019 14:25:03 GMT
RUN docker-php-ext-enable sodium
# Wed, 08 May 2019 14:25:04 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 08 May 2019 14:25:05 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Wed, 08 May 2019 14:25:06 GMT
WORKDIR /var/www/html
# Wed, 08 May 2019 14:25:08 GMT
EXPOSE 80
# Wed, 08 May 2019 14:25:09 GMT
CMD ["apache2-foreground"]
# Thu, 09 May 2019 05:05:16 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		git 		imagemagick 		python3 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 05:10:29 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libicu-dev 	; 		docker-php-ext-install 		intl 		mbstring 		mysqli 		opcache 	; 		pecl install apcu-5.1.16; 	docker-php-ext-enable 		apcu 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 05:11:09 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 09 May 2019 05:11:11 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Thu, 09 May 2019 05:11:12 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.31
# Thu, 09 May 2019 05:11:12 GMT
ENV MEDIAWIKI_BRANCH=REL1_31
# Thu, 09 May 2019 05:11:13 GMT
ENV MEDIAWIKI_VERSION=1.31.1
# Thu, 09 May 2019 05:11:14 GMT
ENV MEDIAWIKI_SHA512=ee49649cc37d0a7d45a7c6d90c822c2a595df290be2b5bf085affbec3318768700a458a6e5b5b7e437651400b9641424429d6d304f870c22ec63fae86ffc5152
# Thu, 09 May 2019 05:11:30 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
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
	-	`sha256:68d73a231f4080e449e68e6502533ec427a7b766c85d31a09f22d13191f765ea`  
		Last Modified: Wed, 08 May 2019 15:35:37 GMT  
		Size: 12.5 MB (12520437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19691ffc177e30c79f20a75ac96c12ffd081688c45bd4529e07c6292cf1d6d1b`  
		Last Modified: Wed, 08 May 2019 15:35:33 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bd777d47d57316bc1220d04b66d6576368950707b2a0f871bcd8a82864e2a9d`  
		Last Modified: Wed, 08 May 2019 15:35:40 GMT  
		Size: 14.2 MB (14239607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25e16be802a9018dec3f0cc8a2c345cce185b37fe8c01f323cd899722b69ac44`  
		Last Modified: Wed, 08 May 2019 15:35:33 GMT  
		Size: 2.2 KB (2200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bdfeeb7bd495fa9c974d8cd8659e32312d855bbd4df206a1f7057068407323d`  
		Last Modified: Wed, 08 May 2019 15:35:33 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4e5a9bc30afea7feb6df63482956ec64391a0b0305093ae8f6415624ed01a79`  
		Last Modified: Wed, 08 May 2019 15:35:33 GMT  
		Size: 903.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:372d20461635750ebeb1fe499a15fcf50a25a9a1ffae0fba099d48f09944c2af`  
		Last Modified: Thu, 09 May 2019 05:18:09 GMT  
		Size: 27.4 MB (27403442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cca2be8290114033ec2f1832487b8f41d1327395a86e475463acd95cf5193aa`  
		Last Modified: Thu, 09 May 2019 05:17:56 GMT  
		Size: 2.5 MB (2476635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b183f1b05530af011358b9fbc987b8c04a150307b16b9b7caacad1d0015e99a0`  
		Last Modified: Thu, 09 May 2019 05:18:32 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69a59f3599538feac27adfdbd9ea241d7bca680379a043b92390164a016458e0`  
		Last Modified: Thu, 09 May 2019 05:18:33 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d078e35e69e4cdc85a103d35194773f469b8404d313f3a5090938f50e7638ba4`  
		Last Modified: Thu, 09 May 2019 05:18:55 GMT  
		Size: 35.8 MB (35750717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.31` - linux; 386

```console
$ docker pull mediawiki@sha256:71452abf229ef013311198d999506c7edf10adab8654fd73e3a95e1592aebd78
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **210.6 MB (210610429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe5ac58d721eb66fe00bbdc9a208a32af4aa4ff6afe014611b4e4919d3c69e54`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 08 May 2019 10:49:55 GMT
ADD file:32d77a56ac954d1cd433a660591f374200929db022f1d0cfcf99eb6ab9e1679c in / 
# Wed, 08 May 2019 10:49:55 GMT
CMD ["bash"]
# Wed, 08 May 2019 16:35:40 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 08 May 2019 16:35:40 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 08 May 2019 16:36:06 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 08 May 2019 16:36:06 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 08 May 2019 16:36:07 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 08 May 2019 16:41:56 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 08 May 2019 16:41:57 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 08 May 2019 16:42:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Wed, 08 May 2019 16:42:09 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 08 May 2019 16:42:09 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 08 May 2019 16:42:10 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 08 May 2019 16:42:10 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 08 May 2019 16:42:10 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 16:42:10 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 16:42:10 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 08 May 2019 17:04:19 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Wed, 08 May 2019 17:04:19 GMT
ENV PHP_VERSION=7.2.18
# Wed, 08 May 2019 17:04:19 GMT
ENV PHP_URL=https://www.php.net/get/php-7.2.18.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.2.18.tar.xz.asc/from/this/mirror
# Wed, 08 May 2019 17:04:19 GMT
ENV PHP_SHA256=9970dbb3ab1298c9e6aac54bebfa841c8ad14b18eead65594a68fa841364cb8d PHP_MD5=
# Wed, 08 May 2019 17:04:30 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 08 May 2019 17:04:30 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Wed, 08 May 2019 17:07:59 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 08 May 2019 17:08:00 GMT
COPY multi:0002d7d5b06fb24f987aa4b027705dc71f81957419a02be5b9014431514c25b5 in /usr/local/bin/ 
# Wed, 08 May 2019 17:08:01 GMT
RUN docker-php-ext-enable sodium
# Wed, 08 May 2019 17:08:01 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 08 May 2019 17:08:01 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Wed, 08 May 2019 17:08:01 GMT
WORKDIR /var/www/html
# Wed, 08 May 2019 17:08:01 GMT
EXPOSE 80
# Wed, 08 May 2019 17:08:02 GMT
CMD ["apache2-foreground"]
# Thu, 09 May 2019 02:48:07 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		git 		imagemagick 		python3 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 02:50:17 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libicu-dev 	; 		docker-php-ext-install 		intl 		mbstring 		mysqli 		opcache 	; 		pecl install apcu-5.1.16; 	docker-php-ext-enable 		apcu 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 02:50:33 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 09 May 2019 02:50:34 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Thu, 09 May 2019 02:50:34 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.31
# Thu, 09 May 2019 02:50:34 GMT
ENV MEDIAWIKI_BRANCH=REL1_31
# Thu, 09 May 2019 02:50:34 GMT
ENV MEDIAWIKI_VERSION=1.31.1
# Thu, 09 May 2019 02:50:35 GMT
ENV MEDIAWIKI_SHA512=ee49649cc37d0a7d45a7c6d90c822c2a595df290be2b5bf085affbec3318768700a458a6e5b5b7e437651400b9641424429d6d304f870c22ec63fae86ffc5152
# Thu, 09 May 2019 02:50:44 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:3cf56ed221cf05f73233419fcc3a71b0afd424761fc83037e3a5cf101af5df46`  
		Last Modified: Wed, 08 May 2019 10:57:50 GMT  
		Size: 23.1 MB (23120843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2e394799d7fd8bb494dd3068fa793d651e7ccb426989bd27defd081a6bcc12f`  
		Last Modified: Wed, 08 May 2019 18:38:36 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d053425c85d9196337b5a25e4b3194f8f91c7540e201df765bb55f179df390d`  
		Last Modified: Wed, 08 May 2019 18:38:54 GMT  
		Size: 71.5 MB (71518824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:375ceda7fc26c2edccb175b8a009dd8db8b6159d82b589045c749fc2a90b409c`  
		Last Modified: Wed, 08 May 2019 18:38:35 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcee9f239c4761d5fb6def94e207d25f66b6dd1b06aca20ef921f0b7cec5fd2b`  
		Last Modified: Wed, 08 May 2019 18:39:23 GMT  
		Size: 17.6 MB (17559084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f37941543cfc620e1f153eec1e6627f09d2995dc4e11881df4b2fec57d024fc`  
		Last Modified: Wed, 08 May 2019 18:39:18 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e81f09a18a1e21c876bdb2b93ab40c2d32294938c8c14da1306afc78c85dc5b`  
		Last Modified: Wed, 08 May 2019 18:39:18 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a51838654f356e5455289e6a566e70e1dcf8fbb7f2cddc27757511489c8a4865`  
		Last Modified: Wed, 08 May 2019 18:40:40 GMT  
		Size: 12.5 MB (12521696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e83a1be097ba06dd9c045e9d858ef16d7dfcaea2ea8f0a7c03aab056c7ec4e5`  
		Last Modified: Wed, 08 May 2019 18:40:38 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44ccf0af924d7fde5877252371b3b934464fbb43162d86e493dbff5d0855e272`  
		Last Modified: Wed, 08 May 2019 18:40:42 GMT  
		Size: 15.7 MB (15698642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bae3e0d9a678f89ab9935758d2c23643b90fc86203ade9e19896a9810210316`  
		Last Modified: Wed, 08 May 2019 18:40:38 GMT  
		Size: 2.2 KB (2202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:794620458d3b9ee10b26a830211cffeac76c5cebc292f39dd05b89de92a07c5e`  
		Last Modified: Wed, 08 May 2019 18:40:38 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb9f2cd6fb034170dd3ce44819ab9d821785167b2eefb1c966230325ba73eee8`  
		Last Modified: Wed, 08 May 2019 18:40:38 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7615115b5410267361895d41778ec708797e2a776d5effd07aba762bf1aee9c`  
		Last Modified: Thu, 09 May 2019 02:53:32 GMT  
		Size: 31.9 MB (31894562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0300f05641c30fcba961c4d59f9dd81e567cafb4bd0217d5eb41ddc95db39397`  
		Last Modified: Thu, 09 May 2019 02:53:23 GMT  
		Size: 2.5 MB (2540292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a1824326f8c81a852b7c897143a7bd337cf72c7c7f64e11d0366c6ad0b7bdd`  
		Last Modified: Thu, 09 May 2019 02:53:44 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3b0adddf5166e967b30cc2bb794a282595f3fb574efdfb409d93b64d734fea7`  
		Last Modified: Thu, 09 May 2019 02:53:44 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a986004e0d07c59b27a1a29c1c66efbda642033fb89d4585f976737a56966ac0`  
		Last Modified: Thu, 09 May 2019 02:53:57 GMT  
		Size: 35.8 MB (35750754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.31` - linux; ppc64le

```console
$ docker pull mediawiki@sha256:8491f1ba0d073a2a132887cd8527a248e3afb0d96c621cf2a73a0ff8c65b6b2c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.8 MB (197799728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cb89d9c567228b63fe2dc61fa971903229d8f15fef47645efed7de62a21d7de`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 08 May 2019 09:05:46 GMT
ADD file:fa23694e2ef3b1ff3ac824d7d18d6951725f7f1ebfd5350392edd91f6b90d89e in / 
# Wed, 08 May 2019 09:05:50 GMT
CMD ["bash"]
# Wed, 08 May 2019 16:33:12 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 08 May 2019 16:33:15 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 08 May 2019 16:36:22 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 08 May 2019 16:36:29 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 08 May 2019 16:36:37 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 08 May 2019 16:45:05 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 08 May 2019 16:45:07 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 08 May 2019 16:46:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Wed, 08 May 2019 16:46:21 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 08 May 2019 16:46:32 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 08 May 2019 16:46:36 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 08 May 2019 16:46:39 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 08 May 2019 16:46:41 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 16:46:44 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 16:46:47 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 08 May 2019 17:22:31 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Wed, 08 May 2019 17:22:37 GMT
ENV PHP_VERSION=7.2.18
# Wed, 08 May 2019 17:22:45 GMT
ENV PHP_URL=https://www.php.net/get/php-7.2.18.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.2.18.tar.xz.asc/from/this/mirror
# Wed, 08 May 2019 17:22:53 GMT
ENV PHP_SHA256=9970dbb3ab1298c9e6aac54bebfa841c8ad14b18eead65594a68fa841364cb8d PHP_MD5=
# Wed, 08 May 2019 17:25:03 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 08 May 2019 17:25:06 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Wed, 08 May 2019 17:35:12 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 08 May 2019 17:35:16 GMT
COPY multi:0002d7d5b06fb24f987aa4b027705dc71f81957419a02be5b9014431514c25b5 in /usr/local/bin/ 
# Wed, 08 May 2019 17:35:24 GMT
RUN docker-php-ext-enable sodium
# Wed, 08 May 2019 17:35:30 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 08 May 2019 17:35:32 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Wed, 08 May 2019 17:35:41 GMT
WORKDIR /var/www/html
# Wed, 08 May 2019 17:35:45 GMT
EXPOSE 80
# Wed, 08 May 2019 17:35:51 GMT
CMD ["apache2-foreground"]
# Thu, 09 May 2019 01:31:11 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		git 		imagemagick 		python3 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 01:34:43 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libicu-dev 	; 		docker-php-ext-install 		intl 		mbstring 		mysqli 		opcache 	; 		pecl install apcu-5.1.16; 	docker-php-ext-enable 		apcu 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 01:35:56 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 09 May 2019 01:36:04 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Thu, 09 May 2019 01:36:08 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.31
# Thu, 09 May 2019 01:36:11 GMT
ENV MEDIAWIKI_BRANCH=REL1_31
# Thu, 09 May 2019 01:36:19 GMT
ENV MEDIAWIKI_VERSION=1.31.1
# Thu, 09 May 2019 01:36:21 GMT
ENV MEDIAWIKI_SHA512=ee49649cc37d0a7d45a7c6d90c822c2a595df290be2b5bf085affbec3318768700a458a6e5b5b7e437651400b9641424429d6d304f870c22ec63fae86ffc5152
# Thu, 09 May 2019 01:36:52 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:64bfe8794b280a764f2e07634dce2977621d140ae17fb34a03635710e84c3dfb`  
		Last Modified: Wed, 08 May 2019 09:26:17 GMT  
		Size: 22.7 MB (22744914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a41e81735fa83432331becf8dd5c79995a99c53ff4febd68f25916282e96fee5`  
		Last Modified: Wed, 08 May 2019 18:32:38 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74dcd7f44931915566fc2ab31df6e0da7972d7c1761a1e352f59834ab7b12288`  
		Last Modified: Wed, 08 May 2019 18:33:35 GMT  
		Size: 61.8 MB (61833424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8267f05b2cde025cb67ff60ba71e3ab4bb1d8c894385033a77f3592d3d86a1e9`  
		Last Modified: Wed, 08 May 2019 18:32:39 GMT  
		Size: 286.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b7902741744762d78bf30128d3aaad75defd223148cf4e8013abf2b472a23e7`  
		Last Modified: Wed, 08 May 2019 18:34:58 GMT  
		Size: 17.3 MB (17345860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8304e87d7eae9b221a89adc93eabf206be22236d6aa8fd6ef9bb71b82bd3349`  
		Last Modified: Wed, 08 May 2019 18:34:37 GMT  
		Size: 479.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:480539350c707aed3dba31a230406b23f267cb31ec2d6fa3dc7f239af8dcb64e`  
		Last Modified: Wed, 08 May 2019 18:34:37 GMT  
		Size: 518.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a5f59168f7acd95d0c183946b56d3b084aef8350f8e368b4c54d0d8a9e81343`  
		Last Modified: Wed, 08 May 2019 18:38:16 GMT  
		Size: 12.5 MB (12521120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca06cfad402571a36dab9b350760456c06eb6ff69d86860e01815c448febf608`  
		Last Modified: Wed, 08 May 2019 18:38:10 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:feefdd256094a8cd3578d49e543d314c3a0373117d7c88625485af617daf2f01`  
		Last Modified: Wed, 08 May 2019 18:38:23 GMT  
		Size: 15.1 MB (15050830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddcba8d0f1ead1960e4ed8a8f9ce0987a2ce40cdb35c37ae7e7b0a8347c4145c`  
		Last Modified: Wed, 08 May 2019 18:38:10 GMT  
		Size: 2.2 KB (2202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e659b52fd9017cb4c492b613e5a79ce0ccdb48083cbc7c4b0279405f14ff7ac1`  
		Last Modified: Wed, 08 May 2019 18:38:10 GMT  
		Size: 262.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd234b7aca9a35086eb63ad27b187b272fd97f0a966f6620e532a0c683e8b2dd`  
		Last Modified: Wed, 08 May 2019 18:38:10 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c573dc396369a78f0d176aaddb389a2962121c5a23b2cf13a91ad47571c6b6`  
		Last Modified: Thu, 09 May 2019 01:43:42 GMT  
		Size: 30.0 MB (30009284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89a639ad63cc00a0cc8d9acb2dc6c4bc1625b2319b2d839211c6cfaddda18556`  
		Last Modified: Thu, 09 May 2019 01:43:28 GMT  
		Size: 2.5 MB (2537179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5028e22b0c6db84305e94d5074e817a38e8f8429e8bfe3b8363f3d97389521fc`  
		Last Modified: Thu, 09 May 2019 01:44:02 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf14428c05db262c58e8b6c0e702819e334c7c476cc2bb0fe1fadefb77bef923`  
		Last Modified: Thu, 09 May 2019 01:44:02 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75aadb795d9b3b3e2dc058ffc7d061a6c436086015c5e0f5ecb86d75ac5159fc`  
		Last Modified: Thu, 09 May 2019 01:44:16 GMT  
		Size: 35.8 MB (35751215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mediawiki:1.31.1`

```console
$ docker pull mediawiki@sha256:0ad76ff61080467dc35a37b41289e1d525780aac7aad92c3578e163b5eaa1c2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `mediawiki:1.31.1` - linux; amd64

```console
$ docker pull mediawiki@sha256:9a04779de1cca798f12a5d271266b5c708b8a282a8ac2efea870ac32fbd62e79
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.4 MB (203375792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d7f61ee04a64baf519cff73c4fce2265767993ea1084e9bc9ca47445c07d83e`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 02:29:59 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 08 May 2019 02:29:59 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 08 May 2019 02:30:20 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 08 May 2019 02:30:21 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 08 May 2019 02:30:21 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 08 May 2019 02:37:00 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 08 May 2019 02:37:00 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 08 May 2019 02:37:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Wed, 08 May 2019 02:37:13 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 08 May 2019 02:37:14 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 08 May 2019 02:37:15 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 08 May 2019 02:37:15 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 08 May 2019 02:37:16 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 02:37:16 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 02:37:17 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 08 May 2019 03:02:10 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Wed, 08 May 2019 03:02:10 GMT
ENV PHP_VERSION=7.2.18
# Wed, 08 May 2019 03:02:11 GMT
ENV PHP_URL=https://www.php.net/get/php-7.2.18.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.2.18.tar.xz.asc/from/this/mirror
# Wed, 08 May 2019 03:02:11 GMT
ENV PHP_SHA256=9970dbb3ab1298c9e6aac54bebfa841c8ad14b18eead65594a68fa841364cb8d PHP_MD5=
# Wed, 08 May 2019 03:02:20 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 08 May 2019 03:02:21 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Wed, 08 May 2019 03:06:04 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 08 May 2019 03:06:04 GMT
COPY multi:0002d7d5b06fb24f987aa4b027705dc71f81957419a02be5b9014431514c25b5 in /usr/local/bin/ 
# Wed, 08 May 2019 03:06:05 GMT
RUN docker-php-ext-enable sodium
# Wed, 08 May 2019 03:06:05 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 08 May 2019 03:06:06 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Wed, 08 May 2019 03:06:06 GMT
WORKDIR /var/www/html
# Wed, 08 May 2019 03:06:06 GMT
EXPOSE 80
# Wed, 08 May 2019 03:06:06 GMT
CMD ["apache2-foreground"]
# Wed, 08 May 2019 10:13:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		git 		imagemagick 		python3 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 10:17:31 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libicu-dev 	; 		docker-php-ext-install 		intl 		mbstring 		mysqli 		opcache 	; 		pecl install apcu-5.1.16; 	docker-php-ext-enable 		apcu 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 10:18:06 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 08 May 2019 10:18:07 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Wed, 08 May 2019 10:18:08 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.31
# Wed, 08 May 2019 10:18:08 GMT
ENV MEDIAWIKI_BRANCH=REL1_31
# Wed, 08 May 2019 10:18:08 GMT
ENV MEDIAWIKI_VERSION=1.31.1
# Wed, 08 May 2019 10:18:08 GMT
ENV MEDIAWIKI_SHA512=ee49649cc37d0a7d45a7c6d90c822c2a595df290be2b5bf085affbec3318768700a458a6e5b5b7e437651400b9641424429d6d304f870c22ec63fae86ffc5152
# Wed, 08 May 2019 10:18:20 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6307e89982cc66cd480a6f5cfe17fabddae5e6ae4e735d8f0bf857892d299772`  
		Last Modified: Wed, 08 May 2019 04:41:06 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:807218e72ce2aeb1df368e9757482e7304772ccf439962eb68d1731a0b023802`  
		Last Modified: Wed, 08 May 2019 04:41:20 GMT  
		Size: 67.4 MB (67447543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5108df1d03f88b91e3a940361ab6bc2d60d60a6f52a1ba29d8283a00d71cb0c8`  
		Last Modified: Wed, 08 May 2019 04:41:06 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:901e0b6a7fe58d5615158528d37602cd806ecab9718a880d76f85d609742f5ea`  
		Last Modified: Wed, 08 May 2019 04:41:48 GMT  
		Size: 17.1 MB (17124934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ffe11e7ab2c09aa7e0167044fe111b6a03a5e93f517405f4c416e3220e0b197`  
		Last Modified: Wed, 08 May 2019 04:41:43 GMT  
		Size: 429.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da5f7a5079567ba0d853934f7275591bd53f6740d13e4499a15a9a109982f7e8`  
		Last Modified: Wed, 08 May 2019 04:41:43 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1828a6068039e36669a6a6b2dde9750808c22d86ac075c99ac739dcbbb1e3b67`  
		Last Modified: Wed, 08 May 2019 04:42:59 GMT  
		Size: 12.5 MB (12522340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64e8e1a9a6dd712ede73018cda885173b14dfb5b41d8de2b94a6e40b579b933c`  
		Last Modified: Wed, 08 May 2019 04:42:57 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:947776ecc4cf45b79a1eb8811d0cede95489c496920cc63c3504a78d8c57a14e`  
		Last Modified: Wed, 08 May 2019 04:43:04 GMT  
		Size: 15.3 MB (15259643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:983802cfe132fab1cec030a7b88d0cb6315561c92ff7226cce5f851eb206687d`  
		Last Modified: Wed, 08 May 2019 04:42:56 GMT  
		Size: 2.2 KB (2202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e372111ec71d644fe9452c7ddb71c723515b94807261e2a9937b1c918adf5716`  
		Last Modified: Wed, 08 May 2019 04:42:56 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70d278e5adabe0687ae4a5f6ce0a8e99a53f3554bdcdee8b154635cb360d3088`  
		Last Modified: Wed, 08 May 2019 04:42:56 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7038b6910d573df901cd4193d8ab32b4f9bf611d3d0f15140e41345122b85996`  
		Last Modified: Wed, 08 May 2019 10:23:03 GMT  
		Size: 30.2 MB (30221982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f06e09b6d9eac4655ccbf25966abab364f4ddecb24861f9b0a9c460afafa8fa`  
		Last Modified: Wed, 08 May 2019 10:22:53 GMT  
		Size: 2.6 MB (2553575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a58f2049b16f7182c6f4e099be1b22fb8617db0fad9ad829f597ba54e41ff830`  
		Last Modified: Wed, 08 May 2019 10:23:15 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d49c9aacc1910a838ad3a173f4a68071884ef306a2361278fca0e651b6591d3`  
		Last Modified: Wed, 08 May 2019 10:23:15 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df1fac7dcfd9716dde9c2d46474c20578f25194cc5f1e39517d1923675201782`  
		Last Modified: Wed, 08 May 2019 10:23:28 GMT  
		Size: 35.8 MB (35750693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.31.1` - linux; arm variant v5

```console
$ docker pull mediawiki@sha256:52ee5a53c7c817243a693953712da1864d59dcecd9f8e92711d4e9cf9cc19815
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.4 MB (189364289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ad0f7bf78417bae2cc48cc0b9fb660fc4715b9b4adf5bcf6ccb8042bbd8b737`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 08 May 2019 08:53:38 GMT
ADD file:d9cc007a953434e1439cc534f397967f4f0f1bf149f1288a52f6209eca436852 in / 
# Wed, 08 May 2019 08:53:39 GMT
CMD ["bash"]
# Wed, 08 May 2019 09:48:37 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 08 May 2019 09:48:38 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 08 May 2019 09:49:17 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 08 May 2019 09:49:18 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 08 May 2019 09:49:20 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 08 May 2019 09:53:54 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 08 May 2019 09:53:54 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 08 May 2019 09:54:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Wed, 08 May 2019 09:54:17 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 08 May 2019 09:54:18 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 08 May 2019 09:54:19 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 08 May 2019 09:54:19 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 08 May 2019 09:54:20 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 09:54:20 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 09:54:21 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 08 May 2019 10:11:33 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Sat, 01 Jun 2019 00:13:37 GMT
ENV PHP_VERSION=7.2.19
# Sat, 01 Jun 2019 00:13:38 GMT
ENV PHP_URL=https://www.php.net/get/php-7.2.19.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.2.19.tar.xz.asc/from/this/mirror
# Sat, 01 Jun 2019 00:13:38 GMT
ENV PHP_SHA256=4ffa2404a88d60e993a9fe69f829ebec3eb1e006de41b6048ce5e91bbeaa9282 PHP_MD5=
# Sat, 01 Jun 2019 00:13:58 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 01 Jun 2019 00:13:58 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 01 Jun 2019 00:17:32 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 01 Jun 2019 00:17:33 GMT
COPY multi:0002d7d5b06fb24f987aa4b027705dc71f81957419a02be5b9014431514c25b5 in /usr/local/bin/ 
# Sat, 01 Jun 2019 00:17:35 GMT
RUN docker-php-ext-enable sodium
# Sat, 01 Jun 2019 00:17:35 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 01 Jun 2019 00:17:36 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Sat, 01 Jun 2019 00:17:36 GMT
WORKDIR /var/www/html
# Sat, 01 Jun 2019 00:17:37 GMT
EXPOSE 80
# Sat, 01 Jun 2019 00:17:37 GMT
CMD ["apache2-foreground"]
# Sat, 01 Jun 2019 02:26:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		git 		imagemagick 		python3 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 02:30:08 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libicu-dev 	; 		docker-php-ext-install 		intl 		mbstring 		mysqli 		opcache 	; 		pecl install apcu-5.1.16; 	docker-php-ext-enable 		apcu 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 02:30:43 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 01 Jun 2019 02:30:45 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 01 Jun 2019 02:30:45 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.31
# Sat, 01 Jun 2019 02:30:46 GMT
ENV MEDIAWIKI_BRANCH=REL1_31
# Sat, 01 Jun 2019 02:30:46 GMT
ENV MEDIAWIKI_VERSION=1.31.1
# Sat, 01 Jun 2019 02:30:47 GMT
ENV MEDIAWIKI_SHA512=ee49649cc37d0a7d45a7c6d90c822c2a595df290be2b5bf085affbec3318768700a458a6e5b5b7e437651400b9641424429d6d304f870c22ec63fae86ffc5152
# Sat, 01 Jun 2019 02:31:03 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:f23f9ce99dc288927adafc8d503252a16b6ea2b40c9cb0dca688223c56bd0235`  
		Last Modified: Wed, 08 May 2019 08:59:29 GMT  
		Size: 21.2 MB (21155863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:375098c17606cf891dc6c2de639c2d9b69384583b36d1f12394d245cb131e539`  
		Last Modified: Wed, 08 May 2019 11:06:12 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:091ccac4f8817d1ccf73efd2fd3d421caaea5daab5cf6c0574ba160a012728d2`  
		Last Modified: Wed, 08 May 2019 11:06:33 GMT  
		Size: 57.5 MB (57477758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:825181d9c853e494b46e5d4a8d3eb39bb10ec9f0c5cab11f274faec90f876cef`  
		Last Modified: Wed, 08 May 2019 11:06:12 GMT  
		Size: 286.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:099d1d7d4434733003b46ad3c7824ce4e924bc48db25b33413a65c77ad3dfe2d`  
		Last Modified: Wed, 08 May 2019 11:07:08 GMT  
		Size: 16.7 MB (16651726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15629ed4b2662d162ebc33e2d122007c635a7254b4b55d0edf277dec13d74c9a`  
		Last Modified: Wed, 08 May 2019 11:07:03 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:560f7cc5ef807ab6fb5da234ac471e25d0aa2a5aa7015801be27d254ff521db0`  
		Last Modified: Wed, 08 May 2019 11:07:03 GMT  
		Size: 511.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df32f7a9b2f08479016d154d91afd1b2fa0ff2e4a352257c4fb51a63aaf8b02d`  
		Last Modified: Sat, 01 Jun 2019 01:15:28 GMT  
		Size: 12.5 MB (12524431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0c68434605bf878852626807456ff6d8ea9dd6471ea09f260e236c3497e8613`  
		Last Modified: Sat, 01 Jun 2019 01:15:24 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e09142a09324552b0e51e19a715ce31a622fa1225e6feaf11aae256e89ddb70`  
		Last Modified: Sat, 01 Jun 2019 01:15:31 GMT  
		Size: 14.4 MB (14437073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b345e81f1997c48b7694506985bef3dffbc597da936e526362af3ee8a1b2951`  
		Last Modified: Sat, 01 Jun 2019 01:15:24 GMT  
		Size: 2.2 KB (2204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f6d6e11b4d848ecda0d319dddf54d8583afb48316414071064f949575b56443`  
		Last Modified: Sat, 01 Jun 2019 01:15:25 GMT  
		Size: 262.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afc689b77a160847dc5ed98756528ee5349e02cb23547352fa1f14a44a3419c2`  
		Last Modified: Sat, 01 Jun 2019 01:15:24 GMT  
		Size: 905.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f75d84530645037cc8070cec1c647561afb6fbab0c800c9172f6965839633b48`  
		Last Modified: Sat, 01 Jun 2019 02:36:19 GMT  
		Size: 28.9 MB (28888933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd82164e306b36d62658e5f7b318b79e0b6976810962e695b86d617abf21e236`  
		Last Modified: Sat, 01 Jun 2019 02:36:08 GMT  
		Size: 2.5 MB (2471333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48d9f23f40c9da91c714e872ad91238282226a082ca2e801c08b05e55a57afe8`  
		Last Modified: Sat, 01 Jun 2019 02:36:44 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a70b71bea22d5ebac84741a87e3582191d7b8af86dc99a56b534b407a3ecaea7`  
		Last Modified: Sat, 01 Jun 2019 02:36:44 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f5340ef485a252871e683832b3384d8dffa222cb4ca3d7d5d14272da73eeb18`  
		Last Modified: Sat, 01 Jun 2019 02:37:07 GMT  
		Size: 35.8 MB (35751278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.31.1` - linux; arm variant v7

```console
$ docker pull mediawiki@sha256:527a5e0c2422a1c85cabb03cccedb88a8e52c092cc33ff40b3e0ea5469bfa662
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.1 MB (180138763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96b71e7545600991228602ad552389a89f71b3447a94e4b2b9587fffd9c32155`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 08 May 2019 12:03:54 GMT
ADD file:7813549b5e7862c4d5ecec9e7d8da27b520dd2cc1433e66637c57bb695d4f55a in / 
# Wed, 08 May 2019 12:03:54 GMT
CMD ["bash"]
# Wed, 08 May 2019 14:37:05 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 08 May 2019 14:37:06 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 08 May 2019 14:37:37 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 08 May 2019 14:37:39 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 08 May 2019 14:37:40 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 08 May 2019 14:42:38 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 08 May 2019 14:42:39 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 08 May 2019 14:42:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Wed, 08 May 2019 14:42:58 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 08 May 2019 14:42:59 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 08 May 2019 14:43:00 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 08 May 2019 14:43:00 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 08 May 2019 14:43:01 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 14:43:01 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 14:43:02 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 08 May 2019 14:59:32 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Sat, 01 Jun 2019 00:34:09 GMT
ENV PHP_VERSION=7.2.19
# Sat, 01 Jun 2019 00:34:09 GMT
ENV PHP_URL=https://www.php.net/get/php-7.2.19.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.2.19.tar.xz.asc/from/this/mirror
# Sat, 01 Jun 2019 00:34:10 GMT
ENV PHP_SHA256=4ffa2404a88d60e993a9fe69f829ebec3eb1e006de41b6048ce5e91bbeaa9282 PHP_MD5=
# Sat, 01 Jun 2019 00:34:26 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 01 Jun 2019 00:34:26 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 01 Jun 2019 00:37:25 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 01 Jun 2019 00:37:26 GMT
COPY multi:0002d7d5b06fb24f987aa4b027705dc71f81957419a02be5b9014431514c25b5 in /usr/local/bin/ 
# Sat, 01 Jun 2019 00:37:28 GMT
RUN docker-php-ext-enable sodium
# Sat, 01 Jun 2019 00:37:29 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 01 Jun 2019 00:37:29 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Sat, 01 Jun 2019 00:37:29 GMT
WORKDIR /var/www/html
# Sat, 01 Jun 2019 00:37:30 GMT
EXPOSE 80
# Sat, 01 Jun 2019 00:37:30 GMT
CMD ["apache2-foreground"]
# Sat, 01 Jun 2019 02:31:28 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		git 		imagemagick 		python3 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 02:35:07 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libicu-dev 	; 		docker-php-ext-install 		intl 		mbstring 		mysqli 		opcache 	; 		pecl install apcu-5.1.16; 	docker-php-ext-enable 		apcu 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 02:35:48 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 01 Jun 2019 02:35:50 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 01 Jun 2019 02:35:50 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.31
# Sat, 01 Jun 2019 02:35:51 GMT
ENV MEDIAWIKI_BRANCH=REL1_31
# Sat, 01 Jun 2019 02:35:51 GMT
ENV MEDIAWIKI_VERSION=1.31.1
# Sat, 01 Jun 2019 02:35:52 GMT
ENV MEDIAWIKI_SHA512=ee49649cc37d0a7d45a7c6d90c822c2a595df290be2b5bf085affbec3318768700a458a6e5b5b7e437651400b9641424429d6d304f870c22ec63fae86ffc5152
# Sat, 01 Jun 2019 02:36:07 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:b0727b1ec48ef8920082aec023c050c83b563ae08080d9951d68fba55934bbd6`  
		Last Modified: Wed, 08 May 2019 12:10:01 GMT  
		Size: 19.3 MB (19276216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e208b62bc2ef8e00c39842047e209f0ee05486c604af8359d624ad326285642`  
		Last Modified: Wed, 08 May 2019 15:56:06 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b654776010960d429044df18c3d563b768a92d765adb835d874503dbc872672`  
		Last Modified: Wed, 08 May 2019 15:56:28 GMT  
		Size: 53.6 MB (53589670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0718556bb7e27c667cb22749130f30d651e5cb73cc88535d3cbb2f7a4fe6224e`  
		Last Modified: Wed, 08 May 2019 15:56:05 GMT  
		Size: 286.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21d279750d7c2122da564efb42a89a55b0a6cba5f6a2ac0f7a97191db4ae4fe6`  
		Last Modified: Wed, 08 May 2019 15:57:12 GMT  
		Size: 16.2 MB (16159683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a060b1fb5eab7537b954cc199873b54c44dcbddbfab9c2bb3e8bfdc8c51ec2ce`  
		Last Modified: Wed, 08 May 2019 15:57:03 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56397f3718603009afb913087c72dc6bb3b6465bb82f8f00c6bc4550aec76747`  
		Last Modified: Wed, 08 May 2019 15:57:02 GMT  
		Size: 516.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faa05c80ed7e7320a3d5d347517275b340e34b2f06c5e65f435e621ba0cbb2d3`  
		Last Modified: Sat, 01 Jun 2019 01:56:19 GMT  
		Size: 12.5 MB (12524432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdd8dbbffa7e7154464a5c254ad80d02317c8bb91c11a44e2c9297bae25d1fcd`  
		Last Modified: Sat, 01 Jun 2019 01:56:16 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1438d8a59ecaa26b06a9e60ed3ecc703c52a63336a9e437519c7143534a8726`  
		Last Modified: Sat, 01 Jun 2019 01:56:20 GMT  
		Size: 13.6 MB (13602981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77e049fa064e154f28c8acae37128f5a95ed4af0d03f6e007f376710dcaf0a8e`  
		Last Modified: Sat, 01 Jun 2019 01:56:16 GMT  
		Size: 2.2 KB (2201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1a62d3145013a434f0acaf723805b3e94cfa9e183f349b48fd89ce97b56ad40`  
		Last Modified: Sat, 01 Jun 2019 01:56:16 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5432c4c59238dfc901afc53a70b515fd76da212265f2f658254faef604ef5ab9`  
		Last Modified: Sat, 01 Jun 2019 01:56:16 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c0f414ae38167acfdcd5910440f50358bf101593555d7643cd8d7cf06632c2a`  
		Last Modified: Sat, 01 Jun 2019 02:40:50 GMT  
		Size: 26.8 MB (26812739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80632ac31b9ea95cf32141f80a93560c47359fab89617e59a254ced1a64c1819`  
		Last Modified: Sat, 01 Jun 2019 02:40:40 GMT  
		Size: 2.4 MB (2415904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eded040df3c351bde063bd79089523e60e9253817ee9b9b6d4217d1628e3b17`  
		Last Modified: Sat, 01 Jun 2019 02:41:15 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adec3b84aa9f1f29578b8178aba9f436a2b839bf3d430ee0e19179bc7eb00c7a`  
		Last Modified: Sat, 01 Jun 2019 02:41:14 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016a81d505ed877541ec4ce9c998fb49fe9cf7595e45079d86f8985ba954382b`  
		Last Modified: Sat, 01 Jun 2019 02:41:34 GMT  
		Size: 35.8 MB (35751252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.31.1` - linux; arm64 variant v8

```console
$ docker pull mediawiki@sha256:14a01be07945c62247810bca38f3729718f8e0093f4038f3253b86651cef68b8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.0 MB (187044504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11f41a764ea075c942aa5e589716622cf21b6c7343620dcbe434c25306bd1977`
-	Entrypoint: `["docker-php-entrypoint"]`
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
# Wed, 08 May 2019 14:17:39 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Wed, 08 May 2019 14:17:40 GMT
ENV PHP_VERSION=7.2.18
# Wed, 08 May 2019 14:17:41 GMT
ENV PHP_URL=https://www.php.net/get/php-7.2.18.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.2.18.tar.xz.asc/from/this/mirror
# Wed, 08 May 2019 14:17:42 GMT
ENV PHP_SHA256=9970dbb3ab1298c9e6aac54bebfa841c8ad14b18eead65594a68fa841364cb8d PHP_MD5=
# Wed, 08 May 2019 14:18:13 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 08 May 2019 14:18:14 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Wed, 08 May 2019 14:24:59 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 08 May 2019 14:25:00 GMT
COPY multi:0002d7d5b06fb24f987aa4b027705dc71f81957419a02be5b9014431514c25b5 in /usr/local/bin/ 
# Wed, 08 May 2019 14:25:03 GMT
RUN docker-php-ext-enable sodium
# Wed, 08 May 2019 14:25:04 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 08 May 2019 14:25:05 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Wed, 08 May 2019 14:25:06 GMT
WORKDIR /var/www/html
# Wed, 08 May 2019 14:25:08 GMT
EXPOSE 80
# Wed, 08 May 2019 14:25:09 GMT
CMD ["apache2-foreground"]
# Thu, 09 May 2019 05:05:16 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		git 		imagemagick 		python3 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 05:10:29 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libicu-dev 	; 		docker-php-ext-install 		intl 		mbstring 		mysqli 		opcache 	; 		pecl install apcu-5.1.16; 	docker-php-ext-enable 		apcu 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 05:11:09 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 09 May 2019 05:11:11 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Thu, 09 May 2019 05:11:12 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.31
# Thu, 09 May 2019 05:11:12 GMT
ENV MEDIAWIKI_BRANCH=REL1_31
# Thu, 09 May 2019 05:11:13 GMT
ENV MEDIAWIKI_VERSION=1.31.1
# Thu, 09 May 2019 05:11:14 GMT
ENV MEDIAWIKI_SHA512=ee49649cc37d0a7d45a7c6d90c822c2a595df290be2b5bf085affbec3318768700a458a6e5b5b7e437651400b9641424429d6d304f870c22ec63fae86ffc5152
# Thu, 09 May 2019 05:11:30 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
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
	-	`sha256:68d73a231f4080e449e68e6502533ec427a7b766c85d31a09f22d13191f765ea`  
		Last Modified: Wed, 08 May 2019 15:35:37 GMT  
		Size: 12.5 MB (12520437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19691ffc177e30c79f20a75ac96c12ffd081688c45bd4529e07c6292cf1d6d1b`  
		Last Modified: Wed, 08 May 2019 15:35:33 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bd777d47d57316bc1220d04b66d6576368950707b2a0f871bcd8a82864e2a9d`  
		Last Modified: Wed, 08 May 2019 15:35:40 GMT  
		Size: 14.2 MB (14239607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25e16be802a9018dec3f0cc8a2c345cce185b37fe8c01f323cd899722b69ac44`  
		Last Modified: Wed, 08 May 2019 15:35:33 GMT  
		Size: 2.2 KB (2200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bdfeeb7bd495fa9c974d8cd8659e32312d855bbd4df206a1f7057068407323d`  
		Last Modified: Wed, 08 May 2019 15:35:33 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4e5a9bc30afea7feb6df63482956ec64391a0b0305093ae8f6415624ed01a79`  
		Last Modified: Wed, 08 May 2019 15:35:33 GMT  
		Size: 903.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:372d20461635750ebeb1fe499a15fcf50a25a9a1ffae0fba099d48f09944c2af`  
		Last Modified: Thu, 09 May 2019 05:18:09 GMT  
		Size: 27.4 MB (27403442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cca2be8290114033ec2f1832487b8f41d1327395a86e475463acd95cf5193aa`  
		Last Modified: Thu, 09 May 2019 05:17:56 GMT  
		Size: 2.5 MB (2476635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b183f1b05530af011358b9fbc987b8c04a150307b16b9b7caacad1d0015e99a0`  
		Last Modified: Thu, 09 May 2019 05:18:32 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69a59f3599538feac27adfdbd9ea241d7bca680379a043b92390164a016458e0`  
		Last Modified: Thu, 09 May 2019 05:18:33 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d078e35e69e4cdc85a103d35194773f469b8404d313f3a5090938f50e7638ba4`  
		Last Modified: Thu, 09 May 2019 05:18:55 GMT  
		Size: 35.8 MB (35750717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.31.1` - linux; 386

```console
$ docker pull mediawiki@sha256:71452abf229ef013311198d999506c7edf10adab8654fd73e3a95e1592aebd78
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **210.6 MB (210610429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe5ac58d721eb66fe00bbdc9a208a32af4aa4ff6afe014611b4e4919d3c69e54`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 08 May 2019 10:49:55 GMT
ADD file:32d77a56ac954d1cd433a660591f374200929db022f1d0cfcf99eb6ab9e1679c in / 
# Wed, 08 May 2019 10:49:55 GMT
CMD ["bash"]
# Wed, 08 May 2019 16:35:40 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 08 May 2019 16:35:40 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 08 May 2019 16:36:06 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 08 May 2019 16:36:06 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 08 May 2019 16:36:07 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 08 May 2019 16:41:56 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 08 May 2019 16:41:57 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 08 May 2019 16:42:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Wed, 08 May 2019 16:42:09 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 08 May 2019 16:42:09 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 08 May 2019 16:42:10 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 08 May 2019 16:42:10 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 08 May 2019 16:42:10 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 16:42:10 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 16:42:10 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 08 May 2019 17:04:19 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Wed, 08 May 2019 17:04:19 GMT
ENV PHP_VERSION=7.2.18
# Wed, 08 May 2019 17:04:19 GMT
ENV PHP_URL=https://www.php.net/get/php-7.2.18.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.2.18.tar.xz.asc/from/this/mirror
# Wed, 08 May 2019 17:04:19 GMT
ENV PHP_SHA256=9970dbb3ab1298c9e6aac54bebfa841c8ad14b18eead65594a68fa841364cb8d PHP_MD5=
# Wed, 08 May 2019 17:04:30 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 08 May 2019 17:04:30 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Wed, 08 May 2019 17:07:59 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 08 May 2019 17:08:00 GMT
COPY multi:0002d7d5b06fb24f987aa4b027705dc71f81957419a02be5b9014431514c25b5 in /usr/local/bin/ 
# Wed, 08 May 2019 17:08:01 GMT
RUN docker-php-ext-enable sodium
# Wed, 08 May 2019 17:08:01 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 08 May 2019 17:08:01 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Wed, 08 May 2019 17:08:01 GMT
WORKDIR /var/www/html
# Wed, 08 May 2019 17:08:01 GMT
EXPOSE 80
# Wed, 08 May 2019 17:08:02 GMT
CMD ["apache2-foreground"]
# Thu, 09 May 2019 02:48:07 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		git 		imagemagick 		python3 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 02:50:17 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libicu-dev 	; 		docker-php-ext-install 		intl 		mbstring 		mysqli 		opcache 	; 		pecl install apcu-5.1.16; 	docker-php-ext-enable 		apcu 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 02:50:33 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 09 May 2019 02:50:34 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Thu, 09 May 2019 02:50:34 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.31
# Thu, 09 May 2019 02:50:34 GMT
ENV MEDIAWIKI_BRANCH=REL1_31
# Thu, 09 May 2019 02:50:34 GMT
ENV MEDIAWIKI_VERSION=1.31.1
# Thu, 09 May 2019 02:50:35 GMT
ENV MEDIAWIKI_SHA512=ee49649cc37d0a7d45a7c6d90c822c2a595df290be2b5bf085affbec3318768700a458a6e5b5b7e437651400b9641424429d6d304f870c22ec63fae86ffc5152
# Thu, 09 May 2019 02:50:44 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:3cf56ed221cf05f73233419fcc3a71b0afd424761fc83037e3a5cf101af5df46`  
		Last Modified: Wed, 08 May 2019 10:57:50 GMT  
		Size: 23.1 MB (23120843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2e394799d7fd8bb494dd3068fa793d651e7ccb426989bd27defd081a6bcc12f`  
		Last Modified: Wed, 08 May 2019 18:38:36 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d053425c85d9196337b5a25e4b3194f8f91c7540e201df765bb55f179df390d`  
		Last Modified: Wed, 08 May 2019 18:38:54 GMT  
		Size: 71.5 MB (71518824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:375ceda7fc26c2edccb175b8a009dd8db8b6159d82b589045c749fc2a90b409c`  
		Last Modified: Wed, 08 May 2019 18:38:35 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcee9f239c4761d5fb6def94e207d25f66b6dd1b06aca20ef921f0b7cec5fd2b`  
		Last Modified: Wed, 08 May 2019 18:39:23 GMT  
		Size: 17.6 MB (17559084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f37941543cfc620e1f153eec1e6627f09d2995dc4e11881df4b2fec57d024fc`  
		Last Modified: Wed, 08 May 2019 18:39:18 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e81f09a18a1e21c876bdb2b93ab40c2d32294938c8c14da1306afc78c85dc5b`  
		Last Modified: Wed, 08 May 2019 18:39:18 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a51838654f356e5455289e6a566e70e1dcf8fbb7f2cddc27757511489c8a4865`  
		Last Modified: Wed, 08 May 2019 18:40:40 GMT  
		Size: 12.5 MB (12521696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e83a1be097ba06dd9c045e9d858ef16d7dfcaea2ea8f0a7c03aab056c7ec4e5`  
		Last Modified: Wed, 08 May 2019 18:40:38 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44ccf0af924d7fde5877252371b3b934464fbb43162d86e493dbff5d0855e272`  
		Last Modified: Wed, 08 May 2019 18:40:42 GMT  
		Size: 15.7 MB (15698642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bae3e0d9a678f89ab9935758d2c23643b90fc86203ade9e19896a9810210316`  
		Last Modified: Wed, 08 May 2019 18:40:38 GMT  
		Size: 2.2 KB (2202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:794620458d3b9ee10b26a830211cffeac76c5cebc292f39dd05b89de92a07c5e`  
		Last Modified: Wed, 08 May 2019 18:40:38 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb9f2cd6fb034170dd3ce44819ab9d821785167b2eefb1c966230325ba73eee8`  
		Last Modified: Wed, 08 May 2019 18:40:38 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7615115b5410267361895d41778ec708797e2a776d5effd07aba762bf1aee9c`  
		Last Modified: Thu, 09 May 2019 02:53:32 GMT  
		Size: 31.9 MB (31894562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0300f05641c30fcba961c4d59f9dd81e567cafb4bd0217d5eb41ddc95db39397`  
		Last Modified: Thu, 09 May 2019 02:53:23 GMT  
		Size: 2.5 MB (2540292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a1824326f8c81a852b7c897143a7bd337cf72c7c7f64e11d0366c6ad0b7bdd`  
		Last Modified: Thu, 09 May 2019 02:53:44 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3b0adddf5166e967b30cc2bb794a282595f3fb574efdfb409d93b64d734fea7`  
		Last Modified: Thu, 09 May 2019 02:53:44 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a986004e0d07c59b27a1a29c1c66efbda642033fb89d4585f976737a56966ac0`  
		Last Modified: Thu, 09 May 2019 02:53:57 GMT  
		Size: 35.8 MB (35750754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.31.1` - linux; ppc64le

```console
$ docker pull mediawiki@sha256:8491f1ba0d073a2a132887cd8527a248e3afb0d96c621cf2a73a0ff8c65b6b2c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.8 MB (197799728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cb89d9c567228b63fe2dc61fa971903229d8f15fef47645efed7de62a21d7de`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 08 May 2019 09:05:46 GMT
ADD file:fa23694e2ef3b1ff3ac824d7d18d6951725f7f1ebfd5350392edd91f6b90d89e in / 
# Wed, 08 May 2019 09:05:50 GMT
CMD ["bash"]
# Wed, 08 May 2019 16:33:12 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 08 May 2019 16:33:15 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 08 May 2019 16:36:22 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 08 May 2019 16:36:29 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 08 May 2019 16:36:37 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 08 May 2019 16:45:05 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 08 May 2019 16:45:07 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 08 May 2019 16:46:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Wed, 08 May 2019 16:46:21 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 08 May 2019 16:46:32 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 08 May 2019 16:46:36 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 08 May 2019 16:46:39 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 08 May 2019 16:46:41 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 16:46:44 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 16:46:47 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 08 May 2019 17:22:31 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Wed, 08 May 2019 17:22:37 GMT
ENV PHP_VERSION=7.2.18
# Wed, 08 May 2019 17:22:45 GMT
ENV PHP_URL=https://www.php.net/get/php-7.2.18.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.2.18.tar.xz.asc/from/this/mirror
# Wed, 08 May 2019 17:22:53 GMT
ENV PHP_SHA256=9970dbb3ab1298c9e6aac54bebfa841c8ad14b18eead65594a68fa841364cb8d PHP_MD5=
# Wed, 08 May 2019 17:25:03 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 08 May 2019 17:25:06 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Wed, 08 May 2019 17:35:12 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 08 May 2019 17:35:16 GMT
COPY multi:0002d7d5b06fb24f987aa4b027705dc71f81957419a02be5b9014431514c25b5 in /usr/local/bin/ 
# Wed, 08 May 2019 17:35:24 GMT
RUN docker-php-ext-enable sodium
# Wed, 08 May 2019 17:35:30 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 08 May 2019 17:35:32 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Wed, 08 May 2019 17:35:41 GMT
WORKDIR /var/www/html
# Wed, 08 May 2019 17:35:45 GMT
EXPOSE 80
# Wed, 08 May 2019 17:35:51 GMT
CMD ["apache2-foreground"]
# Thu, 09 May 2019 01:31:11 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		git 		imagemagick 		python3 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 01:34:43 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libicu-dev 	; 		docker-php-ext-install 		intl 		mbstring 		mysqli 		opcache 	; 		pecl install apcu-5.1.16; 	docker-php-ext-enable 		apcu 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 01:35:56 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 09 May 2019 01:36:04 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Thu, 09 May 2019 01:36:08 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.31
# Thu, 09 May 2019 01:36:11 GMT
ENV MEDIAWIKI_BRANCH=REL1_31
# Thu, 09 May 2019 01:36:19 GMT
ENV MEDIAWIKI_VERSION=1.31.1
# Thu, 09 May 2019 01:36:21 GMT
ENV MEDIAWIKI_SHA512=ee49649cc37d0a7d45a7c6d90c822c2a595df290be2b5bf085affbec3318768700a458a6e5b5b7e437651400b9641424429d6d304f870c22ec63fae86ffc5152
# Thu, 09 May 2019 01:36:52 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:64bfe8794b280a764f2e07634dce2977621d140ae17fb34a03635710e84c3dfb`  
		Last Modified: Wed, 08 May 2019 09:26:17 GMT  
		Size: 22.7 MB (22744914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a41e81735fa83432331becf8dd5c79995a99c53ff4febd68f25916282e96fee5`  
		Last Modified: Wed, 08 May 2019 18:32:38 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74dcd7f44931915566fc2ab31df6e0da7972d7c1761a1e352f59834ab7b12288`  
		Last Modified: Wed, 08 May 2019 18:33:35 GMT  
		Size: 61.8 MB (61833424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8267f05b2cde025cb67ff60ba71e3ab4bb1d8c894385033a77f3592d3d86a1e9`  
		Last Modified: Wed, 08 May 2019 18:32:39 GMT  
		Size: 286.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b7902741744762d78bf30128d3aaad75defd223148cf4e8013abf2b472a23e7`  
		Last Modified: Wed, 08 May 2019 18:34:58 GMT  
		Size: 17.3 MB (17345860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8304e87d7eae9b221a89adc93eabf206be22236d6aa8fd6ef9bb71b82bd3349`  
		Last Modified: Wed, 08 May 2019 18:34:37 GMT  
		Size: 479.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:480539350c707aed3dba31a230406b23f267cb31ec2d6fa3dc7f239af8dcb64e`  
		Last Modified: Wed, 08 May 2019 18:34:37 GMT  
		Size: 518.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a5f59168f7acd95d0c183946b56d3b084aef8350f8e368b4c54d0d8a9e81343`  
		Last Modified: Wed, 08 May 2019 18:38:16 GMT  
		Size: 12.5 MB (12521120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca06cfad402571a36dab9b350760456c06eb6ff69d86860e01815c448febf608`  
		Last Modified: Wed, 08 May 2019 18:38:10 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:feefdd256094a8cd3578d49e543d314c3a0373117d7c88625485af617daf2f01`  
		Last Modified: Wed, 08 May 2019 18:38:23 GMT  
		Size: 15.1 MB (15050830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddcba8d0f1ead1960e4ed8a8f9ce0987a2ce40cdb35c37ae7e7b0a8347c4145c`  
		Last Modified: Wed, 08 May 2019 18:38:10 GMT  
		Size: 2.2 KB (2202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e659b52fd9017cb4c492b613e5a79ce0ccdb48083cbc7c4b0279405f14ff7ac1`  
		Last Modified: Wed, 08 May 2019 18:38:10 GMT  
		Size: 262.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd234b7aca9a35086eb63ad27b187b272fd97f0a966f6620e532a0c683e8b2dd`  
		Last Modified: Wed, 08 May 2019 18:38:10 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c573dc396369a78f0d176aaddb389a2962121c5a23b2cf13a91ad47571c6b6`  
		Last Modified: Thu, 09 May 2019 01:43:42 GMT  
		Size: 30.0 MB (30009284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89a639ad63cc00a0cc8d9acb2dc6c4bc1625b2319b2d839211c6cfaddda18556`  
		Last Modified: Thu, 09 May 2019 01:43:28 GMT  
		Size: 2.5 MB (2537179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5028e22b0c6db84305e94d5074e817a38e8f8429e8bfe3b8363f3d97389521fc`  
		Last Modified: Thu, 09 May 2019 01:44:02 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf14428c05db262c58e8b6c0e702819e334c7c476cc2bb0fe1fadefb77bef923`  
		Last Modified: Thu, 09 May 2019 01:44:02 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75aadb795d9b3b3e2dc058ffc7d061a6c436086015c5e0f5ecb86d75ac5159fc`  
		Last Modified: Thu, 09 May 2019 01:44:16 GMT  
		Size: 35.8 MB (35751215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mediawiki:1.32`

```console
$ docker pull mediawiki@sha256:bf0a6f48bfa7262c3c3ecdeab470ebf411f96e46194dd3b9e52573920b46919c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `mediawiki:1.32` - linux; amd64

```console
$ docker pull mediawiki@sha256:f0b747de39aaa40c747af870c38b3febc53e4787b8dc954593dd60fa039f0464
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.3 MB (204305883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3b378ef05a9b065e2f1bc42cd71570391c7684c8cc53f09153ce4401bfdf7da`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 02:29:59 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 08 May 2019 02:29:59 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 08 May 2019 02:30:20 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 08 May 2019 02:30:21 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 08 May 2019 02:30:21 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 08 May 2019 02:37:00 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 08 May 2019 02:37:00 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 08 May 2019 02:37:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Wed, 08 May 2019 02:37:13 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 08 May 2019 02:37:14 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 08 May 2019 02:37:15 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 08 May 2019 02:37:15 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 08 May 2019 02:37:16 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 02:37:16 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 02:37:17 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 08 May 2019 03:02:10 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Wed, 08 May 2019 03:02:10 GMT
ENV PHP_VERSION=7.2.18
# Wed, 08 May 2019 03:02:11 GMT
ENV PHP_URL=https://www.php.net/get/php-7.2.18.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.2.18.tar.xz.asc/from/this/mirror
# Wed, 08 May 2019 03:02:11 GMT
ENV PHP_SHA256=9970dbb3ab1298c9e6aac54bebfa841c8ad14b18eead65594a68fa841364cb8d PHP_MD5=
# Wed, 08 May 2019 03:02:20 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 08 May 2019 03:02:21 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Wed, 08 May 2019 03:06:04 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 08 May 2019 03:06:04 GMT
COPY multi:0002d7d5b06fb24f987aa4b027705dc71f81957419a02be5b9014431514c25b5 in /usr/local/bin/ 
# Wed, 08 May 2019 03:06:05 GMT
RUN docker-php-ext-enable sodium
# Wed, 08 May 2019 03:06:05 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 08 May 2019 03:06:06 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Wed, 08 May 2019 03:06:06 GMT
WORKDIR /var/www/html
# Wed, 08 May 2019 03:06:06 GMT
EXPOSE 80
# Wed, 08 May 2019 03:06:06 GMT
CMD ["apache2-foreground"]
# Wed, 08 May 2019 10:13:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		git 		imagemagick 		python3 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 10:17:31 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libicu-dev 	; 		docker-php-ext-install 		intl 		mbstring 		mysqli 		opcache 	; 		pecl install apcu-5.1.16; 	docker-php-ext-enable 		apcu 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 10:17:33 GMT
RUN a2enmod rewrite   && {       echo '<Directory /var/www/html>';       echo '  RewriteEngine On';       echo '  RewriteCond %{REQUEST_FILENAME} !-f';       echo '  RewriteCond %{REQUEST_FILENAME} !-d';       echo '  RewriteRule ^ %{DOCUMENT_ROOT}/index.php [L]';       echo '</Directory>';     } > "$APACHE_CONFDIR/conf-available/short-url.conf"   && a2enconf short-url
# Wed, 08 May 2019 10:17:34 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 08 May 2019 10:17:35 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Wed, 08 May 2019 10:17:35 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.32
# Wed, 08 May 2019 10:17:35 GMT
ENV MEDIAWIKI_BRANCH=REL1_32
# Wed, 08 May 2019 10:17:35 GMT
ENV MEDIAWIKI_VERSION=1.32.1
# Wed, 08 May 2019 10:17:36 GMT
ENV MEDIAWIKI_SHA512=597af44ba140a50b4dfec9dd1a81db1c96e6672f33870ad15d9be875c4a7109eff57034e10762c45c47bad4afdfe27b96949dd6dd4bea24db6ea54bafd80c376
# Wed, 08 May 2019 10:17:47 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6307e89982cc66cd480a6f5cfe17fabddae5e6ae4e735d8f0bf857892d299772`  
		Last Modified: Wed, 08 May 2019 04:41:06 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:807218e72ce2aeb1df368e9757482e7304772ccf439962eb68d1731a0b023802`  
		Last Modified: Wed, 08 May 2019 04:41:20 GMT  
		Size: 67.4 MB (67447543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5108df1d03f88b91e3a940361ab6bc2d60d60a6f52a1ba29d8283a00d71cb0c8`  
		Last Modified: Wed, 08 May 2019 04:41:06 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:901e0b6a7fe58d5615158528d37602cd806ecab9718a880d76f85d609742f5ea`  
		Last Modified: Wed, 08 May 2019 04:41:48 GMT  
		Size: 17.1 MB (17124934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ffe11e7ab2c09aa7e0167044fe111b6a03a5e93f517405f4c416e3220e0b197`  
		Last Modified: Wed, 08 May 2019 04:41:43 GMT  
		Size: 429.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da5f7a5079567ba0d853934f7275591bd53f6740d13e4499a15a9a109982f7e8`  
		Last Modified: Wed, 08 May 2019 04:41:43 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1828a6068039e36669a6a6b2dde9750808c22d86ac075c99ac739dcbbb1e3b67`  
		Last Modified: Wed, 08 May 2019 04:42:59 GMT  
		Size: 12.5 MB (12522340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64e8e1a9a6dd712ede73018cda885173b14dfb5b41d8de2b94a6e40b579b933c`  
		Last Modified: Wed, 08 May 2019 04:42:57 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:947776ecc4cf45b79a1eb8811d0cede95489c496920cc63c3504a78d8c57a14e`  
		Last Modified: Wed, 08 May 2019 04:43:04 GMT  
		Size: 15.3 MB (15259643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:983802cfe132fab1cec030a7b88d0cb6315561c92ff7226cce5f851eb206687d`  
		Last Modified: Wed, 08 May 2019 04:42:56 GMT  
		Size: 2.2 KB (2202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e372111ec71d644fe9452c7ddb71c723515b94807261e2a9937b1c918adf5716`  
		Last Modified: Wed, 08 May 2019 04:42:56 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70d278e5adabe0687ae4a5f6ce0a8e99a53f3554bdcdee8b154635cb360d3088`  
		Last Modified: Wed, 08 May 2019 04:42:56 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7038b6910d573df901cd4193d8ab32b4f9bf611d3d0f15140e41345122b85996`  
		Last Modified: Wed, 08 May 2019 10:23:03 GMT  
		Size: 30.2 MB (30221982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f06e09b6d9eac4655ccbf25966abab364f4ddecb24861f9b0a9c460afafa8fa`  
		Last Modified: Wed, 08 May 2019 10:22:53 GMT  
		Size: 2.6 MB (2553575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a2198f61b13436e68738445f1f543176bb7f37d4cdf66281b3c084b2c51a2fc`  
		Last Modified: Wed, 08 May 2019 10:22:53 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceec5aeb21c84d0e1892c2759b462bc29ad17e049cca3cfe7758a12d3683e0c8`  
		Last Modified: Wed, 08 May 2019 10:22:53 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0e205f974ca740857c15158878f37e2cfb9daf9de21bf6c9804a2f9b093a0ee`  
		Last Modified: Wed, 08 May 2019 10:22:53 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5568a69de805c9c7c1ba1accadbe86cf6e975e87fa364a123b60a8544858ae03`  
		Last Modified: Wed, 08 May 2019 10:23:08 GMT  
		Size: 36.7 MB (36680206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.32` - linux; arm variant v5

```console
$ docker pull mediawiki@sha256:58d55edb50fb854486a67f5d8cca1515d297cbd51f5eed6d67798dc4e46830c9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.3 MB (190294232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:928682f43c8b153c5455333f69e2620f010605bdf13623818b3f47297ec8c234`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 08 May 2019 08:53:38 GMT
ADD file:d9cc007a953434e1439cc534f397967f4f0f1bf149f1288a52f6209eca436852 in / 
# Wed, 08 May 2019 08:53:39 GMT
CMD ["bash"]
# Wed, 08 May 2019 09:48:37 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 08 May 2019 09:48:38 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 08 May 2019 09:49:17 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 08 May 2019 09:49:18 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 08 May 2019 09:49:20 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 08 May 2019 09:53:54 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 08 May 2019 09:53:54 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 08 May 2019 09:54:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Wed, 08 May 2019 09:54:17 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 08 May 2019 09:54:18 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 08 May 2019 09:54:19 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 08 May 2019 09:54:19 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 08 May 2019 09:54:20 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 09:54:20 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 09:54:21 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 08 May 2019 10:11:33 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Sat, 01 Jun 2019 00:13:37 GMT
ENV PHP_VERSION=7.2.19
# Sat, 01 Jun 2019 00:13:38 GMT
ENV PHP_URL=https://www.php.net/get/php-7.2.19.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.2.19.tar.xz.asc/from/this/mirror
# Sat, 01 Jun 2019 00:13:38 GMT
ENV PHP_SHA256=4ffa2404a88d60e993a9fe69f829ebec3eb1e006de41b6048ce5e91bbeaa9282 PHP_MD5=
# Sat, 01 Jun 2019 00:13:58 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 01 Jun 2019 00:13:58 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 01 Jun 2019 00:17:32 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 01 Jun 2019 00:17:33 GMT
COPY multi:0002d7d5b06fb24f987aa4b027705dc71f81957419a02be5b9014431514c25b5 in /usr/local/bin/ 
# Sat, 01 Jun 2019 00:17:35 GMT
RUN docker-php-ext-enable sodium
# Sat, 01 Jun 2019 00:17:35 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 01 Jun 2019 00:17:36 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Sat, 01 Jun 2019 00:17:36 GMT
WORKDIR /var/www/html
# Sat, 01 Jun 2019 00:17:37 GMT
EXPOSE 80
# Sat, 01 Jun 2019 00:17:37 GMT
CMD ["apache2-foreground"]
# Sat, 01 Jun 2019 02:26:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		git 		imagemagick 		python3 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 02:30:08 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libicu-dev 	; 		docker-php-ext-install 		intl 		mbstring 		mysqli 		opcache 	; 		pecl install apcu-5.1.16; 	docker-php-ext-enable 		apcu 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 02:30:10 GMT
RUN a2enmod rewrite   && {       echo '<Directory /var/www/html>';       echo '  RewriteEngine On';       echo '  RewriteCond %{REQUEST_FILENAME} !-f';       echo '  RewriteCond %{REQUEST_FILENAME} !-d';       echo '  RewriteRule ^ %{DOCUMENT_ROOT}/index.php [L]';       echo '</Directory>';     } > "$APACHE_CONFDIR/conf-available/short-url.conf"   && a2enconf short-url
# Sat, 01 Jun 2019 02:30:12 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 01 Jun 2019 02:30:13 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 01 Jun 2019 02:30:14 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.32
# Sat, 01 Jun 2019 02:30:14 GMT
ENV MEDIAWIKI_BRANCH=REL1_32
# Sat, 01 Jun 2019 02:30:15 GMT
ENV MEDIAWIKI_VERSION=1.32.1
# Sat, 01 Jun 2019 02:30:15 GMT
ENV MEDIAWIKI_SHA512=597af44ba140a50b4dfec9dd1a81db1c96e6672f33870ad15d9be875c4a7109eff57034e10762c45c47bad4afdfe27b96949dd6dd4bea24db6ea54bafd80c376
# Sat, 01 Jun 2019 02:30:31 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:f23f9ce99dc288927adafc8d503252a16b6ea2b40c9cb0dca688223c56bd0235`  
		Last Modified: Wed, 08 May 2019 08:59:29 GMT  
		Size: 21.2 MB (21155863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:375098c17606cf891dc6c2de639c2d9b69384583b36d1f12394d245cb131e539`  
		Last Modified: Wed, 08 May 2019 11:06:12 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:091ccac4f8817d1ccf73efd2fd3d421caaea5daab5cf6c0574ba160a012728d2`  
		Last Modified: Wed, 08 May 2019 11:06:33 GMT  
		Size: 57.5 MB (57477758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:825181d9c853e494b46e5d4a8d3eb39bb10ec9f0c5cab11f274faec90f876cef`  
		Last Modified: Wed, 08 May 2019 11:06:12 GMT  
		Size: 286.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:099d1d7d4434733003b46ad3c7824ce4e924bc48db25b33413a65c77ad3dfe2d`  
		Last Modified: Wed, 08 May 2019 11:07:08 GMT  
		Size: 16.7 MB (16651726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15629ed4b2662d162ebc33e2d122007c635a7254b4b55d0edf277dec13d74c9a`  
		Last Modified: Wed, 08 May 2019 11:07:03 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:560f7cc5ef807ab6fb5da234ac471e25d0aa2a5aa7015801be27d254ff521db0`  
		Last Modified: Wed, 08 May 2019 11:07:03 GMT  
		Size: 511.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df32f7a9b2f08479016d154d91afd1b2fa0ff2e4a352257c4fb51a63aaf8b02d`  
		Last Modified: Sat, 01 Jun 2019 01:15:28 GMT  
		Size: 12.5 MB (12524431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0c68434605bf878852626807456ff6d8ea9dd6471ea09f260e236c3497e8613`  
		Last Modified: Sat, 01 Jun 2019 01:15:24 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e09142a09324552b0e51e19a715ce31a622fa1225e6feaf11aae256e89ddb70`  
		Last Modified: Sat, 01 Jun 2019 01:15:31 GMT  
		Size: 14.4 MB (14437073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b345e81f1997c48b7694506985bef3dffbc597da936e526362af3ee8a1b2951`  
		Last Modified: Sat, 01 Jun 2019 01:15:24 GMT  
		Size: 2.2 KB (2204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f6d6e11b4d848ecda0d319dddf54d8583afb48316414071064f949575b56443`  
		Last Modified: Sat, 01 Jun 2019 01:15:25 GMT  
		Size: 262.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afc689b77a160847dc5ed98756528ee5349e02cb23547352fa1f14a44a3419c2`  
		Last Modified: Sat, 01 Jun 2019 01:15:24 GMT  
		Size: 905.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f75d84530645037cc8070cec1c647561afb6fbab0c800c9172f6965839633b48`  
		Last Modified: Sat, 01 Jun 2019 02:36:19 GMT  
		Size: 28.9 MB (28888933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd82164e306b36d62658e5f7b318b79e0b6976810962e695b86d617abf21e236`  
		Last Modified: Sat, 01 Jun 2019 02:36:08 GMT  
		Size: 2.5 MB (2471333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28f61e9b5ff034b4b44f72937ecfc9962293b52028fd95c9d1b144deda0813b9`  
		Last Modified: Sat, 01 Jun 2019 02:36:08 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7bdf3367ac37433a3a333c1022eca2c0a14a1ccf216ba724e02b41c6c79e847`  
		Last Modified: Sat, 01 Jun 2019 02:36:08 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cdf0a48a56b8ea00b669fc1605f4b9cb25c1e5df18925b9519869ca3f92b543`  
		Last Modified: Sat, 01 Jun 2019 02:36:08 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be99e529a67be096952d19e4eb8d18d806fbb9f532712ae89c4881c96a8c47c6`  
		Last Modified: Sat, 01 Jun 2019 02:36:32 GMT  
		Size: 36.7 MB (36680641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.32` - linux; arm variant v7

```console
$ docker pull mediawiki@sha256:c0e395c1b9e871ca28fc936389f4da418e7f07d8e4bc756e60cc4ec0224e4f8b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.1 MB (181068611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba5034c1222e7591c2d03ffcc27f10c2172a8dd271581883c0613b93e8a11cff`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 08 May 2019 12:03:54 GMT
ADD file:7813549b5e7862c4d5ecec9e7d8da27b520dd2cc1433e66637c57bb695d4f55a in / 
# Wed, 08 May 2019 12:03:54 GMT
CMD ["bash"]
# Wed, 08 May 2019 14:37:05 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 08 May 2019 14:37:06 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 08 May 2019 14:37:37 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 08 May 2019 14:37:39 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 08 May 2019 14:37:40 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 08 May 2019 14:42:38 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 08 May 2019 14:42:39 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 08 May 2019 14:42:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Wed, 08 May 2019 14:42:58 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 08 May 2019 14:42:59 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 08 May 2019 14:43:00 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 08 May 2019 14:43:00 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 08 May 2019 14:43:01 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 14:43:01 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 14:43:02 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 08 May 2019 14:59:32 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Sat, 01 Jun 2019 00:34:09 GMT
ENV PHP_VERSION=7.2.19
# Sat, 01 Jun 2019 00:34:09 GMT
ENV PHP_URL=https://www.php.net/get/php-7.2.19.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.2.19.tar.xz.asc/from/this/mirror
# Sat, 01 Jun 2019 00:34:10 GMT
ENV PHP_SHA256=4ffa2404a88d60e993a9fe69f829ebec3eb1e006de41b6048ce5e91bbeaa9282 PHP_MD5=
# Sat, 01 Jun 2019 00:34:26 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 01 Jun 2019 00:34:26 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 01 Jun 2019 00:37:25 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 01 Jun 2019 00:37:26 GMT
COPY multi:0002d7d5b06fb24f987aa4b027705dc71f81957419a02be5b9014431514c25b5 in /usr/local/bin/ 
# Sat, 01 Jun 2019 00:37:28 GMT
RUN docker-php-ext-enable sodium
# Sat, 01 Jun 2019 00:37:29 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 01 Jun 2019 00:37:29 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Sat, 01 Jun 2019 00:37:29 GMT
WORKDIR /var/www/html
# Sat, 01 Jun 2019 00:37:30 GMT
EXPOSE 80
# Sat, 01 Jun 2019 00:37:30 GMT
CMD ["apache2-foreground"]
# Sat, 01 Jun 2019 02:31:28 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		git 		imagemagick 		python3 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 02:35:07 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libicu-dev 	; 		docker-php-ext-install 		intl 		mbstring 		mysqli 		opcache 	; 		pecl install apcu-5.1.16; 	docker-php-ext-enable 		apcu 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 02:35:09 GMT
RUN a2enmod rewrite   && {       echo '<Directory /var/www/html>';       echo '  RewriteEngine On';       echo '  RewriteCond %{REQUEST_FILENAME} !-f';       echo '  RewriteCond %{REQUEST_FILENAME} !-d';       echo '  RewriteRule ^ %{DOCUMENT_ROOT}/index.php [L]';       echo '</Directory>';     } > "$APACHE_CONFDIR/conf-available/short-url.conf"   && a2enconf short-url
# Sat, 01 Jun 2019 02:35:11 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 01 Jun 2019 02:35:12 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 01 Jun 2019 02:35:13 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.32
# Sat, 01 Jun 2019 02:35:13 GMT
ENV MEDIAWIKI_BRANCH=REL1_32
# Sat, 01 Jun 2019 02:35:14 GMT
ENV MEDIAWIKI_VERSION=1.32.1
# Sat, 01 Jun 2019 02:35:14 GMT
ENV MEDIAWIKI_SHA512=597af44ba140a50b4dfec9dd1a81db1c96e6672f33870ad15d9be875c4a7109eff57034e10762c45c47bad4afdfe27b96949dd6dd4bea24db6ea54bafd80c376
# Sat, 01 Jun 2019 02:35:30 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:b0727b1ec48ef8920082aec023c050c83b563ae08080d9951d68fba55934bbd6`  
		Last Modified: Wed, 08 May 2019 12:10:01 GMT  
		Size: 19.3 MB (19276216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e208b62bc2ef8e00c39842047e209f0ee05486c604af8359d624ad326285642`  
		Last Modified: Wed, 08 May 2019 15:56:06 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b654776010960d429044df18c3d563b768a92d765adb835d874503dbc872672`  
		Last Modified: Wed, 08 May 2019 15:56:28 GMT  
		Size: 53.6 MB (53589670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0718556bb7e27c667cb22749130f30d651e5cb73cc88535d3cbb2f7a4fe6224e`  
		Last Modified: Wed, 08 May 2019 15:56:05 GMT  
		Size: 286.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21d279750d7c2122da564efb42a89a55b0a6cba5f6a2ac0f7a97191db4ae4fe6`  
		Last Modified: Wed, 08 May 2019 15:57:12 GMT  
		Size: 16.2 MB (16159683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a060b1fb5eab7537b954cc199873b54c44dcbddbfab9c2bb3e8bfdc8c51ec2ce`  
		Last Modified: Wed, 08 May 2019 15:57:03 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56397f3718603009afb913087c72dc6bb3b6465bb82f8f00c6bc4550aec76747`  
		Last Modified: Wed, 08 May 2019 15:57:02 GMT  
		Size: 516.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faa05c80ed7e7320a3d5d347517275b340e34b2f06c5e65f435e621ba0cbb2d3`  
		Last Modified: Sat, 01 Jun 2019 01:56:19 GMT  
		Size: 12.5 MB (12524432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdd8dbbffa7e7154464a5c254ad80d02317c8bb91c11a44e2c9297bae25d1fcd`  
		Last Modified: Sat, 01 Jun 2019 01:56:16 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1438d8a59ecaa26b06a9e60ed3ecc703c52a63336a9e437519c7143534a8726`  
		Last Modified: Sat, 01 Jun 2019 01:56:20 GMT  
		Size: 13.6 MB (13602981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77e049fa064e154f28c8acae37128f5a95ed4af0d03f6e007f376710dcaf0a8e`  
		Last Modified: Sat, 01 Jun 2019 01:56:16 GMT  
		Size: 2.2 KB (2201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1a62d3145013a434f0acaf723805b3e94cfa9e183f349b48fd89ce97b56ad40`  
		Last Modified: Sat, 01 Jun 2019 01:56:16 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5432c4c59238dfc901afc53a70b515fd76da212265f2f658254faef604ef5ab9`  
		Last Modified: Sat, 01 Jun 2019 01:56:16 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c0f414ae38167acfdcd5910440f50358bf101593555d7643cd8d7cf06632c2a`  
		Last Modified: Sat, 01 Jun 2019 02:40:50 GMT  
		Size: 26.8 MB (26812739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80632ac31b9ea95cf32141f80a93560c47359fab89617e59a254ced1a64c1819`  
		Last Modified: Sat, 01 Jun 2019 02:40:40 GMT  
		Size: 2.4 MB (2415904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abddbceecf4bf79fd704b1ce7f27060c7d9c493c5e2a996800c746ac3afb3a48`  
		Last Modified: Sat, 01 Jun 2019 02:40:40 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13f7ed3fab048057f79b2c3d84d91b369f1e74f1d927dba83a7b1c0b82301159`  
		Last Modified: Sat, 01 Jun 2019 02:40:39 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50b629d78aedf3ca8d3bc31615443dabc218b02752f8de53fdcebedad0a40c80`  
		Last Modified: Sat, 01 Jun 2019 02:40:39 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:697719a5f394ebe771dca64839b3a90f737d1de3e6c8203b75130a12fce933ab`  
		Last Modified: Sat, 01 Jun 2019 02:40:59 GMT  
		Size: 36.7 MB (36680519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.32` - linux; arm64 variant v8

```console
$ docker pull mediawiki@sha256:0b22401a1091b5e8b9722373960ad2313587cb0d0e6b0cb507aaf56a77468607
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.0 MB (187974545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86b02f66d03fa60b70b4941a37b3e8ff912f29eb2ef3edd42588a8a9af1749e7`
-	Entrypoint: `["docker-php-entrypoint"]`
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
# Wed, 08 May 2019 14:17:39 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Wed, 08 May 2019 14:17:40 GMT
ENV PHP_VERSION=7.2.18
# Wed, 08 May 2019 14:17:41 GMT
ENV PHP_URL=https://www.php.net/get/php-7.2.18.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.2.18.tar.xz.asc/from/this/mirror
# Wed, 08 May 2019 14:17:42 GMT
ENV PHP_SHA256=9970dbb3ab1298c9e6aac54bebfa841c8ad14b18eead65594a68fa841364cb8d PHP_MD5=
# Wed, 08 May 2019 14:18:13 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 08 May 2019 14:18:14 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Wed, 08 May 2019 14:24:59 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 08 May 2019 14:25:00 GMT
COPY multi:0002d7d5b06fb24f987aa4b027705dc71f81957419a02be5b9014431514c25b5 in /usr/local/bin/ 
# Wed, 08 May 2019 14:25:03 GMT
RUN docker-php-ext-enable sodium
# Wed, 08 May 2019 14:25:04 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 08 May 2019 14:25:05 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Wed, 08 May 2019 14:25:06 GMT
WORKDIR /var/www/html
# Wed, 08 May 2019 14:25:08 GMT
EXPOSE 80
# Wed, 08 May 2019 14:25:09 GMT
CMD ["apache2-foreground"]
# Thu, 09 May 2019 05:05:16 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		git 		imagemagick 		python3 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 05:10:29 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libicu-dev 	; 		docker-php-ext-install 		intl 		mbstring 		mysqli 		opcache 	; 		pecl install apcu-5.1.16; 	docker-php-ext-enable 		apcu 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 05:10:32 GMT
RUN a2enmod rewrite   && {       echo '<Directory /var/www/html>';       echo '  RewriteEngine On';       echo '  RewriteCond %{REQUEST_FILENAME} !-f';       echo '  RewriteCond %{REQUEST_FILENAME} !-d';       echo '  RewriteRule ^ %{DOCUMENT_ROOT}/index.php [L]';       echo '</Directory>';     } > "$APACHE_CONFDIR/conf-available/short-url.conf"   && a2enconf short-url
# Thu, 09 May 2019 05:10:35 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 09 May 2019 05:10:37 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Thu, 09 May 2019 05:10:38 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.32
# Thu, 09 May 2019 05:10:39 GMT
ENV MEDIAWIKI_BRANCH=REL1_32
# Thu, 09 May 2019 05:10:39 GMT
ENV MEDIAWIKI_VERSION=1.32.1
# Thu, 09 May 2019 05:10:40 GMT
ENV MEDIAWIKI_SHA512=597af44ba140a50b4dfec9dd1a81db1c96e6672f33870ad15d9be875c4a7109eff57034e10762c45c47bad4afdfe27b96949dd6dd4bea24db6ea54bafd80c376
# Thu, 09 May 2019 05:10:56 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
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
	-	`sha256:68d73a231f4080e449e68e6502533ec427a7b766c85d31a09f22d13191f765ea`  
		Last Modified: Wed, 08 May 2019 15:35:37 GMT  
		Size: 12.5 MB (12520437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19691ffc177e30c79f20a75ac96c12ffd081688c45bd4529e07c6292cf1d6d1b`  
		Last Modified: Wed, 08 May 2019 15:35:33 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bd777d47d57316bc1220d04b66d6576368950707b2a0f871bcd8a82864e2a9d`  
		Last Modified: Wed, 08 May 2019 15:35:40 GMT  
		Size: 14.2 MB (14239607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25e16be802a9018dec3f0cc8a2c345cce185b37fe8c01f323cd899722b69ac44`  
		Last Modified: Wed, 08 May 2019 15:35:33 GMT  
		Size: 2.2 KB (2200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bdfeeb7bd495fa9c974d8cd8659e32312d855bbd4df206a1f7057068407323d`  
		Last Modified: Wed, 08 May 2019 15:35:33 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4e5a9bc30afea7feb6df63482956ec64391a0b0305093ae8f6415624ed01a79`  
		Last Modified: Wed, 08 May 2019 15:35:33 GMT  
		Size: 903.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:372d20461635750ebeb1fe499a15fcf50a25a9a1ffae0fba099d48f09944c2af`  
		Last Modified: Thu, 09 May 2019 05:18:09 GMT  
		Size: 27.4 MB (27403442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cca2be8290114033ec2f1832487b8f41d1327395a86e475463acd95cf5193aa`  
		Last Modified: Thu, 09 May 2019 05:17:56 GMT  
		Size: 2.5 MB (2476635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e9a78ec0c60a0bc5bd1d2ffbe6399c22fbb3ceacb29a7462ffa0a6b7b607eb2`  
		Last Modified: Thu, 09 May 2019 05:17:54 GMT  
		Size: 580.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab72a03f54fd8abe536512fb0930c2034b4fffddc1512836c0bbb492c8a2c225`  
		Last Modified: Thu, 09 May 2019 05:17:54 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a25bdb65c523bcdf2c299416f18825b146e7fb7e24aaa63cb1293eab7d92414`  
		Last Modified: Thu, 09 May 2019 05:17:53 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88dc302a73f3b0ebae053542591440b99735ee3e4c2ab33282de501503f75973`  
		Last Modified: Thu, 09 May 2019 05:18:17 GMT  
		Size: 36.7 MB (36680181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.32` - linux; 386

```console
$ docker pull mediawiki@sha256:8049317f1f9868565fd74152609c0589401592c5ac18fd408e6189f4a8f96d8f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.5 MB (211540382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55db676d71222943510b5b62b0ebfa689a7db2bdb8164ea6e32bd34580347e27`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 08 May 2019 10:49:55 GMT
ADD file:32d77a56ac954d1cd433a660591f374200929db022f1d0cfcf99eb6ab9e1679c in / 
# Wed, 08 May 2019 10:49:55 GMT
CMD ["bash"]
# Wed, 08 May 2019 16:35:40 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 08 May 2019 16:35:40 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 08 May 2019 16:36:06 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 08 May 2019 16:36:06 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 08 May 2019 16:36:07 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 08 May 2019 16:41:56 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 08 May 2019 16:41:57 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 08 May 2019 16:42:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Wed, 08 May 2019 16:42:09 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 08 May 2019 16:42:09 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 08 May 2019 16:42:10 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 08 May 2019 16:42:10 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 08 May 2019 16:42:10 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 16:42:10 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 16:42:10 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 08 May 2019 17:04:19 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Wed, 08 May 2019 17:04:19 GMT
ENV PHP_VERSION=7.2.18
# Wed, 08 May 2019 17:04:19 GMT
ENV PHP_URL=https://www.php.net/get/php-7.2.18.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.2.18.tar.xz.asc/from/this/mirror
# Wed, 08 May 2019 17:04:19 GMT
ENV PHP_SHA256=9970dbb3ab1298c9e6aac54bebfa841c8ad14b18eead65594a68fa841364cb8d PHP_MD5=
# Wed, 08 May 2019 17:04:30 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 08 May 2019 17:04:30 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Wed, 08 May 2019 17:07:59 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 08 May 2019 17:08:00 GMT
COPY multi:0002d7d5b06fb24f987aa4b027705dc71f81957419a02be5b9014431514c25b5 in /usr/local/bin/ 
# Wed, 08 May 2019 17:08:01 GMT
RUN docker-php-ext-enable sodium
# Wed, 08 May 2019 17:08:01 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 08 May 2019 17:08:01 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Wed, 08 May 2019 17:08:01 GMT
WORKDIR /var/www/html
# Wed, 08 May 2019 17:08:01 GMT
EXPOSE 80
# Wed, 08 May 2019 17:08:02 GMT
CMD ["apache2-foreground"]
# Thu, 09 May 2019 02:48:07 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		git 		imagemagick 		python3 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 02:50:17 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libicu-dev 	; 		docker-php-ext-install 		intl 		mbstring 		mysqli 		opcache 	; 		pecl install apcu-5.1.16; 	docker-php-ext-enable 		apcu 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 02:50:17 GMT
RUN a2enmod rewrite   && {       echo '<Directory /var/www/html>';       echo '  RewriteEngine On';       echo '  RewriteCond %{REQUEST_FILENAME} !-f';       echo '  RewriteCond %{REQUEST_FILENAME} !-d';       echo '  RewriteRule ^ %{DOCUMENT_ROOT}/index.php [L]';       echo '</Directory>';     } > "$APACHE_CONFDIR/conf-available/short-url.conf"   && a2enconf short-url
# Thu, 09 May 2019 02:50:18 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 09 May 2019 02:50:19 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Thu, 09 May 2019 02:50:19 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.32
# Thu, 09 May 2019 02:50:19 GMT
ENV MEDIAWIKI_BRANCH=REL1_32
# Thu, 09 May 2019 02:50:20 GMT
ENV MEDIAWIKI_VERSION=1.32.1
# Thu, 09 May 2019 02:50:20 GMT
ENV MEDIAWIKI_SHA512=597af44ba140a50b4dfec9dd1a81db1c96e6672f33870ad15d9be875c4a7109eff57034e10762c45c47bad4afdfe27b96949dd6dd4bea24db6ea54bafd80c376
# Thu, 09 May 2019 02:50:29 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:3cf56ed221cf05f73233419fcc3a71b0afd424761fc83037e3a5cf101af5df46`  
		Last Modified: Wed, 08 May 2019 10:57:50 GMT  
		Size: 23.1 MB (23120843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2e394799d7fd8bb494dd3068fa793d651e7ccb426989bd27defd081a6bcc12f`  
		Last Modified: Wed, 08 May 2019 18:38:36 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d053425c85d9196337b5a25e4b3194f8f91c7540e201df765bb55f179df390d`  
		Last Modified: Wed, 08 May 2019 18:38:54 GMT  
		Size: 71.5 MB (71518824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:375ceda7fc26c2edccb175b8a009dd8db8b6159d82b589045c749fc2a90b409c`  
		Last Modified: Wed, 08 May 2019 18:38:35 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcee9f239c4761d5fb6def94e207d25f66b6dd1b06aca20ef921f0b7cec5fd2b`  
		Last Modified: Wed, 08 May 2019 18:39:23 GMT  
		Size: 17.6 MB (17559084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f37941543cfc620e1f153eec1e6627f09d2995dc4e11881df4b2fec57d024fc`  
		Last Modified: Wed, 08 May 2019 18:39:18 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e81f09a18a1e21c876bdb2b93ab40c2d32294938c8c14da1306afc78c85dc5b`  
		Last Modified: Wed, 08 May 2019 18:39:18 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a51838654f356e5455289e6a566e70e1dcf8fbb7f2cddc27757511489c8a4865`  
		Last Modified: Wed, 08 May 2019 18:40:40 GMT  
		Size: 12.5 MB (12521696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e83a1be097ba06dd9c045e9d858ef16d7dfcaea2ea8f0a7c03aab056c7ec4e5`  
		Last Modified: Wed, 08 May 2019 18:40:38 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44ccf0af924d7fde5877252371b3b934464fbb43162d86e493dbff5d0855e272`  
		Last Modified: Wed, 08 May 2019 18:40:42 GMT  
		Size: 15.7 MB (15698642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bae3e0d9a678f89ab9935758d2c23643b90fc86203ade9e19896a9810210316`  
		Last Modified: Wed, 08 May 2019 18:40:38 GMT  
		Size: 2.2 KB (2202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:794620458d3b9ee10b26a830211cffeac76c5cebc292f39dd05b89de92a07c5e`  
		Last Modified: Wed, 08 May 2019 18:40:38 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb9f2cd6fb034170dd3ce44819ab9d821785167b2eefb1c966230325ba73eee8`  
		Last Modified: Wed, 08 May 2019 18:40:38 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7615115b5410267361895d41778ec708797e2a776d5effd07aba762bf1aee9c`  
		Last Modified: Thu, 09 May 2019 02:53:32 GMT  
		Size: 31.9 MB (31894562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0300f05641c30fcba961c4d59f9dd81e567cafb4bd0217d5eb41ddc95db39397`  
		Last Modified: Thu, 09 May 2019 02:53:23 GMT  
		Size: 2.5 MB (2540292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db817d1620327ff2425fe7ff22f32c9de9e3a3cd845e0cf525a0b1385422fbc7`  
		Last Modified: Thu, 09 May 2019 02:53:22 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8e3d06fd26271931d459ca41e3772c861bf07f29ba575f7a2cd55cf5ffbf340`  
		Last Modified: Thu, 09 May 2019 02:53:22 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09ae98544f4a52b628219bfafbaf2cfa6290a2e31ae28d07c6cb54797b4bf619`  
		Last Modified: Thu, 09 May 2019 02:53:22 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6a6e119c75074a322d0242e99d8e2fb00eac676be2228ea3275571a37b0346`  
		Last Modified: Thu, 09 May 2019 02:53:38 GMT  
		Size: 36.7 MB (36680130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.32` - linux; ppc64le

```console
$ docker pull mediawiki@sha256:2004c57ea881c713dcd266aa3cc952aa9a82c64ce75f33fb0573cc64ff4b3970
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.7 MB (198729624 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b0f922c87cd5860016c816a25740a713729eba6ebbc61a9700e633f08c3fee3`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 08 May 2019 09:05:46 GMT
ADD file:fa23694e2ef3b1ff3ac824d7d18d6951725f7f1ebfd5350392edd91f6b90d89e in / 
# Wed, 08 May 2019 09:05:50 GMT
CMD ["bash"]
# Wed, 08 May 2019 16:33:12 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 08 May 2019 16:33:15 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 08 May 2019 16:36:22 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 08 May 2019 16:36:29 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 08 May 2019 16:36:37 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 08 May 2019 16:45:05 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 08 May 2019 16:45:07 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 08 May 2019 16:46:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Wed, 08 May 2019 16:46:21 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 08 May 2019 16:46:32 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 08 May 2019 16:46:36 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 08 May 2019 16:46:39 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 08 May 2019 16:46:41 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 16:46:44 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 16:46:47 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 08 May 2019 17:22:31 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Wed, 08 May 2019 17:22:37 GMT
ENV PHP_VERSION=7.2.18
# Wed, 08 May 2019 17:22:45 GMT
ENV PHP_URL=https://www.php.net/get/php-7.2.18.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.2.18.tar.xz.asc/from/this/mirror
# Wed, 08 May 2019 17:22:53 GMT
ENV PHP_SHA256=9970dbb3ab1298c9e6aac54bebfa841c8ad14b18eead65594a68fa841364cb8d PHP_MD5=
# Wed, 08 May 2019 17:25:03 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 08 May 2019 17:25:06 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Wed, 08 May 2019 17:35:12 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 08 May 2019 17:35:16 GMT
COPY multi:0002d7d5b06fb24f987aa4b027705dc71f81957419a02be5b9014431514c25b5 in /usr/local/bin/ 
# Wed, 08 May 2019 17:35:24 GMT
RUN docker-php-ext-enable sodium
# Wed, 08 May 2019 17:35:30 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 08 May 2019 17:35:32 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Wed, 08 May 2019 17:35:41 GMT
WORKDIR /var/www/html
# Wed, 08 May 2019 17:35:45 GMT
EXPOSE 80
# Wed, 08 May 2019 17:35:51 GMT
CMD ["apache2-foreground"]
# Thu, 09 May 2019 01:31:11 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		git 		imagemagick 		python3 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 01:34:43 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libicu-dev 	; 		docker-php-ext-install 		intl 		mbstring 		mysqli 		opcache 	; 		pecl install apcu-5.1.16; 	docker-php-ext-enable 		apcu 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 01:34:50 GMT
RUN a2enmod rewrite   && {       echo '<Directory /var/www/html>';       echo '  RewriteEngine On';       echo '  RewriteCond %{REQUEST_FILENAME} !-f';       echo '  RewriteCond %{REQUEST_FILENAME} !-d';       echo '  RewriteRule ^ %{DOCUMENT_ROOT}/index.php [L]';       echo '</Directory>';     } > "$APACHE_CONFDIR/conf-available/short-url.conf"   && a2enconf short-url
# Thu, 09 May 2019 01:34:57 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 09 May 2019 01:35:04 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Thu, 09 May 2019 01:35:06 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.32
# Thu, 09 May 2019 01:35:08 GMT
ENV MEDIAWIKI_BRANCH=REL1_32
# Thu, 09 May 2019 01:35:10 GMT
ENV MEDIAWIKI_VERSION=1.32.1
# Thu, 09 May 2019 01:35:12 GMT
ENV MEDIAWIKI_SHA512=597af44ba140a50b4dfec9dd1a81db1c96e6672f33870ad15d9be875c4a7109eff57034e10762c45c47bad4afdfe27b96949dd6dd4bea24db6ea54bafd80c376
# Thu, 09 May 2019 01:35:40 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:64bfe8794b280a764f2e07634dce2977621d140ae17fb34a03635710e84c3dfb`  
		Last Modified: Wed, 08 May 2019 09:26:17 GMT  
		Size: 22.7 MB (22744914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a41e81735fa83432331becf8dd5c79995a99c53ff4febd68f25916282e96fee5`  
		Last Modified: Wed, 08 May 2019 18:32:38 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74dcd7f44931915566fc2ab31df6e0da7972d7c1761a1e352f59834ab7b12288`  
		Last Modified: Wed, 08 May 2019 18:33:35 GMT  
		Size: 61.8 MB (61833424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8267f05b2cde025cb67ff60ba71e3ab4bb1d8c894385033a77f3592d3d86a1e9`  
		Last Modified: Wed, 08 May 2019 18:32:39 GMT  
		Size: 286.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b7902741744762d78bf30128d3aaad75defd223148cf4e8013abf2b472a23e7`  
		Last Modified: Wed, 08 May 2019 18:34:58 GMT  
		Size: 17.3 MB (17345860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8304e87d7eae9b221a89adc93eabf206be22236d6aa8fd6ef9bb71b82bd3349`  
		Last Modified: Wed, 08 May 2019 18:34:37 GMT  
		Size: 479.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:480539350c707aed3dba31a230406b23f267cb31ec2d6fa3dc7f239af8dcb64e`  
		Last Modified: Wed, 08 May 2019 18:34:37 GMT  
		Size: 518.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a5f59168f7acd95d0c183946b56d3b084aef8350f8e368b4c54d0d8a9e81343`  
		Last Modified: Wed, 08 May 2019 18:38:16 GMT  
		Size: 12.5 MB (12521120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca06cfad402571a36dab9b350760456c06eb6ff69d86860e01815c448febf608`  
		Last Modified: Wed, 08 May 2019 18:38:10 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:feefdd256094a8cd3578d49e543d314c3a0373117d7c88625485af617daf2f01`  
		Last Modified: Wed, 08 May 2019 18:38:23 GMT  
		Size: 15.1 MB (15050830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddcba8d0f1ead1960e4ed8a8f9ce0987a2ce40cdb35c37ae7e7b0a8347c4145c`  
		Last Modified: Wed, 08 May 2019 18:38:10 GMT  
		Size: 2.2 KB (2202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e659b52fd9017cb4c492b613e5a79ce0ccdb48083cbc7c4b0279405f14ff7ac1`  
		Last Modified: Wed, 08 May 2019 18:38:10 GMT  
		Size: 262.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd234b7aca9a35086eb63ad27b187b272fd97f0a966f6620e532a0c683e8b2dd`  
		Last Modified: Wed, 08 May 2019 18:38:10 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c573dc396369a78f0d176aaddb389a2962121c5a23b2cf13a91ad47571c6b6`  
		Last Modified: Thu, 09 May 2019 01:43:42 GMT  
		Size: 30.0 MB (30009284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89a639ad63cc00a0cc8d9acb2dc6c4bc1625b2319b2d839211c6cfaddda18556`  
		Last Modified: Thu, 09 May 2019 01:43:28 GMT  
		Size: 2.5 MB (2537179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0e27a76b67aae30caa5f50eeded90afdb444903ef489f8cd5286341e2a459da`  
		Last Modified: Thu, 09 May 2019 01:43:27 GMT  
		Size: 593.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4479ecc70a7bea18d476fed86d8bed134b9644283343f4d5de55c95ac1c383a1`  
		Last Modified: Thu, 09 May 2019 01:43:27 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5ce8f77ceef7b44816ba03be1fbd8a3d36101b6713cba811f1dd7c22f144a23`  
		Last Modified: Thu, 09 May 2019 01:43:27 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1007dd80147bbebb43e842c93759bc2d204ecedec5a0ef80b61e034dee5621c`  
		Last Modified: Thu, 09 May 2019 01:43:42 GMT  
		Size: 36.7 MB (36680521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mediawiki:1.32.1`

```console
$ docker pull mediawiki@sha256:bf0a6f48bfa7262c3c3ecdeab470ebf411f96e46194dd3b9e52573920b46919c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `mediawiki:1.32.1` - linux; amd64

```console
$ docker pull mediawiki@sha256:f0b747de39aaa40c747af870c38b3febc53e4787b8dc954593dd60fa039f0464
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.3 MB (204305883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3b378ef05a9b065e2f1bc42cd71570391c7684c8cc53f09153ce4401bfdf7da`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 02:29:59 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 08 May 2019 02:29:59 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 08 May 2019 02:30:20 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 08 May 2019 02:30:21 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 08 May 2019 02:30:21 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 08 May 2019 02:37:00 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 08 May 2019 02:37:00 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 08 May 2019 02:37:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Wed, 08 May 2019 02:37:13 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 08 May 2019 02:37:14 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 08 May 2019 02:37:15 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 08 May 2019 02:37:15 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 08 May 2019 02:37:16 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 02:37:16 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 02:37:17 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 08 May 2019 03:02:10 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Wed, 08 May 2019 03:02:10 GMT
ENV PHP_VERSION=7.2.18
# Wed, 08 May 2019 03:02:11 GMT
ENV PHP_URL=https://www.php.net/get/php-7.2.18.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.2.18.tar.xz.asc/from/this/mirror
# Wed, 08 May 2019 03:02:11 GMT
ENV PHP_SHA256=9970dbb3ab1298c9e6aac54bebfa841c8ad14b18eead65594a68fa841364cb8d PHP_MD5=
# Wed, 08 May 2019 03:02:20 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 08 May 2019 03:02:21 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Wed, 08 May 2019 03:06:04 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 08 May 2019 03:06:04 GMT
COPY multi:0002d7d5b06fb24f987aa4b027705dc71f81957419a02be5b9014431514c25b5 in /usr/local/bin/ 
# Wed, 08 May 2019 03:06:05 GMT
RUN docker-php-ext-enable sodium
# Wed, 08 May 2019 03:06:05 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 08 May 2019 03:06:06 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Wed, 08 May 2019 03:06:06 GMT
WORKDIR /var/www/html
# Wed, 08 May 2019 03:06:06 GMT
EXPOSE 80
# Wed, 08 May 2019 03:06:06 GMT
CMD ["apache2-foreground"]
# Wed, 08 May 2019 10:13:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		git 		imagemagick 		python3 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 10:17:31 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libicu-dev 	; 		docker-php-ext-install 		intl 		mbstring 		mysqli 		opcache 	; 		pecl install apcu-5.1.16; 	docker-php-ext-enable 		apcu 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 10:17:33 GMT
RUN a2enmod rewrite   && {       echo '<Directory /var/www/html>';       echo '  RewriteEngine On';       echo '  RewriteCond %{REQUEST_FILENAME} !-f';       echo '  RewriteCond %{REQUEST_FILENAME} !-d';       echo '  RewriteRule ^ %{DOCUMENT_ROOT}/index.php [L]';       echo '</Directory>';     } > "$APACHE_CONFDIR/conf-available/short-url.conf"   && a2enconf short-url
# Wed, 08 May 2019 10:17:34 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 08 May 2019 10:17:35 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Wed, 08 May 2019 10:17:35 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.32
# Wed, 08 May 2019 10:17:35 GMT
ENV MEDIAWIKI_BRANCH=REL1_32
# Wed, 08 May 2019 10:17:35 GMT
ENV MEDIAWIKI_VERSION=1.32.1
# Wed, 08 May 2019 10:17:36 GMT
ENV MEDIAWIKI_SHA512=597af44ba140a50b4dfec9dd1a81db1c96e6672f33870ad15d9be875c4a7109eff57034e10762c45c47bad4afdfe27b96949dd6dd4bea24db6ea54bafd80c376
# Wed, 08 May 2019 10:17:47 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6307e89982cc66cd480a6f5cfe17fabddae5e6ae4e735d8f0bf857892d299772`  
		Last Modified: Wed, 08 May 2019 04:41:06 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:807218e72ce2aeb1df368e9757482e7304772ccf439962eb68d1731a0b023802`  
		Last Modified: Wed, 08 May 2019 04:41:20 GMT  
		Size: 67.4 MB (67447543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5108df1d03f88b91e3a940361ab6bc2d60d60a6f52a1ba29d8283a00d71cb0c8`  
		Last Modified: Wed, 08 May 2019 04:41:06 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:901e0b6a7fe58d5615158528d37602cd806ecab9718a880d76f85d609742f5ea`  
		Last Modified: Wed, 08 May 2019 04:41:48 GMT  
		Size: 17.1 MB (17124934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ffe11e7ab2c09aa7e0167044fe111b6a03a5e93f517405f4c416e3220e0b197`  
		Last Modified: Wed, 08 May 2019 04:41:43 GMT  
		Size: 429.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da5f7a5079567ba0d853934f7275591bd53f6740d13e4499a15a9a109982f7e8`  
		Last Modified: Wed, 08 May 2019 04:41:43 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1828a6068039e36669a6a6b2dde9750808c22d86ac075c99ac739dcbbb1e3b67`  
		Last Modified: Wed, 08 May 2019 04:42:59 GMT  
		Size: 12.5 MB (12522340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64e8e1a9a6dd712ede73018cda885173b14dfb5b41d8de2b94a6e40b579b933c`  
		Last Modified: Wed, 08 May 2019 04:42:57 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:947776ecc4cf45b79a1eb8811d0cede95489c496920cc63c3504a78d8c57a14e`  
		Last Modified: Wed, 08 May 2019 04:43:04 GMT  
		Size: 15.3 MB (15259643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:983802cfe132fab1cec030a7b88d0cb6315561c92ff7226cce5f851eb206687d`  
		Last Modified: Wed, 08 May 2019 04:42:56 GMT  
		Size: 2.2 KB (2202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e372111ec71d644fe9452c7ddb71c723515b94807261e2a9937b1c918adf5716`  
		Last Modified: Wed, 08 May 2019 04:42:56 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70d278e5adabe0687ae4a5f6ce0a8e99a53f3554bdcdee8b154635cb360d3088`  
		Last Modified: Wed, 08 May 2019 04:42:56 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7038b6910d573df901cd4193d8ab32b4f9bf611d3d0f15140e41345122b85996`  
		Last Modified: Wed, 08 May 2019 10:23:03 GMT  
		Size: 30.2 MB (30221982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f06e09b6d9eac4655ccbf25966abab364f4ddecb24861f9b0a9c460afafa8fa`  
		Last Modified: Wed, 08 May 2019 10:22:53 GMT  
		Size: 2.6 MB (2553575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a2198f61b13436e68738445f1f543176bb7f37d4cdf66281b3c084b2c51a2fc`  
		Last Modified: Wed, 08 May 2019 10:22:53 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceec5aeb21c84d0e1892c2759b462bc29ad17e049cca3cfe7758a12d3683e0c8`  
		Last Modified: Wed, 08 May 2019 10:22:53 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0e205f974ca740857c15158878f37e2cfb9daf9de21bf6c9804a2f9b093a0ee`  
		Last Modified: Wed, 08 May 2019 10:22:53 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5568a69de805c9c7c1ba1accadbe86cf6e975e87fa364a123b60a8544858ae03`  
		Last Modified: Wed, 08 May 2019 10:23:08 GMT  
		Size: 36.7 MB (36680206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.32.1` - linux; arm variant v5

```console
$ docker pull mediawiki@sha256:58d55edb50fb854486a67f5d8cca1515d297cbd51f5eed6d67798dc4e46830c9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.3 MB (190294232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:928682f43c8b153c5455333f69e2620f010605bdf13623818b3f47297ec8c234`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 08 May 2019 08:53:38 GMT
ADD file:d9cc007a953434e1439cc534f397967f4f0f1bf149f1288a52f6209eca436852 in / 
# Wed, 08 May 2019 08:53:39 GMT
CMD ["bash"]
# Wed, 08 May 2019 09:48:37 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 08 May 2019 09:48:38 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 08 May 2019 09:49:17 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 08 May 2019 09:49:18 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 08 May 2019 09:49:20 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 08 May 2019 09:53:54 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 08 May 2019 09:53:54 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 08 May 2019 09:54:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Wed, 08 May 2019 09:54:17 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 08 May 2019 09:54:18 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 08 May 2019 09:54:19 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 08 May 2019 09:54:19 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 08 May 2019 09:54:20 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 09:54:20 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 09:54:21 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 08 May 2019 10:11:33 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Sat, 01 Jun 2019 00:13:37 GMT
ENV PHP_VERSION=7.2.19
# Sat, 01 Jun 2019 00:13:38 GMT
ENV PHP_URL=https://www.php.net/get/php-7.2.19.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.2.19.tar.xz.asc/from/this/mirror
# Sat, 01 Jun 2019 00:13:38 GMT
ENV PHP_SHA256=4ffa2404a88d60e993a9fe69f829ebec3eb1e006de41b6048ce5e91bbeaa9282 PHP_MD5=
# Sat, 01 Jun 2019 00:13:58 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 01 Jun 2019 00:13:58 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 01 Jun 2019 00:17:32 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 01 Jun 2019 00:17:33 GMT
COPY multi:0002d7d5b06fb24f987aa4b027705dc71f81957419a02be5b9014431514c25b5 in /usr/local/bin/ 
# Sat, 01 Jun 2019 00:17:35 GMT
RUN docker-php-ext-enable sodium
# Sat, 01 Jun 2019 00:17:35 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 01 Jun 2019 00:17:36 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Sat, 01 Jun 2019 00:17:36 GMT
WORKDIR /var/www/html
# Sat, 01 Jun 2019 00:17:37 GMT
EXPOSE 80
# Sat, 01 Jun 2019 00:17:37 GMT
CMD ["apache2-foreground"]
# Sat, 01 Jun 2019 02:26:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		git 		imagemagick 		python3 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 02:30:08 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libicu-dev 	; 		docker-php-ext-install 		intl 		mbstring 		mysqli 		opcache 	; 		pecl install apcu-5.1.16; 	docker-php-ext-enable 		apcu 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 02:30:10 GMT
RUN a2enmod rewrite   && {       echo '<Directory /var/www/html>';       echo '  RewriteEngine On';       echo '  RewriteCond %{REQUEST_FILENAME} !-f';       echo '  RewriteCond %{REQUEST_FILENAME} !-d';       echo '  RewriteRule ^ %{DOCUMENT_ROOT}/index.php [L]';       echo '</Directory>';     } > "$APACHE_CONFDIR/conf-available/short-url.conf"   && a2enconf short-url
# Sat, 01 Jun 2019 02:30:12 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 01 Jun 2019 02:30:13 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 01 Jun 2019 02:30:14 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.32
# Sat, 01 Jun 2019 02:30:14 GMT
ENV MEDIAWIKI_BRANCH=REL1_32
# Sat, 01 Jun 2019 02:30:15 GMT
ENV MEDIAWIKI_VERSION=1.32.1
# Sat, 01 Jun 2019 02:30:15 GMT
ENV MEDIAWIKI_SHA512=597af44ba140a50b4dfec9dd1a81db1c96e6672f33870ad15d9be875c4a7109eff57034e10762c45c47bad4afdfe27b96949dd6dd4bea24db6ea54bafd80c376
# Sat, 01 Jun 2019 02:30:31 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:f23f9ce99dc288927adafc8d503252a16b6ea2b40c9cb0dca688223c56bd0235`  
		Last Modified: Wed, 08 May 2019 08:59:29 GMT  
		Size: 21.2 MB (21155863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:375098c17606cf891dc6c2de639c2d9b69384583b36d1f12394d245cb131e539`  
		Last Modified: Wed, 08 May 2019 11:06:12 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:091ccac4f8817d1ccf73efd2fd3d421caaea5daab5cf6c0574ba160a012728d2`  
		Last Modified: Wed, 08 May 2019 11:06:33 GMT  
		Size: 57.5 MB (57477758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:825181d9c853e494b46e5d4a8d3eb39bb10ec9f0c5cab11f274faec90f876cef`  
		Last Modified: Wed, 08 May 2019 11:06:12 GMT  
		Size: 286.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:099d1d7d4434733003b46ad3c7824ce4e924bc48db25b33413a65c77ad3dfe2d`  
		Last Modified: Wed, 08 May 2019 11:07:08 GMT  
		Size: 16.7 MB (16651726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15629ed4b2662d162ebc33e2d122007c635a7254b4b55d0edf277dec13d74c9a`  
		Last Modified: Wed, 08 May 2019 11:07:03 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:560f7cc5ef807ab6fb5da234ac471e25d0aa2a5aa7015801be27d254ff521db0`  
		Last Modified: Wed, 08 May 2019 11:07:03 GMT  
		Size: 511.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df32f7a9b2f08479016d154d91afd1b2fa0ff2e4a352257c4fb51a63aaf8b02d`  
		Last Modified: Sat, 01 Jun 2019 01:15:28 GMT  
		Size: 12.5 MB (12524431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0c68434605bf878852626807456ff6d8ea9dd6471ea09f260e236c3497e8613`  
		Last Modified: Sat, 01 Jun 2019 01:15:24 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e09142a09324552b0e51e19a715ce31a622fa1225e6feaf11aae256e89ddb70`  
		Last Modified: Sat, 01 Jun 2019 01:15:31 GMT  
		Size: 14.4 MB (14437073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b345e81f1997c48b7694506985bef3dffbc597da936e526362af3ee8a1b2951`  
		Last Modified: Sat, 01 Jun 2019 01:15:24 GMT  
		Size: 2.2 KB (2204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f6d6e11b4d848ecda0d319dddf54d8583afb48316414071064f949575b56443`  
		Last Modified: Sat, 01 Jun 2019 01:15:25 GMT  
		Size: 262.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afc689b77a160847dc5ed98756528ee5349e02cb23547352fa1f14a44a3419c2`  
		Last Modified: Sat, 01 Jun 2019 01:15:24 GMT  
		Size: 905.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f75d84530645037cc8070cec1c647561afb6fbab0c800c9172f6965839633b48`  
		Last Modified: Sat, 01 Jun 2019 02:36:19 GMT  
		Size: 28.9 MB (28888933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd82164e306b36d62658e5f7b318b79e0b6976810962e695b86d617abf21e236`  
		Last Modified: Sat, 01 Jun 2019 02:36:08 GMT  
		Size: 2.5 MB (2471333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28f61e9b5ff034b4b44f72937ecfc9962293b52028fd95c9d1b144deda0813b9`  
		Last Modified: Sat, 01 Jun 2019 02:36:08 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7bdf3367ac37433a3a333c1022eca2c0a14a1ccf216ba724e02b41c6c79e847`  
		Last Modified: Sat, 01 Jun 2019 02:36:08 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cdf0a48a56b8ea00b669fc1605f4b9cb25c1e5df18925b9519869ca3f92b543`  
		Last Modified: Sat, 01 Jun 2019 02:36:08 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be99e529a67be096952d19e4eb8d18d806fbb9f532712ae89c4881c96a8c47c6`  
		Last Modified: Sat, 01 Jun 2019 02:36:32 GMT  
		Size: 36.7 MB (36680641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.32.1` - linux; arm variant v7

```console
$ docker pull mediawiki@sha256:c0e395c1b9e871ca28fc936389f4da418e7f07d8e4bc756e60cc4ec0224e4f8b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.1 MB (181068611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba5034c1222e7591c2d03ffcc27f10c2172a8dd271581883c0613b93e8a11cff`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 08 May 2019 12:03:54 GMT
ADD file:7813549b5e7862c4d5ecec9e7d8da27b520dd2cc1433e66637c57bb695d4f55a in / 
# Wed, 08 May 2019 12:03:54 GMT
CMD ["bash"]
# Wed, 08 May 2019 14:37:05 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 08 May 2019 14:37:06 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 08 May 2019 14:37:37 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 08 May 2019 14:37:39 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 08 May 2019 14:37:40 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 08 May 2019 14:42:38 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 08 May 2019 14:42:39 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 08 May 2019 14:42:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Wed, 08 May 2019 14:42:58 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 08 May 2019 14:42:59 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 08 May 2019 14:43:00 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 08 May 2019 14:43:00 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 08 May 2019 14:43:01 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 14:43:01 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 14:43:02 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 08 May 2019 14:59:32 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Sat, 01 Jun 2019 00:34:09 GMT
ENV PHP_VERSION=7.2.19
# Sat, 01 Jun 2019 00:34:09 GMT
ENV PHP_URL=https://www.php.net/get/php-7.2.19.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.2.19.tar.xz.asc/from/this/mirror
# Sat, 01 Jun 2019 00:34:10 GMT
ENV PHP_SHA256=4ffa2404a88d60e993a9fe69f829ebec3eb1e006de41b6048ce5e91bbeaa9282 PHP_MD5=
# Sat, 01 Jun 2019 00:34:26 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 01 Jun 2019 00:34:26 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 01 Jun 2019 00:37:25 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 01 Jun 2019 00:37:26 GMT
COPY multi:0002d7d5b06fb24f987aa4b027705dc71f81957419a02be5b9014431514c25b5 in /usr/local/bin/ 
# Sat, 01 Jun 2019 00:37:28 GMT
RUN docker-php-ext-enable sodium
# Sat, 01 Jun 2019 00:37:29 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 01 Jun 2019 00:37:29 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Sat, 01 Jun 2019 00:37:29 GMT
WORKDIR /var/www/html
# Sat, 01 Jun 2019 00:37:30 GMT
EXPOSE 80
# Sat, 01 Jun 2019 00:37:30 GMT
CMD ["apache2-foreground"]
# Sat, 01 Jun 2019 02:31:28 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		git 		imagemagick 		python3 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 02:35:07 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libicu-dev 	; 		docker-php-ext-install 		intl 		mbstring 		mysqli 		opcache 	; 		pecl install apcu-5.1.16; 	docker-php-ext-enable 		apcu 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 02:35:09 GMT
RUN a2enmod rewrite   && {       echo '<Directory /var/www/html>';       echo '  RewriteEngine On';       echo '  RewriteCond %{REQUEST_FILENAME} !-f';       echo '  RewriteCond %{REQUEST_FILENAME} !-d';       echo '  RewriteRule ^ %{DOCUMENT_ROOT}/index.php [L]';       echo '</Directory>';     } > "$APACHE_CONFDIR/conf-available/short-url.conf"   && a2enconf short-url
# Sat, 01 Jun 2019 02:35:11 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 01 Jun 2019 02:35:12 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 01 Jun 2019 02:35:13 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.32
# Sat, 01 Jun 2019 02:35:13 GMT
ENV MEDIAWIKI_BRANCH=REL1_32
# Sat, 01 Jun 2019 02:35:14 GMT
ENV MEDIAWIKI_VERSION=1.32.1
# Sat, 01 Jun 2019 02:35:14 GMT
ENV MEDIAWIKI_SHA512=597af44ba140a50b4dfec9dd1a81db1c96e6672f33870ad15d9be875c4a7109eff57034e10762c45c47bad4afdfe27b96949dd6dd4bea24db6ea54bafd80c376
# Sat, 01 Jun 2019 02:35:30 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:b0727b1ec48ef8920082aec023c050c83b563ae08080d9951d68fba55934bbd6`  
		Last Modified: Wed, 08 May 2019 12:10:01 GMT  
		Size: 19.3 MB (19276216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e208b62bc2ef8e00c39842047e209f0ee05486c604af8359d624ad326285642`  
		Last Modified: Wed, 08 May 2019 15:56:06 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b654776010960d429044df18c3d563b768a92d765adb835d874503dbc872672`  
		Last Modified: Wed, 08 May 2019 15:56:28 GMT  
		Size: 53.6 MB (53589670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0718556bb7e27c667cb22749130f30d651e5cb73cc88535d3cbb2f7a4fe6224e`  
		Last Modified: Wed, 08 May 2019 15:56:05 GMT  
		Size: 286.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21d279750d7c2122da564efb42a89a55b0a6cba5f6a2ac0f7a97191db4ae4fe6`  
		Last Modified: Wed, 08 May 2019 15:57:12 GMT  
		Size: 16.2 MB (16159683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a060b1fb5eab7537b954cc199873b54c44dcbddbfab9c2bb3e8bfdc8c51ec2ce`  
		Last Modified: Wed, 08 May 2019 15:57:03 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56397f3718603009afb913087c72dc6bb3b6465bb82f8f00c6bc4550aec76747`  
		Last Modified: Wed, 08 May 2019 15:57:02 GMT  
		Size: 516.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faa05c80ed7e7320a3d5d347517275b340e34b2f06c5e65f435e621ba0cbb2d3`  
		Last Modified: Sat, 01 Jun 2019 01:56:19 GMT  
		Size: 12.5 MB (12524432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdd8dbbffa7e7154464a5c254ad80d02317c8bb91c11a44e2c9297bae25d1fcd`  
		Last Modified: Sat, 01 Jun 2019 01:56:16 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1438d8a59ecaa26b06a9e60ed3ecc703c52a63336a9e437519c7143534a8726`  
		Last Modified: Sat, 01 Jun 2019 01:56:20 GMT  
		Size: 13.6 MB (13602981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77e049fa064e154f28c8acae37128f5a95ed4af0d03f6e007f376710dcaf0a8e`  
		Last Modified: Sat, 01 Jun 2019 01:56:16 GMT  
		Size: 2.2 KB (2201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1a62d3145013a434f0acaf723805b3e94cfa9e183f349b48fd89ce97b56ad40`  
		Last Modified: Sat, 01 Jun 2019 01:56:16 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5432c4c59238dfc901afc53a70b515fd76da212265f2f658254faef604ef5ab9`  
		Last Modified: Sat, 01 Jun 2019 01:56:16 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c0f414ae38167acfdcd5910440f50358bf101593555d7643cd8d7cf06632c2a`  
		Last Modified: Sat, 01 Jun 2019 02:40:50 GMT  
		Size: 26.8 MB (26812739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80632ac31b9ea95cf32141f80a93560c47359fab89617e59a254ced1a64c1819`  
		Last Modified: Sat, 01 Jun 2019 02:40:40 GMT  
		Size: 2.4 MB (2415904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abddbceecf4bf79fd704b1ce7f27060c7d9c493c5e2a996800c746ac3afb3a48`  
		Last Modified: Sat, 01 Jun 2019 02:40:40 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13f7ed3fab048057f79b2c3d84d91b369f1e74f1d927dba83a7b1c0b82301159`  
		Last Modified: Sat, 01 Jun 2019 02:40:39 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50b629d78aedf3ca8d3bc31615443dabc218b02752f8de53fdcebedad0a40c80`  
		Last Modified: Sat, 01 Jun 2019 02:40:39 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:697719a5f394ebe771dca64839b3a90f737d1de3e6c8203b75130a12fce933ab`  
		Last Modified: Sat, 01 Jun 2019 02:40:59 GMT  
		Size: 36.7 MB (36680519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.32.1` - linux; arm64 variant v8

```console
$ docker pull mediawiki@sha256:0b22401a1091b5e8b9722373960ad2313587cb0d0e6b0cb507aaf56a77468607
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.0 MB (187974545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86b02f66d03fa60b70b4941a37b3e8ff912f29eb2ef3edd42588a8a9af1749e7`
-	Entrypoint: `["docker-php-entrypoint"]`
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
# Wed, 08 May 2019 14:17:39 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Wed, 08 May 2019 14:17:40 GMT
ENV PHP_VERSION=7.2.18
# Wed, 08 May 2019 14:17:41 GMT
ENV PHP_URL=https://www.php.net/get/php-7.2.18.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.2.18.tar.xz.asc/from/this/mirror
# Wed, 08 May 2019 14:17:42 GMT
ENV PHP_SHA256=9970dbb3ab1298c9e6aac54bebfa841c8ad14b18eead65594a68fa841364cb8d PHP_MD5=
# Wed, 08 May 2019 14:18:13 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 08 May 2019 14:18:14 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Wed, 08 May 2019 14:24:59 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 08 May 2019 14:25:00 GMT
COPY multi:0002d7d5b06fb24f987aa4b027705dc71f81957419a02be5b9014431514c25b5 in /usr/local/bin/ 
# Wed, 08 May 2019 14:25:03 GMT
RUN docker-php-ext-enable sodium
# Wed, 08 May 2019 14:25:04 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 08 May 2019 14:25:05 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Wed, 08 May 2019 14:25:06 GMT
WORKDIR /var/www/html
# Wed, 08 May 2019 14:25:08 GMT
EXPOSE 80
# Wed, 08 May 2019 14:25:09 GMT
CMD ["apache2-foreground"]
# Thu, 09 May 2019 05:05:16 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		git 		imagemagick 		python3 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 05:10:29 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libicu-dev 	; 		docker-php-ext-install 		intl 		mbstring 		mysqli 		opcache 	; 		pecl install apcu-5.1.16; 	docker-php-ext-enable 		apcu 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 05:10:32 GMT
RUN a2enmod rewrite   && {       echo '<Directory /var/www/html>';       echo '  RewriteEngine On';       echo '  RewriteCond %{REQUEST_FILENAME} !-f';       echo '  RewriteCond %{REQUEST_FILENAME} !-d';       echo '  RewriteRule ^ %{DOCUMENT_ROOT}/index.php [L]';       echo '</Directory>';     } > "$APACHE_CONFDIR/conf-available/short-url.conf"   && a2enconf short-url
# Thu, 09 May 2019 05:10:35 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 09 May 2019 05:10:37 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Thu, 09 May 2019 05:10:38 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.32
# Thu, 09 May 2019 05:10:39 GMT
ENV MEDIAWIKI_BRANCH=REL1_32
# Thu, 09 May 2019 05:10:39 GMT
ENV MEDIAWIKI_VERSION=1.32.1
# Thu, 09 May 2019 05:10:40 GMT
ENV MEDIAWIKI_SHA512=597af44ba140a50b4dfec9dd1a81db1c96e6672f33870ad15d9be875c4a7109eff57034e10762c45c47bad4afdfe27b96949dd6dd4bea24db6ea54bafd80c376
# Thu, 09 May 2019 05:10:56 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
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
	-	`sha256:68d73a231f4080e449e68e6502533ec427a7b766c85d31a09f22d13191f765ea`  
		Last Modified: Wed, 08 May 2019 15:35:37 GMT  
		Size: 12.5 MB (12520437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19691ffc177e30c79f20a75ac96c12ffd081688c45bd4529e07c6292cf1d6d1b`  
		Last Modified: Wed, 08 May 2019 15:35:33 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bd777d47d57316bc1220d04b66d6576368950707b2a0f871bcd8a82864e2a9d`  
		Last Modified: Wed, 08 May 2019 15:35:40 GMT  
		Size: 14.2 MB (14239607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25e16be802a9018dec3f0cc8a2c345cce185b37fe8c01f323cd899722b69ac44`  
		Last Modified: Wed, 08 May 2019 15:35:33 GMT  
		Size: 2.2 KB (2200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bdfeeb7bd495fa9c974d8cd8659e32312d855bbd4df206a1f7057068407323d`  
		Last Modified: Wed, 08 May 2019 15:35:33 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4e5a9bc30afea7feb6df63482956ec64391a0b0305093ae8f6415624ed01a79`  
		Last Modified: Wed, 08 May 2019 15:35:33 GMT  
		Size: 903.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:372d20461635750ebeb1fe499a15fcf50a25a9a1ffae0fba099d48f09944c2af`  
		Last Modified: Thu, 09 May 2019 05:18:09 GMT  
		Size: 27.4 MB (27403442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cca2be8290114033ec2f1832487b8f41d1327395a86e475463acd95cf5193aa`  
		Last Modified: Thu, 09 May 2019 05:17:56 GMT  
		Size: 2.5 MB (2476635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e9a78ec0c60a0bc5bd1d2ffbe6399c22fbb3ceacb29a7462ffa0a6b7b607eb2`  
		Last Modified: Thu, 09 May 2019 05:17:54 GMT  
		Size: 580.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab72a03f54fd8abe536512fb0930c2034b4fffddc1512836c0bbb492c8a2c225`  
		Last Modified: Thu, 09 May 2019 05:17:54 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a25bdb65c523bcdf2c299416f18825b146e7fb7e24aaa63cb1293eab7d92414`  
		Last Modified: Thu, 09 May 2019 05:17:53 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88dc302a73f3b0ebae053542591440b99735ee3e4c2ab33282de501503f75973`  
		Last Modified: Thu, 09 May 2019 05:18:17 GMT  
		Size: 36.7 MB (36680181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.32.1` - linux; 386

```console
$ docker pull mediawiki@sha256:8049317f1f9868565fd74152609c0589401592c5ac18fd408e6189f4a8f96d8f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.5 MB (211540382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55db676d71222943510b5b62b0ebfa689a7db2bdb8164ea6e32bd34580347e27`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 08 May 2019 10:49:55 GMT
ADD file:32d77a56ac954d1cd433a660591f374200929db022f1d0cfcf99eb6ab9e1679c in / 
# Wed, 08 May 2019 10:49:55 GMT
CMD ["bash"]
# Wed, 08 May 2019 16:35:40 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 08 May 2019 16:35:40 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 08 May 2019 16:36:06 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 08 May 2019 16:36:06 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 08 May 2019 16:36:07 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 08 May 2019 16:41:56 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 08 May 2019 16:41:57 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 08 May 2019 16:42:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Wed, 08 May 2019 16:42:09 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 08 May 2019 16:42:09 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 08 May 2019 16:42:10 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 08 May 2019 16:42:10 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 08 May 2019 16:42:10 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 16:42:10 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 16:42:10 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 08 May 2019 17:04:19 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Wed, 08 May 2019 17:04:19 GMT
ENV PHP_VERSION=7.2.18
# Wed, 08 May 2019 17:04:19 GMT
ENV PHP_URL=https://www.php.net/get/php-7.2.18.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.2.18.tar.xz.asc/from/this/mirror
# Wed, 08 May 2019 17:04:19 GMT
ENV PHP_SHA256=9970dbb3ab1298c9e6aac54bebfa841c8ad14b18eead65594a68fa841364cb8d PHP_MD5=
# Wed, 08 May 2019 17:04:30 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 08 May 2019 17:04:30 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Wed, 08 May 2019 17:07:59 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 08 May 2019 17:08:00 GMT
COPY multi:0002d7d5b06fb24f987aa4b027705dc71f81957419a02be5b9014431514c25b5 in /usr/local/bin/ 
# Wed, 08 May 2019 17:08:01 GMT
RUN docker-php-ext-enable sodium
# Wed, 08 May 2019 17:08:01 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 08 May 2019 17:08:01 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Wed, 08 May 2019 17:08:01 GMT
WORKDIR /var/www/html
# Wed, 08 May 2019 17:08:01 GMT
EXPOSE 80
# Wed, 08 May 2019 17:08:02 GMT
CMD ["apache2-foreground"]
# Thu, 09 May 2019 02:48:07 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		git 		imagemagick 		python3 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 02:50:17 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libicu-dev 	; 		docker-php-ext-install 		intl 		mbstring 		mysqli 		opcache 	; 		pecl install apcu-5.1.16; 	docker-php-ext-enable 		apcu 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 02:50:17 GMT
RUN a2enmod rewrite   && {       echo '<Directory /var/www/html>';       echo '  RewriteEngine On';       echo '  RewriteCond %{REQUEST_FILENAME} !-f';       echo '  RewriteCond %{REQUEST_FILENAME} !-d';       echo '  RewriteRule ^ %{DOCUMENT_ROOT}/index.php [L]';       echo '</Directory>';     } > "$APACHE_CONFDIR/conf-available/short-url.conf"   && a2enconf short-url
# Thu, 09 May 2019 02:50:18 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 09 May 2019 02:50:19 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Thu, 09 May 2019 02:50:19 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.32
# Thu, 09 May 2019 02:50:19 GMT
ENV MEDIAWIKI_BRANCH=REL1_32
# Thu, 09 May 2019 02:50:20 GMT
ENV MEDIAWIKI_VERSION=1.32.1
# Thu, 09 May 2019 02:50:20 GMT
ENV MEDIAWIKI_SHA512=597af44ba140a50b4dfec9dd1a81db1c96e6672f33870ad15d9be875c4a7109eff57034e10762c45c47bad4afdfe27b96949dd6dd4bea24db6ea54bafd80c376
# Thu, 09 May 2019 02:50:29 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:3cf56ed221cf05f73233419fcc3a71b0afd424761fc83037e3a5cf101af5df46`  
		Last Modified: Wed, 08 May 2019 10:57:50 GMT  
		Size: 23.1 MB (23120843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2e394799d7fd8bb494dd3068fa793d651e7ccb426989bd27defd081a6bcc12f`  
		Last Modified: Wed, 08 May 2019 18:38:36 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d053425c85d9196337b5a25e4b3194f8f91c7540e201df765bb55f179df390d`  
		Last Modified: Wed, 08 May 2019 18:38:54 GMT  
		Size: 71.5 MB (71518824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:375ceda7fc26c2edccb175b8a009dd8db8b6159d82b589045c749fc2a90b409c`  
		Last Modified: Wed, 08 May 2019 18:38:35 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcee9f239c4761d5fb6def94e207d25f66b6dd1b06aca20ef921f0b7cec5fd2b`  
		Last Modified: Wed, 08 May 2019 18:39:23 GMT  
		Size: 17.6 MB (17559084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f37941543cfc620e1f153eec1e6627f09d2995dc4e11881df4b2fec57d024fc`  
		Last Modified: Wed, 08 May 2019 18:39:18 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e81f09a18a1e21c876bdb2b93ab40c2d32294938c8c14da1306afc78c85dc5b`  
		Last Modified: Wed, 08 May 2019 18:39:18 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a51838654f356e5455289e6a566e70e1dcf8fbb7f2cddc27757511489c8a4865`  
		Last Modified: Wed, 08 May 2019 18:40:40 GMT  
		Size: 12.5 MB (12521696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e83a1be097ba06dd9c045e9d858ef16d7dfcaea2ea8f0a7c03aab056c7ec4e5`  
		Last Modified: Wed, 08 May 2019 18:40:38 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44ccf0af924d7fde5877252371b3b934464fbb43162d86e493dbff5d0855e272`  
		Last Modified: Wed, 08 May 2019 18:40:42 GMT  
		Size: 15.7 MB (15698642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bae3e0d9a678f89ab9935758d2c23643b90fc86203ade9e19896a9810210316`  
		Last Modified: Wed, 08 May 2019 18:40:38 GMT  
		Size: 2.2 KB (2202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:794620458d3b9ee10b26a830211cffeac76c5cebc292f39dd05b89de92a07c5e`  
		Last Modified: Wed, 08 May 2019 18:40:38 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb9f2cd6fb034170dd3ce44819ab9d821785167b2eefb1c966230325ba73eee8`  
		Last Modified: Wed, 08 May 2019 18:40:38 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7615115b5410267361895d41778ec708797e2a776d5effd07aba762bf1aee9c`  
		Last Modified: Thu, 09 May 2019 02:53:32 GMT  
		Size: 31.9 MB (31894562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0300f05641c30fcba961c4d59f9dd81e567cafb4bd0217d5eb41ddc95db39397`  
		Last Modified: Thu, 09 May 2019 02:53:23 GMT  
		Size: 2.5 MB (2540292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db817d1620327ff2425fe7ff22f32c9de9e3a3cd845e0cf525a0b1385422fbc7`  
		Last Modified: Thu, 09 May 2019 02:53:22 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8e3d06fd26271931d459ca41e3772c861bf07f29ba575f7a2cd55cf5ffbf340`  
		Last Modified: Thu, 09 May 2019 02:53:22 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09ae98544f4a52b628219bfafbaf2cfa6290a2e31ae28d07c6cb54797b4bf619`  
		Last Modified: Thu, 09 May 2019 02:53:22 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6a6e119c75074a322d0242e99d8e2fb00eac676be2228ea3275571a37b0346`  
		Last Modified: Thu, 09 May 2019 02:53:38 GMT  
		Size: 36.7 MB (36680130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.32.1` - linux; ppc64le

```console
$ docker pull mediawiki@sha256:2004c57ea881c713dcd266aa3cc952aa9a82c64ce75f33fb0573cc64ff4b3970
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.7 MB (198729624 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b0f922c87cd5860016c816a25740a713729eba6ebbc61a9700e633f08c3fee3`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 08 May 2019 09:05:46 GMT
ADD file:fa23694e2ef3b1ff3ac824d7d18d6951725f7f1ebfd5350392edd91f6b90d89e in / 
# Wed, 08 May 2019 09:05:50 GMT
CMD ["bash"]
# Wed, 08 May 2019 16:33:12 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 08 May 2019 16:33:15 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 08 May 2019 16:36:22 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 08 May 2019 16:36:29 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 08 May 2019 16:36:37 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 08 May 2019 16:45:05 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 08 May 2019 16:45:07 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 08 May 2019 16:46:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Wed, 08 May 2019 16:46:21 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 08 May 2019 16:46:32 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 08 May 2019 16:46:36 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 08 May 2019 16:46:39 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 08 May 2019 16:46:41 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 16:46:44 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 16:46:47 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 08 May 2019 17:22:31 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Wed, 08 May 2019 17:22:37 GMT
ENV PHP_VERSION=7.2.18
# Wed, 08 May 2019 17:22:45 GMT
ENV PHP_URL=https://www.php.net/get/php-7.2.18.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.2.18.tar.xz.asc/from/this/mirror
# Wed, 08 May 2019 17:22:53 GMT
ENV PHP_SHA256=9970dbb3ab1298c9e6aac54bebfa841c8ad14b18eead65594a68fa841364cb8d PHP_MD5=
# Wed, 08 May 2019 17:25:03 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 08 May 2019 17:25:06 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Wed, 08 May 2019 17:35:12 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 08 May 2019 17:35:16 GMT
COPY multi:0002d7d5b06fb24f987aa4b027705dc71f81957419a02be5b9014431514c25b5 in /usr/local/bin/ 
# Wed, 08 May 2019 17:35:24 GMT
RUN docker-php-ext-enable sodium
# Wed, 08 May 2019 17:35:30 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 08 May 2019 17:35:32 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Wed, 08 May 2019 17:35:41 GMT
WORKDIR /var/www/html
# Wed, 08 May 2019 17:35:45 GMT
EXPOSE 80
# Wed, 08 May 2019 17:35:51 GMT
CMD ["apache2-foreground"]
# Thu, 09 May 2019 01:31:11 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		git 		imagemagick 		python3 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 01:34:43 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libicu-dev 	; 		docker-php-ext-install 		intl 		mbstring 		mysqli 		opcache 	; 		pecl install apcu-5.1.16; 	docker-php-ext-enable 		apcu 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 01:34:50 GMT
RUN a2enmod rewrite   && {       echo '<Directory /var/www/html>';       echo '  RewriteEngine On';       echo '  RewriteCond %{REQUEST_FILENAME} !-f';       echo '  RewriteCond %{REQUEST_FILENAME} !-d';       echo '  RewriteRule ^ %{DOCUMENT_ROOT}/index.php [L]';       echo '</Directory>';     } > "$APACHE_CONFDIR/conf-available/short-url.conf"   && a2enconf short-url
# Thu, 09 May 2019 01:34:57 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 09 May 2019 01:35:04 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Thu, 09 May 2019 01:35:06 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.32
# Thu, 09 May 2019 01:35:08 GMT
ENV MEDIAWIKI_BRANCH=REL1_32
# Thu, 09 May 2019 01:35:10 GMT
ENV MEDIAWIKI_VERSION=1.32.1
# Thu, 09 May 2019 01:35:12 GMT
ENV MEDIAWIKI_SHA512=597af44ba140a50b4dfec9dd1a81db1c96e6672f33870ad15d9be875c4a7109eff57034e10762c45c47bad4afdfe27b96949dd6dd4bea24db6ea54bafd80c376
# Thu, 09 May 2019 01:35:40 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:64bfe8794b280a764f2e07634dce2977621d140ae17fb34a03635710e84c3dfb`  
		Last Modified: Wed, 08 May 2019 09:26:17 GMT  
		Size: 22.7 MB (22744914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a41e81735fa83432331becf8dd5c79995a99c53ff4febd68f25916282e96fee5`  
		Last Modified: Wed, 08 May 2019 18:32:38 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74dcd7f44931915566fc2ab31df6e0da7972d7c1761a1e352f59834ab7b12288`  
		Last Modified: Wed, 08 May 2019 18:33:35 GMT  
		Size: 61.8 MB (61833424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8267f05b2cde025cb67ff60ba71e3ab4bb1d8c894385033a77f3592d3d86a1e9`  
		Last Modified: Wed, 08 May 2019 18:32:39 GMT  
		Size: 286.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b7902741744762d78bf30128d3aaad75defd223148cf4e8013abf2b472a23e7`  
		Last Modified: Wed, 08 May 2019 18:34:58 GMT  
		Size: 17.3 MB (17345860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8304e87d7eae9b221a89adc93eabf206be22236d6aa8fd6ef9bb71b82bd3349`  
		Last Modified: Wed, 08 May 2019 18:34:37 GMT  
		Size: 479.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:480539350c707aed3dba31a230406b23f267cb31ec2d6fa3dc7f239af8dcb64e`  
		Last Modified: Wed, 08 May 2019 18:34:37 GMT  
		Size: 518.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a5f59168f7acd95d0c183946b56d3b084aef8350f8e368b4c54d0d8a9e81343`  
		Last Modified: Wed, 08 May 2019 18:38:16 GMT  
		Size: 12.5 MB (12521120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca06cfad402571a36dab9b350760456c06eb6ff69d86860e01815c448febf608`  
		Last Modified: Wed, 08 May 2019 18:38:10 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:feefdd256094a8cd3578d49e543d314c3a0373117d7c88625485af617daf2f01`  
		Last Modified: Wed, 08 May 2019 18:38:23 GMT  
		Size: 15.1 MB (15050830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddcba8d0f1ead1960e4ed8a8f9ce0987a2ce40cdb35c37ae7e7b0a8347c4145c`  
		Last Modified: Wed, 08 May 2019 18:38:10 GMT  
		Size: 2.2 KB (2202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e659b52fd9017cb4c492b613e5a79ce0ccdb48083cbc7c4b0279405f14ff7ac1`  
		Last Modified: Wed, 08 May 2019 18:38:10 GMT  
		Size: 262.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd234b7aca9a35086eb63ad27b187b272fd97f0a966f6620e532a0c683e8b2dd`  
		Last Modified: Wed, 08 May 2019 18:38:10 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c573dc396369a78f0d176aaddb389a2962121c5a23b2cf13a91ad47571c6b6`  
		Last Modified: Thu, 09 May 2019 01:43:42 GMT  
		Size: 30.0 MB (30009284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89a639ad63cc00a0cc8d9acb2dc6c4bc1625b2319b2d839211c6cfaddda18556`  
		Last Modified: Thu, 09 May 2019 01:43:28 GMT  
		Size: 2.5 MB (2537179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0e27a76b67aae30caa5f50eeded90afdb444903ef489f8cd5286341e2a459da`  
		Last Modified: Thu, 09 May 2019 01:43:27 GMT  
		Size: 593.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4479ecc70a7bea18d476fed86d8bed134b9644283343f4d5de55c95ac1c383a1`  
		Last Modified: Thu, 09 May 2019 01:43:27 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5ce8f77ceef7b44816ba03be1fbd8a3d36101b6713cba811f1dd7c22f144a23`  
		Last Modified: Thu, 09 May 2019 01:43:27 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1007dd80147bbebb43e842c93759bc2d204ecedec5a0ef80b61e034dee5621c`  
		Last Modified: Thu, 09 May 2019 01:43:42 GMT  
		Size: 36.7 MB (36680521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mediawiki:latest`

```console
$ docker pull mediawiki@sha256:bf0a6f48bfa7262c3c3ecdeab470ebf411f96e46194dd3b9e52573920b46919c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `mediawiki:latest` - linux; amd64

```console
$ docker pull mediawiki@sha256:f0b747de39aaa40c747af870c38b3febc53e4787b8dc954593dd60fa039f0464
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.3 MB (204305883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3b378ef05a9b065e2f1bc42cd71570391c7684c8cc53f09153ce4401bfdf7da`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 02:29:59 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 08 May 2019 02:29:59 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 08 May 2019 02:30:20 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 08 May 2019 02:30:21 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 08 May 2019 02:30:21 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 08 May 2019 02:37:00 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 08 May 2019 02:37:00 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 08 May 2019 02:37:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Wed, 08 May 2019 02:37:13 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 08 May 2019 02:37:14 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 08 May 2019 02:37:15 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 08 May 2019 02:37:15 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 08 May 2019 02:37:16 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 02:37:16 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 02:37:17 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 08 May 2019 03:02:10 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Wed, 08 May 2019 03:02:10 GMT
ENV PHP_VERSION=7.2.18
# Wed, 08 May 2019 03:02:11 GMT
ENV PHP_URL=https://www.php.net/get/php-7.2.18.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.2.18.tar.xz.asc/from/this/mirror
# Wed, 08 May 2019 03:02:11 GMT
ENV PHP_SHA256=9970dbb3ab1298c9e6aac54bebfa841c8ad14b18eead65594a68fa841364cb8d PHP_MD5=
# Wed, 08 May 2019 03:02:20 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 08 May 2019 03:02:21 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Wed, 08 May 2019 03:06:04 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 08 May 2019 03:06:04 GMT
COPY multi:0002d7d5b06fb24f987aa4b027705dc71f81957419a02be5b9014431514c25b5 in /usr/local/bin/ 
# Wed, 08 May 2019 03:06:05 GMT
RUN docker-php-ext-enable sodium
# Wed, 08 May 2019 03:06:05 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 08 May 2019 03:06:06 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Wed, 08 May 2019 03:06:06 GMT
WORKDIR /var/www/html
# Wed, 08 May 2019 03:06:06 GMT
EXPOSE 80
# Wed, 08 May 2019 03:06:06 GMT
CMD ["apache2-foreground"]
# Wed, 08 May 2019 10:13:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		git 		imagemagick 		python3 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 10:17:31 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libicu-dev 	; 		docker-php-ext-install 		intl 		mbstring 		mysqli 		opcache 	; 		pecl install apcu-5.1.16; 	docker-php-ext-enable 		apcu 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 10:17:33 GMT
RUN a2enmod rewrite   && {       echo '<Directory /var/www/html>';       echo '  RewriteEngine On';       echo '  RewriteCond %{REQUEST_FILENAME} !-f';       echo '  RewriteCond %{REQUEST_FILENAME} !-d';       echo '  RewriteRule ^ %{DOCUMENT_ROOT}/index.php [L]';       echo '</Directory>';     } > "$APACHE_CONFDIR/conf-available/short-url.conf"   && a2enconf short-url
# Wed, 08 May 2019 10:17:34 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 08 May 2019 10:17:35 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Wed, 08 May 2019 10:17:35 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.32
# Wed, 08 May 2019 10:17:35 GMT
ENV MEDIAWIKI_BRANCH=REL1_32
# Wed, 08 May 2019 10:17:35 GMT
ENV MEDIAWIKI_VERSION=1.32.1
# Wed, 08 May 2019 10:17:36 GMT
ENV MEDIAWIKI_SHA512=597af44ba140a50b4dfec9dd1a81db1c96e6672f33870ad15d9be875c4a7109eff57034e10762c45c47bad4afdfe27b96949dd6dd4bea24db6ea54bafd80c376
# Wed, 08 May 2019 10:17:47 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6307e89982cc66cd480a6f5cfe17fabddae5e6ae4e735d8f0bf857892d299772`  
		Last Modified: Wed, 08 May 2019 04:41:06 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:807218e72ce2aeb1df368e9757482e7304772ccf439962eb68d1731a0b023802`  
		Last Modified: Wed, 08 May 2019 04:41:20 GMT  
		Size: 67.4 MB (67447543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5108df1d03f88b91e3a940361ab6bc2d60d60a6f52a1ba29d8283a00d71cb0c8`  
		Last Modified: Wed, 08 May 2019 04:41:06 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:901e0b6a7fe58d5615158528d37602cd806ecab9718a880d76f85d609742f5ea`  
		Last Modified: Wed, 08 May 2019 04:41:48 GMT  
		Size: 17.1 MB (17124934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ffe11e7ab2c09aa7e0167044fe111b6a03a5e93f517405f4c416e3220e0b197`  
		Last Modified: Wed, 08 May 2019 04:41:43 GMT  
		Size: 429.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da5f7a5079567ba0d853934f7275591bd53f6740d13e4499a15a9a109982f7e8`  
		Last Modified: Wed, 08 May 2019 04:41:43 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1828a6068039e36669a6a6b2dde9750808c22d86ac075c99ac739dcbbb1e3b67`  
		Last Modified: Wed, 08 May 2019 04:42:59 GMT  
		Size: 12.5 MB (12522340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64e8e1a9a6dd712ede73018cda885173b14dfb5b41d8de2b94a6e40b579b933c`  
		Last Modified: Wed, 08 May 2019 04:42:57 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:947776ecc4cf45b79a1eb8811d0cede95489c496920cc63c3504a78d8c57a14e`  
		Last Modified: Wed, 08 May 2019 04:43:04 GMT  
		Size: 15.3 MB (15259643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:983802cfe132fab1cec030a7b88d0cb6315561c92ff7226cce5f851eb206687d`  
		Last Modified: Wed, 08 May 2019 04:42:56 GMT  
		Size: 2.2 KB (2202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e372111ec71d644fe9452c7ddb71c723515b94807261e2a9937b1c918adf5716`  
		Last Modified: Wed, 08 May 2019 04:42:56 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70d278e5adabe0687ae4a5f6ce0a8e99a53f3554bdcdee8b154635cb360d3088`  
		Last Modified: Wed, 08 May 2019 04:42:56 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7038b6910d573df901cd4193d8ab32b4f9bf611d3d0f15140e41345122b85996`  
		Last Modified: Wed, 08 May 2019 10:23:03 GMT  
		Size: 30.2 MB (30221982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f06e09b6d9eac4655ccbf25966abab364f4ddecb24861f9b0a9c460afafa8fa`  
		Last Modified: Wed, 08 May 2019 10:22:53 GMT  
		Size: 2.6 MB (2553575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a2198f61b13436e68738445f1f543176bb7f37d4cdf66281b3c084b2c51a2fc`  
		Last Modified: Wed, 08 May 2019 10:22:53 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceec5aeb21c84d0e1892c2759b462bc29ad17e049cca3cfe7758a12d3683e0c8`  
		Last Modified: Wed, 08 May 2019 10:22:53 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0e205f974ca740857c15158878f37e2cfb9daf9de21bf6c9804a2f9b093a0ee`  
		Last Modified: Wed, 08 May 2019 10:22:53 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5568a69de805c9c7c1ba1accadbe86cf6e975e87fa364a123b60a8544858ae03`  
		Last Modified: Wed, 08 May 2019 10:23:08 GMT  
		Size: 36.7 MB (36680206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:latest` - linux; arm variant v5

```console
$ docker pull mediawiki@sha256:58d55edb50fb854486a67f5d8cca1515d297cbd51f5eed6d67798dc4e46830c9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.3 MB (190294232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:928682f43c8b153c5455333f69e2620f010605bdf13623818b3f47297ec8c234`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 08 May 2019 08:53:38 GMT
ADD file:d9cc007a953434e1439cc534f397967f4f0f1bf149f1288a52f6209eca436852 in / 
# Wed, 08 May 2019 08:53:39 GMT
CMD ["bash"]
# Wed, 08 May 2019 09:48:37 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 08 May 2019 09:48:38 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 08 May 2019 09:49:17 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 08 May 2019 09:49:18 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 08 May 2019 09:49:20 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 08 May 2019 09:53:54 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 08 May 2019 09:53:54 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 08 May 2019 09:54:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Wed, 08 May 2019 09:54:17 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 08 May 2019 09:54:18 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 08 May 2019 09:54:19 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 08 May 2019 09:54:19 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 08 May 2019 09:54:20 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 09:54:20 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 09:54:21 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 08 May 2019 10:11:33 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Sat, 01 Jun 2019 00:13:37 GMT
ENV PHP_VERSION=7.2.19
# Sat, 01 Jun 2019 00:13:38 GMT
ENV PHP_URL=https://www.php.net/get/php-7.2.19.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.2.19.tar.xz.asc/from/this/mirror
# Sat, 01 Jun 2019 00:13:38 GMT
ENV PHP_SHA256=4ffa2404a88d60e993a9fe69f829ebec3eb1e006de41b6048ce5e91bbeaa9282 PHP_MD5=
# Sat, 01 Jun 2019 00:13:58 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 01 Jun 2019 00:13:58 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 01 Jun 2019 00:17:32 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 01 Jun 2019 00:17:33 GMT
COPY multi:0002d7d5b06fb24f987aa4b027705dc71f81957419a02be5b9014431514c25b5 in /usr/local/bin/ 
# Sat, 01 Jun 2019 00:17:35 GMT
RUN docker-php-ext-enable sodium
# Sat, 01 Jun 2019 00:17:35 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 01 Jun 2019 00:17:36 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Sat, 01 Jun 2019 00:17:36 GMT
WORKDIR /var/www/html
# Sat, 01 Jun 2019 00:17:37 GMT
EXPOSE 80
# Sat, 01 Jun 2019 00:17:37 GMT
CMD ["apache2-foreground"]
# Sat, 01 Jun 2019 02:26:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		git 		imagemagick 		python3 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 02:30:08 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libicu-dev 	; 		docker-php-ext-install 		intl 		mbstring 		mysqli 		opcache 	; 		pecl install apcu-5.1.16; 	docker-php-ext-enable 		apcu 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 02:30:10 GMT
RUN a2enmod rewrite   && {       echo '<Directory /var/www/html>';       echo '  RewriteEngine On';       echo '  RewriteCond %{REQUEST_FILENAME} !-f';       echo '  RewriteCond %{REQUEST_FILENAME} !-d';       echo '  RewriteRule ^ %{DOCUMENT_ROOT}/index.php [L]';       echo '</Directory>';     } > "$APACHE_CONFDIR/conf-available/short-url.conf"   && a2enconf short-url
# Sat, 01 Jun 2019 02:30:12 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 01 Jun 2019 02:30:13 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 01 Jun 2019 02:30:14 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.32
# Sat, 01 Jun 2019 02:30:14 GMT
ENV MEDIAWIKI_BRANCH=REL1_32
# Sat, 01 Jun 2019 02:30:15 GMT
ENV MEDIAWIKI_VERSION=1.32.1
# Sat, 01 Jun 2019 02:30:15 GMT
ENV MEDIAWIKI_SHA512=597af44ba140a50b4dfec9dd1a81db1c96e6672f33870ad15d9be875c4a7109eff57034e10762c45c47bad4afdfe27b96949dd6dd4bea24db6ea54bafd80c376
# Sat, 01 Jun 2019 02:30:31 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:f23f9ce99dc288927adafc8d503252a16b6ea2b40c9cb0dca688223c56bd0235`  
		Last Modified: Wed, 08 May 2019 08:59:29 GMT  
		Size: 21.2 MB (21155863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:375098c17606cf891dc6c2de639c2d9b69384583b36d1f12394d245cb131e539`  
		Last Modified: Wed, 08 May 2019 11:06:12 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:091ccac4f8817d1ccf73efd2fd3d421caaea5daab5cf6c0574ba160a012728d2`  
		Last Modified: Wed, 08 May 2019 11:06:33 GMT  
		Size: 57.5 MB (57477758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:825181d9c853e494b46e5d4a8d3eb39bb10ec9f0c5cab11f274faec90f876cef`  
		Last Modified: Wed, 08 May 2019 11:06:12 GMT  
		Size: 286.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:099d1d7d4434733003b46ad3c7824ce4e924bc48db25b33413a65c77ad3dfe2d`  
		Last Modified: Wed, 08 May 2019 11:07:08 GMT  
		Size: 16.7 MB (16651726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15629ed4b2662d162ebc33e2d122007c635a7254b4b55d0edf277dec13d74c9a`  
		Last Modified: Wed, 08 May 2019 11:07:03 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:560f7cc5ef807ab6fb5da234ac471e25d0aa2a5aa7015801be27d254ff521db0`  
		Last Modified: Wed, 08 May 2019 11:07:03 GMT  
		Size: 511.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df32f7a9b2f08479016d154d91afd1b2fa0ff2e4a352257c4fb51a63aaf8b02d`  
		Last Modified: Sat, 01 Jun 2019 01:15:28 GMT  
		Size: 12.5 MB (12524431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0c68434605bf878852626807456ff6d8ea9dd6471ea09f260e236c3497e8613`  
		Last Modified: Sat, 01 Jun 2019 01:15:24 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e09142a09324552b0e51e19a715ce31a622fa1225e6feaf11aae256e89ddb70`  
		Last Modified: Sat, 01 Jun 2019 01:15:31 GMT  
		Size: 14.4 MB (14437073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b345e81f1997c48b7694506985bef3dffbc597da936e526362af3ee8a1b2951`  
		Last Modified: Sat, 01 Jun 2019 01:15:24 GMT  
		Size: 2.2 KB (2204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f6d6e11b4d848ecda0d319dddf54d8583afb48316414071064f949575b56443`  
		Last Modified: Sat, 01 Jun 2019 01:15:25 GMT  
		Size: 262.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afc689b77a160847dc5ed98756528ee5349e02cb23547352fa1f14a44a3419c2`  
		Last Modified: Sat, 01 Jun 2019 01:15:24 GMT  
		Size: 905.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f75d84530645037cc8070cec1c647561afb6fbab0c800c9172f6965839633b48`  
		Last Modified: Sat, 01 Jun 2019 02:36:19 GMT  
		Size: 28.9 MB (28888933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd82164e306b36d62658e5f7b318b79e0b6976810962e695b86d617abf21e236`  
		Last Modified: Sat, 01 Jun 2019 02:36:08 GMT  
		Size: 2.5 MB (2471333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28f61e9b5ff034b4b44f72937ecfc9962293b52028fd95c9d1b144deda0813b9`  
		Last Modified: Sat, 01 Jun 2019 02:36:08 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7bdf3367ac37433a3a333c1022eca2c0a14a1ccf216ba724e02b41c6c79e847`  
		Last Modified: Sat, 01 Jun 2019 02:36:08 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cdf0a48a56b8ea00b669fc1605f4b9cb25c1e5df18925b9519869ca3f92b543`  
		Last Modified: Sat, 01 Jun 2019 02:36:08 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be99e529a67be096952d19e4eb8d18d806fbb9f532712ae89c4881c96a8c47c6`  
		Last Modified: Sat, 01 Jun 2019 02:36:32 GMT  
		Size: 36.7 MB (36680641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:latest` - linux; arm variant v7

```console
$ docker pull mediawiki@sha256:c0e395c1b9e871ca28fc936389f4da418e7f07d8e4bc756e60cc4ec0224e4f8b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.1 MB (181068611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba5034c1222e7591c2d03ffcc27f10c2172a8dd271581883c0613b93e8a11cff`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 08 May 2019 12:03:54 GMT
ADD file:7813549b5e7862c4d5ecec9e7d8da27b520dd2cc1433e66637c57bb695d4f55a in / 
# Wed, 08 May 2019 12:03:54 GMT
CMD ["bash"]
# Wed, 08 May 2019 14:37:05 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 08 May 2019 14:37:06 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 08 May 2019 14:37:37 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 08 May 2019 14:37:39 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 08 May 2019 14:37:40 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 08 May 2019 14:42:38 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 08 May 2019 14:42:39 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 08 May 2019 14:42:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Wed, 08 May 2019 14:42:58 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 08 May 2019 14:42:59 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 08 May 2019 14:43:00 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 08 May 2019 14:43:00 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 08 May 2019 14:43:01 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 14:43:01 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 14:43:02 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 08 May 2019 14:59:32 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Sat, 01 Jun 2019 00:34:09 GMT
ENV PHP_VERSION=7.2.19
# Sat, 01 Jun 2019 00:34:09 GMT
ENV PHP_URL=https://www.php.net/get/php-7.2.19.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.2.19.tar.xz.asc/from/this/mirror
# Sat, 01 Jun 2019 00:34:10 GMT
ENV PHP_SHA256=4ffa2404a88d60e993a9fe69f829ebec3eb1e006de41b6048ce5e91bbeaa9282 PHP_MD5=
# Sat, 01 Jun 2019 00:34:26 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 01 Jun 2019 00:34:26 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 01 Jun 2019 00:37:25 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 01 Jun 2019 00:37:26 GMT
COPY multi:0002d7d5b06fb24f987aa4b027705dc71f81957419a02be5b9014431514c25b5 in /usr/local/bin/ 
# Sat, 01 Jun 2019 00:37:28 GMT
RUN docker-php-ext-enable sodium
# Sat, 01 Jun 2019 00:37:29 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 01 Jun 2019 00:37:29 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Sat, 01 Jun 2019 00:37:29 GMT
WORKDIR /var/www/html
# Sat, 01 Jun 2019 00:37:30 GMT
EXPOSE 80
# Sat, 01 Jun 2019 00:37:30 GMT
CMD ["apache2-foreground"]
# Sat, 01 Jun 2019 02:31:28 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		git 		imagemagick 		python3 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 02:35:07 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libicu-dev 	; 		docker-php-ext-install 		intl 		mbstring 		mysqli 		opcache 	; 		pecl install apcu-5.1.16; 	docker-php-ext-enable 		apcu 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 02:35:09 GMT
RUN a2enmod rewrite   && {       echo '<Directory /var/www/html>';       echo '  RewriteEngine On';       echo '  RewriteCond %{REQUEST_FILENAME} !-f';       echo '  RewriteCond %{REQUEST_FILENAME} !-d';       echo '  RewriteRule ^ %{DOCUMENT_ROOT}/index.php [L]';       echo '</Directory>';     } > "$APACHE_CONFDIR/conf-available/short-url.conf"   && a2enconf short-url
# Sat, 01 Jun 2019 02:35:11 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 01 Jun 2019 02:35:12 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 01 Jun 2019 02:35:13 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.32
# Sat, 01 Jun 2019 02:35:13 GMT
ENV MEDIAWIKI_BRANCH=REL1_32
# Sat, 01 Jun 2019 02:35:14 GMT
ENV MEDIAWIKI_VERSION=1.32.1
# Sat, 01 Jun 2019 02:35:14 GMT
ENV MEDIAWIKI_SHA512=597af44ba140a50b4dfec9dd1a81db1c96e6672f33870ad15d9be875c4a7109eff57034e10762c45c47bad4afdfe27b96949dd6dd4bea24db6ea54bafd80c376
# Sat, 01 Jun 2019 02:35:30 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:b0727b1ec48ef8920082aec023c050c83b563ae08080d9951d68fba55934bbd6`  
		Last Modified: Wed, 08 May 2019 12:10:01 GMT  
		Size: 19.3 MB (19276216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e208b62bc2ef8e00c39842047e209f0ee05486c604af8359d624ad326285642`  
		Last Modified: Wed, 08 May 2019 15:56:06 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b654776010960d429044df18c3d563b768a92d765adb835d874503dbc872672`  
		Last Modified: Wed, 08 May 2019 15:56:28 GMT  
		Size: 53.6 MB (53589670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0718556bb7e27c667cb22749130f30d651e5cb73cc88535d3cbb2f7a4fe6224e`  
		Last Modified: Wed, 08 May 2019 15:56:05 GMT  
		Size: 286.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21d279750d7c2122da564efb42a89a55b0a6cba5f6a2ac0f7a97191db4ae4fe6`  
		Last Modified: Wed, 08 May 2019 15:57:12 GMT  
		Size: 16.2 MB (16159683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a060b1fb5eab7537b954cc199873b54c44dcbddbfab9c2bb3e8bfdc8c51ec2ce`  
		Last Modified: Wed, 08 May 2019 15:57:03 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56397f3718603009afb913087c72dc6bb3b6465bb82f8f00c6bc4550aec76747`  
		Last Modified: Wed, 08 May 2019 15:57:02 GMT  
		Size: 516.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faa05c80ed7e7320a3d5d347517275b340e34b2f06c5e65f435e621ba0cbb2d3`  
		Last Modified: Sat, 01 Jun 2019 01:56:19 GMT  
		Size: 12.5 MB (12524432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdd8dbbffa7e7154464a5c254ad80d02317c8bb91c11a44e2c9297bae25d1fcd`  
		Last Modified: Sat, 01 Jun 2019 01:56:16 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1438d8a59ecaa26b06a9e60ed3ecc703c52a63336a9e437519c7143534a8726`  
		Last Modified: Sat, 01 Jun 2019 01:56:20 GMT  
		Size: 13.6 MB (13602981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77e049fa064e154f28c8acae37128f5a95ed4af0d03f6e007f376710dcaf0a8e`  
		Last Modified: Sat, 01 Jun 2019 01:56:16 GMT  
		Size: 2.2 KB (2201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1a62d3145013a434f0acaf723805b3e94cfa9e183f349b48fd89ce97b56ad40`  
		Last Modified: Sat, 01 Jun 2019 01:56:16 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5432c4c59238dfc901afc53a70b515fd76da212265f2f658254faef604ef5ab9`  
		Last Modified: Sat, 01 Jun 2019 01:56:16 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c0f414ae38167acfdcd5910440f50358bf101593555d7643cd8d7cf06632c2a`  
		Last Modified: Sat, 01 Jun 2019 02:40:50 GMT  
		Size: 26.8 MB (26812739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80632ac31b9ea95cf32141f80a93560c47359fab89617e59a254ced1a64c1819`  
		Last Modified: Sat, 01 Jun 2019 02:40:40 GMT  
		Size: 2.4 MB (2415904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abddbceecf4bf79fd704b1ce7f27060c7d9c493c5e2a996800c746ac3afb3a48`  
		Last Modified: Sat, 01 Jun 2019 02:40:40 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13f7ed3fab048057f79b2c3d84d91b369f1e74f1d927dba83a7b1c0b82301159`  
		Last Modified: Sat, 01 Jun 2019 02:40:39 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50b629d78aedf3ca8d3bc31615443dabc218b02752f8de53fdcebedad0a40c80`  
		Last Modified: Sat, 01 Jun 2019 02:40:39 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:697719a5f394ebe771dca64839b3a90f737d1de3e6c8203b75130a12fce933ab`  
		Last Modified: Sat, 01 Jun 2019 02:40:59 GMT  
		Size: 36.7 MB (36680519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:latest` - linux; arm64 variant v8

```console
$ docker pull mediawiki@sha256:0b22401a1091b5e8b9722373960ad2313587cb0d0e6b0cb507aaf56a77468607
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.0 MB (187974545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86b02f66d03fa60b70b4941a37b3e8ff912f29eb2ef3edd42588a8a9af1749e7`
-	Entrypoint: `["docker-php-entrypoint"]`
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
# Wed, 08 May 2019 14:17:39 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Wed, 08 May 2019 14:17:40 GMT
ENV PHP_VERSION=7.2.18
# Wed, 08 May 2019 14:17:41 GMT
ENV PHP_URL=https://www.php.net/get/php-7.2.18.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.2.18.tar.xz.asc/from/this/mirror
# Wed, 08 May 2019 14:17:42 GMT
ENV PHP_SHA256=9970dbb3ab1298c9e6aac54bebfa841c8ad14b18eead65594a68fa841364cb8d PHP_MD5=
# Wed, 08 May 2019 14:18:13 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 08 May 2019 14:18:14 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Wed, 08 May 2019 14:24:59 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 08 May 2019 14:25:00 GMT
COPY multi:0002d7d5b06fb24f987aa4b027705dc71f81957419a02be5b9014431514c25b5 in /usr/local/bin/ 
# Wed, 08 May 2019 14:25:03 GMT
RUN docker-php-ext-enable sodium
# Wed, 08 May 2019 14:25:04 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 08 May 2019 14:25:05 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Wed, 08 May 2019 14:25:06 GMT
WORKDIR /var/www/html
# Wed, 08 May 2019 14:25:08 GMT
EXPOSE 80
# Wed, 08 May 2019 14:25:09 GMT
CMD ["apache2-foreground"]
# Thu, 09 May 2019 05:05:16 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		git 		imagemagick 		python3 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 05:10:29 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libicu-dev 	; 		docker-php-ext-install 		intl 		mbstring 		mysqli 		opcache 	; 		pecl install apcu-5.1.16; 	docker-php-ext-enable 		apcu 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 05:10:32 GMT
RUN a2enmod rewrite   && {       echo '<Directory /var/www/html>';       echo '  RewriteEngine On';       echo '  RewriteCond %{REQUEST_FILENAME} !-f';       echo '  RewriteCond %{REQUEST_FILENAME} !-d';       echo '  RewriteRule ^ %{DOCUMENT_ROOT}/index.php [L]';       echo '</Directory>';     } > "$APACHE_CONFDIR/conf-available/short-url.conf"   && a2enconf short-url
# Thu, 09 May 2019 05:10:35 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 09 May 2019 05:10:37 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Thu, 09 May 2019 05:10:38 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.32
# Thu, 09 May 2019 05:10:39 GMT
ENV MEDIAWIKI_BRANCH=REL1_32
# Thu, 09 May 2019 05:10:39 GMT
ENV MEDIAWIKI_VERSION=1.32.1
# Thu, 09 May 2019 05:10:40 GMT
ENV MEDIAWIKI_SHA512=597af44ba140a50b4dfec9dd1a81db1c96e6672f33870ad15d9be875c4a7109eff57034e10762c45c47bad4afdfe27b96949dd6dd4bea24db6ea54bafd80c376
# Thu, 09 May 2019 05:10:56 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
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
	-	`sha256:68d73a231f4080e449e68e6502533ec427a7b766c85d31a09f22d13191f765ea`  
		Last Modified: Wed, 08 May 2019 15:35:37 GMT  
		Size: 12.5 MB (12520437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19691ffc177e30c79f20a75ac96c12ffd081688c45bd4529e07c6292cf1d6d1b`  
		Last Modified: Wed, 08 May 2019 15:35:33 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bd777d47d57316bc1220d04b66d6576368950707b2a0f871bcd8a82864e2a9d`  
		Last Modified: Wed, 08 May 2019 15:35:40 GMT  
		Size: 14.2 MB (14239607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25e16be802a9018dec3f0cc8a2c345cce185b37fe8c01f323cd899722b69ac44`  
		Last Modified: Wed, 08 May 2019 15:35:33 GMT  
		Size: 2.2 KB (2200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bdfeeb7bd495fa9c974d8cd8659e32312d855bbd4df206a1f7057068407323d`  
		Last Modified: Wed, 08 May 2019 15:35:33 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4e5a9bc30afea7feb6df63482956ec64391a0b0305093ae8f6415624ed01a79`  
		Last Modified: Wed, 08 May 2019 15:35:33 GMT  
		Size: 903.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:372d20461635750ebeb1fe499a15fcf50a25a9a1ffae0fba099d48f09944c2af`  
		Last Modified: Thu, 09 May 2019 05:18:09 GMT  
		Size: 27.4 MB (27403442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cca2be8290114033ec2f1832487b8f41d1327395a86e475463acd95cf5193aa`  
		Last Modified: Thu, 09 May 2019 05:17:56 GMT  
		Size: 2.5 MB (2476635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e9a78ec0c60a0bc5bd1d2ffbe6399c22fbb3ceacb29a7462ffa0a6b7b607eb2`  
		Last Modified: Thu, 09 May 2019 05:17:54 GMT  
		Size: 580.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab72a03f54fd8abe536512fb0930c2034b4fffddc1512836c0bbb492c8a2c225`  
		Last Modified: Thu, 09 May 2019 05:17:54 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a25bdb65c523bcdf2c299416f18825b146e7fb7e24aaa63cb1293eab7d92414`  
		Last Modified: Thu, 09 May 2019 05:17:53 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88dc302a73f3b0ebae053542591440b99735ee3e4c2ab33282de501503f75973`  
		Last Modified: Thu, 09 May 2019 05:18:17 GMT  
		Size: 36.7 MB (36680181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:latest` - linux; 386

```console
$ docker pull mediawiki@sha256:8049317f1f9868565fd74152609c0589401592c5ac18fd408e6189f4a8f96d8f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.5 MB (211540382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55db676d71222943510b5b62b0ebfa689a7db2bdb8164ea6e32bd34580347e27`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 08 May 2019 10:49:55 GMT
ADD file:32d77a56ac954d1cd433a660591f374200929db022f1d0cfcf99eb6ab9e1679c in / 
# Wed, 08 May 2019 10:49:55 GMT
CMD ["bash"]
# Wed, 08 May 2019 16:35:40 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 08 May 2019 16:35:40 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 08 May 2019 16:36:06 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 08 May 2019 16:36:06 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 08 May 2019 16:36:07 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 08 May 2019 16:41:56 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 08 May 2019 16:41:57 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 08 May 2019 16:42:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Wed, 08 May 2019 16:42:09 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 08 May 2019 16:42:09 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 08 May 2019 16:42:10 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 08 May 2019 16:42:10 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 08 May 2019 16:42:10 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 16:42:10 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 16:42:10 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 08 May 2019 17:04:19 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Wed, 08 May 2019 17:04:19 GMT
ENV PHP_VERSION=7.2.18
# Wed, 08 May 2019 17:04:19 GMT
ENV PHP_URL=https://www.php.net/get/php-7.2.18.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.2.18.tar.xz.asc/from/this/mirror
# Wed, 08 May 2019 17:04:19 GMT
ENV PHP_SHA256=9970dbb3ab1298c9e6aac54bebfa841c8ad14b18eead65594a68fa841364cb8d PHP_MD5=
# Wed, 08 May 2019 17:04:30 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 08 May 2019 17:04:30 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Wed, 08 May 2019 17:07:59 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 08 May 2019 17:08:00 GMT
COPY multi:0002d7d5b06fb24f987aa4b027705dc71f81957419a02be5b9014431514c25b5 in /usr/local/bin/ 
# Wed, 08 May 2019 17:08:01 GMT
RUN docker-php-ext-enable sodium
# Wed, 08 May 2019 17:08:01 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 08 May 2019 17:08:01 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Wed, 08 May 2019 17:08:01 GMT
WORKDIR /var/www/html
# Wed, 08 May 2019 17:08:01 GMT
EXPOSE 80
# Wed, 08 May 2019 17:08:02 GMT
CMD ["apache2-foreground"]
# Thu, 09 May 2019 02:48:07 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		git 		imagemagick 		python3 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 02:50:17 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libicu-dev 	; 		docker-php-ext-install 		intl 		mbstring 		mysqli 		opcache 	; 		pecl install apcu-5.1.16; 	docker-php-ext-enable 		apcu 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 02:50:17 GMT
RUN a2enmod rewrite   && {       echo '<Directory /var/www/html>';       echo '  RewriteEngine On';       echo '  RewriteCond %{REQUEST_FILENAME} !-f';       echo '  RewriteCond %{REQUEST_FILENAME} !-d';       echo '  RewriteRule ^ %{DOCUMENT_ROOT}/index.php [L]';       echo '</Directory>';     } > "$APACHE_CONFDIR/conf-available/short-url.conf"   && a2enconf short-url
# Thu, 09 May 2019 02:50:18 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 09 May 2019 02:50:19 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Thu, 09 May 2019 02:50:19 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.32
# Thu, 09 May 2019 02:50:19 GMT
ENV MEDIAWIKI_BRANCH=REL1_32
# Thu, 09 May 2019 02:50:20 GMT
ENV MEDIAWIKI_VERSION=1.32.1
# Thu, 09 May 2019 02:50:20 GMT
ENV MEDIAWIKI_SHA512=597af44ba140a50b4dfec9dd1a81db1c96e6672f33870ad15d9be875c4a7109eff57034e10762c45c47bad4afdfe27b96949dd6dd4bea24db6ea54bafd80c376
# Thu, 09 May 2019 02:50:29 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:3cf56ed221cf05f73233419fcc3a71b0afd424761fc83037e3a5cf101af5df46`  
		Last Modified: Wed, 08 May 2019 10:57:50 GMT  
		Size: 23.1 MB (23120843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2e394799d7fd8bb494dd3068fa793d651e7ccb426989bd27defd081a6bcc12f`  
		Last Modified: Wed, 08 May 2019 18:38:36 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d053425c85d9196337b5a25e4b3194f8f91c7540e201df765bb55f179df390d`  
		Last Modified: Wed, 08 May 2019 18:38:54 GMT  
		Size: 71.5 MB (71518824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:375ceda7fc26c2edccb175b8a009dd8db8b6159d82b589045c749fc2a90b409c`  
		Last Modified: Wed, 08 May 2019 18:38:35 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcee9f239c4761d5fb6def94e207d25f66b6dd1b06aca20ef921f0b7cec5fd2b`  
		Last Modified: Wed, 08 May 2019 18:39:23 GMT  
		Size: 17.6 MB (17559084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f37941543cfc620e1f153eec1e6627f09d2995dc4e11881df4b2fec57d024fc`  
		Last Modified: Wed, 08 May 2019 18:39:18 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e81f09a18a1e21c876bdb2b93ab40c2d32294938c8c14da1306afc78c85dc5b`  
		Last Modified: Wed, 08 May 2019 18:39:18 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a51838654f356e5455289e6a566e70e1dcf8fbb7f2cddc27757511489c8a4865`  
		Last Modified: Wed, 08 May 2019 18:40:40 GMT  
		Size: 12.5 MB (12521696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e83a1be097ba06dd9c045e9d858ef16d7dfcaea2ea8f0a7c03aab056c7ec4e5`  
		Last Modified: Wed, 08 May 2019 18:40:38 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44ccf0af924d7fde5877252371b3b934464fbb43162d86e493dbff5d0855e272`  
		Last Modified: Wed, 08 May 2019 18:40:42 GMT  
		Size: 15.7 MB (15698642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bae3e0d9a678f89ab9935758d2c23643b90fc86203ade9e19896a9810210316`  
		Last Modified: Wed, 08 May 2019 18:40:38 GMT  
		Size: 2.2 KB (2202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:794620458d3b9ee10b26a830211cffeac76c5cebc292f39dd05b89de92a07c5e`  
		Last Modified: Wed, 08 May 2019 18:40:38 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb9f2cd6fb034170dd3ce44819ab9d821785167b2eefb1c966230325ba73eee8`  
		Last Modified: Wed, 08 May 2019 18:40:38 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7615115b5410267361895d41778ec708797e2a776d5effd07aba762bf1aee9c`  
		Last Modified: Thu, 09 May 2019 02:53:32 GMT  
		Size: 31.9 MB (31894562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0300f05641c30fcba961c4d59f9dd81e567cafb4bd0217d5eb41ddc95db39397`  
		Last Modified: Thu, 09 May 2019 02:53:23 GMT  
		Size: 2.5 MB (2540292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db817d1620327ff2425fe7ff22f32c9de9e3a3cd845e0cf525a0b1385422fbc7`  
		Last Modified: Thu, 09 May 2019 02:53:22 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8e3d06fd26271931d459ca41e3772c861bf07f29ba575f7a2cd55cf5ffbf340`  
		Last Modified: Thu, 09 May 2019 02:53:22 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09ae98544f4a52b628219bfafbaf2cfa6290a2e31ae28d07c6cb54797b4bf619`  
		Last Modified: Thu, 09 May 2019 02:53:22 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6a6e119c75074a322d0242e99d8e2fb00eac676be2228ea3275571a37b0346`  
		Last Modified: Thu, 09 May 2019 02:53:38 GMT  
		Size: 36.7 MB (36680130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:latest` - linux; ppc64le

```console
$ docker pull mediawiki@sha256:2004c57ea881c713dcd266aa3cc952aa9a82c64ce75f33fb0573cc64ff4b3970
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.7 MB (198729624 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b0f922c87cd5860016c816a25740a713729eba6ebbc61a9700e633f08c3fee3`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 08 May 2019 09:05:46 GMT
ADD file:fa23694e2ef3b1ff3ac824d7d18d6951725f7f1ebfd5350392edd91f6b90d89e in / 
# Wed, 08 May 2019 09:05:50 GMT
CMD ["bash"]
# Wed, 08 May 2019 16:33:12 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 08 May 2019 16:33:15 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 08 May 2019 16:36:22 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 08 May 2019 16:36:29 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 08 May 2019 16:36:37 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 08 May 2019 16:45:05 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 08 May 2019 16:45:07 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 08 May 2019 16:46:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Wed, 08 May 2019 16:46:21 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 08 May 2019 16:46:32 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 08 May 2019 16:46:36 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 08 May 2019 16:46:39 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 08 May 2019 16:46:41 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 16:46:44 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 16:46:47 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 08 May 2019 17:22:31 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Wed, 08 May 2019 17:22:37 GMT
ENV PHP_VERSION=7.2.18
# Wed, 08 May 2019 17:22:45 GMT
ENV PHP_URL=https://www.php.net/get/php-7.2.18.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.2.18.tar.xz.asc/from/this/mirror
# Wed, 08 May 2019 17:22:53 GMT
ENV PHP_SHA256=9970dbb3ab1298c9e6aac54bebfa841c8ad14b18eead65594a68fa841364cb8d PHP_MD5=
# Wed, 08 May 2019 17:25:03 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 08 May 2019 17:25:06 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Wed, 08 May 2019 17:35:12 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 08 May 2019 17:35:16 GMT
COPY multi:0002d7d5b06fb24f987aa4b027705dc71f81957419a02be5b9014431514c25b5 in /usr/local/bin/ 
# Wed, 08 May 2019 17:35:24 GMT
RUN docker-php-ext-enable sodium
# Wed, 08 May 2019 17:35:30 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 08 May 2019 17:35:32 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Wed, 08 May 2019 17:35:41 GMT
WORKDIR /var/www/html
# Wed, 08 May 2019 17:35:45 GMT
EXPOSE 80
# Wed, 08 May 2019 17:35:51 GMT
CMD ["apache2-foreground"]
# Thu, 09 May 2019 01:31:11 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		git 		imagemagick 		python3 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 01:34:43 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libicu-dev 	; 		docker-php-ext-install 		intl 		mbstring 		mysqli 		opcache 	; 		pecl install apcu-5.1.16; 	docker-php-ext-enable 		apcu 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 01:34:50 GMT
RUN a2enmod rewrite   && {       echo '<Directory /var/www/html>';       echo '  RewriteEngine On';       echo '  RewriteCond %{REQUEST_FILENAME} !-f';       echo '  RewriteCond %{REQUEST_FILENAME} !-d';       echo '  RewriteRule ^ %{DOCUMENT_ROOT}/index.php [L]';       echo '</Directory>';     } > "$APACHE_CONFDIR/conf-available/short-url.conf"   && a2enconf short-url
# Thu, 09 May 2019 01:34:57 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 09 May 2019 01:35:04 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Thu, 09 May 2019 01:35:06 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.32
# Thu, 09 May 2019 01:35:08 GMT
ENV MEDIAWIKI_BRANCH=REL1_32
# Thu, 09 May 2019 01:35:10 GMT
ENV MEDIAWIKI_VERSION=1.32.1
# Thu, 09 May 2019 01:35:12 GMT
ENV MEDIAWIKI_SHA512=597af44ba140a50b4dfec9dd1a81db1c96e6672f33870ad15d9be875c4a7109eff57034e10762c45c47bad4afdfe27b96949dd6dd4bea24db6ea54bafd80c376
# Thu, 09 May 2019 01:35:40 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:64bfe8794b280a764f2e07634dce2977621d140ae17fb34a03635710e84c3dfb`  
		Last Modified: Wed, 08 May 2019 09:26:17 GMT  
		Size: 22.7 MB (22744914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a41e81735fa83432331becf8dd5c79995a99c53ff4febd68f25916282e96fee5`  
		Last Modified: Wed, 08 May 2019 18:32:38 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74dcd7f44931915566fc2ab31df6e0da7972d7c1761a1e352f59834ab7b12288`  
		Last Modified: Wed, 08 May 2019 18:33:35 GMT  
		Size: 61.8 MB (61833424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8267f05b2cde025cb67ff60ba71e3ab4bb1d8c894385033a77f3592d3d86a1e9`  
		Last Modified: Wed, 08 May 2019 18:32:39 GMT  
		Size: 286.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b7902741744762d78bf30128d3aaad75defd223148cf4e8013abf2b472a23e7`  
		Last Modified: Wed, 08 May 2019 18:34:58 GMT  
		Size: 17.3 MB (17345860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8304e87d7eae9b221a89adc93eabf206be22236d6aa8fd6ef9bb71b82bd3349`  
		Last Modified: Wed, 08 May 2019 18:34:37 GMT  
		Size: 479.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:480539350c707aed3dba31a230406b23f267cb31ec2d6fa3dc7f239af8dcb64e`  
		Last Modified: Wed, 08 May 2019 18:34:37 GMT  
		Size: 518.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a5f59168f7acd95d0c183946b56d3b084aef8350f8e368b4c54d0d8a9e81343`  
		Last Modified: Wed, 08 May 2019 18:38:16 GMT  
		Size: 12.5 MB (12521120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca06cfad402571a36dab9b350760456c06eb6ff69d86860e01815c448febf608`  
		Last Modified: Wed, 08 May 2019 18:38:10 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:feefdd256094a8cd3578d49e543d314c3a0373117d7c88625485af617daf2f01`  
		Last Modified: Wed, 08 May 2019 18:38:23 GMT  
		Size: 15.1 MB (15050830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddcba8d0f1ead1960e4ed8a8f9ce0987a2ce40cdb35c37ae7e7b0a8347c4145c`  
		Last Modified: Wed, 08 May 2019 18:38:10 GMT  
		Size: 2.2 KB (2202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e659b52fd9017cb4c492b613e5a79ce0ccdb48083cbc7c4b0279405f14ff7ac1`  
		Last Modified: Wed, 08 May 2019 18:38:10 GMT  
		Size: 262.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd234b7aca9a35086eb63ad27b187b272fd97f0a966f6620e532a0c683e8b2dd`  
		Last Modified: Wed, 08 May 2019 18:38:10 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c573dc396369a78f0d176aaddb389a2962121c5a23b2cf13a91ad47571c6b6`  
		Last Modified: Thu, 09 May 2019 01:43:42 GMT  
		Size: 30.0 MB (30009284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89a639ad63cc00a0cc8d9acb2dc6c4bc1625b2319b2d839211c6cfaddda18556`  
		Last Modified: Thu, 09 May 2019 01:43:28 GMT  
		Size: 2.5 MB (2537179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0e27a76b67aae30caa5f50eeded90afdb444903ef489f8cd5286341e2a459da`  
		Last Modified: Thu, 09 May 2019 01:43:27 GMT  
		Size: 593.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4479ecc70a7bea18d476fed86d8bed134b9644283343f4d5de55c95ac1c383a1`  
		Last Modified: Thu, 09 May 2019 01:43:27 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5ce8f77ceef7b44816ba03be1fbd8a3d36101b6713cba811f1dd7c22f144a23`  
		Last Modified: Thu, 09 May 2019 01:43:27 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1007dd80147bbebb43e842c93759bc2d204ecedec5a0ef80b61e034dee5621c`  
		Last Modified: Thu, 09 May 2019 01:43:42 GMT  
		Size: 36.7 MB (36680521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mediawiki:legacy`

```console
$ docker pull mediawiki@sha256:0ad76ff61080467dc35a37b41289e1d525780aac7aad92c3578e163b5eaa1c2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `mediawiki:legacy` - linux; amd64

```console
$ docker pull mediawiki@sha256:9a04779de1cca798f12a5d271266b5c708b8a282a8ac2efea870ac32fbd62e79
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.4 MB (203375792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d7f61ee04a64baf519cff73c4fce2265767993ea1084e9bc9ca47445c07d83e`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 02:29:59 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 08 May 2019 02:29:59 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 08 May 2019 02:30:20 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 08 May 2019 02:30:21 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 08 May 2019 02:30:21 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 08 May 2019 02:37:00 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 08 May 2019 02:37:00 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 08 May 2019 02:37:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Wed, 08 May 2019 02:37:13 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 08 May 2019 02:37:14 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 08 May 2019 02:37:15 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 08 May 2019 02:37:15 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 08 May 2019 02:37:16 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 02:37:16 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 02:37:17 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 08 May 2019 03:02:10 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Wed, 08 May 2019 03:02:10 GMT
ENV PHP_VERSION=7.2.18
# Wed, 08 May 2019 03:02:11 GMT
ENV PHP_URL=https://www.php.net/get/php-7.2.18.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.2.18.tar.xz.asc/from/this/mirror
# Wed, 08 May 2019 03:02:11 GMT
ENV PHP_SHA256=9970dbb3ab1298c9e6aac54bebfa841c8ad14b18eead65594a68fa841364cb8d PHP_MD5=
# Wed, 08 May 2019 03:02:20 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 08 May 2019 03:02:21 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Wed, 08 May 2019 03:06:04 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 08 May 2019 03:06:04 GMT
COPY multi:0002d7d5b06fb24f987aa4b027705dc71f81957419a02be5b9014431514c25b5 in /usr/local/bin/ 
# Wed, 08 May 2019 03:06:05 GMT
RUN docker-php-ext-enable sodium
# Wed, 08 May 2019 03:06:05 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 08 May 2019 03:06:06 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Wed, 08 May 2019 03:06:06 GMT
WORKDIR /var/www/html
# Wed, 08 May 2019 03:06:06 GMT
EXPOSE 80
# Wed, 08 May 2019 03:06:06 GMT
CMD ["apache2-foreground"]
# Wed, 08 May 2019 10:13:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		git 		imagemagick 		python3 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 10:17:31 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libicu-dev 	; 		docker-php-ext-install 		intl 		mbstring 		mysqli 		opcache 	; 		pecl install apcu-5.1.16; 	docker-php-ext-enable 		apcu 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 10:18:06 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 08 May 2019 10:18:07 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Wed, 08 May 2019 10:18:08 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.31
# Wed, 08 May 2019 10:18:08 GMT
ENV MEDIAWIKI_BRANCH=REL1_31
# Wed, 08 May 2019 10:18:08 GMT
ENV MEDIAWIKI_VERSION=1.31.1
# Wed, 08 May 2019 10:18:08 GMT
ENV MEDIAWIKI_SHA512=ee49649cc37d0a7d45a7c6d90c822c2a595df290be2b5bf085affbec3318768700a458a6e5b5b7e437651400b9641424429d6d304f870c22ec63fae86ffc5152
# Wed, 08 May 2019 10:18:20 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6307e89982cc66cd480a6f5cfe17fabddae5e6ae4e735d8f0bf857892d299772`  
		Last Modified: Wed, 08 May 2019 04:41:06 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:807218e72ce2aeb1df368e9757482e7304772ccf439962eb68d1731a0b023802`  
		Last Modified: Wed, 08 May 2019 04:41:20 GMT  
		Size: 67.4 MB (67447543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5108df1d03f88b91e3a940361ab6bc2d60d60a6f52a1ba29d8283a00d71cb0c8`  
		Last Modified: Wed, 08 May 2019 04:41:06 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:901e0b6a7fe58d5615158528d37602cd806ecab9718a880d76f85d609742f5ea`  
		Last Modified: Wed, 08 May 2019 04:41:48 GMT  
		Size: 17.1 MB (17124934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ffe11e7ab2c09aa7e0167044fe111b6a03a5e93f517405f4c416e3220e0b197`  
		Last Modified: Wed, 08 May 2019 04:41:43 GMT  
		Size: 429.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da5f7a5079567ba0d853934f7275591bd53f6740d13e4499a15a9a109982f7e8`  
		Last Modified: Wed, 08 May 2019 04:41:43 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1828a6068039e36669a6a6b2dde9750808c22d86ac075c99ac739dcbbb1e3b67`  
		Last Modified: Wed, 08 May 2019 04:42:59 GMT  
		Size: 12.5 MB (12522340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64e8e1a9a6dd712ede73018cda885173b14dfb5b41d8de2b94a6e40b579b933c`  
		Last Modified: Wed, 08 May 2019 04:42:57 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:947776ecc4cf45b79a1eb8811d0cede95489c496920cc63c3504a78d8c57a14e`  
		Last Modified: Wed, 08 May 2019 04:43:04 GMT  
		Size: 15.3 MB (15259643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:983802cfe132fab1cec030a7b88d0cb6315561c92ff7226cce5f851eb206687d`  
		Last Modified: Wed, 08 May 2019 04:42:56 GMT  
		Size: 2.2 KB (2202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e372111ec71d644fe9452c7ddb71c723515b94807261e2a9937b1c918adf5716`  
		Last Modified: Wed, 08 May 2019 04:42:56 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70d278e5adabe0687ae4a5f6ce0a8e99a53f3554bdcdee8b154635cb360d3088`  
		Last Modified: Wed, 08 May 2019 04:42:56 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7038b6910d573df901cd4193d8ab32b4f9bf611d3d0f15140e41345122b85996`  
		Last Modified: Wed, 08 May 2019 10:23:03 GMT  
		Size: 30.2 MB (30221982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f06e09b6d9eac4655ccbf25966abab364f4ddecb24861f9b0a9c460afafa8fa`  
		Last Modified: Wed, 08 May 2019 10:22:53 GMT  
		Size: 2.6 MB (2553575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a58f2049b16f7182c6f4e099be1b22fb8617db0fad9ad829f597ba54e41ff830`  
		Last Modified: Wed, 08 May 2019 10:23:15 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d49c9aacc1910a838ad3a173f4a68071884ef306a2361278fca0e651b6591d3`  
		Last Modified: Wed, 08 May 2019 10:23:15 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df1fac7dcfd9716dde9c2d46474c20578f25194cc5f1e39517d1923675201782`  
		Last Modified: Wed, 08 May 2019 10:23:28 GMT  
		Size: 35.8 MB (35750693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:legacy` - linux; arm variant v5

```console
$ docker pull mediawiki@sha256:52ee5a53c7c817243a693953712da1864d59dcecd9f8e92711d4e9cf9cc19815
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.4 MB (189364289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ad0f7bf78417bae2cc48cc0b9fb660fc4715b9b4adf5bcf6ccb8042bbd8b737`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 08 May 2019 08:53:38 GMT
ADD file:d9cc007a953434e1439cc534f397967f4f0f1bf149f1288a52f6209eca436852 in / 
# Wed, 08 May 2019 08:53:39 GMT
CMD ["bash"]
# Wed, 08 May 2019 09:48:37 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 08 May 2019 09:48:38 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 08 May 2019 09:49:17 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 08 May 2019 09:49:18 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 08 May 2019 09:49:20 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 08 May 2019 09:53:54 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 08 May 2019 09:53:54 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 08 May 2019 09:54:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Wed, 08 May 2019 09:54:17 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 08 May 2019 09:54:18 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 08 May 2019 09:54:19 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 08 May 2019 09:54:19 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 08 May 2019 09:54:20 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 09:54:20 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 09:54:21 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 08 May 2019 10:11:33 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Sat, 01 Jun 2019 00:13:37 GMT
ENV PHP_VERSION=7.2.19
# Sat, 01 Jun 2019 00:13:38 GMT
ENV PHP_URL=https://www.php.net/get/php-7.2.19.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.2.19.tar.xz.asc/from/this/mirror
# Sat, 01 Jun 2019 00:13:38 GMT
ENV PHP_SHA256=4ffa2404a88d60e993a9fe69f829ebec3eb1e006de41b6048ce5e91bbeaa9282 PHP_MD5=
# Sat, 01 Jun 2019 00:13:58 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 01 Jun 2019 00:13:58 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 01 Jun 2019 00:17:32 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 01 Jun 2019 00:17:33 GMT
COPY multi:0002d7d5b06fb24f987aa4b027705dc71f81957419a02be5b9014431514c25b5 in /usr/local/bin/ 
# Sat, 01 Jun 2019 00:17:35 GMT
RUN docker-php-ext-enable sodium
# Sat, 01 Jun 2019 00:17:35 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 01 Jun 2019 00:17:36 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Sat, 01 Jun 2019 00:17:36 GMT
WORKDIR /var/www/html
# Sat, 01 Jun 2019 00:17:37 GMT
EXPOSE 80
# Sat, 01 Jun 2019 00:17:37 GMT
CMD ["apache2-foreground"]
# Sat, 01 Jun 2019 02:26:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		git 		imagemagick 		python3 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 02:30:08 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libicu-dev 	; 		docker-php-ext-install 		intl 		mbstring 		mysqli 		opcache 	; 		pecl install apcu-5.1.16; 	docker-php-ext-enable 		apcu 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 02:30:43 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 01 Jun 2019 02:30:45 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 01 Jun 2019 02:30:45 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.31
# Sat, 01 Jun 2019 02:30:46 GMT
ENV MEDIAWIKI_BRANCH=REL1_31
# Sat, 01 Jun 2019 02:30:46 GMT
ENV MEDIAWIKI_VERSION=1.31.1
# Sat, 01 Jun 2019 02:30:47 GMT
ENV MEDIAWIKI_SHA512=ee49649cc37d0a7d45a7c6d90c822c2a595df290be2b5bf085affbec3318768700a458a6e5b5b7e437651400b9641424429d6d304f870c22ec63fae86ffc5152
# Sat, 01 Jun 2019 02:31:03 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:f23f9ce99dc288927adafc8d503252a16b6ea2b40c9cb0dca688223c56bd0235`  
		Last Modified: Wed, 08 May 2019 08:59:29 GMT  
		Size: 21.2 MB (21155863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:375098c17606cf891dc6c2de639c2d9b69384583b36d1f12394d245cb131e539`  
		Last Modified: Wed, 08 May 2019 11:06:12 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:091ccac4f8817d1ccf73efd2fd3d421caaea5daab5cf6c0574ba160a012728d2`  
		Last Modified: Wed, 08 May 2019 11:06:33 GMT  
		Size: 57.5 MB (57477758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:825181d9c853e494b46e5d4a8d3eb39bb10ec9f0c5cab11f274faec90f876cef`  
		Last Modified: Wed, 08 May 2019 11:06:12 GMT  
		Size: 286.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:099d1d7d4434733003b46ad3c7824ce4e924bc48db25b33413a65c77ad3dfe2d`  
		Last Modified: Wed, 08 May 2019 11:07:08 GMT  
		Size: 16.7 MB (16651726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15629ed4b2662d162ebc33e2d122007c635a7254b4b55d0edf277dec13d74c9a`  
		Last Modified: Wed, 08 May 2019 11:07:03 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:560f7cc5ef807ab6fb5da234ac471e25d0aa2a5aa7015801be27d254ff521db0`  
		Last Modified: Wed, 08 May 2019 11:07:03 GMT  
		Size: 511.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df32f7a9b2f08479016d154d91afd1b2fa0ff2e4a352257c4fb51a63aaf8b02d`  
		Last Modified: Sat, 01 Jun 2019 01:15:28 GMT  
		Size: 12.5 MB (12524431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0c68434605bf878852626807456ff6d8ea9dd6471ea09f260e236c3497e8613`  
		Last Modified: Sat, 01 Jun 2019 01:15:24 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e09142a09324552b0e51e19a715ce31a622fa1225e6feaf11aae256e89ddb70`  
		Last Modified: Sat, 01 Jun 2019 01:15:31 GMT  
		Size: 14.4 MB (14437073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b345e81f1997c48b7694506985bef3dffbc597da936e526362af3ee8a1b2951`  
		Last Modified: Sat, 01 Jun 2019 01:15:24 GMT  
		Size: 2.2 KB (2204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f6d6e11b4d848ecda0d319dddf54d8583afb48316414071064f949575b56443`  
		Last Modified: Sat, 01 Jun 2019 01:15:25 GMT  
		Size: 262.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afc689b77a160847dc5ed98756528ee5349e02cb23547352fa1f14a44a3419c2`  
		Last Modified: Sat, 01 Jun 2019 01:15:24 GMT  
		Size: 905.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f75d84530645037cc8070cec1c647561afb6fbab0c800c9172f6965839633b48`  
		Last Modified: Sat, 01 Jun 2019 02:36:19 GMT  
		Size: 28.9 MB (28888933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd82164e306b36d62658e5f7b318b79e0b6976810962e695b86d617abf21e236`  
		Last Modified: Sat, 01 Jun 2019 02:36:08 GMT  
		Size: 2.5 MB (2471333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48d9f23f40c9da91c714e872ad91238282226a082ca2e801c08b05e55a57afe8`  
		Last Modified: Sat, 01 Jun 2019 02:36:44 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a70b71bea22d5ebac84741a87e3582191d7b8af86dc99a56b534b407a3ecaea7`  
		Last Modified: Sat, 01 Jun 2019 02:36:44 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f5340ef485a252871e683832b3384d8dffa222cb4ca3d7d5d14272da73eeb18`  
		Last Modified: Sat, 01 Jun 2019 02:37:07 GMT  
		Size: 35.8 MB (35751278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:legacy` - linux; arm variant v7

```console
$ docker pull mediawiki@sha256:527a5e0c2422a1c85cabb03cccedb88a8e52c092cc33ff40b3e0ea5469bfa662
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.1 MB (180138763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96b71e7545600991228602ad552389a89f71b3447a94e4b2b9587fffd9c32155`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 08 May 2019 12:03:54 GMT
ADD file:7813549b5e7862c4d5ecec9e7d8da27b520dd2cc1433e66637c57bb695d4f55a in / 
# Wed, 08 May 2019 12:03:54 GMT
CMD ["bash"]
# Wed, 08 May 2019 14:37:05 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 08 May 2019 14:37:06 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 08 May 2019 14:37:37 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 08 May 2019 14:37:39 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 08 May 2019 14:37:40 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 08 May 2019 14:42:38 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 08 May 2019 14:42:39 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 08 May 2019 14:42:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Wed, 08 May 2019 14:42:58 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 08 May 2019 14:42:59 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 08 May 2019 14:43:00 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 08 May 2019 14:43:00 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 08 May 2019 14:43:01 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 14:43:01 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 14:43:02 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 08 May 2019 14:59:32 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Sat, 01 Jun 2019 00:34:09 GMT
ENV PHP_VERSION=7.2.19
# Sat, 01 Jun 2019 00:34:09 GMT
ENV PHP_URL=https://www.php.net/get/php-7.2.19.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.2.19.tar.xz.asc/from/this/mirror
# Sat, 01 Jun 2019 00:34:10 GMT
ENV PHP_SHA256=4ffa2404a88d60e993a9fe69f829ebec3eb1e006de41b6048ce5e91bbeaa9282 PHP_MD5=
# Sat, 01 Jun 2019 00:34:26 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 01 Jun 2019 00:34:26 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 01 Jun 2019 00:37:25 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 01 Jun 2019 00:37:26 GMT
COPY multi:0002d7d5b06fb24f987aa4b027705dc71f81957419a02be5b9014431514c25b5 in /usr/local/bin/ 
# Sat, 01 Jun 2019 00:37:28 GMT
RUN docker-php-ext-enable sodium
# Sat, 01 Jun 2019 00:37:29 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 01 Jun 2019 00:37:29 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Sat, 01 Jun 2019 00:37:29 GMT
WORKDIR /var/www/html
# Sat, 01 Jun 2019 00:37:30 GMT
EXPOSE 80
# Sat, 01 Jun 2019 00:37:30 GMT
CMD ["apache2-foreground"]
# Sat, 01 Jun 2019 02:31:28 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		git 		imagemagick 		python3 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 02:35:07 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libicu-dev 	; 		docker-php-ext-install 		intl 		mbstring 		mysqli 		opcache 	; 		pecl install apcu-5.1.16; 	docker-php-ext-enable 		apcu 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 02:35:48 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 01 Jun 2019 02:35:50 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 01 Jun 2019 02:35:50 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.31
# Sat, 01 Jun 2019 02:35:51 GMT
ENV MEDIAWIKI_BRANCH=REL1_31
# Sat, 01 Jun 2019 02:35:51 GMT
ENV MEDIAWIKI_VERSION=1.31.1
# Sat, 01 Jun 2019 02:35:52 GMT
ENV MEDIAWIKI_SHA512=ee49649cc37d0a7d45a7c6d90c822c2a595df290be2b5bf085affbec3318768700a458a6e5b5b7e437651400b9641424429d6d304f870c22ec63fae86ffc5152
# Sat, 01 Jun 2019 02:36:07 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:b0727b1ec48ef8920082aec023c050c83b563ae08080d9951d68fba55934bbd6`  
		Last Modified: Wed, 08 May 2019 12:10:01 GMT  
		Size: 19.3 MB (19276216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e208b62bc2ef8e00c39842047e209f0ee05486c604af8359d624ad326285642`  
		Last Modified: Wed, 08 May 2019 15:56:06 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b654776010960d429044df18c3d563b768a92d765adb835d874503dbc872672`  
		Last Modified: Wed, 08 May 2019 15:56:28 GMT  
		Size: 53.6 MB (53589670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0718556bb7e27c667cb22749130f30d651e5cb73cc88535d3cbb2f7a4fe6224e`  
		Last Modified: Wed, 08 May 2019 15:56:05 GMT  
		Size: 286.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21d279750d7c2122da564efb42a89a55b0a6cba5f6a2ac0f7a97191db4ae4fe6`  
		Last Modified: Wed, 08 May 2019 15:57:12 GMT  
		Size: 16.2 MB (16159683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a060b1fb5eab7537b954cc199873b54c44dcbddbfab9c2bb3e8bfdc8c51ec2ce`  
		Last Modified: Wed, 08 May 2019 15:57:03 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56397f3718603009afb913087c72dc6bb3b6465bb82f8f00c6bc4550aec76747`  
		Last Modified: Wed, 08 May 2019 15:57:02 GMT  
		Size: 516.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faa05c80ed7e7320a3d5d347517275b340e34b2f06c5e65f435e621ba0cbb2d3`  
		Last Modified: Sat, 01 Jun 2019 01:56:19 GMT  
		Size: 12.5 MB (12524432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdd8dbbffa7e7154464a5c254ad80d02317c8bb91c11a44e2c9297bae25d1fcd`  
		Last Modified: Sat, 01 Jun 2019 01:56:16 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1438d8a59ecaa26b06a9e60ed3ecc703c52a63336a9e437519c7143534a8726`  
		Last Modified: Sat, 01 Jun 2019 01:56:20 GMT  
		Size: 13.6 MB (13602981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77e049fa064e154f28c8acae37128f5a95ed4af0d03f6e007f376710dcaf0a8e`  
		Last Modified: Sat, 01 Jun 2019 01:56:16 GMT  
		Size: 2.2 KB (2201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1a62d3145013a434f0acaf723805b3e94cfa9e183f349b48fd89ce97b56ad40`  
		Last Modified: Sat, 01 Jun 2019 01:56:16 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5432c4c59238dfc901afc53a70b515fd76da212265f2f658254faef604ef5ab9`  
		Last Modified: Sat, 01 Jun 2019 01:56:16 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c0f414ae38167acfdcd5910440f50358bf101593555d7643cd8d7cf06632c2a`  
		Last Modified: Sat, 01 Jun 2019 02:40:50 GMT  
		Size: 26.8 MB (26812739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80632ac31b9ea95cf32141f80a93560c47359fab89617e59a254ced1a64c1819`  
		Last Modified: Sat, 01 Jun 2019 02:40:40 GMT  
		Size: 2.4 MB (2415904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eded040df3c351bde063bd79089523e60e9253817ee9b9b6d4217d1628e3b17`  
		Last Modified: Sat, 01 Jun 2019 02:41:15 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adec3b84aa9f1f29578b8178aba9f436a2b839bf3d430ee0e19179bc7eb00c7a`  
		Last Modified: Sat, 01 Jun 2019 02:41:14 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016a81d505ed877541ec4ce9c998fb49fe9cf7595e45079d86f8985ba954382b`  
		Last Modified: Sat, 01 Jun 2019 02:41:34 GMT  
		Size: 35.8 MB (35751252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:legacy` - linux; arm64 variant v8

```console
$ docker pull mediawiki@sha256:14a01be07945c62247810bca38f3729718f8e0093f4038f3253b86651cef68b8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.0 MB (187044504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11f41a764ea075c942aa5e589716622cf21b6c7343620dcbe434c25306bd1977`
-	Entrypoint: `["docker-php-entrypoint"]`
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
# Wed, 08 May 2019 14:17:39 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Wed, 08 May 2019 14:17:40 GMT
ENV PHP_VERSION=7.2.18
# Wed, 08 May 2019 14:17:41 GMT
ENV PHP_URL=https://www.php.net/get/php-7.2.18.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.2.18.tar.xz.asc/from/this/mirror
# Wed, 08 May 2019 14:17:42 GMT
ENV PHP_SHA256=9970dbb3ab1298c9e6aac54bebfa841c8ad14b18eead65594a68fa841364cb8d PHP_MD5=
# Wed, 08 May 2019 14:18:13 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 08 May 2019 14:18:14 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Wed, 08 May 2019 14:24:59 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 08 May 2019 14:25:00 GMT
COPY multi:0002d7d5b06fb24f987aa4b027705dc71f81957419a02be5b9014431514c25b5 in /usr/local/bin/ 
# Wed, 08 May 2019 14:25:03 GMT
RUN docker-php-ext-enable sodium
# Wed, 08 May 2019 14:25:04 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 08 May 2019 14:25:05 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Wed, 08 May 2019 14:25:06 GMT
WORKDIR /var/www/html
# Wed, 08 May 2019 14:25:08 GMT
EXPOSE 80
# Wed, 08 May 2019 14:25:09 GMT
CMD ["apache2-foreground"]
# Thu, 09 May 2019 05:05:16 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		git 		imagemagick 		python3 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 05:10:29 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libicu-dev 	; 		docker-php-ext-install 		intl 		mbstring 		mysqli 		opcache 	; 		pecl install apcu-5.1.16; 	docker-php-ext-enable 		apcu 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 05:11:09 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 09 May 2019 05:11:11 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Thu, 09 May 2019 05:11:12 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.31
# Thu, 09 May 2019 05:11:12 GMT
ENV MEDIAWIKI_BRANCH=REL1_31
# Thu, 09 May 2019 05:11:13 GMT
ENV MEDIAWIKI_VERSION=1.31.1
# Thu, 09 May 2019 05:11:14 GMT
ENV MEDIAWIKI_SHA512=ee49649cc37d0a7d45a7c6d90c822c2a595df290be2b5bf085affbec3318768700a458a6e5b5b7e437651400b9641424429d6d304f870c22ec63fae86ffc5152
# Thu, 09 May 2019 05:11:30 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
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
	-	`sha256:68d73a231f4080e449e68e6502533ec427a7b766c85d31a09f22d13191f765ea`  
		Last Modified: Wed, 08 May 2019 15:35:37 GMT  
		Size: 12.5 MB (12520437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19691ffc177e30c79f20a75ac96c12ffd081688c45bd4529e07c6292cf1d6d1b`  
		Last Modified: Wed, 08 May 2019 15:35:33 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bd777d47d57316bc1220d04b66d6576368950707b2a0f871bcd8a82864e2a9d`  
		Last Modified: Wed, 08 May 2019 15:35:40 GMT  
		Size: 14.2 MB (14239607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25e16be802a9018dec3f0cc8a2c345cce185b37fe8c01f323cd899722b69ac44`  
		Last Modified: Wed, 08 May 2019 15:35:33 GMT  
		Size: 2.2 KB (2200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bdfeeb7bd495fa9c974d8cd8659e32312d855bbd4df206a1f7057068407323d`  
		Last Modified: Wed, 08 May 2019 15:35:33 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4e5a9bc30afea7feb6df63482956ec64391a0b0305093ae8f6415624ed01a79`  
		Last Modified: Wed, 08 May 2019 15:35:33 GMT  
		Size: 903.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:372d20461635750ebeb1fe499a15fcf50a25a9a1ffae0fba099d48f09944c2af`  
		Last Modified: Thu, 09 May 2019 05:18:09 GMT  
		Size: 27.4 MB (27403442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cca2be8290114033ec2f1832487b8f41d1327395a86e475463acd95cf5193aa`  
		Last Modified: Thu, 09 May 2019 05:17:56 GMT  
		Size: 2.5 MB (2476635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b183f1b05530af011358b9fbc987b8c04a150307b16b9b7caacad1d0015e99a0`  
		Last Modified: Thu, 09 May 2019 05:18:32 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69a59f3599538feac27adfdbd9ea241d7bca680379a043b92390164a016458e0`  
		Last Modified: Thu, 09 May 2019 05:18:33 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d078e35e69e4cdc85a103d35194773f469b8404d313f3a5090938f50e7638ba4`  
		Last Modified: Thu, 09 May 2019 05:18:55 GMT  
		Size: 35.8 MB (35750717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:legacy` - linux; 386

```console
$ docker pull mediawiki@sha256:71452abf229ef013311198d999506c7edf10adab8654fd73e3a95e1592aebd78
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **210.6 MB (210610429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe5ac58d721eb66fe00bbdc9a208a32af4aa4ff6afe014611b4e4919d3c69e54`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 08 May 2019 10:49:55 GMT
ADD file:32d77a56ac954d1cd433a660591f374200929db022f1d0cfcf99eb6ab9e1679c in / 
# Wed, 08 May 2019 10:49:55 GMT
CMD ["bash"]
# Wed, 08 May 2019 16:35:40 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 08 May 2019 16:35:40 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 08 May 2019 16:36:06 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 08 May 2019 16:36:06 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 08 May 2019 16:36:07 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 08 May 2019 16:41:56 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 08 May 2019 16:41:57 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 08 May 2019 16:42:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Wed, 08 May 2019 16:42:09 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 08 May 2019 16:42:09 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 08 May 2019 16:42:10 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 08 May 2019 16:42:10 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 08 May 2019 16:42:10 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 16:42:10 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 16:42:10 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 08 May 2019 17:04:19 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Wed, 08 May 2019 17:04:19 GMT
ENV PHP_VERSION=7.2.18
# Wed, 08 May 2019 17:04:19 GMT
ENV PHP_URL=https://www.php.net/get/php-7.2.18.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.2.18.tar.xz.asc/from/this/mirror
# Wed, 08 May 2019 17:04:19 GMT
ENV PHP_SHA256=9970dbb3ab1298c9e6aac54bebfa841c8ad14b18eead65594a68fa841364cb8d PHP_MD5=
# Wed, 08 May 2019 17:04:30 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 08 May 2019 17:04:30 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Wed, 08 May 2019 17:07:59 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 08 May 2019 17:08:00 GMT
COPY multi:0002d7d5b06fb24f987aa4b027705dc71f81957419a02be5b9014431514c25b5 in /usr/local/bin/ 
# Wed, 08 May 2019 17:08:01 GMT
RUN docker-php-ext-enable sodium
# Wed, 08 May 2019 17:08:01 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 08 May 2019 17:08:01 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Wed, 08 May 2019 17:08:01 GMT
WORKDIR /var/www/html
# Wed, 08 May 2019 17:08:01 GMT
EXPOSE 80
# Wed, 08 May 2019 17:08:02 GMT
CMD ["apache2-foreground"]
# Thu, 09 May 2019 02:48:07 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		git 		imagemagick 		python3 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 02:50:17 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libicu-dev 	; 		docker-php-ext-install 		intl 		mbstring 		mysqli 		opcache 	; 		pecl install apcu-5.1.16; 	docker-php-ext-enable 		apcu 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 02:50:33 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 09 May 2019 02:50:34 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Thu, 09 May 2019 02:50:34 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.31
# Thu, 09 May 2019 02:50:34 GMT
ENV MEDIAWIKI_BRANCH=REL1_31
# Thu, 09 May 2019 02:50:34 GMT
ENV MEDIAWIKI_VERSION=1.31.1
# Thu, 09 May 2019 02:50:35 GMT
ENV MEDIAWIKI_SHA512=ee49649cc37d0a7d45a7c6d90c822c2a595df290be2b5bf085affbec3318768700a458a6e5b5b7e437651400b9641424429d6d304f870c22ec63fae86ffc5152
# Thu, 09 May 2019 02:50:44 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:3cf56ed221cf05f73233419fcc3a71b0afd424761fc83037e3a5cf101af5df46`  
		Last Modified: Wed, 08 May 2019 10:57:50 GMT  
		Size: 23.1 MB (23120843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2e394799d7fd8bb494dd3068fa793d651e7ccb426989bd27defd081a6bcc12f`  
		Last Modified: Wed, 08 May 2019 18:38:36 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d053425c85d9196337b5a25e4b3194f8f91c7540e201df765bb55f179df390d`  
		Last Modified: Wed, 08 May 2019 18:38:54 GMT  
		Size: 71.5 MB (71518824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:375ceda7fc26c2edccb175b8a009dd8db8b6159d82b589045c749fc2a90b409c`  
		Last Modified: Wed, 08 May 2019 18:38:35 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcee9f239c4761d5fb6def94e207d25f66b6dd1b06aca20ef921f0b7cec5fd2b`  
		Last Modified: Wed, 08 May 2019 18:39:23 GMT  
		Size: 17.6 MB (17559084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f37941543cfc620e1f153eec1e6627f09d2995dc4e11881df4b2fec57d024fc`  
		Last Modified: Wed, 08 May 2019 18:39:18 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e81f09a18a1e21c876bdb2b93ab40c2d32294938c8c14da1306afc78c85dc5b`  
		Last Modified: Wed, 08 May 2019 18:39:18 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a51838654f356e5455289e6a566e70e1dcf8fbb7f2cddc27757511489c8a4865`  
		Last Modified: Wed, 08 May 2019 18:40:40 GMT  
		Size: 12.5 MB (12521696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e83a1be097ba06dd9c045e9d858ef16d7dfcaea2ea8f0a7c03aab056c7ec4e5`  
		Last Modified: Wed, 08 May 2019 18:40:38 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44ccf0af924d7fde5877252371b3b934464fbb43162d86e493dbff5d0855e272`  
		Last Modified: Wed, 08 May 2019 18:40:42 GMT  
		Size: 15.7 MB (15698642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bae3e0d9a678f89ab9935758d2c23643b90fc86203ade9e19896a9810210316`  
		Last Modified: Wed, 08 May 2019 18:40:38 GMT  
		Size: 2.2 KB (2202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:794620458d3b9ee10b26a830211cffeac76c5cebc292f39dd05b89de92a07c5e`  
		Last Modified: Wed, 08 May 2019 18:40:38 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb9f2cd6fb034170dd3ce44819ab9d821785167b2eefb1c966230325ba73eee8`  
		Last Modified: Wed, 08 May 2019 18:40:38 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7615115b5410267361895d41778ec708797e2a776d5effd07aba762bf1aee9c`  
		Last Modified: Thu, 09 May 2019 02:53:32 GMT  
		Size: 31.9 MB (31894562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0300f05641c30fcba961c4d59f9dd81e567cafb4bd0217d5eb41ddc95db39397`  
		Last Modified: Thu, 09 May 2019 02:53:23 GMT  
		Size: 2.5 MB (2540292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a1824326f8c81a852b7c897143a7bd337cf72c7c7f64e11d0366c6ad0b7bdd`  
		Last Modified: Thu, 09 May 2019 02:53:44 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3b0adddf5166e967b30cc2bb794a282595f3fb574efdfb409d93b64d734fea7`  
		Last Modified: Thu, 09 May 2019 02:53:44 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a986004e0d07c59b27a1a29c1c66efbda642033fb89d4585f976737a56966ac0`  
		Last Modified: Thu, 09 May 2019 02:53:57 GMT  
		Size: 35.8 MB (35750754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:legacy` - linux; ppc64le

```console
$ docker pull mediawiki@sha256:8491f1ba0d073a2a132887cd8527a248e3afb0d96c621cf2a73a0ff8c65b6b2c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.8 MB (197799728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cb89d9c567228b63fe2dc61fa971903229d8f15fef47645efed7de62a21d7de`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 08 May 2019 09:05:46 GMT
ADD file:fa23694e2ef3b1ff3ac824d7d18d6951725f7f1ebfd5350392edd91f6b90d89e in / 
# Wed, 08 May 2019 09:05:50 GMT
CMD ["bash"]
# Wed, 08 May 2019 16:33:12 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 08 May 2019 16:33:15 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 08 May 2019 16:36:22 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 08 May 2019 16:36:29 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 08 May 2019 16:36:37 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 08 May 2019 16:45:05 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 08 May 2019 16:45:07 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 08 May 2019 16:46:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Wed, 08 May 2019 16:46:21 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 08 May 2019 16:46:32 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 08 May 2019 16:46:36 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 08 May 2019 16:46:39 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 08 May 2019 16:46:41 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 16:46:44 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 16:46:47 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 08 May 2019 17:22:31 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Wed, 08 May 2019 17:22:37 GMT
ENV PHP_VERSION=7.2.18
# Wed, 08 May 2019 17:22:45 GMT
ENV PHP_URL=https://www.php.net/get/php-7.2.18.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.2.18.tar.xz.asc/from/this/mirror
# Wed, 08 May 2019 17:22:53 GMT
ENV PHP_SHA256=9970dbb3ab1298c9e6aac54bebfa841c8ad14b18eead65594a68fa841364cb8d PHP_MD5=
# Wed, 08 May 2019 17:25:03 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 08 May 2019 17:25:06 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Wed, 08 May 2019 17:35:12 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 08 May 2019 17:35:16 GMT
COPY multi:0002d7d5b06fb24f987aa4b027705dc71f81957419a02be5b9014431514c25b5 in /usr/local/bin/ 
# Wed, 08 May 2019 17:35:24 GMT
RUN docker-php-ext-enable sodium
# Wed, 08 May 2019 17:35:30 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 08 May 2019 17:35:32 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Wed, 08 May 2019 17:35:41 GMT
WORKDIR /var/www/html
# Wed, 08 May 2019 17:35:45 GMT
EXPOSE 80
# Wed, 08 May 2019 17:35:51 GMT
CMD ["apache2-foreground"]
# Thu, 09 May 2019 01:31:11 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		git 		imagemagick 		python3 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 01:34:43 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libicu-dev 	; 		docker-php-ext-install 		intl 		mbstring 		mysqli 		opcache 	; 		pecl install apcu-5.1.16; 	docker-php-ext-enable 		apcu 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 01:35:56 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 09 May 2019 01:36:04 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Thu, 09 May 2019 01:36:08 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.31
# Thu, 09 May 2019 01:36:11 GMT
ENV MEDIAWIKI_BRANCH=REL1_31
# Thu, 09 May 2019 01:36:19 GMT
ENV MEDIAWIKI_VERSION=1.31.1
# Thu, 09 May 2019 01:36:21 GMT
ENV MEDIAWIKI_SHA512=ee49649cc37d0a7d45a7c6d90c822c2a595df290be2b5bf085affbec3318768700a458a6e5b5b7e437651400b9641424429d6d304f870c22ec63fae86ffc5152
# Thu, 09 May 2019 01:36:52 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:64bfe8794b280a764f2e07634dce2977621d140ae17fb34a03635710e84c3dfb`  
		Last Modified: Wed, 08 May 2019 09:26:17 GMT  
		Size: 22.7 MB (22744914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a41e81735fa83432331becf8dd5c79995a99c53ff4febd68f25916282e96fee5`  
		Last Modified: Wed, 08 May 2019 18:32:38 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74dcd7f44931915566fc2ab31df6e0da7972d7c1761a1e352f59834ab7b12288`  
		Last Modified: Wed, 08 May 2019 18:33:35 GMT  
		Size: 61.8 MB (61833424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8267f05b2cde025cb67ff60ba71e3ab4bb1d8c894385033a77f3592d3d86a1e9`  
		Last Modified: Wed, 08 May 2019 18:32:39 GMT  
		Size: 286.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b7902741744762d78bf30128d3aaad75defd223148cf4e8013abf2b472a23e7`  
		Last Modified: Wed, 08 May 2019 18:34:58 GMT  
		Size: 17.3 MB (17345860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8304e87d7eae9b221a89adc93eabf206be22236d6aa8fd6ef9bb71b82bd3349`  
		Last Modified: Wed, 08 May 2019 18:34:37 GMT  
		Size: 479.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:480539350c707aed3dba31a230406b23f267cb31ec2d6fa3dc7f239af8dcb64e`  
		Last Modified: Wed, 08 May 2019 18:34:37 GMT  
		Size: 518.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a5f59168f7acd95d0c183946b56d3b084aef8350f8e368b4c54d0d8a9e81343`  
		Last Modified: Wed, 08 May 2019 18:38:16 GMT  
		Size: 12.5 MB (12521120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca06cfad402571a36dab9b350760456c06eb6ff69d86860e01815c448febf608`  
		Last Modified: Wed, 08 May 2019 18:38:10 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:feefdd256094a8cd3578d49e543d314c3a0373117d7c88625485af617daf2f01`  
		Last Modified: Wed, 08 May 2019 18:38:23 GMT  
		Size: 15.1 MB (15050830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddcba8d0f1ead1960e4ed8a8f9ce0987a2ce40cdb35c37ae7e7b0a8347c4145c`  
		Last Modified: Wed, 08 May 2019 18:38:10 GMT  
		Size: 2.2 KB (2202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e659b52fd9017cb4c492b613e5a79ce0ccdb48083cbc7c4b0279405f14ff7ac1`  
		Last Modified: Wed, 08 May 2019 18:38:10 GMT  
		Size: 262.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd234b7aca9a35086eb63ad27b187b272fd97f0a966f6620e532a0c683e8b2dd`  
		Last Modified: Wed, 08 May 2019 18:38:10 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c573dc396369a78f0d176aaddb389a2962121c5a23b2cf13a91ad47571c6b6`  
		Last Modified: Thu, 09 May 2019 01:43:42 GMT  
		Size: 30.0 MB (30009284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89a639ad63cc00a0cc8d9acb2dc6c4bc1625b2319b2d839211c6cfaddda18556`  
		Last Modified: Thu, 09 May 2019 01:43:28 GMT  
		Size: 2.5 MB (2537179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5028e22b0c6db84305e94d5074e817a38e8f8429e8bfe3b8363f3d97389521fc`  
		Last Modified: Thu, 09 May 2019 01:44:02 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf14428c05db262c58e8b6c0e702819e334c7c476cc2bb0fe1fadefb77bef923`  
		Last Modified: Thu, 09 May 2019 01:44:02 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75aadb795d9b3b3e2dc058ffc7d061a6c436086015c5e0f5ecb86d75ac5159fc`  
		Last Modified: Thu, 09 May 2019 01:44:16 GMT  
		Size: 35.8 MB (35751215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mediawiki:legacylts`

```console
$ docker pull mediawiki@sha256:0f5813db505920092eb7f3d8c6f85baf60ec21eafeeb65b60f812a562ec76ffb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `mediawiki:legacylts` - linux; amd64

```console
$ docker pull mediawiki@sha256:2cb8c7bdbdbf0f50ac3528af2f6593aa1e315fde9bf1483e9f1e6d5564bcfbf4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.5 MB (196495693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e8aec3fcbd75474566d8b1ec1404352e6ded7c82957a78179430f26fc9d0b76`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 02:29:59 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 08 May 2019 02:29:59 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 08 May 2019 02:30:20 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 08 May 2019 02:30:21 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 08 May 2019 02:30:21 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 08 May 2019 02:37:00 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 08 May 2019 02:37:00 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 08 May 2019 02:37:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Wed, 08 May 2019 02:37:13 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 08 May 2019 02:37:14 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 08 May 2019 02:37:15 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 08 May 2019 02:37:15 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 08 May 2019 02:37:16 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 02:37:16 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 02:37:17 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 08 May 2019 03:26:01 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Wed, 08 May 2019 03:26:01 GMT
ENV PHP_VERSION=7.1.29
# Wed, 08 May 2019 03:26:01 GMT
ENV PHP_URL=https://www.php.net/get/php-7.1.29.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.1.29.tar.xz.asc/from/this/mirror
# Wed, 08 May 2019 03:26:01 GMT
ENV PHP_SHA256=b9a9b094687edc2d9c9553d5531e38e249b569127cf3b32fe1c84280509746fb PHP_MD5=
# Wed, 08 May 2019 03:26:11 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 08 May 2019 03:26:11 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Wed, 08 May 2019 03:31:16 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 08 May 2019 03:31:16 GMT
COPY multi:0002d7d5b06fb24f987aa4b027705dc71f81957419a02be5b9014431514c25b5 in /usr/local/bin/ 
# Wed, 08 May 2019 03:31:17 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 08 May 2019 03:31:17 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Wed, 08 May 2019 03:31:17 GMT
WORKDIR /var/www/html
# Wed, 08 May 2019 03:31:17 GMT
EXPOSE 80
# Wed, 08 May 2019 03:31:18 GMT
CMD ["apache2-foreground"]
# Wed, 08 May 2019 10:18:46 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		git 		imagemagick 		python 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 10:22:13 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libicu-dev 	; 		docker-php-ext-install 		intl 		mbstring 		mysqli 		opcache 	; 		pecl install apcu-5.1.16; 	docker-php-ext-enable 		apcu 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 10:22:14 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 08 May 2019 10:22:15 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Wed, 08 May 2019 10:22:15 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.27
# Wed, 08 May 2019 10:22:15 GMT
ENV MEDIAWIKI_BRANCH=REL1_27
# Wed, 08 May 2019 10:22:15 GMT
ENV MEDIAWIKI_VERSION=1.27.5
# Wed, 08 May 2019 10:22:16 GMT
ENV MEDIAWIKI_SHA512=2f341ed5afab24b81c315db6bcc58dd617f95231f71408c08bb2a8b974c95b7edd93d0f3c857f24058111c3228b9919a0f1c2fd2f85be940dc571e390225027a
# Wed, 08 May 2019 10:22:23 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6307e89982cc66cd480a6f5cfe17fabddae5e6ae4e735d8f0bf857892d299772`  
		Last Modified: Wed, 08 May 2019 04:41:06 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:807218e72ce2aeb1df368e9757482e7304772ccf439962eb68d1731a0b023802`  
		Last Modified: Wed, 08 May 2019 04:41:20 GMT  
		Size: 67.4 MB (67447543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5108df1d03f88b91e3a940361ab6bc2d60d60a6f52a1ba29d8283a00d71cb0c8`  
		Last Modified: Wed, 08 May 2019 04:41:06 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:901e0b6a7fe58d5615158528d37602cd806ecab9718a880d76f85d609742f5ea`  
		Last Modified: Wed, 08 May 2019 04:41:48 GMT  
		Size: 17.1 MB (17124934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ffe11e7ab2c09aa7e0167044fe111b6a03a5e93f517405f4c416e3220e0b197`  
		Last Modified: Wed, 08 May 2019 04:41:43 GMT  
		Size: 429.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da5f7a5079567ba0d853934f7275591bd53f6740d13e4499a15a9a109982f7e8`  
		Last Modified: Wed, 08 May 2019 04:41:43 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f32e22a66725825d41f9a17da5b225afa748c2b7a539ee909620231dd28e004b`  
		Last Modified: Wed, 08 May 2019 04:43:58 GMT  
		Size: 12.6 MB (12571229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e089551c1dc7108aaee1768bf77c64dd1c515ff095ad09efe290ff68f550a18f`  
		Last Modified: Wed, 08 May 2019 04:43:57 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89e76ec2844d3e54257901622fd80a0a7c27ea2c39cef7d194550d7c78d553a6`  
		Last Modified: Wed, 08 May 2019 04:44:02 GMT  
		Size: 14.2 MB (14235233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c4e90874d18a46d992b7b9bf35dd940dcc5470e29667ac7a9910e815f20094f`  
		Last Modified: Wed, 08 May 2019 04:43:57 GMT  
		Size: 2.2 KB (2199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c74eb0b2a498480f8d81177f30b8cf8eecf7e7915ebbc86775bf49a428c08677`  
		Last Modified: Wed, 08 May 2019 04:43:57 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46063c1dd414dbe81a319d3a28492c100644af6d7646e433111926d6325bd3bb`  
		Last Modified: Wed, 08 May 2019 10:23:43 GMT  
		Size: 28.2 MB (28232360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a477e1dd84fb0b0fa056213ff4347857284623e12731a88059f437f64853bd5`  
		Last Modified: Wed, 08 May 2019 10:23:36 GMT  
		Size: 2.5 MB (2456078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e72ae3d108ae222bdba2015df8807f4fdded6f7833defa61dcd402f737a7f70`  
		Last Modified: Wed, 08 May 2019 10:23:35 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:240f6ec799baba0bb218043167db04bbdf1996c870ffbd5d58d1e4867b16155e`  
		Last Modified: Wed, 08 May 2019 10:23:35 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f79d23cfcbea900f414016d7ffd66a7546ca5c39fab4dc55e1dc26501e0b814c`  
		Last Modified: Wed, 08 May 2019 10:23:50 GMT  
		Size: 31.9 MB (31933499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:legacylts` - linux; arm variant v5

```console
$ docker pull mediawiki@sha256:bbce1b1932f2f0431d7496becfc1b9e0a7fe09f21ae3154beb79da2f6c12103f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.7 MB (182714929 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a324709bbfe2631150e816e4de5f96cd61e8fb1211d52a6e17419a82e3aeedfa`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 08 May 2019 08:53:38 GMT
ADD file:d9cc007a953434e1439cc534f397967f4f0f1bf149f1288a52f6209eca436852 in / 
# Wed, 08 May 2019 08:53:39 GMT
CMD ["bash"]
# Wed, 08 May 2019 09:48:37 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 08 May 2019 09:48:38 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 08 May 2019 09:49:17 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 08 May 2019 09:49:18 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 08 May 2019 09:49:20 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 08 May 2019 09:53:54 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 08 May 2019 09:53:54 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 08 May 2019 09:54:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Wed, 08 May 2019 09:54:17 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 08 May 2019 09:54:18 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 08 May 2019 09:54:19 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 08 May 2019 09:54:19 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 08 May 2019 09:54:20 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 09:54:20 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 09:54:21 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 08 May 2019 10:28:09 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Sat, 01 Jun 2019 00:32:50 GMT
ENV PHP_VERSION=7.1.30
# Sat, 01 Jun 2019 00:32:51 GMT
ENV PHP_URL=https://www.php.net/get/php-7.1.30.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.1.30.tar.xz.asc/from/this/mirror
# Sat, 01 Jun 2019 00:32:51 GMT
ENV PHP_SHA256=6310599811536dbe87e4bcf212bf93196bdfaff519d0c821e4c0068efd096a7c PHP_MD5=
# Sat, 01 Jun 2019 00:33:08 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 01 Jun 2019 00:33:09 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 01 Jun 2019 00:36:13 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 01 Jun 2019 00:36:14 GMT
COPY multi:0002d7d5b06fb24f987aa4b027705dc71f81957419a02be5b9014431514c25b5 in /usr/local/bin/ 
# Sat, 01 Jun 2019 00:36:15 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 01 Jun 2019 00:36:15 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Sat, 01 Jun 2019 00:36:16 GMT
WORKDIR /var/www/html
# Sat, 01 Jun 2019 00:36:16 GMT
EXPOSE 80
# Sat, 01 Jun 2019 00:36:17 GMT
CMD ["apache2-foreground"]
# Sat, 01 Jun 2019 02:31:40 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		git 		imagemagick 		python 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 02:35:28 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libicu-dev 	; 		docker-php-ext-install 		intl 		mbstring 		mysqli 		opcache 	; 		pecl install apcu-5.1.16; 	docker-php-ext-enable 		apcu 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 02:35:31 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 01 Jun 2019 02:35:33 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 01 Jun 2019 02:35:33 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.27
# Sat, 01 Jun 2019 02:35:33 GMT
ENV MEDIAWIKI_BRANCH=REL1_27
# Sat, 01 Jun 2019 02:35:34 GMT
ENV MEDIAWIKI_VERSION=1.27.5
# Sat, 01 Jun 2019 02:35:34 GMT
ENV MEDIAWIKI_SHA512=2f341ed5afab24b81c315db6bcc58dd617f95231f71408c08bb2a8b974c95b7edd93d0f3c857f24058111c3228b9919a0f1c2fd2f85be940dc571e390225027a
# Sat, 01 Jun 2019 02:35:49 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:f23f9ce99dc288927adafc8d503252a16b6ea2b40c9cb0dca688223c56bd0235`  
		Last Modified: Wed, 08 May 2019 08:59:29 GMT  
		Size: 21.2 MB (21155863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:375098c17606cf891dc6c2de639c2d9b69384583b36d1f12394d245cb131e539`  
		Last Modified: Wed, 08 May 2019 11:06:12 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:091ccac4f8817d1ccf73efd2fd3d421caaea5daab5cf6c0574ba160a012728d2`  
		Last Modified: Wed, 08 May 2019 11:06:33 GMT  
		Size: 57.5 MB (57477758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:825181d9c853e494b46e5d4a8d3eb39bb10ec9f0c5cab11f274faec90f876cef`  
		Last Modified: Wed, 08 May 2019 11:06:12 GMT  
		Size: 286.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:099d1d7d4434733003b46ad3c7824ce4e924bc48db25b33413a65c77ad3dfe2d`  
		Last Modified: Wed, 08 May 2019 11:07:08 GMT  
		Size: 16.7 MB (16651726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15629ed4b2662d162ebc33e2d122007c635a7254b4b55d0edf277dec13d74c9a`  
		Last Modified: Wed, 08 May 2019 11:07:03 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:560f7cc5ef807ab6fb5da234ac471e25d0aa2a5aa7015801be27d254ff521db0`  
		Last Modified: Wed, 08 May 2019 11:07:03 GMT  
		Size: 511.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afb5c586e97070ff08158ec3820f0703b1839012a20bb04f40f5ff1bce4ffa62`  
		Last Modified: Sat, 01 Jun 2019 01:16:55 GMT  
		Size: 12.6 MB (12569095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f23870b0aee1e4078b8b6f89748358713b426403a00fbfe9067e5d60ee41338`  
		Last Modified: Sat, 01 Jun 2019 01:16:53 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14521c03718e8831a88aa68febb5b9eed84376a46063716dc1268d174e1304d8`  
		Last Modified: Sat, 01 Jun 2019 01:16:58 GMT  
		Size: 13.6 MB (13566491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a23208306055ec5d42a8449b671e8e1ed1e499f32774d79f772fc639a0deefd3`  
		Last Modified: Sat, 01 Jun 2019 01:16:53 GMT  
		Size: 2.2 KB (2204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9f836b29cbaec3a036c91d19a3353202a9526a6fe8f46f6070663197827c190`  
		Last Modified: Sat, 01 Jun 2019 01:16:53 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15c7aadef37b3d1c1c0268da70a723390e932fb2eadc58a91b3325a2d120a08a`  
		Last Modified: Sat, 01 Jun 2019 02:37:27 GMT  
		Size: 27.0 MB (26979266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe1203723386d86abe72ae4cf3ca84ff360408372f9a7dbeb0f58c6cbf76aa2b`  
		Last Modified: Sat, 01 Jun 2019 02:37:19 GMT  
		Size: 2.4 MB (2375508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c2cac572a2d0234b108eb1c64c38e06d13f3c3ef4f35a3e043d7ece8283180e`  
		Last Modified: Sat, 01 Jun 2019 02:37:18 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21f3a75c7ce873a8ae3bff5bbb3e08487233b0530e1af925df06c1422e39cf05`  
		Last Modified: Sat, 01 Jun 2019 02:37:19 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbeb1cbb486a6520289cfd3cb39ac97c3dd57f1956b9541eb52a836c2b9325c5`  
		Last Modified: Sat, 01 Jun 2019 02:37:38 GMT  
		Size: 31.9 MB (31933592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:legacylts` - linux; arm variant v7

```console
$ docker pull mediawiki@sha256:45c24668e3b8a770f20357e5b815d8b6d12d60992a368fc73d3748e1390efe55
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.6 MB (173553112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33da55581d123f2eee336930f024245623da6acaee7a47b32e46814cbdc1c60e`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 08 May 2019 12:03:54 GMT
ADD file:7813549b5e7862c4d5ecec9e7d8da27b520dd2cc1433e66637c57bb695d4f55a in / 
# Wed, 08 May 2019 12:03:54 GMT
CMD ["bash"]
# Wed, 08 May 2019 14:37:05 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 08 May 2019 14:37:06 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 08 May 2019 14:37:37 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 08 May 2019 14:37:39 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 08 May 2019 14:37:40 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 08 May 2019 14:42:38 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 08 May 2019 14:42:39 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 08 May 2019 14:42:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Wed, 08 May 2019 14:42:58 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 08 May 2019 14:42:59 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 08 May 2019 14:43:00 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 08 May 2019 14:43:00 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 08 May 2019 14:43:01 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 14:43:01 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 14:43:02 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 08 May 2019 15:16:38 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Sat, 01 Jun 2019 01:03:51 GMT
ENV PHP_VERSION=7.1.30
# Sat, 01 Jun 2019 01:03:52 GMT
ENV PHP_URL=https://www.php.net/get/php-7.1.30.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.1.30.tar.xz.asc/from/this/mirror
# Sat, 01 Jun 2019 01:03:52 GMT
ENV PHP_SHA256=6310599811536dbe87e4bcf212bf93196bdfaff519d0c821e4c0068efd096a7c PHP_MD5=
# Sat, 01 Jun 2019 01:04:06 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 01 Jun 2019 01:04:07 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 01 Jun 2019 01:06:55 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 01 Jun 2019 01:06:56 GMT
COPY multi:0002d7d5b06fb24f987aa4b027705dc71f81957419a02be5b9014431514c25b5 in /usr/local/bin/ 
# Sat, 01 Jun 2019 01:06:57 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 01 Jun 2019 01:06:58 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Sat, 01 Jun 2019 01:06:58 GMT
WORKDIR /var/www/html
# Sat, 01 Jun 2019 01:06:59 GMT
EXPOSE 80
# Sat, 01 Jun 2019 01:06:59 GMT
CMD ["apache2-foreground"]
# Sat, 01 Jun 2019 02:36:36 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		git 		imagemagick 		python 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 02:39:55 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libicu-dev 	; 		docker-php-ext-install 		intl 		mbstring 		mysqli 		opcache 	; 		pecl install apcu-5.1.16; 	docker-php-ext-enable 		apcu 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 02:39:57 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 01 Jun 2019 02:39:59 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 01 Jun 2019 02:39:59 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.27
# Sat, 01 Jun 2019 02:40:00 GMT
ENV MEDIAWIKI_BRANCH=REL1_27
# Sat, 01 Jun 2019 02:40:00 GMT
ENV MEDIAWIKI_VERSION=1.27.5
# Sat, 01 Jun 2019 02:40:01 GMT
ENV MEDIAWIKI_SHA512=2f341ed5afab24b81c315db6bcc58dd617f95231f71408c08bb2a8b974c95b7edd93d0f3c857f24058111c3228b9919a0f1c2fd2f85be940dc571e390225027a
# Sat, 01 Jun 2019 02:40:18 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:b0727b1ec48ef8920082aec023c050c83b563ae08080d9951d68fba55934bbd6`  
		Last Modified: Wed, 08 May 2019 12:10:01 GMT  
		Size: 19.3 MB (19276216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e208b62bc2ef8e00c39842047e209f0ee05486c604af8359d624ad326285642`  
		Last Modified: Wed, 08 May 2019 15:56:06 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b654776010960d429044df18c3d563b768a92d765adb835d874503dbc872672`  
		Last Modified: Wed, 08 May 2019 15:56:28 GMT  
		Size: 53.6 MB (53589670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0718556bb7e27c667cb22749130f30d651e5cb73cc88535d3cbb2f7a4fe6224e`  
		Last Modified: Wed, 08 May 2019 15:56:05 GMT  
		Size: 286.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21d279750d7c2122da564efb42a89a55b0a6cba5f6a2ac0f7a97191db4ae4fe6`  
		Last Modified: Wed, 08 May 2019 15:57:12 GMT  
		Size: 16.2 MB (16159683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a060b1fb5eab7537b954cc199873b54c44dcbddbfab9c2bb3e8bfdc8c51ec2ce`  
		Last Modified: Wed, 08 May 2019 15:57:03 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56397f3718603009afb913087c72dc6bb3b6465bb82f8f00c6bc4550aec76747`  
		Last Modified: Wed, 08 May 2019 15:57:02 GMT  
		Size: 516.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:711ca833e0b2b7874bfad1f3ea514bcfcd43f8aab1af9c9e93a8c28ee4792e19`  
		Last Modified: Sat, 01 Jun 2019 01:58:25 GMT  
		Size: 12.6 MB (12569113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c577f5a6ce3b3ec82eb40a417ad501ef98dceeffada7372e05255172a753879`  
		Last Modified: Sat, 01 Jun 2019 01:58:22 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b68b896bf50b808274e7b0aa065b94fe9833138e1a090916431b11b23e1c230a`  
		Last Modified: Sat, 01 Jun 2019 01:58:31 GMT  
		Size: 12.8 MB (12772749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c487ec2306106ada064ef56ae379f143579da9fa09b9647b0bed768bb3c4b098`  
		Last Modified: Sat, 01 Jun 2019 01:58:22 GMT  
		Size: 2.2 KB (2202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4728e682eb026d237c58520da3650d9e002ed161ec7d1f62e2bc43d4c415d030`  
		Last Modified: Sat, 01 Jun 2019 01:58:22 GMT  
		Size: 903.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:414797b3b7dd209b2c4e61746ddf3f3f32668266e219e6c01cae5206576681f2`  
		Last Modified: Sat, 01 Jun 2019 02:41:52 GMT  
		Size: 24.9 MB (24921047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48c68b0740708e5eaceed5bb9e8f24c1058e03af4de7d23214840ba110f3129f`  
		Last Modified: Sat, 01 Jun 2019 02:41:45 GMT  
		Size: 2.3 MB (2325395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:463f37f11193637206c565bdb4684472f366892e524f831d4aa4163ff1424f62`  
		Last Modified: Sat, 01 Jun 2019 02:41:45 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c094677296ad17d7ad8b980d81848e669b84b27ee992141614774d1057aa47b`  
		Last Modified: Sat, 01 Jun 2019 02:41:45 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:954a958faa2292ce63d227656fbad12e37eab0864e871d2a4fbb082b7024c2e8`  
		Last Modified: Sat, 01 Jun 2019 02:42:06 GMT  
		Size: 31.9 MB (31933612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:legacylts` - linux; arm64 variant v8

```console
$ docker pull mediawiki@sha256:8f5e339ef65dff2f405eba5d9e9933ab7860164cdd687afdbdb106328fa358e8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.8 MB (180808064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c758b7c86ed1ca60fbafb67392a791d9165b2bc184c4d125b3db460dee3aa79`
-	Entrypoint: `["docker-php-entrypoint"]`
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
# Wed, 08 May 2019 14:59:35 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Wed, 08 May 2019 14:59:36 GMT
ENV PHP_VERSION=7.1.29
# Wed, 08 May 2019 14:59:37 GMT
ENV PHP_URL=https://www.php.net/get/php-7.1.29.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.1.29.tar.xz.asc/from/this/mirror
# Wed, 08 May 2019 14:59:37 GMT
ENV PHP_SHA256=b9a9b094687edc2d9c9553d5531e38e249b569127cf3b32fe1c84280509746fb PHP_MD5=
# Wed, 08 May 2019 15:00:08 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 08 May 2019 15:00:08 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Wed, 08 May 2019 15:07:18 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 08 May 2019 15:07:19 GMT
COPY multi:0002d7d5b06fb24f987aa4b027705dc71f81957419a02be5b9014431514c25b5 in /usr/local/bin/ 
# Wed, 08 May 2019 15:07:20 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 08 May 2019 15:07:22 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Wed, 08 May 2019 15:07:23 GMT
WORKDIR /var/www/html
# Wed, 08 May 2019 15:07:24 GMT
EXPOSE 80
# Wed, 08 May 2019 15:07:25 GMT
CMD ["apache2-foreground"]
# Thu, 09 May 2019 05:12:31 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		git 		imagemagick 		python 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 05:17:06 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libicu-dev 	; 		docker-php-ext-install 		intl 		mbstring 		mysqli 		opcache 	; 		pecl install apcu-5.1.16; 	docker-php-ext-enable 		apcu 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 05:17:08 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 09 May 2019 05:17:10 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Thu, 09 May 2019 05:17:11 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.27
# Thu, 09 May 2019 05:17:12 GMT
ENV MEDIAWIKI_BRANCH=REL1_27
# Thu, 09 May 2019 05:17:12 GMT
ENV MEDIAWIKI_VERSION=1.27.5
# Thu, 09 May 2019 05:17:13 GMT
ENV MEDIAWIKI_SHA512=2f341ed5afab24b81c315db6bcc58dd617f95231f71408c08bb2a8b974c95b7edd93d0f3c857f24058111c3228b9919a0f1c2fd2f85be940dc571e390225027a
# Thu, 09 May 2019 05:17:27 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
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
	-	`sha256:332690384408e6ebfe236a51f5153e3244504cc79c887339d9aedbfb8c25dede`  
		Last Modified: Wed, 08 May 2019 15:37:20 GMT  
		Size: 12.6 MB (12569343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf4fd0edb9cc8ab3d0e5a52955b507a60864290c51047d0cc34334863d289247`  
		Last Modified: Wed, 08 May 2019 15:37:18 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06aad4afb2b27e250f9d016f5a891aa85de84eb85b79ad45d73f6b169a72dec3`  
		Last Modified: Wed, 08 May 2019 15:37:24 GMT  
		Size: 13.4 MB (13381848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5fc690638478b3fccaa96ddb9d60e58184075a7f56575c6fa13e83de84d64f3`  
		Last Modified: Wed, 08 May 2019 15:37:17 GMT  
		Size: 2.2 KB (2205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99e8f4d09b3bc2b273e5a6a80c9177107b37cd62150515db7c4265a80c3f419b`  
		Last Modified: Wed, 08 May 2019 15:37:17 GMT  
		Size: 906.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dbe2b24d5e9b48c2bc99af14fdfbfdef32eee4a3ebab21dc2e1c11d43b50be7`  
		Last Modified: Thu, 09 May 2019 05:19:20 GMT  
		Size: 25.9 MB (25887204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33ca6529bbb672187f334db72804a5257de224295b6b98f843f95a6f288bf7a4`  
		Last Modified: Thu, 09 May 2019 05:19:11 GMT  
		Size: 2.4 MB (2382759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24da7e3a1ea7a02cade59a02e70f118b5d104033e5f136e2ef2c85461c4081e5`  
		Last Modified: Thu, 09 May 2019 05:19:10 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae196bb0149ef12b85542adc394c03be681e60655fd4856650e5a45a01fa6dda`  
		Last Modified: Thu, 09 May 2019 05:19:10 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e8981bab940cfceb335447d4881c03f4c2a6104933e6c8f77d0c000e64ed772`  
		Last Modified: Thu, 09 May 2019 05:19:34 GMT  
		Size: 31.9 MB (31933500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:legacylts` - linux; 386

```console
$ docker pull mediawiki@sha256:e08f235439d6d07404037b7de0e31384c960a924a822073e7e971cbb023889a1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.8 MB (203789984 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:250ae86d68a4fd70965b6522c079ccfe5402f8f1dbcec5ce0d1a2a8068a02102`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 08 May 2019 10:49:55 GMT
ADD file:32d77a56ac954d1cd433a660591f374200929db022f1d0cfcf99eb6ab9e1679c in / 
# Wed, 08 May 2019 10:49:55 GMT
CMD ["bash"]
# Wed, 08 May 2019 16:35:40 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 08 May 2019 16:35:40 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 08 May 2019 16:36:06 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 08 May 2019 16:36:06 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 08 May 2019 16:36:07 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 08 May 2019 16:41:56 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 08 May 2019 16:41:57 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 08 May 2019 16:42:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Wed, 08 May 2019 16:42:09 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 08 May 2019 16:42:09 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 08 May 2019 16:42:10 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 08 May 2019 16:42:10 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 08 May 2019 16:42:10 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 16:42:10 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 16:42:10 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 08 May 2019 17:25:53 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Wed, 08 May 2019 17:25:53 GMT
ENV PHP_VERSION=7.1.29
# Wed, 08 May 2019 17:25:53 GMT
ENV PHP_URL=https://www.php.net/get/php-7.1.29.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.1.29.tar.xz.asc/from/this/mirror
# Wed, 08 May 2019 17:25:53 GMT
ENV PHP_SHA256=b9a9b094687edc2d9c9553d5531e38e249b569127cf3b32fe1c84280509746fb PHP_MD5=
# Wed, 08 May 2019 17:26:03 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 08 May 2019 17:26:03 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Wed, 08 May 2019 17:29:09 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 08 May 2019 17:29:10 GMT
COPY multi:0002d7d5b06fb24f987aa4b027705dc71f81957419a02be5b9014431514c25b5 in /usr/local/bin/ 
# Wed, 08 May 2019 17:29:10 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 08 May 2019 17:29:10 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Wed, 08 May 2019 17:29:10 GMT
WORKDIR /var/www/html
# Wed, 08 May 2019 17:29:10 GMT
EXPOSE 80
# Wed, 08 May 2019 17:29:11 GMT
CMD ["apache2-foreground"]
# Thu, 09 May 2019 02:51:02 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		git 		imagemagick 		python 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 02:53:02 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libicu-dev 	; 		docker-php-ext-install 		intl 		mbstring 		mysqli 		opcache 	; 		pecl install apcu-5.1.16; 	docker-php-ext-enable 		apcu 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 02:53:03 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 09 May 2019 02:53:03 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Thu, 09 May 2019 02:53:04 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.27
# Thu, 09 May 2019 02:53:04 GMT
ENV MEDIAWIKI_BRANCH=REL1_27
# Thu, 09 May 2019 02:53:04 GMT
ENV MEDIAWIKI_VERSION=1.27.5
# Thu, 09 May 2019 02:53:04 GMT
ENV MEDIAWIKI_SHA512=2f341ed5afab24b81c315db6bcc58dd617f95231f71408c08bb2a8b974c95b7edd93d0f3c857f24058111c3228b9919a0f1c2fd2f85be940dc571e390225027a
# Thu, 09 May 2019 02:53:12 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:3cf56ed221cf05f73233419fcc3a71b0afd424761fc83037e3a5cf101af5df46`  
		Last Modified: Wed, 08 May 2019 10:57:50 GMT  
		Size: 23.1 MB (23120843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2e394799d7fd8bb494dd3068fa793d651e7ccb426989bd27defd081a6bcc12f`  
		Last Modified: Wed, 08 May 2019 18:38:36 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d053425c85d9196337b5a25e4b3194f8f91c7540e201df765bb55f179df390d`  
		Last Modified: Wed, 08 May 2019 18:38:54 GMT  
		Size: 71.5 MB (71518824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:375ceda7fc26c2edccb175b8a009dd8db8b6159d82b589045c749fc2a90b409c`  
		Last Modified: Wed, 08 May 2019 18:38:35 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcee9f239c4761d5fb6def94e207d25f66b6dd1b06aca20ef921f0b7cec5fd2b`  
		Last Modified: Wed, 08 May 2019 18:39:23 GMT  
		Size: 17.6 MB (17559084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f37941543cfc620e1f153eec1e6627f09d2995dc4e11881df4b2fec57d024fc`  
		Last Modified: Wed, 08 May 2019 18:39:18 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e81f09a18a1e21c876bdb2b93ab40c2d32294938c8c14da1306afc78c85dc5b`  
		Last Modified: Wed, 08 May 2019 18:39:18 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc427cdf6cff5d89c88e8b2c4abc93c117e6b2c5259dbc59dedaf3ded4152a64`  
		Last Modified: Wed, 08 May 2019 18:41:40 GMT  
		Size: 12.6 MB (12570615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7698dcb7705a5037d64765cdcf53eb99fa6d646e2b708ce98804cb8ac7d08fa`  
		Last Modified: Wed, 08 May 2019 18:41:38 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31b9e48aa3a4bbba733e2f92d18123754c1877626867056b3aea637bd1622d26`  
		Last Modified: Wed, 08 May 2019 18:41:42 GMT  
		Size: 14.7 MB (14722081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:995fefbfadf66490187fbc94346367ed34bb3f96b840258fc872fb2ba5928235`  
		Last Modified: Wed, 08 May 2019 18:41:38 GMT  
		Size: 2.2 KB (2202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb4b629355e9b3e8fd02615130e270b1961d115451943890a2b0bd0e35a3524d`  
		Last Modified: Wed, 08 May 2019 18:41:38 GMT  
		Size: 903.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3da2ed88eb13235673c1a4cb6b987acaf381763c0168e1d7a971124132249987`  
		Last Modified: Thu, 09 May 2019 02:54:11 GMT  
		Size: 29.9 MB (29913855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5cbd5f7de1bde56ddde0215389922bdd34502612c57f2f1ebc698a3f0b6efed`  
		Last Modified: Thu, 09 May 2019 02:54:04 GMT  
		Size: 2.4 MB (2445823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2a16aadc575f409cfbd19ec55b9258d8824b1c3d94e855781f3669529aac4c6`  
		Last Modified: Thu, 09 May 2019 02:54:03 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeabc3e2ce4dbbf62a06c817a40ded005955dedd1aae7aa4677586891dfd30af`  
		Last Modified: Thu, 09 May 2019 02:54:03 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0646242db78e514efba68d7f4870811323f9eaa07d8bd729cafb138ea5e6a78`  
		Last Modified: Thu, 09 May 2019 02:54:18 GMT  
		Size: 31.9 MB (31933385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:legacylts` - linux; ppc64le

```console
$ docker pull mediawiki@sha256:f816578d0c1819306ab78a438c2cca580eb44097ec34a4aa87f918aff6ed86ec
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.9 MB (190902978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3cdc6e65f5b54c808f9820e363d1837be0ba218bc38639424bcdea124cc5857`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 08 May 2019 09:05:46 GMT
ADD file:fa23694e2ef3b1ff3ac824d7d18d6951725f7f1ebfd5350392edd91f6b90d89e in / 
# Wed, 08 May 2019 09:05:50 GMT
CMD ["bash"]
# Wed, 08 May 2019 16:33:12 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 08 May 2019 16:33:15 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 08 May 2019 16:36:22 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 08 May 2019 16:36:29 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 08 May 2019 16:36:37 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 08 May 2019 16:45:05 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 08 May 2019 16:45:07 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 08 May 2019 16:46:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Wed, 08 May 2019 16:46:21 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 08 May 2019 16:46:32 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 08 May 2019 16:46:36 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 08 May 2019 16:46:39 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 08 May 2019 16:46:41 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 16:46:44 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 16:46:47 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 08 May 2019 18:00:21 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Wed, 08 May 2019 18:00:25 GMT
ENV PHP_VERSION=7.1.29
# Wed, 08 May 2019 18:00:31 GMT
ENV PHP_URL=https://www.php.net/get/php-7.1.29.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.1.29.tar.xz.asc/from/this/mirror
# Wed, 08 May 2019 18:00:36 GMT
ENV PHP_SHA256=b9a9b094687edc2d9c9553d5531e38e249b569127cf3b32fe1c84280509746fb PHP_MD5=
# Wed, 08 May 2019 18:01:28 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 08 May 2019 18:01:30 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Wed, 08 May 2019 18:08:40 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 08 May 2019 18:08:45 GMT
COPY multi:0002d7d5b06fb24f987aa4b027705dc71f81957419a02be5b9014431514c25b5 in /usr/local/bin/ 
# Wed, 08 May 2019 18:08:50 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 08 May 2019 18:08:52 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Wed, 08 May 2019 18:08:55 GMT
WORKDIR /var/www/html
# Wed, 08 May 2019 18:08:58 GMT
EXPOSE 80
# Wed, 08 May 2019 18:09:01 GMT
CMD ["apache2-foreground"]
# Thu, 09 May 2019 01:38:43 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		git 		imagemagick 		python 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 01:42:05 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libicu-dev 	; 		docker-php-ext-install 		intl 		mbstring 		mysqli 		opcache 	; 		pecl install apcu-5.1.16; 	docker-php-ext-enable 		apcu 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 01:42:14 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 09 May 2019 01:42:21 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Thu, 09 May 2019 01:42:23 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.27
# Thu, 09 May 2019 01:42:26 GMT
ENV MEDIAWIKI_BRANCH=REL1_27
# Thu, 09 May 2019 01:42:28 GMT
ENV MEDIAWIKI_VERSION=1.27.5
# Thu, 09 May 2019 01:42:31 GMT
ENV MEDIAWIKI_SHA512=2f341ed5afab24b81c315db6bcc58dd617f95231f71408c08bb2a8b974c95b7edd93d0f3c857f24058111c3228b9919a0f1c2fd2f85be940dc571e390225027a
# Thu, 09 May 2019 01:43:02 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:64bfe8794b280a764f2e07634dce2977621d140ae17fb34a03635710e84c3dfb`  
		Last Modified: Wed, 08 May 2019 09:26:17 GMT  
		Size: 22.7 MB (22744914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a41e81735fa83432331becf8dd5c79995a99c53ff4febd68f25916282e96fee5`  
		Last Modified: Wed, 08 May 2019 18:32:38 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74dcd7f44931915566fc2ab31df6e0da7972d7c1761a1e352f59834ab7b12288`  
		Last Modified: Wed, 08 May 2019 18:33:35 GMT  
		Size: 61.8 MB (61833424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8267f05b2cde025cb67ff60ba71e3ab4bb1d8c894385033a77f3592d3d86a1e9`  
		Last Modified: Wed, 08 May 2019 18:32:39 GMT  
		Size: 286.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b7902741744762d78bf30128d3aaad75defd223148cf4e8013abf2b472a23e7`  
		Last Modified: Wed, 08 May 2019 18:34:58 GMT  
		Size: 17.3 MB (17345860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8304e87d7eae9b221a89adc93eabf206be22236d6aa8fd6ef9bb71b82bd3349`  
		Last Modified: Wed, 08 May 2019 18:34:37 GMT  
		Size: 479.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:480539350c707aed3dba31a230406b23f267cb31ec2d6fa3dc7f239af8dcb64e`  
		Last Modified: Wed, 08 May 2019 18:34:37 GMT  
		Size: 518.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a543d7298a32a9daa541f904373a909055b21b1dd43853614c053709be06e33`  
		Last Modified: Wed, 08 May 2019 18:40:40 GMT  
		Size: 12.6 MB (12569919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0dfeb92068c6b3876290ad2cb3246a82db9362ce9a301974239520bc91fbc78`  
		Last Modified: Wed, 08 May 2019 18:40:35 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48002a3b3f3724623560e681d7cd6b937cb897f12aebb80fed1e42228475170b`  
		Last Modified: Wed, 08 May 2019 18:40:48 GMT  
		Size: 14.0 MB (14009828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd961fa4d930b8fe5b04f14611e6cfc90b2955c477ca2d97a48ccd8c3b95bc43`  
		Last Modified: Wed, 08 May 2019 18:40:36 GMT  
		Size: 2.2 KB (2203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3c66236b7251a883f067c3e5dd0a03346feab1a22ecbf0c3a14cd926269c871`  
		Last Modified: Wed, 08 May 2019 18:40:36 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16c00c28b02f2dded9ca72b6f3fe01e73fa04366039ec8c7fa325b5a73e0dbe1`  
		Last Modified: Thu, 09 May 2019 01:44:46 GMT  
		Size: 28.0 MB (28023672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f42a243a32a52b50e02a712eb7f0e236048e4f23cf9984ad7d3cb614991347cf`  
		Last Modified: Thu, 09 May 2019 01:44:39 GMT  
		Size: 2.4 MB (2436073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcde00e5f374816b51dd21f7d2dc1bd7f38296fa140074a5947e43c66e8644c4`  
		Last Modified: Thu, 09 May 2019 01:44:38 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33101b8b97d6e2b7687fde42af1ab4f95f031e9161a56d04b62446e49df0bddf`  
		Last Modified: Thu, 09 May 2019 01:44:38 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221bbcd0febd22da044aed505ce87375edcd80d7893efacd81c6fd94f308edf2`  
		Last Modified: Thu, 09 May 2019 01:44:52 GMT  
		Size: 31.9 MB (31933647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mediawiki:lts`

```console
$ docker pull mediawiki@sha256:0ad76ff61080467dc35a37b41289e1d525780aac7aad92c3578e163b5eaa1c2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `mediawiki:lts` - linux; amd64

```console
$ docker pull mediawiki@sha256:9a04779de1cca798f12a5d271266b5c708b8a282a8ac2efea870ac32fbd62e79
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.4 MB (203375792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d7f61ee04a64baf519cff73c4fce2265767993ea1084e9bc9ca47445c07d83e`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 02:29:59 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 08 May 2019 02:29:59 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 08 May 2019 02:30:20 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 08 May 2019 02:30:21 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 08 May 2019 02:30:21 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 08 May 2019 02:37:00 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 08 May 2019 02:37:00 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 08 May 2019 02:37:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Wed, 08 May 2019 02:37:13 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 08 May 2019 02:37:14 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 08 May 2019 02:37:15 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 08 May 2019 02:37:15 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 08 May 2019 02:37:16 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 02:37:16 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 02:37:17 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 08 May 2019 03:02:10 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Wed, 08 May 2019 03:02:10 GMT
ENV PHP_VERSION=7.2.18
# Wed, 08 May 2019 03:02:11 GMT
ENV PHP_URL=https://www.php.net/get/php-7.2.18.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.2.18.tar.xz.asc/from/this/mirror
# Wed, 08 May 2019 03:02:11 GMT
ENV PHP_SHA256=9970dbb3ab1298c9e6aac54bebfa841c8ad14b18eead65594a68fa841364cb8d PHP_MD5=
# Wed, 08 May 2019 03:02:20 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 08 May 2019 03:02:21 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Wed, 08 May 2019 03:06:04 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 08 May 2019 03:06:04 GMT
COPY multi:0002d7d5b06fb24f987aa4b027705dc71f81957419a02be5b9014431514c25b5 in /usr/local/bin/ 
# Wed, 08 May 2019 03:06:05 GMT
RUN docker-php-ext-enable sodium
# Wed, 08 May 2019 03:06:05 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 08 May 2019 03:06:06 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Wed, 08 May 2019 03:06:06 GMT
WORKDIR /var/www/html
# Wed, 08 May 2019 03:06:06 GMT
EXPOSE 80
# Wed, 08 May 2019 03:06:06 GMT
CMD ["apache2-foreground"]
# Wed, 08 May 2019 10:13:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		git 		imagemagick 		python3 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 10:17:31 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libicu-dev 	; 		docker-php-ext-install 		intl 		mbstring 		mysqli 		opcache 	; 		pecl install apcu-5.1.16; 	docker-php-ext-enable 		apcu 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 10:18:06 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 08 May 2019 10:18:07 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Wed, 08 May 2019 10:18:08 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.31
# Wed, 08 May 2019 10:18:08 GMT
ENV MEDIAWIKI_BRANCH=REL1_31
# Wed, 08 May 2019 10:18:08 GMT
ENV MEDIAWIKI_VERSION=1.31.1
# Wed, 08 May 2019 10:18:08 GMT
ENV MEDIAWIKI_SHA512=ee49649cc37d0a7d45a7c6d90c822c2a595df290be2b5bf085affbec3318768700a458a6e5b5b7e437651400b9641424429d6d304f870c22ec63fae86ffc5152
# Wed, 08 May 2019 10:18:20 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6307e89982cc66cd480a6f5cfe17fabddae5e6ae4e735d8f0bf857892d299772`  
		Last Modified: Wed, 08 May 2019 04:41:06 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:807218e72ce2aeb1df368e9757482e7304772ccf439962eb68d1731a0b023802`  
		Last Modified: Wed, 08 May 2019 04:41:20 GMT  
		Size: 67.4 MB (67447543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5108df1d03f88b91e3a940361ab6bc2d60d60a6f52a1ba29d8283a00d71cb0c8`  
		Last Modified: Wed, 08 May 2019 04:41:06 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:901e0b6a7fe58d5615158528d37602cd806ecab9718a880d76f85d609742f5ea`  
		Last Modified: Wed, 08 May 2019 04:41:48 GMT  
		Size: 17.1 MB (17124934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ffe11e7ab2c09aa7e0167044fe111b6a03a5e93f517405f4c416e3220e0b197`  
		Last Modified: Wed, 08 May 2019 04:41:43 GMT  
		Size: 429.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da5f7a5079567ba0d853934f7275591bd53f6740d13e4499a15a9a109982f7e8`  
		Last Modified: Wed, 08 May 2019 04:41:43 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1828a6068039e36669a6a6b2dde9750808c22d86ac075c99ac739dcbbb1e3b67`  
		Last Modified: Wed, 08 May 2019 04:42:59 GMT  
		Size: 12.5 MB (12522340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64e8e1a9a6dd712ede73018cda885173b14dfb5b41d8de2b94a6e40b579b933c`  
		Last Modified: Wed, 08 May 2019 04:42:57 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:947776ecc4cf45b79a1eb8811d0cede95489c496920cc63c3504a78d8c57a14e`  
		Last Modified: Wed, 08 May 2019 04:43:04 GMT  
		Size: 15.3 MB (15259643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:983802cfe132fab1cec030a7b88d0cb6315561c92ff7226cce5f851eb206687d`  
		Last Modified: Wed, 08 May 2019 04:42:56 GMT  
		Size: 2.2 KB (2202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e372111ec71d644fe9452c7ddb71c723515b94807261e2a9937b1c918adf5716`  
		Last Modified: Wed, 08 May 2019 04:42:56 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70d278e5adabe0687ae4a5f6ce0a8e99a53f3554bdcdee8b154635cb360d3088`  
		Last Modified: Wed, 08 May 2019 04:42:56 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7038b6910d573df901cd4193d8ab32b4f9bf611d3d0f15140e41345122b85996`  
		Last Modified: Wed, 08 May 2019 10:23:03 GMT  
		Size: 30.2 MB (30221982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f06e09b6d9eac4655ccbf25966abab364f4ddecb24861f9b0a9c460afafa8fa`  
		Last Modified: Wed, 08 May 2019 10:22:53 GMT  
		Size: 2.6 MB (2553575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a58f2049b16f7182c6f4e099be1b22fb8617db0fad9ad829f597ba54e41ff830`  
		Last Modified: Wed, 08 May 2019 10:23:15 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d49c9aacc1910a838ad3a173f4a68071884ef306a2361278fca0e651b6591d3`  
		Last Modified: Wed, 08 May 2019 10:23:15 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df1fac7dcfd9716dde9c2d46474c20578f25194cc5f1e39517d1923675201782`  
		Last Modified: Wed, 08 May 2019 10:23:28 GMT  
		Size: 35.8 MB (35750693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:lts` - linux; arm variant v5

```console
$ docker pull mediawiki@sha256:52ee5a53c7c817243a693953712da1864d59dcecd9f8e92711d4e9cf9cc19815
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.4 MB (189364289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ad0f7bf78417bae2cc48cc0b9fb660fc4715b9b4adf5bcf6ccb8042bbd8b737`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 08 May 2019 08:53:38 GMT
ADD file:d9cc007a953434e1439cc534f397967f4f0f1bf149f1288a52f6209eca436852 in / 
# Wed, 08 May 2019 08:53:39 GMT
CMD ["bash"]
# Wed, 08 May 2019 09:48:37 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 08 May 2019 09:48:38 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 08 May 2019 09:49:17 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 08 May 2019 09:49:18 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 08 May 2019 09:49:20 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 08 May 2019 09:53:54 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 08 May 2019 09:53:54 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 08 May 2019 09:54:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Wed, 08 May 2019 09:54:17 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 08 May 2019 09:54:18 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 08 May 2019 09:54:19 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 08 May 2019 09:54:19 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 08 May 2019 09:54:20 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 09:54:20 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 09:54:21 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 08 May 2019 10:11:33 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Sat, 01 Jun 2019 00:13:37 GMT
ENV PHP_VERSION=7.2.19
# Sat, 01 Jun 2019 00:13:38 GMT
ENV PHP_URL=https://www.php.net/get/php-7.2.19.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.2.19.tar.xz.asc/from/this/mirror
# Sat, 01 Jun 2019 00:13:38 GMT
ENV PHP_SHA256=4ffa2404a88d60e993a9fe69f829ebec3eb1e006de41b6048ce5e91bbeaa9282 PHP_MD5=
# Sat, 01 Jun 2019 00:13:58 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 01 Jun 2019 00:13:58 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 01 Jun 2019 00:17:32 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 01 Jun 2019 00:17:33 GMT
COPY multi:0002d7d5b06fb24f987aa4b027705dc71f81957419a02be5b9014431514c25b5 in /usr/local/bin/ 
# Sat, 01 Jun 2019 00:17:35 GMT
RUN docker-php-ext-enable sodium
# Sat, 01 Jun 2019 00:17:35 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 01 Jun 2019 00:17:36 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Sat, 01 Jun 2019 00:17:36 GMT
WORKDIR /var/www/html
# Sat, 01 Jun 2019 00:17:37 GMT
EXPOSE 80
# Sat, 01 Jun 2019 00:17:37 GMT
CMD ["apache2-foreground"]
# Sat, 01 Jun 2019 02:26:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		git 		imagemagick 		python3 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 02:30:08 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libicu-dev 	; 		docker-php-ext-install 		intl 		mbstring 		mysqli 		opcache 	; 		pecl install apcu-5.1.16; 	docker-php-ext-enable 		apcu 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 02:30:43 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 01 Jun 2019 02:30:45 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 01 Jun 2019 02:30:45 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.31
# Sat, 01 Jun 2019 02:30:46 GMT
ENV MEDIAWIKI_BRANCH=REL1_31
# Sat, 01 Jun 2019 02:30:46 GMT
ENV MEDIAWIKI_VERSION=1.31.1
# Sat, 01 Jun 2019 02:30:47 GMT
ENV MEDIAWIKI_SHA512=ee49649cc37d0a7d45a7c6d90c822c2a595df290be2b5bf085affbec3318768700a458a6e5b5b7e437651400b9641424429d6d304f870c22ec63fae86ffc5152
# Sat, 01 Jun 2019 02:31:03 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:f23f9ce99dc288927adafc8d503252a16b6ea2b40c9cb0dca688223c56bd0235`  
		Last Modified: Wed, 08 May 2019 08:59:29 GMT  
		Size: 21.2 MB (21155863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:375098c17606cf891dc6c2de639c2d9b69384583b36d1f12394d245cb131e539`  
		Last Modified: Wed, 08 May 2019 11:06:12 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:091ccac4f8817d1ccf73efd2fd3d421caaea5daab5cf6c0574ba160a012728d2`  
		Last Modified: Wed, 08 May 2019 11:06:33 GMT  
		Size: 57.5 MB (57477758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:825181d9c853e494b46e5d4a8d3eb39bb10ec9f0c5cab11f274faec90f876cef`  
		Last Modified: Wed, 08 May 2019 11:06:12 GMT  
		Size: 286.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:099d1d7d4434733003b46ad3c7824ce4e924bc48db25b33413a65c77ad3dfe2d`  
		Last Modified: Wed, 08 May 2019 11:07:08 GMT  
		Size: 16.7 MB (16651726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15629ed4b2662d162ebc33e2d122007c635a7254b4b55d0edf277dec13d74c9a`  
		Last Modified: Wed, 08 May 2019 11:07:03 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:560f7cc5ef807ab6fb5da234ac471e25d0aa2a5aa7015801be27d254ff521db0`  
		Last Modified: Wed, 08 May 2019 11:07:03 GMT  
		Size: 511.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df32f7a9b2f08479016d154d91afd1b2fa0ff2e4a352257c4fb51a63aaf8b02d`  
		Last Modified: Sat, 01 Jun 2019 01:15:28 GMT  
		Size: 12.5 MB (12524431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0c68434605bf878852626807456ff6d8ea9dd6471ea09f260e236c3497e8613`  
		Last Modified: Sat, 01 Jun 2019 01:15:24 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e09142a09324552b0e51e19a715ce31a622fa1225e6feaf11aae256e89ddb70`  
		Last Modified: Sat, 01 Jun 2019 01:15:31 GMT  
		Size: 14.4 MB (14437073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b345e81f1997c48b7694506985bef3dffbc597da936e526362af3ee8a1b2951`  
		Last Modified: Sat, 01 Jun 2019 01:15:24 GMT  
		Size: 2.2 KB (2204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f6d6e11b4d848ecda0d319dddf54d8583afb48316414071064f949575b56443`  
		Last Modified: Sat, 01 Jun 2019 01:15:25 GMT  
		Size: 262.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afc689b77a160847dc5ed98756528ee5349e02cb23547352fa1f14a44a3419c2`  
		Last Modified: Sat, 01 Jun 2019 01:15:24 GMT  
		Size: 905.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f75d84530645037cc8070cec1c647561afb6fbab0c800c9172f6965839633b48`  
		Last Modified: Sat, 01 Jun 2019 02:36:19 GMT  
		Size: 28.9 MB (28888933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd82164e306b36d62658e5f7b318b79e0b6976810962e695b86d617abf21e236`  
		Last Modified: Sat, 01 Jun 2019 02:36:08 GMT  
		Size: 2.5 MB (2471333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48d9f23f40c9da91c714e872ad91238282226a082ca2e801c08b05e55a57afe8`  
		Last Modified: Sat, 01 Jun 2019 02:36:44 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a70b71bea22d5ebac84741a87e3582191d7b8af86dc99a56b534b407a3ecaea7`  
		Last Modified: Sat, 01 Jun 2019 02:36:44 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f5340ef485a252871e683832b3384d8dffa222cb4ca3d7d5d14272da73eeb18`  
		Last Modified: Sat, 01 Jun 2019 02:37:07 GMT  
		Size: 35.8 MB (35751278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:lts` - linux; arm variant v7

```console
$ docker pull mediawiki@sha256:527a5e0c2422a1c85cabb03cccedb88a8e52c092cc33ff40b3e0ea5469bfa662
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.1 MB (180138763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96b71e7545600991228602ad552389a89f71b3447a94e4b2b9587fffd9c32155`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 08 May 2019 12:03:54 GMT
ADD file:7813549b5e7862c4d5ecec9e7d8da27b520dd2cc1433e66637c57bb695d4f55a in / 
# Wed, 08 May 2019 12:03:54 GMT
CMD ["bash"]
# Wed, 08 May 2019 14:37:05 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 08 May 2019 14:37:06 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 08 May 2019 14:37:37 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 08 May 2019 14:37:39 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 08 May 2019 14:37:40 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 08 May 2019 14:42:38 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 08 May 2019 14:42:39 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 08 May 2019 14:42:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Wed, 08 May 2019 14:42:58 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 08 May 2019 14:42:59 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 08 May 2019 14:43:00 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 08 May 2019 14:43:00 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 08 May 2019 14:43:01 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 14:43:01 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 14:43:02 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 08 May 2019 14:59:32 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Sat, 01 Jun 2019 00:34:09 GMT
ENV PHP_VERSION=7.2.19
# Sat, 01 Jun 2019 00:34:09 GMT
ENV PHP_URL=https://www.php.net/get/php-7.2.19.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.2.19.tar.xz.asc/from/this/mirror
# Sat, 01 Jun 2019 00:34:10 GMT
ENV PHP_SHA256=4ffa2404a88d60e993a9fe69f829ebec3eb1e006de41b6048ce5e91bbeaa9282 PHP_MD5=
# Sat, 01 Jun 2019 00:34:26 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 01 Jun 2019 00:34:26 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 01 Jun 2019 00:37:25 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 01 Jun 2019 00:37:26 GMT
COPY multi:0002d7d5b06fb24f987aa4b027705dc71f81957419a02be5b9014431514c25b5 in /usr/local/bin/ 
# Sat, 01 Jun 2019 00:37:28 GMT
RUN docker-php-ext-enable sodium
# Sat, 01 Jun 2019 00:37:29 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 01 Jun 2019 00:37:29 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Sat, 01 Jun 2019 00:37:29 GMT
WORKDIR /var/www/html
# Sat, 01 Jun 2019 00:37:30 GMT
EXPOSE 80
# Sat, 01 Jun 2019 00:37:30 GMT
CMD ["apache2-foreground"]
# Sat, 01 Jun 2019 02:31:28 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		git 		imagemagick 		python3 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 02:35:07 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libicu-dev 	; 		docker-php-ext-install 		intl 		mbstring 		mysqli 		opcache 	; 		pecl install apcu-5.1.16; 	docker-php-ext-enable 		apcu 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 02:35:48 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 01 Jun 2019 02:35:50 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 01 Jun 2019 02:35:50 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.31
# Sat, 01 Jun 2019 02:35:51 GMT
ENV MEDIAWIKI_BRANCH=REL1_31
# Sat, 01 Jun 2019 02:35:51 GMT
ENV MEDIAWIKI_VERSION=1.31.1
# Sat, 01 Jun 2019 02:35:52 GMT
ENV MEDIAWIKI_SHA512=ee49649cc37d0a7d45a7c6d90c822c2a595df290be2b5bf085affbec3318768700a458a6e5b5b7e437651400b9641424429d6d304f870c22ec63fae86ffc5152
# Sat, 01 Jun 2019 02:36:07 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:b0727b1ec48ef8920082aec023c050c83b563ae08080d9951d68fba55934bbd6`  
		Last Modified: Wed, 08 May 2019 12:10:01 GMT  
		Size: 19.3 MB (19276216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e208b62bc2ef8e00c39842047e209f0ee05486c604af8359d624ad326285642`  
		Last Modified: Wed, 08 May 2019 15:56:06 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b654776010960d429044df18c3d563b768a92d765adb835d874503dbc872672`  
		Last Modified: Wed, 08 May 2019 15:56:28 GMT  
		Size: 53.6 MB (53589670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0718556bb7e27c667cb22749130f30d651e5cb73cc88535d3cbb2f7a4fe6224e`  
		Last Modified: Wed, 08 May 2019 15:56:05 GMT  
		Size: 286.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21d279750d7c2122da564efb42a89a55b0a6cba5f6a2ac0f7a97191db4ae4fe6`  
		Last Modified: Wed, 08 May 2019 15:57:12 GMT  
		Size: 16.2 MB (16159683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a060b1fb5eab7537b954cc199873b54c44dcbddbfab9c2bb3e8bfdc8c51ec2ce`  
		Last Modified: Wed, 08 May 2019 15:57:03 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56397f3718603009afb913087c72dc6bb3b6465bb82f8f00c6bc4550aec76747`  
		Last Modified: Wed, 08 May 2019 15:57:02 GMT  
		Size: 516.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faa05c80ed7e7320a3d5d347517275b340e34b2f06c5e65f435e621ba0cbb2d3`  
		Last Modified: Sat, 01 Jun 2019 01:56:19 GMT  
		Size: 12.5 MB (12524432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdd8dbbffa7e7154464a5c254ad80d02317c8bb91c11a44e2c9297bae25d1fcd`  
		Last Modified: Sat, 01 Jun 2019 01:56:16 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1438d8a59ecaa26b06a9e60ed3ecc703c52a63336a9e437519c7143534a8726`  
		Last Modified: Sat, 01 Jun 2019 01:56:20 GMT  
		Size: 13.6 MB (13602981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77e049fa064e154f28c8acae37128f5a95ed4af0d03f6e007f376710dcaf0a8e`  
		Last Modified: Sat, 01 Jun 2019 01:56:16 GMT  
		Size: 2.2 KB (2201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1a62d3145013a434f0acaf723805b3e94cfa9e183f349b48fd89ce97b56ad40`  
		Last Modified: Sat, 01 Jun 2019 01:56:16 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5432c4c59238dfc901afc53a70b515fd76da212265f2f658254faef604ef5ab9`  
		Last Modified: Sat, 01 Jun 2019 01:56:16 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c0f414ae38167acfdcd5910440f50358bf101593555d7643cd8d7cf06632c2a`  
		Last Modified: Sat, 01 Jun 2019 02:40:50 GMT  
		Size: 26.8 MB (26812739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80632ac31b9ea95cf32141f80a93560c47359fab89617e59a254ced1a64c1819`  
		Last Modified: Sat, 01 Jun 2019 02:40:40 GMT  
		Size: 2.4 MB (2415904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eded040df3c351bde063bd79089523e60e9253817ee9b9b6d4217d1628e3b17`  
		Last Modified: Sat, 01 Jun 2019 02:41:15 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adec3b84aa9f1f29578b8178aba9f436a2b839bf3d430ee0e19179bc7eb00c7a`  
		Last Modified: Sat, 01 Jun 2019 02:41:14 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016a81d505ed877541ec4ce9c998fb49fe9cf7595e45079d86f8985ba954382b`  
		Last Modified: Sat, 01 Jun 2019 02:41:34 GMT  
		Size: 35.8 MB (35751252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:lts` - linux; arm64 variant v8

```console
$ docker pull mediawiki@sha256:14a01be07945c62247810bca38f3729718f8e0093f4038f3253b86651cef68b8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.0 MB (187044504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11f41a764ea075c942aa5e589716622cf21b6c7343620dcbe434c25306bd1977`
-	Entrypoint: `["docker-php-entrypoint"]`
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
# Wed, 08 May 2019 14:17:39 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Wed, 08 May 2019 14:17:40 GMT
ENV PHP_VERSION=7.2.18
# Wed, 08 May 2019 14:17:41 GMT
ENV PHP_URL=https://www.php.net/get/php-7.2.18.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.2.18.tar.xz.asc/from/this/mirror
# Wed, 08 May 2019 14:17:42 GMT
ENV PHP_SHA256=9970dbb3ab1298c9e6aac54bebfa841c8ad14b18eead65594a68fa841364cb8d PHP_MD5=
# Wed, 08 May 2019 14:18:13 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 08 May 2019 14:18:14 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Wed, 08 May 2019 14:24:59 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 08 May 2019 14:25:00 GMT
COPY multi:0002d7d5b06fb24f987aa4b027705dc71f81957419a02be5b9014431514c25b5 in /usr/local/bin/ 
# Wed, 08 May 2019 14:25:03 GMT
RUN docker-php-ext-enable sodium
# Wed, 08 May 2019 14:25:04 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 08 May 2019 14:25:05 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Wed, 08 May 2019 14:25:06 GMT
WORKDIR /var/www/html
# Wed, 08 May 2019 14:25:08 GMT
EXPOSE 80
# Wed, 08 May 2019 14:25:09 GMT
CMD ["apache2-foreground"]
# Thu, 09 May 2019 05:05:16 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		git 		imagemagick 		python3 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 05:10:29 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libicu-dev 	; 		docker-php-ext-install 		intl 		mbstring 		mysqli 		opcache 	; 		pecl install apcu-5.1.16; 	docker-php-ext-enable 		apcu 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 05:11:09 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 09 May 2019 05:11:11 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Thu, 09 May 2019 05:11:12 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.31
# Thu, 09 May 2019 05:11:12 GMT
ENV MEDIAWIKI_BRANCH=REL1_31
# Thu, 09 May 2019 05:11:13 GMT
ENV MEDIAWIKI_VERSION=1.31.1
# Thu, 09 May 2019 05:11:14 GMT
ENV MEDIAWIKI_SHA512=ee49649cc37d0a7d45a7c6d90c822c2a595df290be2b5bf085affbec3318768700a458a6e5b5b7e437651400b9641424429d6d304f870c22ec63fae86ffc5152
# Thu, 09 May 2019 05:11:30 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
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
	-	`sha256:68d73a231f4080e449e68e6502533ec427a7b766c85d31a09f22d13191f765ea`  
		Last Modified: Wed, 08 May 2019 15:35:37 GMT  
		Size: 12.5 MB (12520437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19691ffc177e30c79f20a75ac96c12ffd081688c45bd4529e07c6292cf1d6d1b`  
		Last Modified: Wed, 08 May 2019 15:35:33 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bd777d47d57316bc1220d04b66d6576368950707b2a0f871bcd8a82864e2a9d`  
		Last Modified: Wed, 08 May 2019 15:35:40 GMT  
		Size: 14.2 MB (14239607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25e16be802a9018dec3f0cc8a2c345cce185b37fe8c01f323cd899722b69ac44`  
		Last Modified: Wed, 08 May 2019 15:35:33 GMT  
		Size: 2.2 KB (2200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bdfeeb7bd495fa9c974d8cd8659e32312d855bbd4df206a1f7057068407323d`  
		Last Modified: Wed, 08 May 2019 15:35:33 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4e5a9bc30afea7feb6df63482956ec64391a0b0305093ae8f6415624ed01a79`  
		Last Modified: Wed, 08 May 2019 15:35:33 GMT  
		Size: 903.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:372d20461635750ebeb1fe499a15fcf50a25a9a1ffae0fba099d48f09944c2af`  
		Last Modified: Thu, 09 May 2019 05:18:09 GMT  
		Size: 27.4 MB (27403442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cca2be8290114033ec2f1832487b8f41d1327395a86e475463acd95cf5193aa`  
		Last Modified: Thu, 09 May 2019 05:17:56 GMT  
		Size: 2.5 MB (2476635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b183f1b05530af011358b9fbc987b8c04a150307b16b9b7caacad1d0015e99a0`  
		Last Modified: Thu, 09 May 2019 05:18:32 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69a59f3599538feac27adfdbd9ea241d7bca680379a043b92390164a016458e0`  
		Last Modified: Thu, 09 May 2019 05:18:33 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d078e35e69e4cdc85a103d35194773f469b8404d313f3a5090938f50e7638ba4`  
		Last Modified: Thu, 09 May 2019 05:18:55 GMT  
		Size: 35.8 MB (35750717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:lts` - linux; 386

```console
$ docker pull mediawiki@sha256:71452abf229ef013311198d999506c7edf10adab8654fd73e3a95e1592aebd78
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **210.6 MB (210610429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe5ac58d721eb66fe00bbdc9a208a32af4aa4ff6afe014611b4e4919d3c69e54`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 08 May 2019 10:49:55 GMT
ADD file:32d77a56ac954d1cd433a660591f374200929db022f1d0cfcf99eb6ab9e1679c in / 
# Wed, 08 May 2019 10:49:55 GMT
CMD ["bash"]
# Wed, 08 May 2019 16:35:40 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 08 May 2019 16:35:40 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 08 May 2019 16:36:06 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 08 May 2019 16:36:06 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 08 May 2019 16:36:07 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 08 May 2019 16:41:56 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 08 May 2019 16:41:57 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 08 May 2019 16:42:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Wed, 08 May 2019 16:42:09 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 08 May 2019 16:42:09 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 08 May 2019 16:42:10 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 08 May 2019 16:42:10 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 08 May 2019 16:42:10 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 16:42:10 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 16:42:10 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 08 May 2019 17:04:19 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Wed, 08 May 2019 17:04:19 GMT
ENV PHP_VERSION=7.2.18
# Wed, 08 May 2019 17:04:19 GMT
ENV PHP_URL=https://www.php.net/get/php-7.2.18.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.2.18.tar.xz.asc/from/this/mirror
# Wed, 08 May 2019 17:04:19 GMT
ENV PHP_SHA256=9970dbb3ab1298c9e6aac54bebfa841c8ad14b18eead65594a68fa841364cb8d PHP_MD5=
# Wed, 08 May 2019 17:04:30 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 08 May 2019 17:04:30 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Wed, 08 May 2019 17:07:59 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 08 May 2019 17:08:00 GMT
COPY multi:0002d7d5b06fb24f987aa4b027705dc71f81957419a02be5b9014431514c25b5 in /usr/local/bin/ 
# Wed, 08 May 2019 17:08:01 GMT
RUN docker-php-ext-enable sodium
# Wed, 08 May 2019 17:08:01 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 08 May 2019 17:08:01 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Wed, 08 May 2019 17:08:01 GMT
WORKDIR /var/www/html
# Wed, 08 May 2019 17:08:01 GMT
EXPOSE 80
# Wed, 08 May 2019 17:08:02 GMT
CMD ["apache2-foreground"]
# Thu, 09 May 2019 02:48:07 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		git 		imagemagick 		python3 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 02:50:17 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libicu-dev 	; 		docker-php-ext-install 		intl 		mbstring 		mysqli 		opcache 	; 		pecl install apcu-5.1.16; 	docker-php-ext-enable 		apcu 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 02:50:33 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 09 May 2019 02:50:34 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Thu, 09 May 2019 02:50:34 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.31
# Thu, 09 May 2019 02:50:34 GMT
ENV MEDIAWIKI_BRANCH=REL1_31
# Thu, 09 May 2019 02:50:34 GMT
ENV MEDIAWIKI_VERSION=1.31.1
# Thu, 09 May 2019 02:50:35 GMT
ENV MEDIAWIKI_SHA512=ee49649cc37d0a7d45a7c6d90c822c2a595df290be2b5bf085affbec3318768700a458a6e5b5b7e437651400b9641424429d6d304f870c22ec63fae86ffc5152
# Thu, 09 May 2019 02:50:44 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:3cf56ed221cf05f73233419fcc3a71b0afd424761fc83037e3a5cf101af5df46`  
		Last Modified: Wed, 08 May 2019 10:57:50 GMT  
		Size: 23.1 MB (23120843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2e394799d7fd8bb494dd3068fa793d651e7ccb426989bd27defd081a6bcc12f`  
		Last Modified: Wed, 08 May 2019 18:38:36 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d053425c85d9196337b5a25e4b3194f8f91c7540e201df765bb55f179df390d`  
		Last Modified: Wed, 08 May 2019 18:38:54 GMT  
		Size: 71.5 MB (71518824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:375ceda7fc26c2edccb175b8a009dd8db8b6159d82b589045c749fc2a90b409c`  
		Last Modified: Wed, 08 May 2019 18:38:35 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcee9f239c4761d5fb6def94e207d25f66b6dd1b06aca20ef921f0b7cec5fd2b`  
		Last Modified: Wed, 08 May 2019 18:39:23 GMT  
		Size: 17.6 MB (17559084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f37941543cfc620e1f153eec1e6627f09d2995dc4e11881df4b2fec57d024fc`  
		Last Modified: Wed, 08 May 2019 18:39:18 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e81f09a18a1e21c876bdb2b93ab40c2d32294938c8c14da1306afc78c85dc5b`  
		Last Modified: Wed, 08 May 2019 18:39:18 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a51838654f356e5455289e6a566e70e1dcf8fbb7f2cddc27757511489c8a4865`  
		Last Modified: Wed, 08 May 2019 18:40:40 GMT  
		Size: 12.5 MB (12521696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e83a1be097ba06dd9c045e9d858ef16d7dfcaea2ea8f0a7c03aab056c7ec4e5`  
		Last Modified: Wed, 08 May 2019 18:40:38 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44ccf0af924d7fde5877252371b3b934464fbb43162d86e493dbff5d0855e272`  
		Last Modified: Wed, 08 May 2019 18:40:42 GMT  
		Size: 15.7 MB (15698642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bae3e0d9a678f89ab9935758d2c23643b90fc86203ade9e19896a9810210316`  
		Last Modified: Wed, 08 May 2019 18:40:38 GMT  
		Size: 2.2 KB (2202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:794620458d3b9ee10b26a830211cffeac76c5cebc292f39dd05b89de92a07c5e`  
		Last Modified: Wed, 08 May 2019 18:40:38 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb9f2cd6fb034170dd3ce44819ab9d821785167b2eefb1c966230325ba73eee8`  
		Last Modified: Wed, 08 May 2019 18:40:38 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7615115b5410267361895d41778ec708797e2a776d5effd07aba762bf1aee9c`  
		Last Modified: Thu, 09 May 2019 02:53:32 GMT  
		Size: 31.9 MB (31894562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0300f05641c30fcba961c4d59f9dd81e567cafb4bd0217d5eb41ddc95db39397`  
		Last Modified: Thu, 09 May 2019 02:53:23 GMT  
		Size: 2.5 MB (2540292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a1824326f8c81a852b7c897143a7bd337cf72c7c7f64e11d0366c6ad0b7bdd`  
		Last Modified: Thu, 09 May 2019 02:53:44 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3b0adddf5166e967b30cc2bb794a282595f3fb574efdfb409d93b64d734fea7`  
		Last Modified: Thu, 09 May 2019 02:53:44 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a986004e0d07c59b27a1a29c1c66efbda642033fb89d4585f976737a56966ac0`  
		Last Modified: Thu, 09 May 2019 02:53:57 GMT  
		Size: 35.8 MB (35750754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:lts` - linux; ppc64le

```console
$ docker pull mediawiki@sha256:8491f1ba0d073a2a132887cd8527a248e3afb0d96c621cf2a73a0ff8c65b6b2c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.8 MB (197799728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cb89d9c567228b63fe2dc61fa971903229d8f15fef47645efed7de62a21d7de`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 08 May 2019 09:05:46 GMT
ADD file:fa23694e2ef3b1ff3ac824d7d18d6951725f7f1ebfd5350392edd91f6b90d89e in / 
# Wed, 08 May 2019 09:05:50 GMT
CMD ["bash"]
# Wed, 08 May 2019 16:33:12 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 08 May 2019 16:33:15 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 08 May 2019 16:36:22 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 08 May 2019 16:36:29 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 08 May 2019 16:36:37 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 08 May 2019 16:45:05 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 08 May 2019 16:45:07 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 08 May 2019 16:46:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Wed, 08 May 2019 16:46:21 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 08 May 2019 16:46:32 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 08 May 2019 16:46:36 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 08 May 2019 16:46:39 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 08 May 2019 16:46:41 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 16:46:44 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 16:46:47 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 08 May 2019 17:22:31 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Wed, 08 May 2019 17:22:37 GMT
ENV PHP_VERSION=7.2.18
# Wed, 08 May 2019 17:22:45 GMT
ENV PHP_URL=https://www.php.net/get/php-7.2.18.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.2.18.tar.xz.asc/from/this/mirror
# Wed, 08 May 2019 17:22:53 GMT
ENV PHP_SHA256=9970dbb3ab1298c9e6aac54bebfa841c8ad14b18eead65594a68fa841364cb8d PHP_MD5=
# Wed, 08 May 2019 17:25:03 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 08 May 2019 17:25:06 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Wed, 08 May 2019 17:35:12 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 08 May 2019 17:35:16 GMT
COPY multi:0002d7d5b06fb24f987aa4b027705dc71f81957419a02be5b9014431514c25b5 in /usr/local/bin/ 
# Wed, 08 May 2019 17:35:24 GMT
RUN docker-php-ext-enable sodium
# Wed, 08 May 2019 17:35:30 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 08 May 2019 17:35:32 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Wed, 08 May 2019 17:35:41 GMT
WORKDIR /var/www/html
# Wed, 08 May 2019 17:35:45 GMT
EXPOSE 80
# Wed, 08 May 2019 17:35:51 GMT
CMD ["apache2-foreground"]
# Thu, 09 May 2019 01:31:11 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		git 		imagemagick 		python3 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 01:34:43 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libicu-dev 	; 		docker-php-ext-install 		intl 		mbstring 		mysqli 		opcache 	; 		pecl install apcu-5.1.16; 	docker-php-ext-enable 		apcu 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 01:35:56 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 09 May 2019 01:36:04 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Thu, 09 May 2019 01:36:08 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.31
# Thu, 09 May 2019 01:36:11 GMT
ENV MEDIAWIKI_BRANCH=REL1_31
# Thu, 09 May 2019 01:36:19 GMT
ENV MEDIAWIKI_VERSION=1.31.1
# Thu, 09 May 2019 01:36:21 GMT
ENV MEDIAWIKI_SHA512=ee49649cc37d0a7d45a7c6d90c822c2a595df290be2b5bf085affbec3318768700a458a6e5b5b7e437651400b9641424429d6d304f870c22ec63fae86ffc5152
# Thu, 09 May 2019 01:36:52 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:64bfe8794b280a764f2e07634dce2977621d140ae17fb34a03635710e84c3dfb`  
		Last Modified: Wed, 08 May 2019 09:26:17 GMT  
		Size: 22.7 MB (22744914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a41e81735fa83432331becf8dd5c79995a99c53ff4febd68f25916282e96fee5`  
		Last Modified: Wed, 08 May 2019 18:32:38 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74dcd7f44931915566fc2ab31df6e0da7972d7c1761a1e352f59834ab7b12288`  
		Last Modified: Wed, 08 May 2019 18:33:35 GMT  
		Size: 61.8 MB (61833424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8267f05b2cde025cb67ff60ba71e3ab4bb1d8c894385033a77f3592d3d86a1e9`  
		Last Modified: Wed, 08 May 2019 18:32:39 GMT  
		Size: 286.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b7902741744762d78bf30128d3aaad75defd223148cf4e8013abf2b472a23e7`  
		Last Modified: Wed, 08 May 2019 18:34:58 GMT  
		Size: 17.3 MB (17345860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8304e87d7eae9b221a89adc93eabf206be22236d6aa8fd6ef9bb71b82bd3349`  
		Last Modified: Wed, 08 May 2019 18:34:37 GMT  
		Size: 479.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:480539350c707aed3dba31a230406b23f267cb31ec2d6fa3dc7f239af8dcb64e`  
		Last Modified: Wed, 08 May 2019 18:34:37 GMT  
		Size: 518.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a5f59168f7acd95d0c183946b56d3b084aef8350f8e368b4c54d0d8a9e81343`  
		Last Modified: Wed, 08 May 2019 18:38:16 GMT  
		Size: 12.5 MB (12521120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca06cfad402571a36dab9b350760456c06eb6ff69d86860e01815c448febf608`  
		Last Modified: Wed, 08 May 2019 18:38:10 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:feefdd256094a8cd3578d49e543d314c3a0373117d7c88625485af617daf2f01`  
		Last Modified: Wed, 08 May 2019 18:38:23 GMT  
		Size: 15.1 MB (15050830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddcba8d0f1ead1960e4ed8a8f9ce0987a2ce40cdb35c37ae7e7b0a8347c4145c`  
		Last Modified: Wed, 08 May 2019 18:38:10 GMT  
		Size: 2.2 KB (2202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e659b52fd9017cb4c492b613e5a79ce0ccdb48083cbc7c4b0279405f14ff7ac1`  
		Last Modified: Wed, 08 May 2019 18:38:10 GMT  
		Size: 262.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd234b7aca9a35086eb63ad27b187b272fd97f0a966f6620e532a0c683e8b2dd`  
		Last Modified: Wed, 08 May 2019 18:38:10 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c573dc396369a78f0d176aaddb389a2962121c5a23b2cf13a91ad47571c6b6`  
		Last Modified: Thu, 09 May 2019 01:43:42 GMT  
		Size: 30.0 MB (30009284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89a639ad63cc00a0cc8d9acb2dc6c4bc1625b2319b2d839211c6cfaddda18556`  
		Last Modified: Thu, 09 May 2019 01:43:28 GMT  
		Size: 2.5 MB (2537179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5028e22b0c6db84305e94d5074e817a38e8f8429e8bfe3b8363f3d97389521fc`  
		Last Modified: Thu, 09 May 2019 01:44:02 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf14428c05db262c58e8b6c0e702819e334c7c476cc2bb0fe1fadefb77bef923`  
		Last Modified: Thu, 09 May 2019 01:44:02 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75aadb795d9b3b3e2dc058ffc7d061a6c436086015c5e0f5ecb86d75ac5159fc`  
		Last Modified: Thu, 09 May 2019 01:44:16 GMT  
		Size: 35.8 MB (35751215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mediawiki:stable`

```console
$ docker pull mediawiki@sha256:bf0a6f48bfa7262c3c3ecdeab470ebf411f96e46194dd3b9e52573920b46919c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `mediawiki:stable` - linux; amd64

```console
$ docker pull mediawiki@sha256:f0b747de39aaa40c747af870c38b3febc53e4787b8dc954593dd60fa039f0464
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.3 MB (204305883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3b378ef05a9b065e2f1bc42cd71570391c7684c8cc53f09153ce4401bfdf7da`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 02:29:59 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 08 May 2019 02:29:59 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 08 May 2019 02:30:20 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 08 May 2019 02:30:21 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 08 May 2019 02:30:21 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 08 May 2019 02:37:00 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 08 May 2019 02:37:00 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 08 May 2019 02:37:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Wed, 08 May 2019 02:37:13 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 08 May 2019 02:37:14 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 08 May 2019 02:37:15 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 08 May 2019 02:37:15 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 08 May 2019 02:37:16 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 02:37:16 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 02:37:17 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 08 May 2019 03:02:10 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Wed, 08 May 2019 03:02:10 GMT
ENV PHP_VERSION=7.2.18
# Wed, 08 May 2019 03:02:11 GMT
ENV PHP_URL=https://www.php.net/get/php-7.2.18.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.2.18.tar.xz.asc/from/this/mirror
# Wed, 08 May 2019 03:02:11 GMT
ENV PHP_SHA256=9970dbb3ab1298c9e6aac54bebfa841c8ad14b18eead65594a68fa841364cb8d PHP_MD5=
# Wed, 08 May 2019 03:02:20 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 08 May 2019 03:02:21 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Wed, 08 May 2019 03:06:04 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 08 May 2019 03:06:04 GMT
COPY multi:0002d7d5b06fb24f987aa4b027705dc71f81957419a02be5b9014431514c25b5 in /usr/local/bin/ 
# Wed, 08 May 2019 03:06:05 GMT
RUN docker-php-ext-enable sodium
# Wed, 08 May 2019 03:06:05 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 08 May 2019 03:06:06 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Wed, 08 May 2019 03:06:06 GMT
WORKDIR /var/www/html
# Wed, 08 May 2019 03:06:06 GMT
EXPOSE 80
# Wed, 08 May 2019 03:06:06 GMT
CMD ["apache2-foreground"]
# Wed, 08 May 2019 10:13:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		git 		imagemagick 		python3 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 10:17:31 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libicu-dev 	; 		docker-php-ext-install 		intl 		mbstring 		mysqli 		opcache 	; 		pecl install apcu-5.1.16; 	docker-php-ext-enable 		apcu 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 10:17:33 GMT
RUN a2enmod rewrite   && {       echo '<Directory /var/www/html>';       echo '  RewriteEngine On';       echo '  RewriteCond %{REQUEST_FILENAME} !-f';       echo '  RewriteCond %{REQUEST_FILENAME} !-d';       echo '  RewriteRule ^ %{DOCUMENT_ROOT}/index.php [L]';       echo '</Directory>';     } > "$APACHE_CONFDIR/conf-available/short-url.conf"   && a2enconf short-url
# Wed, 08 May 2019 10:17:34 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 08 May 2019 10:17:35 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Wed, 08 May 2019 10:17:35 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.32
# Wed, 08 May 2019 10:17:35 GMT
ENV MEDIAWIKI_BRANCH=REL1_32
# Wed, 08 May 2019 10:17:35 GMT
ENV MEDIAWIKI_VERSION=1.32.1
# Wed, 08 May 2019 10:17:36 GMT
ENV MEDIAWIKI_SHA512=597af44ba140a50b4dfec9dd1a81db1c96e6672f33870ad15d9be875c4a7109eff57034e10762c45c47bad4afdfe27b96949dd6dd4bea24db6ea54bafd80c376
# Wed, 08 May 2019 10:17:47 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6307e89982cc66cd480a6f5cfe17fabddae5e6ae4e735d8f0bf857892d299772`  
		Last Modified: Wed, 08 May 2019 04:41:06 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:807218e72ce2aeb1df368e9757482e7304772ccf439962eb68d1731a0b023802`  
		Last Modified: Wed, 08 May 2019 04:41:20 GMT  
		Size: 67.4 MB (67447543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5108df1d03f88b91e3a940361ab6bc2d60d60a6f52a1ba29d8283a00d71cb0c8`  
		Last Modified: Wed, 08 May 2019 04:41:06 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:901e0b6a7fe58d5615158528d37602cd806ecab9718a880d76f85d609742f5ea`  
		Last Modified: Wed, 08 May 2019 04:41:48 GMT  
		Size: 17.1 MB (17124934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ffe11e7ab2c09aa7e0167044fe111b6a03a5e93f517405f4c416e3220e0b197`  
		Last Modified: Wed, 08 May 2019 04:41:43 GMT  
		Size: 429.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da5f7a5079567ba0d853934f7275591bd53f6740d13e4499a15a9a109982f7e8`  
		Last Modified: Wed, 08 May 2019 04:41:43 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1828a6068039e36669a6a6b2dde9750808c22d86ac075c99ac739dcbbb1e3b67`  
		Last Modified: Wed, 08 May 2019 04:42:59 GMT  
		Size: 12.5 MB (12522340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64e8e1a9a6dd712ede73018cda885173b14dfb5b41d8de2b94a6e40b579b933c`  
		Last Modified: Wed, 08 May 2019 04:42:57 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:947776ecc4cf45b79a1eb8811d0cede95489c496920cc63c3504a78d8c57a14e`  
		Last Modified: Wed, 08 May 2019 04:43:04 GMT  
		Size: 15.3 MB (15259643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:983802cfe132fab1cec030a7b88d0cb6315561c92ff7226cce5f851eb206687d`  
		Last Modified: Wed, 08 May 2019 04:42:56 GMT  
		Size: 2.2 KB (2202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e372111ec71d644fe9452c7ddb71c723515b94807261e2a9937b1c918adf5716`  
		Last Modified: Wed, 08 May 2019 04:42:56 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70d278e5adabe0687ae4a5f6ce0a8e99a53f3554bdcdee8b154635cb360d3088`  
		Last Modified: Wed, 08 May 2019 04:42:56 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7038b6910d573df901cd4193d8ab32b4f9bf611d3d0f15140e41345122b85996`  
		Last Modified: Wed, 08 May 2019 10:23:03 GMT  
		Size: 30.2 MB (30221982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f06e09b6d9eac4655ccbf25966abab364f4ddecb24861f9b0a9c460afafa8fa`  
		Last Modified: Wed, 08 May 2019 10:22:53 GMT  
		Size: 2.6 MB (2553575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a2198f61b13436e68738445f1f543176bb7f37d4cdf66281b3c084b2c51a2fc`  
		Last Modified: Wed, 08 May 2019 10:22:53 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceec5aeb21c84d0e1892c2759b462bc29ad17e049cca3cfe7758a12d3683e0c8`  
		Last Modified: Wed, 08 May 2019 10:22:53 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0e205f974ca740857c15158878f37e2cfb9daf9de21bf6c9804a2f9b093a0ee`  
		Last Modified: Wed, 08 May 2019 10:22:53 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5568a69de805c9c7c1ba1accadbe86cf6e975e87fa364a123b60a8544858ae03`  
		Last Modified: Wed, 08 May 2019 10:23:08 GMT  
		Size: 36.7 MB (36680206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:stable` - linux; arm variant v5

```console
$ docker pull mediawiki@sha256:58d55edb50fb854486a67f5d8cca1515d297cbd51f5eed6d67798dc4e46830c9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.3 MB (190294232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:928682f43c8b153c5455333f69e2620f010605bdf13623818b3f47297ec8c234`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 08 May 2019 08:53:38 GMT
ADD file:d9cc007a953434e1439cc534f397967f4f0f1bf149f1288a52f6209eca436852 in / 
# Wed, 08 May 2019 08:53:39 GMT
CMD ["bash"]
# Wed, 08 May 2019 09:48:37 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 08 May 2019 09:48:38 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 08 May 2019 09:49:17 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 08 May 2019 09:49:18 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 08 May 2019 09:49:20 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 08 May 2019 09:53:54 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 08 May 2019 09:53:54 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 08 May 2019 09:54:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Wed, 08 May 2019 09:54:17 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 08 May 2019 09:54:18 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 08 May 2019 09:54:19 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 08 May 2019 09:54:19 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 08 May 2019 09:54:20 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 09:54:20 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 09:54:21 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 08 May 2019 10:11:33 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Sat, 01 Jun 2019 00:13:37 GMT
ENV PHP_VERSION=7.2.19
# Sat, 01 Jun 2019 00:13:38 GMT
ENV PHP_URL=https://www.php.net/get/php-7.2.19.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.2.19.tar.xz.asc/from/this/mirror
# Sat, 01 Jun 2019 00:13:38 GMT
ENV PHP_SHA256=4ffa2404a88d60e993a9fe69f829ebec3eb1e006de41b6048ce5e91bbeaa9282 PHP_MD5=
# Sat, 01 Jun 2019 00:13:58 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 01 Jun 2019 00:13:58 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 01 Jun 2019 00:17:32 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 01 Jun 2019 00:17:33 GMT
COPY multi:0002d7d5b06fb24f987aa4b027705dc71f81957419a02be5b9014431514c25b5 in /usr/local/bin/ 
# Sat, 01 Jun 2019 00:17:35 GMT
RUN docker-php-ext-enable sodium
# Sat, 01 Jun 2019 00:17:35 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 01 Jun 2019 00:17:36 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Sat, 01 Jun 2019 00:17:36 GMT
WORKDIR /var/www/html
# Sat, 01 Jun 2019 00:17:37 GMT
EXPOSE 80
# Sat, 01 Jun 2019 00:17:37 GMT
CMD ["apache2-foreground"]
# Sat, 01 Jun 2019 02:26:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		git 		imagemagick 		python3 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 02:30:08 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libicu-dev 	; 		docker-php-ext-install 		intl 		mbstring 		mysqli 		opcache 	; 		pecl install apcu-5.1.16; 	docker-php-ext-enable 		apcu 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 02:30:10 GMT
RUN a2enmod rewrite   && {       echo '<Directory /var/www/html>';       echo '  RewriteEngine On';       echo '  RewriteCond %{REQUEST_FILENAME} !-f';       echo '  RewriteCond %{REQUEST_FILENAME} !-d';       echo '  RewriteRule ^ %{DOCUMENT_ROOT}/index.php [L]';       echo '</Directory>';     } > "$APACHE_CONFDIR/conf-available/short-url.conf"   && a2enconf short-url
# Sat, 01 Jun 2019 02:30:12 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 01 Jun 2019 02:30:13 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 01 Jun 2019 02:30:14 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.32
# Sat, 01 Jun 2019 02:30:14 GMT
ENV MEDIAWIKI_BRANCH=REL1_32
# Sat, 01 Jun 2019 02:30:15 GMT
ENV MEDIAWIKI_VERSION=1.32.1
# Sat, 01 Jun 2019 02:30:15 GMT
ENV MEDIAWIKI_SHA512=597af44ba140a50b4dfec9dd1a81db1c96e6672f33870ad15d9be875c4a7109eff57034e10762c45c47bad4afdfe27b96949dd6dd4bea24db6ea54bafd80c376
# Sat, 01 Jun 2019 02:30:31 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:f23f9ce99dc288927adafc8d503252a16b6ea2b40c9cb0dca688223c56bd0235`  
		Last Modified: Wed, 08 May 2019 08:59:29 GMT  
		Size: 21.2 MB (21155863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:375098c17606cf891dc6c2de639c2d9b69384583b36d1f12394d245cb131e539`  
		Last Modified: Wed, 08 May 2019 11:06:12 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:091ccac4f8817d1ccf73efd2fd3d421caaea5daab5cf6c0574ba160a012728d2`  
		Last Modified: Wed, 08 May 2019 11:06:33 GMT  
		Size: 57.5 MB (57477758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:825181d9c853e494b46e5d4a8d3eb39bb10ec9f0c5cab11f274faec90f876cef`  
		Last Modified: Wed, 08 May 2019 11:06:12 GMT  
		Size: 286.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:099d1d7d4434733003b46ad3c7824ce4e924bc48db25b33413a65c77ad3dfe2d`  
		Last Modified: Wed, 08 May 2019 11:07:08 GMT  
		Size: 16.7 MB (16651726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15629ed4b2662d162ebc33e2d122007c635a7254b4b55d0edf277dec13d74c9a`  
		Last Modified: Wed, 08 May 2019 11:07:03 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:560f7cc5ef807ab6fb5da234ac471e25d0aa2a5aa7015801be27d254ff521db0`  
		Last Modified: Wed, 08 May 2019 11:07:03 GMT  
		Size: 511.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df32f7a9b2f08479016d154d91afd1b2fa0ff2e4a352257c4fb51a63aaf8b02d`  
		Last Modified: Sat, 01 Jun 2019 01:15:28 GMT  
		Size: 12.5 MB (12524431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0c68434605bf878852626807456ff6d8ea9dd6471ea09f260e236c3497e8613`  
		Last Modified: Sat, 01 Jun 2019 01:15:24 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e09142a09324552b0e51e19a715ce31a622fa1225e6feaf11aae256e89ddb70`  
		Last Modified: Sat, 01 Jun 2019 01:15:31 GMT  
		Size: 14.4 MB (14437073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b345e81f1997c48b7694506985bef3dffbc597da936e526362af3ee8a1b2951`  
		Last Modified: Sat, 01 Jun 2019 01:15:24 GMT  
		Size: 2.2 KB (2204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f6d6e11b4d848ecda0d319dddf54d8583afb48316414071064f949575b56443`  
		Last Modified: Sat, 01 Jun 2019 01:15:25 GMT  
		Size: 262.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afc689b77a160847dc5ed98756528ee5349e02cb23547352fa1f14a44a3419c2`  
		Last Modified: Sat, 01 Jun 2019 01:15:24 GMT  
		Size: 905.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f75d84530645037cc8070cec1c647561afb6fbab0c800c9172f6965839633b48`  
		Last Modified: Sat, 01 Jun 2019 02:36:19 GMT  
		Size: 28.9 MB (28888933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd82164e306b36d62658e5f7b318b79e0b6976810962e695b86d617abf21e236`  
		Last Modified: Sat, 01 Jun 2019 02:36:08 GMT  
		Size: 2.5 MB (2471333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28f61e9b5ff034b4b44f72937ecfc9962293b52028fd95c9d1b144deda0813b9`  
		Last Modified: Sat, 01 Jun 2019 02:36:08 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7bdf3367ac37433a3a333c1022eca2c0a14a1ccf216ba724e02b41c6c79e847`  
		Last Modified: Sat, 01 Jun 2019 02:36:08 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cdf0a48a56b8ea00b669fc1605f4b9cb25c1e5df18925b9519869ca3f92b543`  
		Last Modified: Sat, 01 Jun 2019 02:36:08 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be99e529a67be096952d19e4eb8d18d806fbb9f532712ae89c4881c96a8c47c6`  
		Last Modified: Sat, 01 Jun 2019 02:36:32 GMT  
		Size: 36.7 MB (36680641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:stable` - linux; arm variant v7

```console
$ docker pull mediawiki@sha256:c0e395c1b9e871ca28fc936389f4da418e7f07d8e4bc756e60cc4ec0224e4f8b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.1 MB (181068611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba5034c1222e7591c2d03ffcc27f10c2172a8dd271581883c0613b93e8a11cff`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 08 May 2019 12:03:54 GMT
ADD file:7813549b5e7862c4d5ecec9e7d8da27b520dd2cc1433e66637c57bb695d4f55a in / 
# Wed, 08 May 2019 12:03:54 GMT
CMD ["bash"]
# Wed, 08 May 2019 14:37:05 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 08 May 2019 14:37:06 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 08 May 2019 14:37:37 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 08 May 2019 14:37:39 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 08 May 2019 14:37:40 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 08 May 2019 14:42:38 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 08 May 2019 14:42:39 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 08 May 2019 14:42:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Wed, 08 May 2019 14:42:58 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 08 May 2019 14:42:59 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 08 May 2019 14:43:00 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 08 May 2019 14:43:00 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 08 May 2019 14:43:01 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 14:43:01 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 14:43:02 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 08 May 2019 14:59:32 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Sat, 01 Jun 2019 00:34:09 GMT
ENV PHP_VERSION=7.2.19
# Sat, 01 Jun 2019 00:34:09 GMT
ENV PHP_URL=https://www.php.net/get/php-7.2.19.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.2.19.tar.xz.asc/from/this/mirror
# Sat, 01 Jun 2019 00:34:10 GMT
ENV PHP_SHA256=4ffa2404a88d60e993a9fe69f829ebec3eb1e006de41b6048ce5e91bbeaa9282 PHP_MD5=
# Sat, 01 Jun 2019 00:34:26 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 01 Jun 2019 00:34:26 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 01 Jun 2019 00:37:25 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 01 Jun 2019 00:37:26 GMT
COPY multi:0002d7d5b06fb24f987aa4b027705dc71f81957419a02be5b9014431514c25b5 in /usr/local/bin/ 
# Sat, 01 Jun 2019 00:37:28 GMT
RUN docker-php-ext-enable sodium
# Sat, 01 Jun 2019 00:37:29 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 01 Jun 2019 00:37:29 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Sat, 01 Jun 2019 00:37:29 GMT
WORKDIR /var/www/html
# Sat, 01 Jun 2019 00:37:30 GMT
EXPOSE 80
# Sat, 01 Jun 2019 00:37:30 GMT
CMD ["apache2-foreground"]
# Sat, 01 Jun 2019 02:31:28 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		git 		imagemagick 		python3 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 02:35:07 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libicu-dev 	; 		docker-php-ext-install 		intl 		mbstring 		mysqli 		opcache 	; 		pecl install apcu-5.1.16; 	docker-php-ext-enable 		apcu 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 02:35:09 GMT
RUN a2enmod rewrite   && {       echo '<Directory /var/www/html>';       echo '  RewriteEngine On';       echo '  RewriteCond %{REQUEST_FILENAME} !-f';       echo '  RewriteCond %{REQUEST_FILENAME} !-d';       echo '  RewriteRule ^ %{DOCUMENT_ROOT}/index.php [L]';       echo '</Directory>';     } > "$APACHE_CONFDIR/conf-available/short-url.conf"   && a2enconf short-url
# Sat, 01 Jun 2019 02:35:11 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 01 Jun 2019 02:35:12 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 01 Jun 2019 02:35:13 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.32
# Sat, 01 Jun 2019 02:35:13 GMT
ENV MEDIAWIKI_BRANCH=REL1_32
# Sat, 01 Jun 2019 02:35:14 GMT
ENV MEDIAWIKI_VERSION=1.32.1
# Sat, 01 Jun 2019 02:35:14 GMT
ENV MEDIAWIKI_SHA512=597af44ba140a50b4dfec9dd1a81db1c96e6672f33870ad15d9be875c4a7109eff57034e10762c45c47bad4afdfe27b96949dd6dd4bea24db6ea54bafd80c376
# Sat, 01 Jun 2019 02:35:30 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:b0727b1ec48ef8920082aec023c050c83b563ae08080d9951d68fba55934bbd6`  
		Last Modified: Wed, 08 May 2019 12:10:01 GMT  
		Size: 19.3 MB (19276216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e208b62bc2ef8e00c39842047e209f0ee05486c604af8359d624ad326285642`  
		Last Modified: Wed, 08 May 2019 15:56:06 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b654776010960d429044df18c3d563b768a92d765adb835d874503dbc872672`  
		Last Modified: Wed, 08 May 2019 15:56:28 GMT  
		Size: 53.6 MB (53589670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0718556bb7e27c667cb22749130f30d651e5cb73cc88535d3cbb2f7a4fe6224e`  
		Last Modified: Wed, 08 May 2019 15:56:05 GMT  
		Size: 286.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21d279750d7c2122da564efb42a89a55b0a6cba5f6a2ac0f7a97191db4ae4fe6`  
		Last Modified: Wed, 08 May 2019 15:57:12 GMT  
		Size: 16.2 MB (16159683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a060b1fb5eab7537b954cc199873b54c44dcbddbfab9c2bb3e8bfdc8c51ec2ce`  
		Last Modified: Wed, 08 May 2019 15:57:03 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56397f3718603009afb913087c72dc6bb3b6465bb82f8f00c6bc4550aec76747`  
		Last Modified: Wed, 08 May 2019 15:57:02 GMT  
		Size: 516.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faa05c80ed7e7320a3d5d347517275b340e34b2f06c5e65f435e621ba0cbb2d3`  
		Last Modified: Sat, 01 Jun 2019 01:56:19 GMT  
		Size: 12.5 MB (12524432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdd8dbbffa7e7154464a5c254ad80d02317c8bb91c11a44e2c9297bae25d1fcd`  
		Last Modified: Sat, 01 Jun 2019 01:56:16 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1438d8a59ecaa26b06a9e60ed3ecc703c52a63336a9e437519c7143534a8726`  
		Last Modified: Sat, 01 Jun 2019 01:56:20 GMT  
		Size: 13.6 MB (13602981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77e049fa064e154f28c8acae37128f5a95ed4af0d03f6e007f376710dcaf0a8e`  
		Last Modified: Sat, 01 Jun 2019 01:56:16 GMT  
		Size: 2.2 KB (2201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1a62d3145013a434f0acaf723805b3e94cfa9e183f349b48fd89ce97b56ad40`  
		Last Modified: Sat, 01 Jun 2019 01:56:16 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5432c4c59238dfc901afc53a70b515fd76da212265f2f658254faef604ef5ab9`  
		Last Modified: Sat, 01 Jun 2019 01:56:16 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c0f414ae38167acfdcd5910440f50358bf101593555d7643cd8d7cf06632c2a`  
		Last Modified: Sat, 01 Jun 2019 02:40:50 GMT  
		Size: 26.8 MB (26812739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80632ac31b9ea95cf32141f80a93560c47359fab89617e59a254ced1a64c1819`  
		Last Modified: Sat, 01 Jun 2019 02:40:40 GMT  
		Size: 2.4 MB (2415904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abddbceecf4bf79fd704b1ce7f27060c7d9c493c5e2a996800c746ac3afb3a48`  
		Last Modified: Sat, 01 Jun 2019 02:40:40 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13f7ed3fab048057f79b2c3d84d91b369f1e74f1d927dba83a7b1c0b82301159`  
		Last Modified: Sat, 01 Jun 2019 02:40:39 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50b629d78aedf3ca8d3bc31615443dabc218b02752f8de53fdcebedad0a40c80`  
		Last Modified: Sat, 01 Jun 2019 02:40:39 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:697719a5f394ebe771dca64839b3a90f737d1de3e6c8203b75130a12fce933ab`  
		Last Modified: Sat, 01 Jun 2019 02:40:59 GMT  
		Size: 36.7 MB (36680519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:stable` - linux; arm64 variant v8

```console
$ docker pull mediawiki@sha256:0b22401a1091b5e8b9722373960ad2313587cb0d0e6b0cb507aaf56a77468607
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.0 MB (187974545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86b02f66d03fa60b70b4941a37b3e8ff912f29eb2ef3edd42588a8a9af1749e7`
-	Entrypoint: `["docker-php-entrypoint"]`
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
# Wed, 08 May 2019 14:17:39 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Wed, 08 May 2019 14:17:40 GMT
ENV PHP_VERSION=7.2.18
# Wed, 08 May 2019 14:17:41 GMT
ENV PHP_URL=https://www.php.net/get/php-7.2.18.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.2.18.tar.xz.asc/from/this/mirror
# Wed, 08 May 2019 14:17:42 GMT
ENV PHP_SHA256=9970dbb3ab1298c9e6aac54bebfa841c8ad14b18eead65594a68fa841364cb8d PHP_MD5=
# Wed, 08 May 2019 14:18:13 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 08 May 2019 14:18:14 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Wed, 08 May 2019 14:24:59 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 08 May 2019 14:25:00 GMT
COPY multi:0002d7d5b06fb24f987aa4b027705dc71f81957419a02be5b9014431514c25b5 in /usr/local/bin/ 
# Wed, 08 May 2019 14:25:03 GMT
RUN docker-php-ext-enable sodium
# Wed, 08 May 2019 14:25:04 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 08 May 2019 14:25:05 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Wed, 08 May 2019 14:25:06 GMT
WORKDIR /var/www/html
# Wed, 08 May 2019 14:25:08 GMT
EXPOSE 80
# Wed, 08 May 2019 14:25:09 GMT
CMD ["apache2-foreground"]
# Thu, 09 May 2019 05:05:16 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		git 		imagemagick 		python3 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 05:10:29 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libicu-dev 	; 		docker-php-ext-install 		intl 		mbstring 		mysqli 		opcache 	; 		pecl install apcu-5.1.16; 	docker-php-ext-enable 		apcu 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 05:10:32 GMT
RUN a2enmod rewrite   && {       echo '<Directory /var/www/html>';       echo '  RewriteEngine On';       echo '  RewriteCond %{REQUEST_FILENAME} !-f';       echo '  RewriteCond %{REQUEST_FILENAME} !-d';       echo '  RewriteRule ^ %{DOCUMENT_ROOT}/index.php [L]';       echo '</Directory>';     } > "$APACHE_CONFDIR/conf-available/short-url.conf"   && a2enconf short-url
# Thu, 09 May 2019 05:10:35 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 09 May 2019 05:10:37 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Thu, 09 May 2019 05:10:38 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.32
# Thu, 09 May 2019 05:10:39 GMT
ENV MEDIAWIKI_BRANCH=REL1_32
# Thu, 09 May 2019 05:10:39 GMT
ENV MEDIAWIKI_VERSION=1.32.1
# Thu, 09 May 2019 05:10:40 GMT
ENV MEDIAWIKI_SHA512=597af44ba140a50b4dfec9dd1a81db1c96e6672f33870ad15d9be875c4a7109eff57034e10762c45c47bad4afdfe27b96949dd6dd4bea24db6ea54bafd80c376
# Thu, 09 May 2019 05:10:56 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
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
	-	`sha256:68d73a231f4080e449e68e6502533ec427a7b766c85d31a09f22d13191f765ea`  
		Last Modified: Wed, 08 May 2019 15:35:37 GMT  
		Size: 12.5 MB (12520437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19691ffc177e30c79f20a75ac96c12ffd081688c45bd4529e07c6292cf1d6d1b`  
		Last Modified: Wed, 08 May 2019 15:35:33 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bd777d47d57316bc1220d04b66d6576368950707b2a0f871bcd8a82864e2a9d`  
		Last Modified: Wed, 08 May 2019 15:35:40 GMT  
		Size: 14.2 MB (14239607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25e16be802a9018dec3f0cc8a2c345cce185b37fe8c01f323cd899722b69ac44`  
		Last Modified: Wed, 08 May 2019 15:35:33 GMT  
		Size: 2.2 KB (2200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bdfeeb7bd495fa9c974d8cd8659e32312d855bbd4df206a1f7057068407323d`  
		Last Modified: Wed, 08 May 2019 15:35:33 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4e5a9bc30afea7feb6df63482956ec64391a0b0305093ae8f6415624ed01a79`  
		Last Modified: Wed, 08 May 2019 15:35:33 GMT  
		Size: 903.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:372d20461635750ebeb1fe499a15fcf50a25a9a1ffae0fba099d48f09944c2af`  
		Last Modified: Thu, 09 May 2019 05:18:09 GMT  
		Size: 27.4 MB (27403442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cca2be8290114033ec2f1832487b8f41d1327395a86e475463acd95cf5193aa`  
		Last Modified: Thu, 09 May 2019 05:17:56 GMT  
		Size: 2.5 MB (2476635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e9a78ec0c60a0bc5bd1d2ffbe6399c22fbb3ceacb29a7462ffa0a6b7b607eb2`  
		Last Modified: Thu, 09 May 2019 05:17:54 GMT  
		Size: 580.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab72a03f54fd8abe536512fb0930c2034b4fffddc1512836c0bbb492c8a2c225`  
		Last Modified: Thu, 09 May 2019 05:17:54 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a25bdb65c523bcdf2c299416f18825b146e7fb7e24aaa63cb1293eab7d92414`  
		Last Modified: Thu, 09 May 2019 05:17:53 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88dc302a73f3b0ebae053542591440b99735ee3e4c2ab33282de501503f75973`  
		Last Modified: Thu, 09 May 2019 05:18:17 GMT  
		Size: 36.7 MB (36680181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:stable` - linux; 386

```console
$ docker pull mediawiki@sha256:8049317f1f9868565fd74152609c0589401592c5ac18fd408e6189f4a8f96d8f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.5 MB (211540382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55db676d71222943510b5b62b0ebfa689a7db2bdb8164ea6e32bd34580347e27`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 08 May 2019 10:49:55 GMT
ADD file:32d77a56ac954d1cd433a660591f374200929db022f1d0cfcf99eb6ab9e1679c in / 
# Wed, 08 May 2019 10:49:55 GMT
CMD ["bash"]
# Wed, 08 May 2019 16:35:40 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 08 May 2019 16:35:40 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 08 May 2019 16:36:06 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 08 May 2019 16:36:06 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 08 May 2019 16:36:07 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 08 May 2019 16:41:56 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 08 May 2019 16:41:57 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 08 May 2019 16:42:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Wed, 08 May 2019 16:42:09 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 08 May 2019 16:42:09 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 08 May 2019 16:42:10 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 08 May 2019 16:42:10 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 08 May 2019 16:42:10 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 16:42:10 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 16:42:10 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 08 May 2019 17:04:19 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Wed, 08 May 2019 17:04:19 GMT
ENV PHP_VERSION=7.2.18
# Wed, 08 May 2019 17:04:19 GMT
ENV PHP_URL=https://www.php.net/get/php-7.2.18.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.2.18.tar.xz.asc/from/this/mirror
# Wed, 08 May 2019 17:04:19 GMT
ENV PHP_SHA256=9970dbb3ab1298c9e6aac54bebfa841c8ad14b18eead65594a68fa841364cb8d PHP_MD5=
# Wed, 08 May 2019 17:04:30 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 08 May 2019 17:04:30 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Wed, 08 May 2019 17:07:59 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 08 May 2019 17:08:00 GMT
COPY multi:0002d7d5b06fb24f987aa4b027705dc71f81957419a02be5b9014431514c25b5 in /usr/local/bin/ 
# Wed, 08 May 2019 17:08:01 GMT
RUN docker-php-ext-enable sodium
# Wed, 08 May 2019 17:08:01 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 08 May 2019 17:08:01 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Wed, 08 May 2019 17:08:01 GMT
WORKDIR /var/www/html
# Wed, 08 May 2019 17:08:01 GMT
EXPOSE 80
# Wed, 08 May 2019 17:08:02 GMT
CMD ["apache2-foreground"]
# Thu, 09 May 2019 02:48:07 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		git 		imagemagick 		python3 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 02:50:17 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libicu-dev 	; 		docker-php-ext-install 		intl 		mbstring 		mysqli 		opcache 	; 		pecl install apcu-5.1.16; 	docker-php-ext-enable 		apcu 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 02:50:17 GMT
RUN a2enmod rewrite   && {       echo '<Directory /var/www/html>';       echo '  RewriteEngine On';       echo '  RewriteCond %{REQUEST_FILENAME} !-f';       echo '  RewriteCond %{REQUEST_FILENAME} !-d';       echo '  RewriteRule ^ %{DOCUMENT_ROOT}/index.php [L]';       echo '</Directory>';     } > "$APACHE_CONFDIR/conf-available/short-url.conf"   && a2enconf short-url
# Thu, 09 May 2019 02:50:18 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 09 May 2019 02:50:19 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Thu, 09 May 2019 02:50:19 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.32
# Thu, 09 May 2019 02:50:19 GMT
ENV MEDIAWIKI_BRANCH=REL1_32
# Thu, 09 May 2019 02:50:20 GMT
ENV MEDIAWIKI_VERSION=1.32.1
# Thu, 09 May 2019 02:50:20 GMT
ENV MEDIAWIKI_SHA512=597af44ba140a50b4dfec9dd1a81db1c96e6672f33870ad15d9be875c4a7109eff57034e10762c45c47bad4afdfe27b96949dd6dd4bea24db6ea54bafd80c376
# Thu, 09 May 2019 02:50:29 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:3cf56ed221cf05f73233419fcc3a71b0afd424761fc83037e3a5cf101af5df46`  
		Last Modified: Wed, 08 May 2019 10:57:50 GMT  
		Size: 23.1 MB (23120843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2e394799d7fd8bb494dd3068fa793d651e7ccb426989bd27defd081a6bcc12f`  
		Last Modified: Wed, 08 May 2019 18:38:36 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d053425c85d9196337b5a25e4b3194f8f91c7540e201df765bb55f179df390d`  
		Last Modified: Wed, 08 May 2019 18:38:54 GMT  
		Size: 71.5 MB (71518824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:375ceda7fc26c2edccb175b8a009dd8db8b6159d82b589045c749fc2a90b409c`  
		Last Modified: Wed, 08 May 2019 18:38:35 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcee9f239c4761d5fb6def94e207d25f66b6dd1b06aca20ef921f0b7cec5fd2b`  
		Last Modified: Wed, 08 May 2019 18:39:23 GMT  
		Size: 17.6 MB (17559084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f37941543cfc620e1f153eec1e6627f09d2995dc4e11881df4b2fec57d024fc`  
		Last Modified: Wed, 08 May 2019 18:39:18 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e81f09a18a1e21c876bdb2b93ab40c2d32294938c8c14da1306afc78c85dc5b`  
		Last Modified: Wed, 08 May 2019 18:39:18 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a51838654f356e5455289e6a566e70e1dcf8fbb7f2cddc27757511489c8a4865`  
		Last Modified: Wed, 08 May 2019 18:40:40 GMT  
		Size: 12.5 MB (12521696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e83a1be097ba06dd9c045e9d858ef16d7dfcaea2ea8f0a7c03aab056c7ec4e5`  
		Last Modified: Wed, 08 May 2019 18:40:38 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44ccf0af924d7fde5877252371b3b934464fbb43162d86e493dbff5d0855e272`  
		Last Modified: Wed, 08 May 2019 18:40:42 GMT  
		Size: 15.7 MB (15698642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bae3e0d9a678f89ab9935758d2c23643b90fc86203ade9e19896a9810210316`  
		Last Modified: Wed, 08 May 2019 18:40:38 GMT  
		Size: 2.2 KB (2202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:794620458d3b9ee10b26a830211cffeac76c5cebc292f39dd05b89de92a07c5e`  
		Last Modified: Wed, 08 May 2019 18:40:38 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb9f2cd6fb034170dd3ce44819ab9d821785167b2eefb1c966230325ba73eee8`  
		Last Modified: Wed, 08 May 2019 18:40:38 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7615115b5410267361895d41778ec708797e2a776d5effd07aba762bf1aee9c`  
		Last Modified: Thu, 09 May 2019 02:53:32 GMT  
		Size: 31.9 MB (31894562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0300f05641c30fcba961c4d59f9dd81e567cafb4bd0217d5eb41ddc95db39397`  
		Last Modified: Thu, 09 May 2019 02:53:23 GMT  
		Size: 2.5 MB (2540292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db817d1620327ff2425fe7ff22f32c9de9e3a3cd845e0cf525a0b1385422fbc7`  
		Last Modified: Thu, 09 May 2019 02:53:22 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8e3d06fd26271931d459ca41e3772c861bf07f29ba575f7a2cd55cf5ffbf340`  
		Last Modified: Thu, 09 May 2019 02:53:22 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09ae98544f4a52b628219bfafbaf2cfa6290a2e31ae28d07c6cb54797b4bf619`  
		Last Modified: Thu, 09 May 2019 02:53:22 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6a6e119c75074a322d0242e99d8e2fb00eac676be2228ea3275571a37b0346`  
		Last Modified: Thu, 09 May 2019 02:53:38 GMT  
		Size: 36.7 MB (36680130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:stable` - linux; ppc64le

```console
$ docker pull mediawiki@sha256:2004c57ea881c713dcd266aa3cc952aa9a82c64ce75f33fb0573cc64ff4b3970
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.7 MB (198729624 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b0f922c87cd5860016c816a25740a713729eba6ebbc61a9700e633f08c3fee3`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 08 May 2019 09:05:46 GMT
ADD file:fa23694e2ef3b1ff3ac824d7d18d6951725f7f1ebfd5350392edd91f6b90d89e in / 
# Wed, 08 May 2019 09:05:50 GMT
CMD ["bash"]
# Wed, 08 May 2019 16:33:12 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 08 May 2019 16:33:15 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 08 May 2019 16:36:22 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 08 May 2019 16:36:29 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 08 May 2019 16:36:37 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 08 May 2019 16:45:05 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 08 May 2019 16:45:07 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 08 May 2019 16:46:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Wed, 08 May 2019 16:46:21 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 08 May 2019 16:46:32 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 08 May 2019 16:46:36 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 08 May 2019 16:46:39 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 08 May 2019 16:46:41 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 16:46:44 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 16:46:47 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 08 May 2019 17:22:31 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Wed, 08 May 2019 17:22:37 GMT
ENV PHP_VERSION=7.2.18
# Wed, 08 May 2019 17:22:45 GMT
ENV PHP_URL=https://www.php.net/get/php-7.2.18.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.2.18.tar.xz.asc/from/this/mirror
# Wed, 08 May 2019 17:22:53 GMT
ENV PHP_SHA256=9970dbb3ab1298c9e6aac54bebfa841c8ad14b18eead65594a68fa841364cb8d PHP_MD5=
# Wed, 08 May 2019 17:25:03 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 08 May 2019 17:25:06 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Wed, 08 May 2019 17:35:12 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 08 May 2019 17:35:16 GMT
COPY multi:0002d7d5b06fb24f987aa4b027705dc71f81957419a02be5b9014431514c25b5 in /usr/local/bin/ 
# Wed, 08 May 2019 17:35:24 GMT
RUN docker-php-ext-enable sodium
# Wed, 08 May 2019 17:35:30 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 08 May 2019 17:35:32 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Wed, 08 May 2019 17:35:41 GMT
WORKDIR /var/www/html
# Wed, 08 May 2019 17:35:45 GMT
EXPOSE 80
# Wed, 08 May 2019 17:35:51 GMT
CMD ["apache2-foreground"]
# Thu, 09 May 2019 01:31:11 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		git 		imagemagick 		python3 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 01:34:43 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libicu-dev 	; 		docker-php-ext-install 		intl 		mbstring 		mysqli 		opcache 	; 		pecl install apcu-5.1.16; 	docker-php-ext-enable 		apcu 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 01:34:50 GMT
RUN a2enmod rewrite   && {       echo '<Directory /var/www/html>';       echo '  RewriteEngine On';       echo '  RewriteCond %{REQUEST_FILENAME} !-f';       echo '  RewriteCond %{REQUEST_FILENAME} !-d';       echo '  RewriteRule ^ %{DOCUMENT_ROOT}/index.php [L]';       echo '</Directory>';     } > "$APACHE_CONFDIR/conf-available/short-url.conf"   && a2enconf short-url
# Thu, 09 May 2019 01:34:57 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 09 May 2019 01:35:04 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Thu, 09 May 2019 01:35:06 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.32
# Thu, 09 May 2019 01:35:08 GMT
ENV MEDIAWIKI_BRANCH=REL1_32
# Thu, 09 May 2019 01:35:10 GMT
ENV MEDIAWIKI_VERSION=1.32.1
# Thu, 09 May 2019 01:35:12 GMT
ENV MEDIAWIKI_SHA512=597af44ba140a50b4dfec9dd1a81db1c96e6672f33870ad15d9be875c4a7109eff57034e10762c45c47bad4afdfe27b96949dd6dd4bea24db6ea54bafd80c376
# Thu, 09 May 2019 01:35:40 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:64bfe8794b280a764f2e07634dce2977621d140ae17fb34a03635710e84c3dfb`  
		Last Modified: Wed, 08 May 2019 09:26:17 GMT  
		Size: 22.7 MB (22744914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a41e81735fa83432331becf8dd5c79995a99c53ff4febd68f25916282e96fee5`  
		Last Modified: Wed, 08 May 2019 18:32:38 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74dcd7f44931915566fc2ab31df6e0da7972d7c1761a1e352f59834ab7b12288`  
		Last Modified: Wed, 08 May 2019 18:33:35 GMT  
		Size: 61.8 MB (61833424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8267f05b2cde025cb67ff60ba71e3ab4bb1d8c894385033a77f3592d3d86a1e9`  
		Last Modified: Wed, 08 May 2019 18:32:39 GMT  
		Size: 286.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b7902741744762d78bf30128d3aaad75defd223148cf4e8013abf2b472a23e7`  
		Last Modified: Wed, 08 May 2019 18:34:58 GMT  
		Size: 17.3 MB (17345860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8304e87d7eae9b221a89adc93eabf206be22236d6aa8fd6ef9bb71b82bd3349`  
		Last Modified: Wed, 08 May 2019 18:34:37 GMT  
		Size: 479.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:480539350c707aed3dba31a230406b23f267cb31ec2d6fa3dc7f239af8dcb64e`  
		Last Modified: Wed, 08 May 2019 18:34:37 GMT  
		Size: 518.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a5f59168f7acd95d0c183946b56d3b084aef8350f8e368b4c54d0d8a9e81343`  
		Last Modified: Wed, 08 May 2019 18:38:16 GMT  
		Size: 12.5 MB (12521120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca06cfad402571a36dab9b350760456c06eb6ff69d86860e01815c448febf608`  
		Last Modified: Wed, 08 May 2019 18:38:10 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:feefdd256094a8cd3578d49e543d314c3a0373117d7c88625485af617daf2f01`  
		Last Modified: Wed, 08 May 2019 18:38:23 GMT  
		Size: 15.1 MB (15050830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddcba8d0f1ead1960e4ed8a8f9ce0987a2ce40cdb35c37ae7e7b0a8347c4145c`  
		Last Modified: Wed, 08 May 2019 18:38:10 GMT  
		Size: 2.2 KB (2202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e659b52fd9017cb4c492b613e5a79ce0ccdb48083cbc7c4b0279405f14ff7ac1`  
		Last Modified: Wed, 08 May 2019 18:38:10 GMT  
		Size: 262.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd234b7aca9a35086eb63ad27b187b272fd97f0a966f6620e532a0c683e8b2dd`  
		Last Modified: Wed, 08 May 2019 18:38:10 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c573dc396369a78f0d176aaddb389a2962121c5a23b2cf13a91ad47571c6b6`  
		Last Modified: Thu, 09 May 2019 01:43:42 GMT  
		Size: 30.0 MB (30009284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89a639ad63cc00a0cc8d9acb2dc6c4bc1625b2319b2d839211c6cfaddda18556`  
		Last Modified: Thu, 09 May 2019 01:43:28 GMT  
		Size: 2.5 MB (2537179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0e27a76b67aae30caa5f50eeded90afdb444903ef489f8cd5286341e2a459da`  
		Last Modified: Thu, 09 May 2019 01:43:27 GMT  
		Size: 593.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4479ecc70a7bea18d476fed86d8bed134b9644283343f4d5de55c95ac1c383a1`  
		Last Modified: Thu, 09 May 2019 01:43:27 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5ce8f77ceef7b44816ba03be1fbd8a3d36101b6713cba811f1dd7c22f144a23`  
		Last Modified: Thu, 09 May 2019 01:43:27 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1007dd80147bbebb43e842c93759bc2d204ecedec5a0ef80b61e034dee5621c`  
		Last Modified: Thu, 09 May 2019 01:43:42 GMT  
		Size: 36.7 MB (36680521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
