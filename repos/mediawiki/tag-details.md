<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mediawiki`

-	[`mediawiki:1.27`](#mediawiki127)
-	[`mediawiki:1.27.4`](#mediawiki1274)
-	[`mediawiki:1.30`](#mediawiki130)
-	[`mediawiki:1.30.0`](#mediawiki1300)
-	[`mediawiki:1.31`](#mediawiki131)
-	[`mediawiki:1.31.0`](#mediawiki1310)
-	[`mediawiki:latest`](#mediawikilatest)
-	[`mediawiki:legacy`](#mediawikilegacy)
-	[`mediawiki:lts`](#mediawikilts)
-	[`mediawiki:stable`](#mediawikistable)

## `mediawiki:1.27`

```console
$ docker pull mediawiki@sha256:d30cdc67ee37bcf8c439c2e57d3a7d529c64bd313a5bb7d79b517cb242e9a653
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
$ docker pull mediawiki@sha256:c5975d67de0a800a18cbe9ac2772bcd5ae2432dd9180539fc7b0ec3036d5fc18
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.9 MB (223895786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ec9905da75f323d895186340a14e77931d318351d648f0d1f7423e8b07ec7bb`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:34 GMT
ADD file:e6ca98733431f75e97eb09758ba64065d213d51bd2070a95cf15f2ff5adccfc4 in / 
# Tue, 04 Sep 2018 21:21:34 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 01:55:39 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 05 Sep 2018 01:55:39 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 05 Sep 2018 01:56:06 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 05 Sep 2018 01:56:06 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 05 Sep 2018 01:56:07 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 05 Sep 2018 02:05:18 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 02:05:18 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 05 Sep 2018 02:05:18 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 05 Sep 2018 02:05:19 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 05 Sep 2018 02:05:20 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 05 Sep 2018 02:05:21 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 05 Sep 2018 02:05:21 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 05 Sep 2018 02:05:22 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 05 Sep 2018 02:05:22 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 05 Sep 2018 02:05:22 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 05 Sep 2018 02:05:22 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 05 Sep 2018 02:05:23 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 05 Sep 2018 06:33:58 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 05 Sep 2018 06:33:58 GMT
ENV PHP_VERSION=7.0.31
# Wed, 05 Sep 2018 06:33:59 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.31.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.31.tar.xz.asc/from/this/mirror
# Wed, 05 Sep 2018 06:33:59 GMT
ENV PHP_SHA256=68f57b3f4587071fb54a620cb83a1cfb3f0bd4ee071e0ce3bf7046a5f2d2f3cf PHP_MD5=
# Wed, 05 Sep 2018 06:34:07 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 05 Sep 2018 06:34:08 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 07 Sep 2018 23:08:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 07 Sep 2018 23:08:42 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Fri, 07 Sep 2018 23:08:42 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 07 Sep 2018 23:08:42 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 07 Sep 2018 23:08:42 GMT
WORKDIR /var/www/html
# Fri, 07 Sep 2018 23:08:43 GMT
EXPOSE 80/tcp
# Fri, 07 Sep 2018 23:08:43 GMT
CMD ["apache2-foreground"]
# Sat, 08 Sep 2018 02:03:48 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 08 Sep 2018 02:05:19 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Sat, 08 Sep 2018 02:05:28 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Sat, 08 Sep 2018 02:05:29 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 08 Sep 2018 02:05:29 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 08 Sep 2018 02:05:29 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.27
# Sat, 08 Sep 2018 02:05:30 GMT
ENV MEDIAWIKI_BRANCH=REL1_27
# Sat, 08 Sep 2018 02:05:30 GMT
ENV MEDIAWIKI_VERSION=1.27.4
# Sat, 08 Sep 2018 02:05:30 GMT
ENV MEDIAWIKI_SHA512=1a5b82a55c3703db9905a9098922a6008176ae2d53093bd651eb4e5638dc62861f40fe6ae523165f5b1970e8f28dff8ccfa51a5ebdaeb753e6d6e66eaf3c0dd1
# Sat, 08 Sep 2018 02:05:36 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:802b00ed6f79f48e6a5f44ecbcaf43563d6077aaecb565eee1dfc615c0b18c00`  
		Last Modified: Tue, 04 Sep 2018 21:25:45 GMT  
		Size: 22.5 MB (22485965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59f5a5a895f85ce514e7f66d3715d42e54b6735957b02a2406d3625dd75a2185`  
		Last Modified: Wed, 05 Sep 2018 09:03:28 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6898b2dbcfeb5f9532f39c5906364d294c90c4fa0c942068e0ba27bdcd73029b`  
		Last Modified: Wed, 05 Sep 2018 09:03:45 GMT  
		Size: 67.4 MB (67428958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e0903aaa47ebca2076b2f4d52c1118efa2fd755741247b509ced1085f5c1a72`  
		Last Modified: Wed, 05 Sep 2018 09:03:27 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2961af1e196a66c727ebfa1eaed81c207081b853d8df37106f472582d12dd9db`  
		Last Modified: Wed, 05 Sep 2018 09:04:21 GMT  
		Size: 17.1 MB (17127406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71f7016f79a0218a691e7032c308b38d0de98471d48a19f98b7c1db479330f47`  
		Last Modified: Wed, 05 Sep 2018 09:04:17 GMT  
		Size: 1.2 KB (1242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e1a48e5719ce319ff7b5a20b75a48702ec44e17c13abe3d630327ce03e760a8`  
		Last Modified: Wed, 05 Sep 2018 09:04:17 GMT  
		Size: 428.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ae5291984f364551ae9d9bd0a87648dd96aa88d893da349821a9f66acdb8da8`  
		Last Modified: Wed, 05 Sep 2018 09:04:16 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:725b65166f31691ad826144b84fe7f14622a67486d20d6469ec3be96955ea249`  
		Last Modified: Wed, 05 Sep 2018 09:04:16 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d45206e9f6b631f9b0c829f5f0a0beea4d17e4015df63107345a1f7ecc82591f`  
		Last Modified: Wed, 05 Sep 2018 09:16:40 GMT  
		Size: 12.4 MB (12379143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d171671ace32bdf904ba6ef2e48e4dc804c60d726d6ef09a0639d5c8d47a90bf`  
		Last Modified: Wed, 05 Sep 2018 09:16:39 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e580cc39a4d1e7f64bf252641f6010b41d3360139488e07e2cc740d8bcd1019`  
		Last Modified: Sat, 08 Sep 2018 01:26:51 GMT  
		Size: 14.3 MB (14281545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a030f0f9c2b35b3daf297a5852ed5d070849e9a26a866b98650c3db7165ea53`  
		Last Modified: Sat, 08 Sep 2018 01:26:48 GMT  
		Size: 2.2 KB (2194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:267967602263fa85ae417d5bb4855b2cfa2d9ddd3bcfaa6ab655bb82ad0a081d`  
		Last Modified: Sat, 08 Sep 2018 01:26:49 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9926507175131e2598008cecb2f66b13ba339b21f329aa14953cdb33cd167811`  
		Last Modified: Sat, 08 Sep 2018 02:07:17 GMT  
		Size: 56.3 MB (56337471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff716fdd9c8a441e1feae976e3131bf16482ee858c3b4af9f1f93c3ed031cb3a`  
		Last Modified: Sat, 08 Sep 2018 02:07:03 GMT  
		Size: 1.5 MB (1549026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56de73491e4509b0af742d7044c84c0971e98f4490b3974d50f308d78bb42efe`  
		Last Modified: Sat, 08 Sep 2018 02:07:04 GMT  
		Size: 400.4 KB (400360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de307dde21a388fb7dacff2a40a381cbfed51ae84ba9a64d0dc959ccc1686166`  
		Last Modified: Sat, 08 Sep 2018 02:07:03 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acb0e671dde6cff90ba5d051ab2d61d2b6aa851afbf7728f62e107bc9048070f`  
		Last Modified: Sat, 08 Sep 2018 02:07:03 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b0820017d2f3359a9461cbeed2bd7d319fae1ae67af111b98fa2d516889e2f6`  
		Last Modified: Sat, 08 Sep 2018 02:07:16 GMT  
		Size: 31.9 MB (31899036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.27` - linux; arm variant v5

```console
$ docker pull mediawiki@sha256:b035e9c4eaefeda15c9d10c7d909c9b2c31adf82ff6213998fcf0a1103ac9cc7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.1 MB (209062313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82c3a41032298f506818d5c9911c8c3e80ffd2761704a92d95e31313d44de97b`
-	Entrypoint: `["docker-php-entrypoint"]`
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
# Wed, 05 Sep 2018 11:00:28 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 05 Sep 2018 11:00:29 GMT
ENV PHP_VERSION=7.0.31
# Wed, 05 Sep 2018 11:00:29 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.31.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.31.tar.xz.asc/from/this/mirror
# Wed, 05 Sep 2018 11:00:29 GMT
ENV PHP_SHA256=68f57b3f4587071fb54a620cb83a1cfb3f0bd4ee071e0ce3bf7046a5f2d2f3cf PHP_MD5=
# Wed, 05 Sep 2018 11:00:43 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 05 Sep 2018 11:00:44 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 08 Sep 2018 10:19:03 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 08 Sep 2018 10:19:04 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Sat, 08 Sep 2018 10:19:04 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 08 Sep 2018 10:19:05 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 08 Sep 2018 10:19:05 GMT
WORKDIR /var/www/html
# Sat, 08 Sep 2018 10:19:05 GMT
EXPOSE 80/tcp
# Sat, 08 Sep 2018 10:19:05 GMT
CMD ["apache2-foreground"]
# Sat, 08 Sep 2018 13:14:55 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 08 Sep 2018 13:17:36 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Sat, 08 Sep 2018 13:17:51 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Sat, 08 Sep 2018 13:17:52 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 08 Sep 2018 13:17:53 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 08 Sep 2018 13:17:53 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.27
# Sat, 08 Sep 2018 13:17:53 GMT
ENV MEDIAWIKI_BRANCH=REL1_27
# Sat, 08 Sep 2018 13:17:54 GMT
ENV MEDIAWIKI_VERSION=1.27.4
# Sat, 08 Sep 2018 13:17:54 GMT
ENV MEDIAWIKI_SHA512=1a5b82a55c3703db9905a9098922a6008176ae2d53093bd651eb4e5638dc62861f40fe6ae523165f5b1970e8f28dff8ccfa51a5ebdaeb753e6d6e66eaf3c0dd1
# Sat, 08 Sep 2018 13:18:07 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
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
	-	`sha256:91a1a8733897536f17aef0f525cfd31d6ab102147b5d3d99ca35f44155c274b3`  
		Last Modified: Wed, 05 Sep 2018 12:30:56 GMT  
		Size: 12.4 MB (12377273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:462cdba7610b66bee5ecb88f355bbf31c2a51102f16db58b35454ae55c16393e`  
		Last Modified: Wed, 05 Sep 2018 12:30:54 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac8bfbc164eee1a8603e4285658f50e513c554fab33ed294224adecea078da47`  
		Last Modified: Sat, 08 Sep 2018 11:39:35 GMT  
		Size: 13.7 MB (13658011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cbb836a3ed1dd1e73c5ca3ca3203012a04cf68c19fb443f6f585cb4650b281a`  
		Last Modified: Sat, 08 Sep 2018 11:39:30 GMT  
		Size: 2.2 KB (2195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b9dc06e97d5d7e9567b4ecbd432243d7ebe75666ca5646c6b8e8d29902b556c`  
		Last Modified: Sat, 08 Sep 2018 11:39:30 GMT  
		Size: 906.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b09a08fb1f6c126b4df443690eedecd7ab3ddcf9eefe99b1c211a608ab74ac5`  
		Last Modified: Sat, 08 Sep 2018 13:20:57 GMT  
		Size: 54.0 MB (53981758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:263a8e2d8fde4b8ec0136e7a4617ffca0545ef641eac0a9777015c43d0f729bf`  
		Last Modified: Sat, 08 Sep 2018 13:20:39 GMT  
		Size: 1.5 MB (1485557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795b8518f4408bc93b2f8f557da93b442212c4d7e06ace00426ccbfa113eabc9`  
		Last Modified: Sat, 08 Sep 2018 13:20:39 GMT  
		Size: 392.1 KB (392125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00b2441df4548a26fbfde7922931fe1990c17676a5b58fd41d8653e191dd4789`  
		Last Modified: Sat, 08 Sep 2018 13:20:39 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dfb8639bc867cc790450f129ee3a7873d59d5e1b668f6281c252998dbb59a37`  
		Last Modified: Sat, 08 Sep 2018 13:20:40 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4a0ce71e841460131879055edd0b2e1a04b899de66fdfb95374333facbfbcc7`  
		Last Modified: Sat, 08 Sep 2018 13:20:57 GMT  
		Size: 31.9 MB (31899613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.27` - linux; arm variant v7

```console
$ docker pull mediawiki@sha256:ce40cc29b5f073d13313e51f88d6e9615a83db17216b88e744972a463aa168f7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.2 MB (199190184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31b2b834d06950378ba3f286b51760ab62c7c2471ac248fb76d6a2a66172e1fc`
-	Entrypoint: `["docker-php-entrypoint"]`
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
# Wed, 05 Sep 2018 15:19:29 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 05 Sep 2018 15:19:29 GMT
ENV PHP_VERSION=7.0.31
# Wed, 05 Sep 2018 15:19:30 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.31.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.31.tar.xz.asc/from/this/mirror
# Wed, 05 Sep 2018 15:19:30 GMT
ENV PHP_SHA256=68f57b3f4587071fb54a620cb83a1cfb3f0bd4ee071e0ce3bf7046a5f2d2f3cf PHP_MD5=
# Wed, 05 Sep 2018 15:19:42 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 05 Sep 2018 15:19:42 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 05 Sep 2018 15:23:11 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 05 Sep 2018 15:23:12 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Wed, 05 Sep 2018 15:23:13 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 05 Sep 2018 15:23:13 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Wed, 05 Sep 2018 15:23:14 GMT
WORKDIR /var/www/html
# Wed, 05 Sep 2018 15:23:14 GMT
EXPOSE 80/tcp
# Wed, 05 Sep 2018 15:23:14 GMT
CMD ["apache2-foreground"]
# Wed, 05 Sep 2018 19:30:07 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 05 Sep 2018 19:32:27 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Wed, 05 Sep 2018 19:32:44 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Wed, 05 Sep 2018 19:32:47 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 05 Sep 2018 19:32:49 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Wed, 05 Sep 2018 19:32:49 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.27
# Wed, 05 Sep 2018 19:32:49 GMT
ENV MEDIAWIKI_BRANCH=REL1_27
# Wed, 05 Sep 2018 19:32:50 GMT
ENV MEDIAWIKI_VERSION=1.27.4
# Wed, 05 Sep 2018 19:32:50 GMT
ENV MEDIAWIKI_SHA512=1a5b82a55c3703db9905a9098922a6008176ae2d53093bd651eb4e5638dc62861f40fe6ae523165f5b1970e8f28dff8ccfa51a5ebdaeb753e6d6e66eaf3c0dd1
# Wed, 05 Sep 2018 19:33:02 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
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
	-	`sha256:8ec768edfa025b2365886167f3d46f4bf66c792665528b94c29638d063d51f54`  
		Last Modified: Wed, 05 Sep 2018 16:54:17 GMT  
		Size: 12.4 MB (12377217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fa5d3ff8f907aeb2fd421291757d6e79d7ac1bf28bb376b4334199017546254`  
		Last Modified: Wed, 05 Sep 2018 16:54:17 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5851b4a415848edf17ca13ac4da8db21113573b14923eefcdd0fd7823539f627`  
		Last Modified: Wed, 05 Sep 2018 16:54:19 GMT  
		Size: 12.5 MB (12471484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e7a3ddb01666cb80f02ced911f5337a16fddf093cb22fc607cd951a43d1bc73`  
		Last Modified: Wed, 05 Sep 2018 16:54:15 GMT  
		Size: 2.2 KB (2191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27aafb3fa8313e40c1aaacb8876be5c9bb096df4fb7fa7210c52ce492bc07a6f`  
		Last Modified: Wed, 05 Sep 2018 16:54:16 GMT  
		Size: 900.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9549c26a02d4798242db1822177430faa48d4736b52a1da7bd29d9938881b837`  
		Last Modified: Wed, 05 Sep 2018 19:35:51 GMT  
		Size: 51.6 MB (51605091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68380715504e481008e168d6129f70502acb65576b0f6937ca4c2200278db3e6`  
		Last Modified: Wed, 05 Sep 2018 19:35:34 GMT  
		Size: 1.4 MB (1447284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fc51b5574fd2300c24258de777862ca873fc1ac4b19abba8d193f1e6a72e88e`  
		Last Modified: Wed, 05 Sep 2018 19:35:35 GMT  
		Size: 387.3 KB (387278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4287df713a778635d2efd9805f5cb814f1f386d7992f034812a33527729c7f86`  
		Last Modified: Wed, 05 Sep 2018 19:35:34 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4344b7c26eabad872b64d5d4ba006b5c5534a4142d2ac36eedd5230b41e3b76a`  
		Last Modified: Wed, 05 Sep 2018 19:35:34 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a107f40cd7847b9d3fd983a2f5823b282c4662dd2cc3defe71b208c88dcf68ce`  
		Last Modified: Wed, 05 Sep 2018 19:35:54 GMT  
		Size: 31.9 MB (31899610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.27` - linux; arm64 variant v8

```console
$ docker pull mediawiki@sha256:2c9e9a6ac9415ff7622244d5f1900a84e01374f9d34f570b77f3456610e223a4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.0 MB (207982214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11c6baa8bd1309f5feca8be77919e36a8a75db80b44a84fa511259dcf6dd42c3`
-	Entrypoint: `["docker-php-entrypoint"]`
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
# Wed, 05 Sep 2018 17:20:15 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 05 Sep 2018 17:20:16 GMT
ENV PHP_VERSION=7.0.31
# Wed, 05 Sep 2018 17:20:17 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.31.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.31.tar.xz.asc/from/this/mirror
# Wed, 05 Sep 2018 17:20:17 GMT
ENV PHP_SHA256=68f57b3f4587071fb54a620cb83a1cfb3f0bd4ee071e0ce3bf7046a5f2d2f3cf PHP_MD5=
# Wed, 05 Sep 2018 17:20:48 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 05 Sep 2018 17:20:49 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 05 Sep 2018 17:28:35 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 05 Sep 2018 17:28:38 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Wed, 05 Sep 2018 17:28:39 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 05 Sep 2018 17:28:40 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Wed, 05 Sep 2018 17:28:42 GMT
WORKDIR /var/www/html
# Wed, 05 Sep 2018 17:28:43 GMT
EXPOSE 80/tcp
# Wed, 05 Sep 2018 17:28:44 GMT
CMD ["apache2-foreground"]
# Thu, 06 Sep 2018 07:55:26 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 06 Sep 2018 07:58:55 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Thu, 06 Sep 2018 07:59:26 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Thu, 06 Sep 2018 07:59:32 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 06 Sep 2018 07:59:34 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Thu, 06 Sep 2018 07:59:56 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.27
# Thu, 06 Sep 2018 07:59:57 GMT
ENV MEDIAWIKI_BRANCH=REL1_27
# Thu, 06 Sep 2018 07:59:57 GMT
ENV MEDIAWIKI_VERSION=1.27.4
# Thu, 06 Sep 2018 07:59:58 GMT
ENV MEDIAWIKI_SHA512=1a5b82a55c3703db9905a9098922a6008176ae2d53093bd651eb4e5638dc62861f40fe6ae523165f5b1970e8f28dff8ccfa51a5ebdaeb753e6d6e66eaf3c0dd1
# Thu, 06 Sep 2018 08:00:10 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
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
	-	`sha256:40bdda2310e01ef69e1e73035d25c251a552ee9e557ace3e94cbc6b37f338d40`  
		Last Modified: Wed, 05 Sep 2018 19:28:26 GMT  
		Size: 12.4 MB (12377556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59e789b6a29ca1c99c3c691a00a8eb3f8c2e0da507d22f940f2ac7e6f814ac19`  
		Last Modified: Wed, 05 Sep 2018 19:28:23 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c88ca3472cac5a5d2f0e65524067ebcdeeb7ef92ccf3459abaa55c82b90c4db`  
		Last Modified: Wed, 05 Sep 2018 19:28:28 GMT  
		Size: 13.0 MB (13049339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b39619abf39b89cd2ffbe20fbb7f8b4e3f27763db3c288ce4b0e0368297be791`  
		Last Modified: Wed, 05 Sep 2018 19:28:23 GMT  
		Size: 2.2 KB (2192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:600da0744246363270e2c7f7b1d687a4e97f616b6f134aaf92ed4723a46e8c5c`  
		Last Modified: Wed, 05 Sep 2018 19:28:23 GMT  
		Size: 905.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1971c04bc79f31d94b2ce9ab2cd641009661bf30c47b81008d17b55c1d1edfd3`  
		Last Modified: Thu, 06 Sep 2018 08:07:42 GMT  
		Size: 54.1 MB (54130123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3594c804bbaa31b402540cc9cc5c8dfafad9ae2327303f37ce325a2584f578ff`  
		Last Modified: Thu, 06 Sep 2018 08:07:18 GMT  
		Size: 1.5 MB (1486674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cedf4fc81ad23cf040df67d126206a699afe5022b0c8111709e36e988ef22348`  
		Last Modified: Thu, 06 Sep 2018 08:07:18 GMT  
		Size: 395.0 KB (394980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bf559f896c39f581f845181b406a58619f4c75dce5409bf9e5c7b88285cffbd`  
		Last Modified: Thu, 06 Sep 2018 08:07:18 GMT  
		Size: 354.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fac912ab41190fa9636fbd8c1bec9c8bd054b4e17a5013c41d0322081afcaee`  
		Last Modified: Thu, 06 Sep 2018 08:07:17 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b712c9cd8d14ed13adebb3f2c84644bb444f312dc66642fb6753045ec1ce51ba`  
		Last Modified: Thu, 06 Sep 2018 08:07:38 GMT  
		Size: 31.9 MB (31899035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.27` - linux; 386

```console
$ docker pull mediawiki@sha256:a36d9a9fca9b4fb5348144c2142a34bf0f290d081a801b1fb88271a4bdba240d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.3 MB (229288445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c788e9ec8dfb061bd56875896f3139bbd301a5b8f4a753b0322438334fb62d9`
-	Entrypoint: `["docker-php-entrypoint"]`
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
# Thu, 06 Sep 2018 18:59:33 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Thu, 06 Sep 2018 18:59:34 GMT
ENV PHP_VERSION=7.0.31
# Thu, 06 Sep 2018 18:59:34 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.31.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.31.tar.xz.asc/from/this/mirror
# Thu, 06 Sep 2018 18:59:34 GMT
ENV PHP_SHA256=68f57b3f4587071fb54a620cb83a1cfb3f0bd4ee071e0ce3bf7046a5f2d2f3cf PHP_MD5=
# Thu, 06 Sep 2018 18:59:44 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Thu, 06 Sep 2018 18:59:44 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 08 Sep 2018 15:12:36 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 08 Sep 2018 15:12:36 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Sat, 08 Sep 2018 15:12:36 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 08 Sep 2018 15:12:37 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 08 Sep 2018 15:12:37 GMT
WORKDIR /var/www/html
# Sat, 08 Sep 2018 15:12:37 GMT
EXPOSE 80/tcp
# Sat, 08 Sep 2018 15:12:37 GMT
CMD ["apache2-foreground"]
# Sat, 08 Sep 2018 19:44:22 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 08 Sep 2018 19:45:48 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Sat, 08 Sep 2018 19:46:01 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Sat, 08 Sep 2018 19:46:01 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 08 Sep 2018 19:46:02 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 08 Sep 2018 19:46:02 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.27
# Sat, 08 Sep 2018 19:46:02 GMT
ENV MEDIAWIKI_BRANCH=REL1_27
# Sat, 08 Sep 2018 19:46:03 GMT
ENV MEDIAWIKI_VERSION=1.27.4
# Sat, 08 Sep 2018 19:46:03 GMT
ENV MEDIAWIKI_SHA512=1a5b82a55c3703db9905a9098922a6008176ae2d53093bd651eb4e5638dc62861f40fe6ae523165f5b1970e8f28dff8ccfa51a5ebdaeb753e6d6e66eaf3c0dd1
# Sat, 08 Sep 2018 19:46:10 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
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
	-	`sha256:9c28852f3d7cb507690b2f5f48878f7de2ec50e82e9891644dc6ffb0c5f35b54`  
		Last Modified: Thu, 06 Sep 2018 21:36:56 GMT  
		Size: 12.4 MB (12378601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e999e24ce0fced858fb6db4dc0163b3eb68c41239d56db9d8e42ea650f3fd28`  
		Last Modified: Thu, 06 Sep 2018 21:36:54 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d67e91ef5812bcc374583d52f6919a7ef3c37deec6487bb2df623c1efd3fe2d`  
		Last Modified: Sat, 08 Sep 2018 17:42:54 GMT  
		Size: 14.4 MB (14393849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d38e1bb491bb2886ca38f5eed36d88bd0b07ae9a74c85896b9b74e4333cfb621`  
		Last Modified: Sat, 08 Sep 2018 17:42:50 GMT  
		Size: 2.2 KB (2196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba564c0a8b892d126735fbf101bdf6b802b016798ef062a74023c347891a4609`  
		Last Modified: Sat, 08 Sep 2018 17:42:50 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5056d689e35fc213034c62340f3582b2356b18f6d9aa6a666fc831c075eef60e`  
		Last Modified: Sat, 08 Sep 2018 19:48:02 GMT  
		Size: 56.5 MB (56494287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fefa8f114df85f3226747b2f9af1076b5ef083919aa80db84786767b6d3e2a0d`  
		Last Modified: Sat, 08 Sep 2018 19:47:45 GMT  
		Size: 1.6 MB (1552696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc159a9ccf565045c6ff09f9f4f049b0c51813750ffec5f45c42fd42b4384e80`  
		Last Modified: Sat, 08 Sep 2018 19:47:44 GMT  
		Size: 389.4 KB (389356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0072b23200d31107698b635662f58905b768fa70d8b52fa707e2cfdb34460a22`  
		Last Modified: Sat, 08 Sep 2018 19:47:44 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e71557fba827b5e5064e8339be0590983ce1d602a0887d687ed274b0bc2b6f5d`  
		Last Modified: Sat, 08 Sep 2018 19:47:45 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fde42ae6cf3715f745a803a7126c4db10bb6d2dcb18a5d912b1b6a4d9c1af961`  
		Last Modified: Sat, 08 Sep 2018 19:48:01 GMT  
		Size: 31.9 MB (31899040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.27` - linux; ppc64le

```console
$ docker pull mediawiki@sha256:6698039299c1b21e17ffd5d77104e09ccb68530903b6be3a5166f9eb077c8314
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.8 MB (218771840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80b7e525600db94737e3060585cf408bf7dbc8e80642270334f8bc9da9b65d73`
-	Entrypoint: `["docker-php-entrypoint"]`
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
# Wed, 05 Sep 2018 11:45:01 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 05 Sep 2018 11:45:04 GMT
ENV PHP_VERSION=7.0.31
# Wed, 05 Sep 2018 11:45:04 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.31.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.31.tar.xz.asc/from/this/mirror
# Wed, 05 Sep 2018 11:45:06 GMT
ENV PHP_SHA256=68f57b3f4587071fb54a620cb83a1cfb3f0bd4ee071e0ce3bf7046a5f2d2f3cf PHP_MD5=
# Wed, 05 Sep 2018 11:45:59 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 05 Sep 2018 11:46:02 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 08 Sep 2018 12:35:34 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 08 Sep 2018 12:35:35 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Sat, 08 Sep 2018 12:35:36 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 08 Sep 2018 12:35:37 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 08 Sep 2018 12:35:38 GMT
WORKDIR /var/www/html
# Sat, 08 Sep 2018 12:35:39 GMT
EXPOSE 80/tcp
# Sat, 08 Sep 2018 12:35:40 GMT
CMD ["apache2-foreground"]
# Sat, 08 Sep 2018 15:35:37 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 08 Sep 2018 15:37:41 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Sat, 08 Sep 2018 15:37:57 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Sat, 08 Sep 2018 15:38:00 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 08 Sep 2018 15:38:02 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 08 Sep 2018 15:38:02 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.27
# Sat, 08 Sep 2018 15:38:03 GMT
ENV MEDIAWIKI_BRANCH=REL1_27
# Sat, 08 Sep 2018 15:38:04 GMT
ENV MEDIAWIKI_VERSION=1.27.4
# Sat, 08 Sep 2018 15:38:04 GMT
ENV MEDIAWIKI_SHA512=1a5b82a55c3703db9905a9098922a6008176ae2d53093bd651eb4e5638dc62861f40fe6ae523165f5b1970e8f28dff8ccfa51a5ebdaeb753e6d6e66eaf3c0dd1
# Sat, 08 Sep 2018 15:38:25 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
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
	-	`sha256:2d12381b23ab7afc53a94cbb6447016d9f48d7f711e3fe32050b20aec8048699`  
		Last Modified: Wed, 05 Sep 2018 12:49:53 GMT  
		Size: 12.4 MB (12377733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfbc134d79d65ddd242dae7e6806625c0cfe05fce2c9b1667d9002ba18071050`  
		Last Modified: Wed, 05 Sep 2018 12:49:50 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4df47a6c26dcdddd2617dba4da0c31dfce89006724f6e1863d278ea4eb6438d`  
		Last Modified: Sat, 08 Sep 2018 14:25:59 GMT  
		Size: 14.1 MB (14067995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6482cd36f125cdfafe6a547d2f79f3632c10e004b5b7859125a97a6054c97ac`  
		Last Modified: Sat, 08 Sep 2018 14:25:53 GMT  
		Size: 2.2 KB (2193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:697706714639cfc788de240960102a33c915e19bef90eded1e824749b7fe93a0`  
		Last Modified: Sat, 08 Sep 2018 14:25:52 GMT  
		Size: 906.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bea685a0101ea5083f0bfe781c019d6cf657d6e430f84e243e0f1ae2c3fc637a`  
		Last Modified: Sat, 08 Sep 2018 15:41:27 GMT  
		Size: 56.6 MB (56589749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eacc7a8a5ab6df5cad04e07ead4d19c0cbb4a20091a211ae067b6ad5b8b0306e`  
		Last Modified: Sat, 08 Sep 2018 15:41:03 GMT  
		Size: 1.5 MB (1530912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18ad50596c567527d0cee6c34f5284747af4216774ff2312d6df47427f53c80d`  
		Last Modified: Sat, 08 Sep 2018 15:41:02 GMT  
		Size: 400.4 KB (400372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a140ab7824a4e0742b79468910f2bebc0899f1b1bbc2c5db862f143a7240553`  
		Last Modified: Sat, 08 Sep 2018 15:41:02 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1e035b0886debba4509f3165b17bc5c532882fd82e834edb3515bfaff353cb7`  
		Last Modified: Sat, 08 Sep 2018 15:41:02 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e345a3ddac7984e0f2de069f21492d83262267063b0f0514ebbfabd274b7cdb8`  
		Last Modified: Sat, 08 Sep 2018 15:41:15 GMT  
		Size: 31.9 MB (31899614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mediawiki:1.27.4`

```console
$ docker pull mediawiki@sha256:d30cdc67ee37bcf8c439c2e57d3a7d529c64bd313a5bb7d79b517cb242e9a653
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `mediawiki:1.27.4` - linux; amd64

```console
$ docker pull mediawiki@sha256:c5975d67de0a800a18cbe9ac2772bcd5ae2432dd9180539fc7b0ec3036d5fc18
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.9 MB (223895786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ec9905da75f323d895186340a14e77931d318351d648f0d1f7423e8b07ec7bb`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:34 GMT
ADD file:e6ca98733431f75e97eb09758ba64065d213d51bd2070a95cf15f2ff5adccfc4 in / 
# Tue, 04 Sep 2018 21:21:34 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 01:55:39 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 05 Sep 2018 01:55:39 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 05 Sep 2018 01:56:06 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 05 Sep 2018 01:56:06 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 05 Sep 2018 01:56:07 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 05 Sep 2018 02:05:18 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 02:05:18 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 05 Sep 2018 02:05:18 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 05 Sep 2018 02:05:19 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 05 Sep 2018 02:05:20 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 05 Sep 2018 02:05:21 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 05 Sep 2018 02:05:21 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 05 Sep 2018 02:05:22 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 05 Sep 2018 02:05:22 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 05 Sep 2018 02:05:22 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 05 Sep 2018 02:05:22 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 05 Sep 2018 02:05:23 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 05 Sep 2018 06:33:58 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 05 Sep 2018 06:33:58 GMT
ENV PHP_VERSION=7.0.31
# Wed, 05 Sep 2018 06:33:59 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.31.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.31.tar.xz.asc/from/this/mirror
# Wed, 05 Sep 2018 06:33:59 GMT
ENV PHP_SHA256=68f57b3f4587071fb54a620cb83a1cfb3f0bd4ee071e0ce3bf7046a5f2d2f3cf PHP_MD5=
# Wed, 05 Sep 2018 06:34:07 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 05 Sep 2018 06:34:08 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 07 Sep 2018 23:08:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 07 Sep 2018 23:08:42 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Fri, 07 Sep 2018 23:08:42 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 07 Sep 2018 23:08:42 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 07 Sep 2018 23:08:42 GMT
WORKDIR /var/www/html
# Fri, 07 Sep 2018 23:08:43 GMT
EXPOSE 80/tcp
# Fri, 07 Sep 2018 23:08:43 GMT
CMD ["apache2-foreground"]
# Sat, 08 Sep 2018 02:03:48 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 08 Sep 2018 02:05:19 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Sat, 08 Sep 2018 02:05:28 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Sat, 08 Sep 2018 02:05:29 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 08 Sep 2018 02:05:29 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 08 Sep 2018 02:05:29 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.27
# Sat, 08 Sep 2018 02:05:30 GMT
ENV MEDIAWIKI_BRANCH=REL1_27
# Sat, 08 Sep 2018 02:05:30 GMT
ENV MEDIAWIKI_VERSION=1.27.4
# Sat, 08 Sep 2018 02:05:30 GMT
ENV MEDIAWIKI_SHA512=1a5b82a55c3703db9905a9098922a6008176ae2d53093bd651eb4e5638dc62861f40fe6ae523165f5b1970e8f28dff8ccfa51a5ebdaeb753e6d6e66eaf3c0dd1
# Sat, 08 Sep 2018 02:05:36 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:802b00ed6f79f48e6a5f44ecbcaf43563d6077aaecb565eee1dfc615c0b18c00`  
		Last Modified: Tue, 04 Sep 2018 21:25:45 GMT  
		Size: 22.5 MB (22485965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59f5a5a895f85ce514e7f66d3715d42e54b6735957b02a2406d3625dd75a2185`  
		Last Modified: Wed, 05 Sep 2018 09:03:28 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6898b2dbcfeb5f9532f39c5906364d294c90c4fa0c942068e0ba27bdcd73029b`  
		Last Modified: Wed, 05 Sep 2018 09:03:45 GMT  
		Size: 67.4 MB (67428958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e0903aaa47ebca2076b2f4d52c1118efa2fd755741247b509ced1085f5c1a72`  
		Last Modified: Wed, 05 Sep 2018 09:03:27 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2961af1e196a66c727ebfa1eaed81c207081b853d8df37106f472582d12dd9db`  
		Last Modified: Wed, 05 Sep 2018 09:04:21 GMT  
		Size: 17.1 MB (17127406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71f7016f79a0218a691e7032c308b38d0de98471d48a19f98b7c1db479330f47`  
		Last Modified: Wed, 05 Sep 2018 09:04:17 GMT  
		Size: 1.2 KB (1242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e1a48e5719ce319ff7b5a20b75a48702ec44e17c13abe3d630327ce03e760a8`  
		Last Modified: Wed, 05 Sep 2018 09:04:17 GMT  
		Size: 428.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ae5291984f364551ae9d9bd0a87648dd96aa88d893da349821a9f66acdb8da8`  
		Last Modified: Wed, 05 Sep 2018 09:04:16 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:725b65166f31691ad826144b84fe7f14622a67486d20d6469ec3be96955ea249`  
		Last Modified: Wed, 05 Sep 2018 09:04:16 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d45206e9f6b631f9b0c829f5f0a0beea4d17e4015df63107345a1f7ecc82591f`  
		Last Modified: Wed, 05 Sep 2018 09:16:40 GMT  
		Size: 12.4 MB (12379143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d171671ace32bdf904ba6ef2e48e4dc804c60d726d6ef09a0639d5c8d47a90bf`  
		Last Modified: Wed, 05 Sep 2018 09:16:39 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e580cc39a4d1e7f64bf252641f6010b41d3360139488e07e2cc740d8bcd1019`  
		Last Modified: Sat, 08 Sep 2018 01:26:51 GMT  
		Size: 14.3 MB (14281545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a030f0f9c2b35b3daf297a5852ed5d070849e9a26a866b98650c3db7165ea53`  
		Last Modified: Sat, 08 Sep 2018 01:26:48 GMT  
		Size: 2.2 KB (2194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:267967602263fa85ae417d5bb4855b2cfa2d9ddd3bcfaa6ab655bb82ad0a081d`  
		Last Modified: Sat, 08 Sep 2018 01:26:49 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9926507175131e2598008cecb2f66b13ba339b21f329aa14953cdb33cd167811`  
		Last Modified: Sat, 08 Sep 2018 02:07:17 GMT  
		Size: 56.3 MB (56337471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff716fdd9c8a441e1feae976e3131bf16482ee858c3b4af9f1f93c3ed031cb3a`  
		Last Modified: Sat, 08 Sep 2018 02:07:03 GMT  
		Size: 1.5 MB (1549026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56de73491e4509b0af742d7044c84c0971e98f4490b3974d50f308d78bb42efe`  
		Last Modified: Sat, 08 Sep 2018 02:07:04 GMT  
		Size: 400.4 KB (400360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de307dde21a388fb7dacff2a40a381cbfed51ae84ba9a64d0dc959ccc1686166`  
		Last Modified: Sat, 08 Sep 2018 02:07:03 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acb0e671dde6cff90ba5d051ab2d61d2b6aa851afbf7728f62e107bc9048070f`  
		Last Modified: Sat, 08 Sep 2018 02:07:03 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b0820017d2f3359a9461cbeed2bd7d319fae1ae67af111b98fa2d516889e2f6`  
		Last Modified: Sat, 08 Sep 2018 02:07:16 GMT  
		Size: 31.9 MB (31899036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.27.4` - linux; arm variant v5

```console
$ docker pull mediawiki@sha256:b035e9c4eaefeda15c9d10c7d909c9b2c31adf82ff6213998fcf0a1103ac9cc7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.1 MB (209062313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82c3a41032298f506818d5c9911c8c3e80ffd2761704a92d95e31313d44de97b`
-	Entrypoint: `["docker-php-entrypoint"]`
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
# Wed, 05 Sep 2018 11:00:28 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 05 Sep 2018 11:00:29 GMT
ENV PHP_VERSION=7.0.31
# Wed, 05 Sep 2018 11:00:29 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.31.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.31.tar.xz.asc/from/this/mirror
# Wed, 05 Sep 2018 11:00:29 GMT
ENV PHP_SHA256=68f57b3f4587071fb54a620cb83a1cfb3f0bd4ee071e0ce3bf7046a5f2d2f3cf PHP_MD5=
# Wed, 05 Sep 2018 11:00:43 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 05 Sep 2018 11:00:44 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 08 Sep 2018 10:19:03 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 08 Sep 2018 10:19:04 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Sat, 08 Sep 2018 10:19:04 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 08 Sep 2018 10:19:05 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 08 Sep 2018 10:19:05 GMT
WORKDIR /var/www/html
# Sat, 08 Sep 2018 10:19:05 GMT
EXPOSE 80/tcp
# Sat, 08 Sep 2018 10:19:05 GMT
CMD ["apache2-foreground"]
# Sat, 08 Sep 2018 13:14:55 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 08 Sep 2018 13:17:36 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Sat, 08 Sep 2018 13:17:51 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Sat, 08 Sep 2018 13:17:52 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 08 Sep 2018 13:17:53 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 08 Sep 2018 13:17:53 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.27
# Sat, 08 Sep 2018 13:17:53 GMT
ENV MEDIAWIKI_BRANCH=REL1_27
# Sat, 08 Sep 2018 13:17:54 GMT
ENV MEDIAWIKI_VERSION=1.27.4
# Sat, 08 Sep 2018 13:17:54 GMT
ENV MEDIAWIKI_SHA512=1a5b82a55c3703db9905a9098922a6008176ae2d53093bd651eb4e5638dc62861f40fe6ae523165f5b1970e8f28dff8ccfa51a5ebdaeb753e6d6e66eaf3c0dd1
# Sat, 08 Sep 2018 13:18:07 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
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
	-	`sha256:91a1a8733897536f17aef0f525cfd31d6ab102147b5d3d99ca35f44155c274b3`  
		Last Modified: Wed, 05 Sep 2018 12:30:56 GMT  
		Size: 12.4 MB (12377273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:462cdba7610b66bee5ecb88f355bbf31c2a51102f16db58b35454ae55c16393e`  
		Last Modified: Wed, 05 Sep 2018 12:30:54 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac8bfbc164eee1a8603e4285658f50e513c554fab33ed294224adecea078da47`  
		Last Modified: Sat, 08 Sep 2018 11:39:35 GMT  
		Size: 13.7 MB (13658011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cbb836a3ed1dd1e73c5ca3ca3203012a04cf68c19fb443f6f585cb4650b281a`  
		Last Modified: Sat, 08 Sep 2018 11:39:30 GMT  
		Size: 2.2 KB (2195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b9dc06e97d5d7e9567b4ecbd432243d7ebe75666ca5646c6b8e8d29902b556c`  
		Last Modified: Sat, 08 Sep 2018 11:39:30 GMT  
		Size: 906.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b09a08fb1f6c126b4df443690eedecd7ab3ddcf9eefe99b1c211a608ab74ac5`  
		Last Modified: Sat, 08 Sep 2018 13:20:57 GMT  
		Size: 54.0 MB (53981758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:263a8e2d8fde4b8ec0136e7a4617ffca0545ef641eac0a9777015c43d0f729bf`  
		Last Modified: Sat, 08 Sep 2018 13:20:39 GMT  
		Size: 1.5 MB (1485557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795b8518f4408bc93b2f8f557da93b442212c4d7e06ace00426ccbfa113eabc9`  
		Last Modified: Sat, 08 Sep 2018 13:20:39 GMT  
		Size: 392.1 KB (392125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00b2441df4548a26fbfde7922931fe1990c17676a5b58fd41d8653e191dd4789`  
		Last Modified: Sat, 08 Sep 2018 13:20:39 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dfb8639bc867cc790450f129ee3a7873d59d5e1b668f6281c252998dbb59a37`  
		Last Modified: Sat, 08 Sep 2018 13:20:40 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4a0ce71e841460131879055edd0b2e1a04b899de66fdfb95374333facbfbcc7`  
		Last Modified: Sat, 08 Sep 2018 13:20:57 GMT  
		Size: 31.9 MB (31899613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.27.4` - linux; arm variant v7

```console
$ docker pull mediawiki@sha256:ce40cc29b5f073d13313e51f88d6e9615a83db17216b88e744972a463aa168f7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.2 MB (199190184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31b2b834d06950378ba3f286b51760ab62c7c2471ac248fb76d6a2a66172e1fc`
-	Entrypoint: `["docker-php-entrypoint"]`
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
# Wed, 05 Sep 2018 15:19:29 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 05 Sep 2018 15:19:29 GMT
ENV PHP_VERSION=7.0.31
# Wed, 05 Sep 2018 15:19:30 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.31.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.31.tar.xz.asc/from/this/mirror
# Wed, 05 Sep 2018 15:19:30 GMT
ENV PHP_SHA256=68f57b3f4587071fb54a620cb83a1cfb3f0bd4ee071e0ce3bf7046a5f2d2f3cf PHP_MD5=
# Wed, 05 Sep 2018 15:19:42 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 05 Sep 2018 15:19:42 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 05 Sep 2018 15:23:11 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 05 Sep 2018 15:23:12 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Wed, 05 Sep 2018 15:23:13 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 05 Sep 2018 15:23:13 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Wed, 05 Sep 2018 15:23:14 GMT
WORKDIR /var/www/html
# Wed, 05 Sep 2018 15:23:14 GMT
EXPOSE 80/tcp
# Wed, 05 Sep 2018 15:23:14 GMT
CMD ["apache2-foreground"]
# Wed, 05 Sep 2018 19:30:07 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 05 Sep 2018 19:32:27 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Wed, 05 Sep 2018 19:32:44 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Wed, 05 Sep 2018 19:32:47 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 05 Sep 2018 19:32:49 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Wed, 05 Sep 2018 19:32:49 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.27
# Wed, 05 Sep 2018 19:32:49 GMT
ENV MEDIAWIKI_BRANCH=REL1_27
# Wed, 05 Sep 2018 19:32:50 GMT
ENV MEDIAWIKI_VERSION=1.27.4
# Wed, 05 Sep 2018 19:32:50 GMT
ENV MEDIAWIKI_SHA512=1a5b82a55c3703db9905a9098922a6008176ae2d53093bd651eb4e5638dc62861f40fe6ae523165f5b1970e8f28dff8ccfa51a5ebdaeb753e6d6e66eaf3c0dd1
# Wed, 05 Sep 2018 19:33:02 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
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
	-	`sha256:8ec768edfa025b2365886167f3d46f4bf66c792665528b94c29638d063d51f54`  
		Last Modified: Wed, 05 Sep 2018 16:54:17 GMT  
		Size: 12.4 MB (12377217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fa5d3ff8f907aeb2fd421291757d6e79d7ac1bf28bb376b4334199017546254`  
		Last Modified: Wed, 05 Sep 2018 16:54:17 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5851b4a415848edf17ca13ac4da8db21113573b14923eefcdd0fd7823539f627`  
		Last Modified: Wed, 05 Sep 2018 16:54:19 GMT  
		Size: 12.5 MB (12471484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e7a3ddb01666cb80f02ced911f5337a16fddf093cb22fc607cd951a43d1bc73`  
		Last Modified: Wed, 05 Sep 2018 16:54:15 GMT  
		Size: 2.2 KB (2191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27aafb3fa8313e40c1aaacb8876be5c9bb096df4fb7fa7210c52ce492bc07a6f`  
		Last Modified: Wed, 05 Sep 2018 16:54:16 GMT  
		Size: 900.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9549c26a02d4798242db1822177430faa48d4736b52a1da7bd29d9938881b837`  
		Last Modified: Wed, 05 Sep 2018 19:35:51 GMT  
		Size: 51.6 MB (51605091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68380715504e481008e168d6129f70502acb65576b0f6937ca4c2200278db3e6`  
		Last Modified: Wed, 05 Sep 2018 19:35:34 GMT  
		Size: 1.4 MB (1447284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fc51b5574fd2300c24258de777862ca873fc1ac4b19abba8d193f1e6a72e88e`  
		Last Modified: Wed, 05 Sep 2018 19:35:35 GMT  
		Size: 387.3 KB (387278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4287df713a778635d2efd9805f5cb814f1f386d7992f034812a33527729c7f86`  
		Last Modified: Wed, 05 Sep 2018 19:35:34 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4344b7c26eabad872b64d5d4ba006b5c5534a4142d2ac36eedd5230b41e3b76a`  
		Last Modified: Wed, 05 Sep 2018 19:35:34 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a107f40cd7847b9d3fd983a2f5823b282c4662dd2cc3defe71b208c88dcf68ce`  
		Last Modified: Wed, 05 Sep 2018 19:35:54 GMT  
		Size: 31.9 MB (31899610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.27.4` - linux; arm64 variant v8

```console
$ docker pull mediawiki@sha256:2c9e9a6ac9415ff7622244d5f1900a84e01374f9d34f570b77f3456610e223a4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.0 MB (207982214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11c6baa8bd1309f5feca8be77919e36a8a75db80b44a84fa511259dcf6dd42c3`
-	Entrypoint: `["docker-php-entrypoint"]`
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
# Wed, 05 Sep 2018 17:20:15 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 05 Sep 2018 17:20:16 GMT
ENV PHP_VERSION=7.0.31
# Wed, 05 Sep 2018 17:20:17 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.31.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.31.tar.xz.asc/from/this/mirror
# Wed, 05 Sep 2018 17:20:17 GMT
ENV PHP_SHA256=68f57b3f4587071fb54a620cb83a1cfb3f0bd4ee071e0ce3bf7046a5f2d2f3cf PHP_MD5=
# Wed, 05 Sep 2018 17:20:48 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 05 Sep 2018 17:20:49 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 05 Sep 2018 17:28:35 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 05 Sep 2018 17:28:38 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Wed, 05 Sep 2018 17:28:39 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 05 Sep 2018 17:28:40 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Wed, 05 Sep 2018 17:28:42 GMT
WORKDIR /var/www/html
# Wed, 05 Sep 2018 17:28:43 GMT
EXPOSE 80/tcp
# Wed, 05 Sep 2018 17:28:44 GMT
CMD ["apache2-foreground"]
# Thu, 06 Sep 2018 07:55:26 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 06 Sep 2018 07:58:55 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Thu, 06 Sep 2018 07:59:26 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Thu, 06 Sep 2018 07:59:32 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 06 Sep 2018 07:59:34 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Thu, 06 Sep 2018 07:59:56 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.27
# Thu, 06 Sep 2018 07:59:57 GMT
ENV MEDIAWIKI_BRANCH=REL1_27
# Thu, 06 Sep 2018 07:59:57 GMT
ENV MEDIAWIKI_VERSION=1.27.4
# Thu, 06 Sep 2018 07:59:58 GMT
ENV MEDIAWIKI_SHA512=1a5b82a55c3703db9905a9098922a6008176ae2d53093bd651eb4e5638dc62861f40fe6ae523165f5b1970e8f28dff8ccfa51a5ebdaeb753e6d6e66eaf3c0dd1
# Thu, 06 Sep 2018 08:00:10 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
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
	-	`sha256:40bdda2310e01ef69e1e73035d25c251a552ee9e557ace3e94cbc6b37f338d40`  
		Last Modified: Wed, 05 Sep 2018 19:28:26 GMT  
		Size: 12.4 MB (12377556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59e789b6a29ca1c99c3c691a00a8eb3f8c2e0da507d22f940f2ac7e6f814ac19`  
		Last Modified: Wed, 05 Sep 2018 19:28:23 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c88ca3472cac5a5d2f0e65524067ebcdeeb7ef92ccf3459abaa55c82b90c4db`  
		Last Modified: Wed, 05 Sep 2018 19:28:28 GMT  
		Size: 13.0 MB (13049339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b39619abf39b89cd2ffbe20fbb7f8b4e3f27763db3c288ce4b0e0368297be791`  
		Last Modified: Wed, 05 Sep 2018 19:28:23 GMT  
		Size: 2.2 KB (2192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:600da0744246363270e2c7f7b1d687a4e97f616b6f134aaf92ed4723a46e8c5c`  
		Last Modified: Wed, 05 Sep 2018 19:28:23 GMT  
		Size: 905.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1971c04bc79f31d94b2ce9ab2cd641009661bf30c47b81008d17b55c1d1edfd3`  
		Last Modified: Thu, 06 Sep 2018 08:07:42 GMT  
		Size: 54.1 MB (54130123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3594c804bbaa31b402540cc9cc5c8dfafad9ae2327303f37ce325a2584f578ff`  
		Last Modified: Thu, 06 Sep 2018 08:07:18 GMT  
		Size: 1.5 MB (1486674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cedf4fc81ad23cf040df67d126206a699afe5022b0c8111709e36e988ef22348`  
		Last Modified: Thu, 06 Sep 2018 08:07:18 GMT  
		Size: 395.0 KB (394980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bf559f896c39f581f845181b406a58619f4c75dce5409bf9e5c7b88285cffbd`  
		Last Modified: Thu, 06 Sep 2018 08:07:18 GMT  
		Size: 354.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fac912ab41190fa9636fbd8c1bec9c8bd054b4e17a5013c41d0322081afcaee`  
		Last Modified: Thu, 06 Sep 2018 08:07:17 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b712c9cd8d14ed13adebb3f2c84644bb444f312dc66642fb6753045ec1ce51ba`  
		Last Modified: Thu, 06 Sep 2018 08:07:38 GMT  
		Size: 31.9 MB (31899035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.27.4` - linux; 386

```console
$ docker pull mediawiki@sha256:a36d9a9fca9b4fb5348144c2142a34bf0f290d081a801b1fb88271a4bdba240d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.3 MB (229288445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c788e9ec8dfb061bd56875896f3139bbd301a5b8f4a753b0322438334fb62d9`
-	Entrypoint: `["docker-php-entrypoint"]`
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
# Thu, 06 Sep 2018 18:59:33 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Thu, 06 Sep 2018 18:59:34 GMT
ENV PHP_VERSION=7.0.31
# Thu, 06 Sep 2018 18:59:34 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.31.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.31.tar.xz.asc/from/this/mirror
# Thu, 06 Sep 2018 18:59:34 GMT
ENV PHP_SHA256=68f57b3f4587071fb54a620cb83a1cfb3f0bd4ee071e0ce3bf7046a5f2d2f3cf PHP_MD5=
# Thu, 06 Sep 2018 18:59:44 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Thu, 06 Sep 2018 18:59:44 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 08 Sep 2018 15:12:36 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 08 Sep 2018 15:12:36 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Sat, 08 Sep 2018 15:12:36 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 08 Sep 2018 15:12:37 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 08 Sep 2018 15:12:37 GMT
WORKDIR /var/www/html
# Sat, 08 Sep 2018 15:12:37 GMT
EXPOSE 80/tcp
# Sat, 08 Sep 2018 15:12:37 GMT
CMD ["apache2-foreground"]
# Sat, 08 Sep 2018 19:44:22 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 08 Sep 2018 19:45:48 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Sat, 08 Sep 2018 19:46:01 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Sat, 08 Sep 2018 19:46:01 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 08 Sep 2018 19:46:02 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 08 Sep 2018 19:46:02 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.27
# Sat, 08 Sep 2018 19:46:02 GMT
ENV MEDIAWIKI_BRANCH=REL1_27
# Sat, 08 Sep 2018 19:46:03 GMT
ENV MEDIAWIKI_VERSION=1.27.4
# Sat, 08 Sep 2018 19:46:03 GMT
ENV MEDIAWIKI_SHA512=1a5b82a55c3703db9905a9098922a6008176ae2d53093bd651eb4e5638dc62861f40fe6ae523165f5b1970e8f28dff8ccfa51a5ebdaeb753e6d6e66eaf3c0dd1
# Sat, 08 Sep 2018 19:46:10 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
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
	-	`sha256:9c28852f3d7cb507690b2f5f48878f7de2ec50e82e9891644dc6ffb0c5f35b54`  
		Last Modified: Thu, 06 Sep 2018 21:36:56 GMT  
		Size: 12.4 MB (12378601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e999e24ce0fced858fb6db4dc0163b3eb68c41239d56db9d8e42ea650f3fd28`  
		Last Modified: Thu, 06 Sep 2018 21:36:54 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d67e91ef5812bcc374583d52f6919a7ef3c37deec6487bb2df623c1efd3fe2d`  
		Last Modified: Sat, 08 Sep 2018 17:42:54 GMT  
		Size: 14.4 MB (14393849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d38e1bb491bb2886ca38f5eed36d88bd0b07ae9a74c85896b9b74e4333cfb621`  
		Last Modified: Sat, 08 Sep 2018 17:42:50 GMT  
		Size: 2.2 KB (2196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba564c0a8b892d126735fbf101bdf6b802b016798ef062a74023c347891a4609`  
		Last Modified: Sat, 08 Sep 2018 17:42:50 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5056d689e35fc213034c62340f3582b2356b18f6d9aa6a666fc831c075eef60e`  
		Last Modified: Sat, 08 Sep 2018 19:48:02 GMT  
		Size: 56.5 MB (56494287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fefa8f114df85f3226747b2f9af1076b5ef083919aa80db84786767b6d3e2a0d`  
		Last Modified: Sat, 08 Sep 2018 19:47:45 GMT  
		Size: 1.6 MB (1552696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc159a9ccf565045c6ff09f9f4f049b0c51813750ffec5f45c42fd42b4384e80`  
		Last Modified: Sat, 08 Sep 2018 19:47:44 GMT  
		Size: 389.4 KB (389356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0072b23200d31107698b635662f58905b768fa70d8b52fa707e2cfdb34460a22`  
		Last Modified: Sat, 08 Sep 2018 19:47:44 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e71557fba827b5e5064e8339be0590983ce1d602a0887d687ed274b0bc2b6f5d`  
		Last Modified: Sat, 08 Sep 2018 19:47:45 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fde42ae6cf3715f745a803a7126c4db10bb6d2dcb18a5d912b1b6a4d9c1af961`  
		Last Modified: Sat, 08 Sep 2018 19:48:01 GMT  
		Size: 31.9 MB (31899040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.27.4` - linux; ppc64le

```console
$ docker pull mediawiki@sha256:6698039299c1b21e17ffd5d77104e09ccb68530903b6be3a5166f9eb077c8314
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.8 MB (218771840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80b7e525600db94737e3060585cf408bf7dbc8e80642270334f8bc9da9b65d73`
-	Entrypoint: `["docker-php-entrypoint"]`
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
# Wed, 05 Sep 2018 11:45:01 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 05 Sep 2018 11:45:04 GMT
ENV PHP_VERSION=7.0.31
# Wed, 05 Sep 2018 11:45:04 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.31.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.31.tar.xz.asc/from/this/mirror
# Wed, 05 Sep 2018 11:45:06 GMT
ENV PHP_SHA256=68f57b3f4587071fb54a620cb83a1cfb3f0bd4ee071e0ce3bf7046a5f2d2f3cf PHP_MD5=
# Wed, 05 Sep 2018 11:45:59 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 05 Sep 2018 11:46:02 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 08 Sep 2018 12:35:34 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 08 Sep 2018 12:35:35 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Sat, 08 Sep 2018 12:35:36 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 08 Sep 2018 12:35:37 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 08 Sep 2018 12:35:38 GMT
WORKDIR /var/www/html
# Sat, 08 Sep 2018 12:35:39 GMT
EXPOSE 80/tcp
# Sat, 08 Sep 2018 12:35:40 GMT
CMD ["apache2-foreground"]
# Sat, 08 Sep 2018 15:35:37 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 08 Sep 2018 15:37:41 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Sat, 08 Sep 2018 15:37:57 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Sat, 08 Sep 2018 15:38:00 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 08 Sep 2018 15:38:02 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 08 Sep 2018 15:38:02 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.27
# Sat, 08 Sep 2018 15:38:03 GMT
ENV MEDIAWIKI_BRANCH=REL1_27
# Sat, 08 Sep 2018 15:38:04 GMT
ENV MEDIAWIKI_VERSION=1.27.4
# Sat, 08 Sep 2018 15:38:04 GMT
ENV MEDIAWIKI_SHA512=1a5b82a55c3703db9905a9098922a6008176ae2d53093bd651eb4e5638dc62861f40fe6ae523165f5b1970e8f28dff8ccfa51a5ebdaeb753e6d6e66eaf3c0dd1
# Sat, 08 Sep 2018 15:38:25 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
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
	-	`sha256:2d12381b23ab7afc53a94cbb6447016d9f48d7f711e3fe32050b20aec8048699`  
		Last Modified: Wed, 05 Sep 2018 12:49:53 GMT  
		Size: 12.4 MB (12377733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfbc134d79d65ddd242dae7e6806625c0cfe05fce2c9b1667d9002ba18071050`  
		Last Modified: Wed, 05 Sep 2018 12:49:50 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4df47a6c26dcdddd2617dba4da0c31dfce89006724f6e1863d278ea4eb6438d`  
		Last Modified: Sat, 08 Sep 2018 14:25:59 GMT  
		Size: 14.1 MB (14067995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6482cd36f125cdfafe6a547d2f79f3632c10e004b5b7859125a97a6054c97ac`  
		Last Modified: Sat, 08 Sep 2018 14:25:53 GMT  
		Size: 2.2 KB (2193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:697706714639cfc788de240960102a33c915e19bef90eded1e824749b7fe93a0`  
		Last Modified: Sat, 08 Sep 2018 14:25:52 GMT  
		Size: 906.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bea685a0101ea5083f0bfe781c019d6cf657d6e430f84e243e0f1ae2c3fc637a`  
		Last Modified: Sat, 08 Sep 2018 15:41:27 GMT  
		Size: 56.6 MB (56589749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eacc7a8a5ab6df5cad04e07ead4d19c0cbb4a20091a211ae067b6ad5b8b0306e`  
		Last Modified: Sat, 08 Sep 2018 15:41:03 GMT  
		Size: 1.5 MB (1530912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18ad50596c567527d0cee6c34f5284747af4216774ff2312d6df47427f53c80d`  
		Last Modified: Sat, 08 Sep 2018 15:41:02 GMT  
		Size: 400.4 KB (400372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a140ab7824a4e0742b79468910f2bebc0899f1b1bbc2c5db862f143a7240553`  
		Last Modified: Sat, 08 Sep 2018 15:41:02 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1e035b0886debba4509f3165b17bc5c532882fd82e834edb3515bfaff353cb7`  
		Last Modified: Sat, 08 Sep 2018 15:41:02 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e345a3ddac7984e0f2de069f21492d83262267063b0f0514ebbfabd274b7cdb8`  
		Last Modified: Sat, 08 Sep 2018 15:41:15 GMT  
		Size: 31.9 MB (31899614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mediawiki:1.30`

```console
$ docker pull mediawiki@sha256:0e3439ab9179aa51b16d3cee1918266e619e333d8cf2e4620937f36b96679630
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `mediawiki:1.30` - linux; amd64

```console
$ docker pull mediawiki@sha256:389b6d8c1c381747cdb44f4df78acc9d430604a745da1fccff53d1d85165301b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.5 MB (235530659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20c330a09f15fa52ce93e39da528e334ba8c5bdcdd3602508e86fd0291db210b`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:34 GMT
ADD file:e6ca98733431f75e97eb09758ba64065d213d51bd2070a95cf15f2ff5adccfc4 in / 
# Tue, 04 Sep 2018 21:21:34 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 01:55:39 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 05 Sep 2018 01:55:39 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 05 Sep 2018 01:56:06 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 05 Sep 2018 01:56:06 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 05 Sep 2018 01:56:07 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 05 Sep 2018 02:05:18 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 02:05:18 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 05 Sep 2018 02:05:18 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 05 Sep 2018 02:05:19 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 05 Sep 2018 02:05:20 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 05 Sep 2018 02:05:21 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 05 Sep 2018 02:05:21 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 05 Sep 2018 02:05:22 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 05 Sep 2018 02:05:22 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 05 Sep 2018 02:05:22 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 05 Sep 2018 02:05:22 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 05 Sep 2018 02:05:23 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 05 Sep 2018 04:52:35 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Wed, 05 Sep 2018 04:52:35 GMT
ENV PHP_VERSION=7.1.21
# Wed, 05 Sep 2018 04:52:35 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.21.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.21.tar.xz.asc/from/this/mirror
# Wed, 05 Sep 2018 04:52:35 GMT
ENV PHP_SHA256=d4da6dc69d3fe1e6b2b80f16b262f391037bfeb21213c966e026bd45d7ca2813 PHP_MD5=
# Wed, 05 Sep 2018 04:52:43 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 05 Sep 2018 04:52:44 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 07 Sep 2018 21:51:49 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 07 Sep 2018 21:51:49 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Fri, 07 Sep 2018 21:51:49 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 07 Sep 2018 21:51:50 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 07 Sep 2018 21:51:50 GMT
WORKDIR /var/www/html
# Fri, 07 Sep 2018 21:51:50 GMT
EXPOSE 80/tcp
# Fri, 07 Sep 2018 21:51:50 GMT
CMD ["apache2-foreground"]
# Sat, 08 Sep 2018 02:01:12 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 08 Sep 2018 02:02:52 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Sat, 08 Sep 2018 02:03:01 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Sat, 08 Sep 2018 02:03:01 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 08 Sep 2018 02:03:02 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 08 Sep 2018 02:03:02 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.30
# Sat, 08 Sep 2018 02:03:02 GMT
ENV MEDIAWIKI_BRANCH=REL1_30
# Sat, 08 Sep 2018 02:03:03 GMT
ENV MEDIAWIKI_VERSION=1.30.0
# Sat, 08 Sep 2018 02:03:03 GMT
ENV MEDIAWIKI_SHA512=ec4aeb08c18af0e52aaf99124d43cd357328221934d593d87f38da804a2f4a5b172a114659f87f6de58c2140ee05ae14ec6a270574f655e7780a950a51178643
# Sat, 08 Sep 2018 02:03:10 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:802b00ed6f79f48e6a5f44ecbcaf43563d6077aaecb565eee1dfc615c0b18c00`  
		Last Modified: Tue, 04 Sep 2018 21:25:45 GMT  
		Size: 22.5 MB (22485965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59f5a5a895f85ce514e7f66d3715d42e54b6735957b02a2406d3625dd75a2185`  
		Last Modified: Wed, 05 Sep 2018 09:03:28 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6898b2dbcfeb5f9532f39c5906364d294c90c4fa0c942068e0ba27bdcd73029b`  
		Last Modified: Wed, 05 Sep 2018 09:03:45 GMT  
		Size: 67.4 MB (67428958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e0903aaa47ebca2076b2f4d52c1118efa2fd755741247b509ced1085f5c1a72`  
		Last Modified: Wed, 05 Sep 2018 09:03:27 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2961af1e196a66c727ebfa1eaed81c207081b853d8df37106f472582d12dd9db`  
		Last Modified: Wed, 05 Sep 2018 09:04:21 GMT  
		Size: 17.1 MB (17127406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71f7016f79a0218a691e7032c308b38d0de98471d48a19f98b7c1db479330f47`  
		Last Modified: Wed, 05 Sep 2018 09:04:17 GMT  
		Size: 1.2 KB (1242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e1a48e5719ce319ff7b5a20b75a48702ec44e17c13abe3d630327ce03e760a8`  
		Last Modified: Wed, 05 Sep 2018 09:04:17 GMT  
		Size: 428.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ae5291984f364551ae9d9bd0a87648dd96aa88d893da349821a9f66acdb8da8`  
		Last Modified: Wed, 05 Sep 2018 09:04:16 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:725b65166f31691ad826144b84fe7f14622a67486d20d6469ec3be96955ea249`  
		Last Modified: Wed, 05 Sep 2018 09:04:16 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f38e84d81f34b49de9e7f7b0d9705810f28ba039837e3347a7e4cebc9f76048f`  
		Last Modified: Wed, 05 Sep 2018 09:12:43 GMT  
		Size: 12.6 MB (12576747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:661136afd63462a3a10531c9d1a42ae2c9115cd547dcc553dc24abd3a0f34a49`  
		Last Modified: Wed, 05 Sep 2018 09:12:42 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5ce7d144e600a0784bbc21741b88a5f9d2e22d1dc08ed3bddf50b1b1c238cee`  
		Last Modified: Sat, 08 Sep 2018 01:21:09 GMT  
		Size: 14.6 MB (14608191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7651e00c21244f3d818a8267d637a22fd13aa8461f29157f40d80736809f1e52`  
		Last Modified: Sat, 08 Sep 2018 01:21:06 GMT  
		Size: 2.2 KB (2192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d779160703d3c95533393618f158b2656fa67b3ad45958cbd1ddd3578a6a1ef`  
		Last Modified: Sat, 08 Sep 2018 01:21:07 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc25a8ff95ca5faebfe3b72d872af71b5d60bde2ee03d1a7b841f044a822b487`  
		Last Modified: Sat, 08 Sep 2018 02:06:42 GMT  
		Size: 56.3 MB (56335775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f331ab60b7ad6c7ecc8c247c1a6b289c6e81d881e8beba26864dec7e435544fd`  
		Last Modified: Sat, 08 Sep 2018 02:06:28 GMT  
		Size: 1.7 MB (1662986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6eb981d60bfd08689baab2db021e4bd203ef85d9ac84bcb338c6af79d975650`  
		Last Modified: Sat, 08 Sep 2018 02:06:28 GMT  
		Size: 408.6 KB (408583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:351de926bc085f95c86c2c7b438185c88e83e717f580b95f0cd846ac95955c90`  
		Last Modified: Sat, 08 Sep 2018 02:06:28 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2e624f5ed55c5edef40a1b20a3ea2c7c5a2faaf38565a145610b887f7a7cf57`  
		Last Modified: Sat, 08 Sep 2018 02:06:28 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6d017430f195c74b92ae4ce63d69189f953cadc4394249c179c788f648e690`  
		Last Modified: Sat, 08 Sep 2018 02:06:47 GMT  
		Size: 42.9 MB (42889171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.30` - linux; arm variant v5

```console
$ docker pull mediawiki@sha256:2cf3d7848415f25bf0014e0fdef431471f39fe433f467b5c89a4999e80f0b2a2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.6 MB (220634633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:403d1a6b212841e2620cf91831838014477012391f45f54f5917cca9c502b238`
-	Entrypoint: `["docker-php-entrypoint"]`
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
# Wed, 05 Sep 2018 10:18:24 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Wed, 05 Sep 2018 10:18:24 GMT
ENV PHP_VERSION=7.1.21
# Wed, 05 Sep 2018 10:18:25 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.21.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.21.tar.xz.asc/from/this/mirror
# Wed, 05 Sep 2018 10:18:25 GMT
ENV PHP_SHA256=d4da6dc69d3fe1e6b2b80f16b262f391037bfeb21213c966e026bd45d7ca2813 PHP_MD5=
# Wed, 05 Sep 2018 10:18:39 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 05 Sep 2018 10:18:39 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 08 Sep 2018 09:42:05 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 08 Sep 2018 09:42:06 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Sat, 08 Sep 2018 09:42:07 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 08 Sep 2018 09:42:07 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 08 Sep 2018 09:42:07 GMT
WORKDIR /var/www/html
# Sat, 08 Sep 2018 09:42:08 GMT
EXPOSE 80/tcp
# Sat, 08 Sep 2018 09:42:08 GMT
CMD ["apache2-foreground"]
# Sat, 08 Sep 2018 13:10:39 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 08 Sep 2018 13:13:34 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Sat, 08 Sep 2018 13:13:50 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Sat, 08 Sep 2018 13:13:52 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 08 Sep 2018 13:13:53 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 08 Sep 2018 13:13:53 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.30
# Sat, 08 Sep 2018 13:13:54 GMT
ENV MEDIAWIKI_BRANCH=REL1_30
# Sat, 08 Sep 2018 13:13:54 GMT
ENV MEDIAWIKI_VERSION=1.30.0
# Sat, 08 Sep 2018 13:13:54 GMT
ENV MEDIAWIKI_SHA512=ec4aeb08c18af0e52aaf99124d43cd357328221934d593d87f38da804a2f4a5b172a114659f87f6de58c2140ee05ae14ec6a270574f655e7780a950a51178643
# Sat, 08 Sep 2018 13:14:09 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
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
	-	`sha256:b2e39ff8f9b15f3661cd41ec87525e6ce8478f01b2d6caa2141df4c27c3a85ea`  
		Last Modified: Wed, 05 Sep 2018 12:26:13 GMT  
		Size: 12.6 MB (12574937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d6ef893e586d3df0cb82412d53eb465f22da792ab74108699d7fba787504af0`  
		Last Modified: Wed, 05 Sep 2018 12:26:11 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf73564aeb2537737fd3b3d01723f34642d41817f4a277c0e8e1837bac16f186`  
		Last Modified: Sat, 08 Sep 2018 11:34:09 GMT  
		Size: 13.9 MB (13928166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67a32065e90eb477d90fcdb48e157416ec73f951220637f80a605a22bf9d68a7`  
		Last Modified: Sat, 08 Sep 2018 11:34:04 GMT  
		Size: 2.2 KB (2194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97366146f63936c736e8a4def54335968c4de78e4c8a681722487d09d2074534`  
		Last Modified: Sat, 08 Sep 2018 11:34:04 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72554bbe95547acf78a7dd47a3c2ff264a1430f0118ddaa5dc7cc34c17a6650c`  
		Last Modified: Sat, 08 Sep 2018 13:19:55 GMT  
		Size: 54.0 MB (53981632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccee25c0b3bd91dcda1dc2d6cec9cee703406b5c06322a2a02af546fd8e1b9e7`  
		Last Modified: Sat, 08 Sep 2018 13:19:34 GMT  
		Size: 1.6 MB (1593754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84d2d9f05c7aa8d24a7c140fcad116e3c906562c9a8c331ff977ac283d13b09e`  
		Last Modified: Sat, 08 Sep 2018 13:19:34 GMT  
		Size: 397.8 KB (397807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90eab45ea75bce24cefc40fc45cd181ea91b7f1e4ea2d6d9968702492061c521`  
		Last Modified: Sat, 08 Sep 2018 13:19:34 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4cd35dec1dfd18255cd25e58993d307a55b9adbfd52691ada500b9c0571a32d`  
		Last Modified: Sat, 08 Sep 2018 13:19:34 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1199f1c0df5bc9590adc349c0790ec3dbcd71713c3c7e076917ce55d200bd6fd`  
		Last Modified: Sat, 08 Sep 2018 13:20:03 GMT  
		Size: 42.9 MB (42890365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.30` - linux; arm variant v7

```console
$ docker pull mediawiki@sha256:5fd415569b4a93a3b1919d3885c24a1f7e5148efdcf42e794a9d8241e3903d62
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **210.7 MB (210743189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f37999a497348c6cb35572e443a5c42434862dac2c5087d216734c1a0913a51`
-	Entrypoint: `["docker-php-entrypoint"]`
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
# Wed, 05 Sep 2018 14:37:51 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Wed, 05 Sep 2018 14:37:51 GMT
ENV PHP_VERSION=7.1.21
# Wed, 05 Sep 2018 14:37:51 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.21.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.21.tar.xz.asc/from/this/mirror
# Wed, 05 Sep 2018 14:37:52 GMT
ENV PHP_SHA256=d4da6dc69d3fe1e6b2b80f16b262f391037bfeb21213c966e026bd45d7ca2813 PHP_MD5=
# Wed, 05 Sep 2018 14:38:03 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 05 Sep 2018 14:38:04 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 05 Sep 2018 14:41:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 05 Sep 2018 14:41:25 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Wed, 05 Sep 2018 14:41:25 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 05 Sep 2018 14:41:26 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Wed, 05 Sep 2018 14:41:26 GMT
WORKDIR /var/www/html
# Wed, 05 Sep 2018 14:41:26 GMT
EXPOSE 80/tcp
# Wed, 05 Sep 2018 14:41:26 GMT
CMD ["apache2-foreground"]
# Wed, 05 Sep 2018 19:26:08 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 05 Sep 2018 19:28:55 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Wed, 05 Sep 2018 19:29:10 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Wed, 05 Sep 2018 19:29:14 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 05 Sep 2018 19:29:15 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Wed, 05 Sep 2018 19:29:16 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.30
# Wed, 05 Sep 2018 19:29:16 GMT
ENV MEDIAWIKI_BRANCH=REL1_30
# Wed, 05 Sep 2018 19:29:16 GMT
ENV MEDIAWIKI_VERSION=1.30.0
# Wed, 05 Sep 2018 19:29:17 GMT
ENV MEDIAWIKI_SHA512=ec4aeb08c18af0e52aaf99124d43cd357328221934d593d87f38da804a2f4a5b172a114659f87f6de58c2140ee05ae14ec6a270574f655e7780a950a51178643
# Wed, 05 Sep 2018 19:29:31 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
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
	-	`sha256:d47d028cf4d8fab234172c08fb6eccdfff63a8ca0581d0afc3ad8cf20597c5a1`  
		Last Modified: Wed, 05 Sep 2018 16:47:05 GMT  
		Size: 12.6 MB (12574859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:617dd66dc6d8b5bdc7110c9e678ba13c1efb65ed67696e051fe421a108912ee8`  
		Last Modified: Wed, 05 Sep 2018 16:47:03 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa23422469f50fd90b216b33bb5e7aab8ffd6de732baa911914a41609d2f0b53`  
		Last Modified: Wed, 05 Sep 2018 16:47:08 GMT  
		Size: 12.7 MB (12728560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e92b68431c56230b91301d516d4bc09f2371368416ecdaed845f25c1063ae200`  
		Last Modified: Wed, 05 Sep 2018 16:47:03 GMT  
		Size: 2.2 KB (2195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b5327c374303c0659635c6e5456e37479eb0ce539f485cd8f092be725416707`  
		Last Modified: Wed, 05 Sep 2018 16:47:05 GMT  
		Size: 905.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b352029f9ff8f37b1a10c086ebcc83c448c391be23cdc50db0a068b9637283a8`  
		Last Modified: Wed, 05 Sep 2018 19:34:53 GMT  
		Size: 51.6 MB (51604964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39923b337dc6377ce207e3d39f0203240979d904513a65785933481f0c0ab4c4`  
		Last Modified: Wed, 05 Sep 2018 19:34:38 GMT  
		Size: 1.5 MB (1549444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c19d2a63a258192b1a02442d6d7b2f610219bff3255742b96e55fb6584c4c82`  
		Last Modified: Wed, 05 Sep 2018 19:34:36 GMT  
		Size: 392.8 KB (392766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:142ec0817fa85d41858582ba424b8abebc495ea812f1d6c228f91c237fc82602`  
		Last Modified: Wed, 05 Sep 2018 19:34:36 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc0052e89883a045da66183deaa331824a1796405a49c88262a45a2f9531fab9`  
		Last Modified: Wed, 05 Sep 2018 19:34:36 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07d08fc6245f9adc6b66404de674cb33813844fa2edaf1fa860f5a90a0b6a682`  
		Last Modified: Wed, 05 Sep 2018 19:35:03 GMT  
		Size: 42.9 MB (42890365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.30` - linux; arm64 variant v8

```console
$ docker pull mediawiki@sha256:ecfd0b95efe312c23e9f082b416acfc52209853df92ea81ca14450c167754784
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.6 MB (219571085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31f6b747c5c7bf29431bf6dffdd6c1e2897d53e932ad0a6cfb443a2623b261a7`
-	Entrypoint: `["docker-php-entrypoint"]`
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
# Wed, 05 Sep 2018 16:31:38 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Wed, 05 Sep 2018 16:31:39 GMT
ENV PHP_VERSION=7.1.21
# Wed, 05 Sep 2018 16:31:40 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.21.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.21.tar.xz.asc/from/this/mirror
# Wed, 05 Sep 2018 16:31:41 GMT
ENV PHP_SHA256=d4da6dc69d3fe1e6b2b80f16b262f391037bfeb21213c966e026bd45d7ca2813 PHP_MD5=
# Wed, 05 Sep 2018 16:32:14 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 05 Sep 2018 16:32:15 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 05 Sep 2018 16:41:13 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 05 Sep 2018 16:41:14 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Wed, 05 Sep 2018 16:41:15 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 05 Sep 2018 16:41:16 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Wed, 05 Sep 2018 16:41:16 GMT
WORKDIR /var/www/html
# Wed, 05 Sep 2018 16:41:17 GMT
EXPOSE 80/tcp
# Wed, 05 Sep 2018 16:41:18 GMT
CMD ["apache2-foreground"]
# Thu, 06 Sep 2018 07:47:44 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 06 Sep 2018 07:51:30 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Thu, 06 Sep 2018 07:52:04 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Thu, 06 Sep 2018 07:52:10 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 06 Sep 2018 07:52:11 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Thu, 06 Sep 2018 07:52:34 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.30
# Thu, 06 Sep 2018 07:52:35 GMT
ENV MEDIAWIKI_BRANCH=REL1_30
# Thu, 06 Sep 2018 07:52:35 GMT
ENV MEDIAWIKI_VERSION=1.30.0
# Thu, 06 Sep 2018 07:52:36 GMT
ENV MEDIAWIKI_SHA512=ec4aeb08c18af0e52aaf99124d43cd357328221934d593d87f38da804a2f4a5b172a114659f87f6de58c2140ee05ae14ec6a270574f655e7780a950a51178643
# Thu, 06 Sep 2018 07:53:13 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
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
	-	`sha256:88cf48808400cf055d69cad81a977a2fa4824ff00df33b8c536a01e94ee7db1e`  
		Last Modified: Wed, 05 Sep 2018 19:19:21 GMT  
		Size: 12.6 MB (12575223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0517896b0fdef5a097004f33990363075cd692899b99ebc870e913c5255262f9`  
		Last Modified: Wed, 05 Sep 2018 19:19:19 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31dacce2b6cf83cc3503105584e572423b46fbc516299107548d50946422401f`  
		Last Modified: Wed, 05 Sep 2018 19:19:25 GMT  
		Size: 13.3 MB (13337482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99231c974e4c14f27b4e09851ce0326f44dc4c92d24432e7cc0723f4a540bd1b`  
		Last Modified: Wed, 05 Sep 2018 19:19:19 GMT  
		Size: 2.2 KB (2194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c647e3d775412d063d337f021c98811600257f1f75af56484639d822977746f2`  
		Last Modified: Wed, 05 Sep 2018 19:19:19 GMT  
		Size: 905.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c5c9b9b3a124c905667affb086f6140e9cc055135397527d9d79dce72d4e745`  
		Last Modified: Thu, 06 Sep 2018 08:05:01 GMT  
		Size: 54.1 MB (54130094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dff5cd08efa831e358de170e09889d4b9be879a37be9ad5856892e05d394d3b8`  
		Last Modified: Thu, 06 Sep 2018 08:04:37 GMT  
		Size: 1.6 MB (1594201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b68d55443371c263bdf1a59b3ce8a35a4daf07b6c6ac36a002ef3d7bb38344f9`  
		Last Modified: Thu, 06 Sep 2018 08:04:37 GMT  
		Size: 400.4 KB (400438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97a68589ab4098d36afc1cf3f1bf91842e1bbf4eec924ed9d5fee4bc0cb6aae3`  
		Last Modified: Thu, 06 Sep 2018 08:04:36 GMT  
		Size: 353.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85c12769e0981e60d6dffc0ed2934004bd5c94aced0d7e1f7b88f80c44f292ff`  
		Last Modified: Thu, 06 Sep 2018 08:04:38 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dea9c4abb0851b3542609fe5c7c2ddbd74cabf73c040aa3518e8bf0ce2025ec7`  
		Last Modified: Thu, 06 Sep 2018 08:05:06 GMT  
		Size: 42.9 MB (42889137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.30` - linux; 386

```console
$ docker pull mediawiki@sha256:1dcbdb8400660abdd68177f02c58543009761ac031818ee4367cc0c47e1d9cbe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.9 MB (240928862 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75b55b91401aa041eeb45b5b6b957656c359dad6ab7268dc5b4158159d905a3a`
-	Entrypoint: `["docker-php-entrypoint"]`
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
# Thu, 06 Sep 2018 17:30:22 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Thu, 06 Sep 2018 17:30:22 GMT
ENV PHP_VERSION=7.1.21
# Thu, 06 Sep 2018 17:30:22 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.21.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.21.tar.xz.asc/from/this/mirror
# Thu, 06 Sep 2018 17:30:22 GMT
ENV PHP_SHA256=d4da6dc69d3fe1e6b2b80f16b262f391037bfeb21213c966e026bd45d7ca2813 PHP_MD5=
# Thu, 06 Sep 2018 17:30:32 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Thu, 06 Sep 2018 17:30:32 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 08 Sep 2018 13:48:09 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 08 Sep 2018 13:48:10 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Sat, 08 Sep 2018 13:48:10 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 08 Sep 2018 13:48:10 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 08 Sep 2018 13:48:10 GMT
WORKDIR /var/www/html
# Sat, 08 Sep 2018 13:48:10 GMT
EXPOSE 80/tcp
# Sat, 08 Sep 2018 13:48:11 GMT
CMD ["apache2-foreground"]
# Sat, 08 Sep 2018 19:42:05 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 08 Sep 2018 19:43:38 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Sat, 08 Sep 2018 19:43:47 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Sat, 08 Sep 2018 19:43:48 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 08 Sep 2018 19:43:49 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 08 Sep 2018 19:43:49 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.30
# Sat, 08 Sep 2018 19:43:49 GMT
ENV MEDIAWIKI_BRANCH=REL1_30
# Sat, 08 Sep 2018 19:43:49 GMT
ENV MEDIAWIKI_VERSION=1.30.0
# Sat, 08 Sep 2018 19:43:49 GMT
ENV MEDIAWIKI_SHA512=ec4aeb08c18af0e52aaf99124d43cd357328221934d593d87f38da804a2f4a5b172a114659f87f6de58c2140ee05ae14ec6a270574f655e7780a950a51178643
# Sat, 08 Sep 2018 19:43:59 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
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
	-	`sha256:d0eebc55222bbda15845d67e171a4a0fd485a854911abdce722fb310003c09d9`  
		Last Modified: Thu, 06 Sep 2018 21:32:27 GMT  
		Size: 12.6 MB (12576100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41ee42b1abe560db3bd89f86aecdf37510c66406c7e236a23947e47e07bf78e7`  
		Last Modified: Thu, 06 Sep 2018 21:32:28 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4850afa0ee8126bcc02413480b7afb7c3228cbe4ae498bbc92487436706bd4dd`  
		Last Modified: Sat, 08 Sep 2018 17:38:10 GMT  
		Size: 14.7 MB (14729569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f4998dcc0f297da63f2fc9c167919bd805e4764674990e75963bb9608fbdf03`  
		Last Modified: Sat, 08 Sep 2018 17:38:06 GMT  
		Size: 2.2 KB (2195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49cfb5cd24d88753d793d2d74b7068eefb026348b2ba12100edd5770e8106b30`  
		Last Modified: Sat, 08 Sep 2018 17:38:06 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f68f8e76f1e1527395692681d89347c44087e324d6fabc283bd92746b420ba7`  
		Last Modified: Sat, 08 Sep 2018 19:47:20 GMT  
		Size: 56.5 MB (56494166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2590bc7d4cdd6715e75d6087b6d1cc60d289a3462762c0e64d9c99cbbe8ee7c7`  
		Last Modified: Sat, 08 Sep 2018 19:47:03 GMT  
		Size: 1.7 MB (1664275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d1a18577a531873d95434430b7bb9cef4143a7f370097238a17d0f48dbf329`  
		Last Modified: Sat, 08 Sep 2018 19:47:03 GMT  
		Size: 395.0 KB (395000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9beaa1b74745cff86f824378a20ce123e6afe239ddabcf57000042e09329b9b0`  
		Last Modified: Sat, 08 Sep 2018 19:47:03 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c42d75855414b6ebeb02008e67f63fd38d6f4cdf3eb55aa63cf709757a9cc4c`  
		Last Modified: Sat, 08 Sep 2018 19:47:03 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74f50333e43a18e4b454fe0aa44c87205ee21495e7477ca91deeaccdce3384ab`  
		Last Modified: Sat, 08 Sep 2018 19:47:28 GMT  
		Size: 42.9 MB (42889135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.30` - linux; ppc64le

```console
$ docker pull mediawiki@sha256:ea36d68ab45ca61876fa9d59f38b2ebbcf1db15aa3d61f746fe1f4f6dc0de70f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.4 MB (230382781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee603562d33e59246dc1f2894a4d54cefbab15f2762040cd571bda0f410b38c9`
-	Entrypoint: `["docker-php-entrypoint"]`
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
# Wed, 05 Sep 2018 11:20:05 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Wed, 05 Sep 2018 11:20:06 GMT
ENV PHP_VERSION=7.1.21
# Wed, 05 Sep 2018 11:20:07 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.21.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.21.tar.xz.asc/from/this/mirror
# Wed, 05 Sep 2018 11:20:07 GMT
ENV PHP_SHA256=d4da6dc69d3fe1e6b2b80f16b262f391037bfeb21213c966e026bd45d7ca2813 PHP_MD5=
# Wed, 05 Sep 2018 11:20:40 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 05 Sep 2018 11:20:41 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 08 Sep 2018 11:48:22 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 08 Sep 2018 11:48:25 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Sat, 08 Sep 2018 11:48:27 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 08 Sep 2018 11:48:28 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 08 Sep 2018 11:48:29 GMT
WORKDIR /var/www/html
# Sat, 08 Sep 2018 11:48:30 GMT
EXPOSE 80/tcp
# Sat, 08 Sep 2018 11:48:32 GMT
CMD ["apache2-foreground"]
# Sat, 08 Sep 2018 15:31:24 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 08 Sep 2018 15:33:42 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Sat, 08 Sep 2018 15:33:58 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Sat, 08 Sep 2018 15:34:02 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 08 Sep 2018 15:34:04 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 08 Sep 2018 15:34:04 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.30
# Sat, 08 Sep 2018 15:34:05 GMT
ENV MEDIAWIKI_BRANCH=REL1_30
# Sat, 08 Sep 2018 15:34:06 GMT
ENV MEDIAWIKI_VERSION=1.30.0
# Sat, 08 Sep 2018 15:34:07 GMT
ENV MEDIAWIKI_SHA512=ec4aeb08c18af0e52aaf99124d43cd357328221934d593d87f38da804a2f4a5b172a114659f87f6de58c2140ee05ae14ec6a270574f655e7780a950a51178643
# Sat, 08 Sep 2018 15:34:34 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
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
	-	`sha256:be6bc1eb7553104bdb7d8b04313721337fe37f51e5028281f8e26f047e3da6bc`  
		Last Modified: Wed, 05 Sep 2018 12:45:58 GMT  
		Size: 12.6 MB (12575341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48d878a0a2cf9450def82ff23383f0078e8c0852fe23fbc46764ed8e350caba5`  
		Last Modified: Wed, 05 Sep 2018 12:45:56 GMT  
		Size: 502.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbac51f2702913ea13573d76bac48c76dc582643dedc38796c33ad8dc31ec5ad`  
		Last Modified: Sat, 08 Sep 2018 14:15:45 GMT  
		Size: 14.4 MB (14373625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b65d6ca5d3606e82184e19fa3cdf942614cc0021a5b9d01b8376fa230b154882`  
		Last Modified: Sat, 08 Sep 2018 14:15:38 GMT  
		Size: 2.2 KB (2195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:988e282ce426c7e5e1195a332158c32a1981a9d3066a9874d20529f6ee0e7bf0`  
		Last Modified: Sat, 08 Sep 2018 14:15:36 GMT  
		Size: 903.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bd5004b4ba58255d3c7878e8b91f1fcdc9834c9f33e0db5214a75d892d0f345`  
		Last Modified: Sat, 08 Sep 2018 15:40:22 GMT  
		Size: 56.6 MB (56589676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19f8c152a5beea02695d3631d74f50cd91c3835c1b2927d1f70c9eca29ce41ca`  
		Last Modified: Sat, 08 Sep 2018 15:40:01 GMT  
		Size: 1.6 MB (1643511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b3cf04149edf01780486b765b770d029efd30e4bb2485ed30d777c956043249`  
		Last Modified: Sat, 08 Sep 2018 15:40:00 GMT  
		Size: 404.8 KB (404798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5bff01f892ce9d4b273efcf652c0aaa0f27f243d7fc596615b05800e4cd7a7d`  
		Last Modified: Sat, 08 Sep 2018 15:39:59 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6762787507c9783fe3d75abb920e6ab8cdc40ea4e724053f9a54b0fe196569ca`  
		Last Modified: Sat, 08 Sep 2018 15:40:00 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb52d05a4ebb46982298b4c2a9fad7dd13db641646e911284814236693a8a1a7`  
		Last Modified: Sat, 08 Sep 2018 15:40:18 GMT  
		Size: 42.9 MB (42890366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mediawiki:1.30.0`

```console
$ docker pull mediawiki@sha256:0e3439ab9179aa51b16d3cee1918266e619e333d8cf2e4620937f36b96679630
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `mediawiki:1.30.0` - linux; amd64

```console
$ docker pull mediawiki@sha256:389b6d8c1c381747cdb44f4df78acc9d430604a745da1fccff53d1d85165301b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.5 MB (235530659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20c330a09f15fa52ce93e39da528e334ba8c5bdcdd3602508e86fd0291db210b`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:34 GMT
ADD file:e6ca98733431f75e97eb09758ba64065d213d51bd2070a95cf15f2ff5adccfc4 in / 
# Tue, 04 Sep 2018 21:21:34 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 01:55:39 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 05 Sep 2018 01:55:39 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 05 Sep 2018 01:56:06 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 05 Sep 2018 01:56:06 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 05 Sep 2018 01:56:07 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 05 Sep 2018 02:05:18 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 02:05:18 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 05 Sep 2018 02:05:18 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 05 Sep 2018 02:05:19 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 05 Sep 2018 02:05:20 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 05 Sep 2018 02:05:21 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 05 Sep 2018 02:05:21 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 05 Sep 2018 02:05:22 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 05 Sep 2018 02:05:22 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 05 Sep 2018 02:05:22 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 05 Sep 2018 02:05:22 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 05 Sep 2018 02:05:23 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 05 Sep 2018 04:52:35 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Wed, 05 Sep 2018 04:52:35 GMT
ENV PHP_VERSION=7.1.21
# Wed, 05 Sep 2018 04:52:35 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.21.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.21.tar.xz.asc/from/this/mirror
# Wed, 05 Sep 2018 04:52:35 GMT
ENV PHP_SHA256=d4da6dc69d3fe1e6b2b80f16b262f391037bfeb21213c966e026bd45d7ca2813 PHP_MD5=
# Wed, 05 Sep 2018 04:52:43 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 05 Sep 2018 04:52:44 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 07 Sep 2018 21:51:49 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 07 Sep 2018 21:51:49 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Fri, 07 Sep 2018 21:51:49 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 07 Sep 2018 21:51:50 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 07 Sep 2018 21:51:50 GMT
WORKDIR /var/www/html
# Fri, 07 Sep 2018 21:51:50 GMT
EXPOSE 80/tcp
# Fri, 07 Sep 2018 21:51:50 GMT
CMD ["apache2-foreground"]
# Sat, 08 Sep 2018 02:01:12 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 08 Sep 2018 02:02:52 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Sat, 08 Sep 2018 02:03:01 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Sat, 08 Sep 2018 02:03:01 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 08 Sep 2018 02:03:02 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 08 Sep 2018 02:03:02 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.30
# Sat, 08 Sep 2018 02:03:02 GMT
ENV MEDIAWIKI_BRANCH=REL1_30
# Sat, 08 Sep 2018 02:03:03 GMT
ENV MEDIAWIKI_VERSION=1.30.0
# Sat, 08 Sep 2018 02:03:03 GMT
ENV MEDIAWIKI_SHA512=ec4aeb08c18af0e52aaf99124d43cd357328221934d593d87f38da804a2f4a5b172a114659f87f6de58c2140ee05ae14ec6a270574f655e7780a950a51178643
# Sat, 08 Sep 2018 02:03:10 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:802b00ed6f79f48e6a5f44ecbcaf43563d6077aaecb565eee1dfc615c0b18c00`  
		Last Modified: Tue, 04 Sep 2018 21:25:45 GMT  
		Size: 22.5 MB (22485965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59f5a5a895f85ce514e7f66d3715d42e54b6735957b02a2406d3625dd75a2185`  
		Last Modified: Wed, 05 Sep 2018 09:03:28 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6898b2dbcfeb5f9532f39c5906364d294c90c4fa0c942068e0ba27bdcd73029b`  
		Last Modified: Wed, 05 Sep 2018 09:03:45 GMT  
		Size: 67.4 MB (67428958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e0903aaa47ebca2076b2f4d52c1118efa2fd755741247b509ced1085f5c1a72`  
		Last Modified: Wed, 05 Sep 2018 09:03:27 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2961af1e196a66c727ebfa1eaed81c207081b853d8df37106f472582d12dd9db`  
		Last Modified: Wed, 05 Sep 2018 09:04:21 GMT  
		Size: 17.1 MB (17127406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71f7016f79a0218a691e7032c308b38d0de98471d48a19f98b7c1db479330f47`  
		Last Modified: Wed, 05 Sep 2018 09:04:17 GMT  
		Size: 1.2 KB (1242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e1a48e5719ce319ff7b5a20b75a48702ec44e17c13abe3d630327ce03e760a8`  
		Last Modified: Wed, 05 Sep 2018 09:04:17 GMT  
		Size: 428.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ae5291984f364551ae9d9bd0a87648dd96aa88d893da349821a9f66acdb8da8`  
		Last Modified: Wed, 05 Sep 2018 09:04:16 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:725b65166f31691ad826144b84fe7f14622a67486d20d6469ec3be96955ea249`  
		Last Modified: Wed, 05 Sep 2018 09:04:16 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f38e84d81f34b49de9e7f7b0d9705810f28ba039837e3347a7e4cebc9f76048f`  
		Last Modified: Wed, 05 Sep 2018 09:12:43 GMT  
		Size: 12.6 MB (12576747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:661136afd63462a3a10531c9d1a42ae2c9115cd547dcc553dc24abd3a0f34a49`  
		Last Modified: Wed, 05 Sep 2018 09:12:42 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5ce7d144e600a0784bbc21741b88a5f9d2e22d1dc08ed3bddf50b1b1c238cee`  
		Last Modified: Sat, 08 Sep 2018 01:21:09 GMT  
		Size: 14.6 MB (14608191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7651e00c21244f3d818a8267d637a22fd13aa8461f29157f40d80736809f1e52`  
		Last Modified: Sat, 08 Sep 2018 01:21:06 GMT  
		Size: 2.2 KB (2192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d779160703d3c95533393618f158b2656fa67b3ad45958cbd1ddd3578a6a1ef`  
		Last Modified: Sat, 08 Sep 2018 01:21:07 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc25a8ff95ca5faebfe3b72d872af71b5d60bde2ee03d1a7b841f044a822b487`  
		Last Modified: Sat, 08 Sep 2018 02:06:42 GMT  
		Size: 56.3 MB (56335775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f331ab60b7ad6c7ecc8c247c1a6b289c6e81d881e8beba26864dec7e435544fd`  
		Last Modified: Sat, 08 Sep 2018 02:06:28 GMT  
		Size: 1.7 MB (1662986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6eb981d60bfd08689baab2db021e4bd203ef85d9ac84bcb338c6af79d975650`  
		Last Modified: Sat, 08 Sep 2018 02:06:28 GMT  
		Size: 408.6 KB (408583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:351de926bc085f95c86c2c7b438185c88e83e717f580b95f0cd846ac95955c90`  
		Last Modified: Sat, 08 Sep 2018 02:06:28 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2e624f5ed55c5edef40a1b20a3ea2c7c5a2faaf38565a145610b887f7a7cf57`  
		Last Modified: Sat, 08 Sep 2018 02:06:28 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6d017430f195c74b92ae4ce63d69189f953cadc4394249c179c788f648e690`  
		Last Modified: Sat, 08 Sep 2018 02:06:47 GMT  
		Size: 42.9 MB (42889171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.30.0` - linux; arm variant v5

```console
$ docker pull mediawiki@sha256:2cf3d7848415f25bf0014e0fdef431471f39fe433f467b5c89a4999e80f0b2a2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.6 MB (220634633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:403d1a6b212841e2620cf91831838014477012391f45f54f5917cca9c502b238`
-	Entrypoint: `["docker-php-entrypoint"]`
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
# Wed, 05 Sep 2018 10:18:24 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Wed, 05 Sep 2018 10:18:24 GMT
ENV PHP_VERSION=7.1.21
# Wed, 05 Sep 2018 10:18:25 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.21.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.21.tar.xz.asc/from/this/mirror
# Wed, 05 Sep 2018 10:18:25 GMT
ENV PHP_SHA256=d4da6dc69d3fe1e6b2b80f16b262f391037bfeb21213c966e026bd45d7ca2813 PHP_MD5=
# Wed, 05 Sep 2018 10:18:39 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 05 Sep 2018 10:18:39 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 08 Sep 2018 09:42:05 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 08 Sep 2018 09:42:06 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Sat, 08 Sep 2018 09:42:07 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 08 Sep 2018 09:42:07 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 08 Sep 2018 09:42:07 GMT
WORKDIR /var/www/html
# Sat, 08 Sep 2018 09:42:08 GMT
EXPOSE 80/tcp
# Sat, 08 Sep 2018 09:42:08 GMT
CMD ["apache2-foreground"]
# Sat, 08 Sep 2018 13:10:39 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 08 Sep 2018 13:13:34 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Sat, 08 Sep 2018 13:13:50 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Sat, 08 Sep 2018 13:13:52 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 08 Sep 2018 13:13:53 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 08 Sep 2018 13:13:53 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.30
# Sat, 08 Sep 2018 13:13:54 GMT
ENV MEDIAWIKI_BRANCH=REL1_30
# Sat, 08 Sep 2018 13:13:54 GMT
ENV MEDIAWIKI_VERSION=1.30.0
# Sat, 08 Sep 2018 13:13:54 GMT
ENV MEDIAWIKI_SHA512=ec4aeb08c18af0e52aaf99124d43cd357328221934d593d87f38da804a2f4a5b172a114659f87f6de58c2140ee05ae14ec6a270574f655e7780a950a51178643
# Sat, 08 Sep 2018 13:14:09 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
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
	-	`sha256:b2e39ff8f9b15f3661cd41ec87525e6ce8478f01b2d6caa2141df4c27c3a85ea`  
		Last Modified: Wed, 05 Sep 2018 12:26:13 GMT  
		Size: 12.6 MB (12574937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d6ef893e586d3df0cb82412d53eb465f22da792ab74108699d7fba787504af0`  
		Last Modified: Wed, 05 Sep 2018 12:26:11 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf73564aeb2537737fd3b3d01723f34642d41817f4a277c0e8e1837bac16f186`  
		Last Modified: Sat, 08 Sep 2018 11:34:09 GMT  
		Size: 13.9 MB (13928166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67a32065e90eb477d90fcdb48e157416ec73f951220637f80a605a22bf9d68a7`  
		Last Modified: Sat, 08 Sep 2018 11:34:04 GMT  
		Size: 2.2 KB (2194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97366146f63936c736e8a4def54335968c4de78e4c8a681722487d09d2074534`  
		Last Modified: Sat, 08 Sep 2018 11:34:04 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72554bbe95547acf78a7dd47a3c2ff264a1430f0118ddaa5dc7cc34c17a6650c`  
		Last Modified: Sat, 08 Sep 2018 13:19:55 GMT  
		Size: 54.0 MB (53981632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccee25c0b3bd91dcda1dc2d6cec9cee703406b5c06322a2a02af546fd8e1b9e7`  
		Last Modified: Sat, 08 Sep 2018 13:19:34 GMT  
		Size: 1.6 MB (1593754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84d2d9f05c7aa8d24a7c140fcad116e3c906562c9a8c331ff977ac283d13b09e`  
		Last Modified: Sat, 08 Sep 2018 13:19:34 GMT  
		Size: 397.8 KB (397807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90eab45ea75bce24cefc40fc45cd181ea91b7f1e4ea2d6d9968702492061c521`  
		Last Modified: Sat, 08 Sep 2018 13:19:34 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4cd35dec1dfd18255cd25e58993d307a55b9adbfd52691ada500b9c0571a32d`  
		Last Modified: Sat, 08 Sep 2018 13:19:34 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1199f1c0df5bc9590adc349c0790ec3dbcd71713c3c7e076917ce55d200bd6fd`  
		Last Modified: Sat, 08 Sep 2018 13:20:03 GMT  
		Size: 42.9 MB (42890365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.30.0` - linux; arm variant v7

```console
$ docker pull mediawiki@sha256:5fd415569b4a93a3b1919d3885c24a1f7e5148efdcf42e794a9d8241e3903d62
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **210.7 MB (210743189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f37999a497348c6cb35572e443a5c42434862dac2c5087d216734c1a0913a51`
-	Entrypoint: `["docker-php-entrypoint"]`
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
# Wed, 05 Sep 2018 14:37:51 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Wed, 05 Sep 2018 14:37:51 GMT
ENV PHP_VERSION=7.1.21
# Wed, 05 Sep 2018 14:37:51 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.21.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.21.tar.xz.asc/from/this/mirror
# Wed, 05 Sep 2018 14:37:52 GMT
ENV PHP_SHA256=d4da6dc69d3fe1e6b2b80f16b262f391037bfeb21213c966e026bd45d7ca2813 PHP_MD5=
# Wed, 05 Sep 2018 14:38:03 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 05 Sep 2018 14:38:04 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 05 Sep 2018 14:41:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 05 Sep 2018 14:41:25 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Wed, 05 Sep 2018 14:41:25 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 05 Sep 2018 14:41:26 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Wed, 05 Sep 2018 14:41:26 GMT
WORKDIR /var/www/html
# Wed, 05 Sep 2018 14:41:26 GMT
EXPOSE 80/tcp
# Wed, 05 Sep 2018 14:41:26 GMT
CMD ["apache2-foreground"]
# Wed, 05 Sep 2018 19:26:08 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 05 Sep 2018 19:28:55 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Wed, 05 Sep 2018 19:29:10 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Wed, 05 Sep 2018 19:29:14 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 05 Sep 2018 19:29:15 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Wed, 05 Sep 2018 19:29:16 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.30
# Wed, 05 Sep 2018 19:29:16 GMT
ENV MEDIAWIKI_BRANCH=REL1_30
# Wed, 05 Sep 2018 19:29:16 GMT
ENV MEDIAWIKI_VERSION=1.30.0
# Wed, 05 Sep 2018 19:29:17 GMT
ENV MEDIAWIKI_SHA512=ec4aeb08c18af0e52aaf99124d43cd357328221934d593d87f38da804a2f4a5b172a114659f87f6de58c2140ee05ae14ec6a270574f655e7780a950a51178643
# Wed, 05 Sep 2018 19:29:31 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
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
	-	`sha256:d47d028cf4d8fab234172c08fb6eccdfff63a8ca0581d0afc3ad8cf20597c5a1`  
		Last Modified: Wed, 05 Sep 2018 16:47:05 GMT  
		Size: 12.6 MB (12574859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:617dd66dc6d8b5bdc7110c9e678ba13c1efb65ed67696e051fe421a108912ee8`  
		Last Modified: Wed, 05 Sep 2018 16:47:03 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa23422469f50fd90b216b33bb5e7aab8ffd6de732baa911914a41609d2f0b53`  
		Last Modified: Wed, 05 Sep 2018 16:47:08 GMT  
		Size: 12.7 MB (12728560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e92b68431c56230b91301d516d4bc09f2371368416ecdaed845f25c1063ae200`  
		Last Modified: Wed, 05 Sep 2018 16:47:03 GMT  
		Size: 2.2 KB (2195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b5327c374303c0659635c6e5456e37479eb0ce539f485cd8f092be725416707`  
		Last Modified: Wed, 05 Sep 2018 16:47:05 GMT  
		Size: 905.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b352029f9ff8f37b1a10c086ebcc83c448c391be23cdc50db0a068b9637283a8`  
		Last Modified: Wed, 05 Sep 2018 19:34:53 GMT  
		Size: 51.6 MB (51604964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39923b337dc6377ce207e3d39f0203240979d904513a65785933481f0c0ab4c4`  
		Last Modified: Wed, 05 Sep 2018 19:34:38 GMT  
		Size: 1.5 MB (1549444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c19d2a63a258192b1a02442d6d7b2f610219bff3255742b96e55fb6584c4c82`  
		Last Modified: Wed, 05 Sep 2018 19:34:36 GMT  
		Size: 392.8 KB (392766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:142ec0817fa85d41858582ba424b8abebc495ea812f1d6c228f91c237fc82602`  
		Last Modified: Wed, 05 Sep 2018 19:34:36 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc0052e89883a045da66183deaa331824a1796405a49c88262a45a2f9531fab9`  
		Last Modified: Wed, 05 Sep 2018 19:34:36 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07d08fc6245f9adc6b66404de674cb33813844fa2edaf1fa860f5a90a0b6a682`  
		Last Modified: Wed, 05 Sep 2018 19:35:03 GMT  
		Size: 42.9 MB (42890365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.30.0` - linux; arm64 variant v8

```console
$ docker pull mediawiki@sha256:ecfd0b95efe312c23e9f082b416acfc52209853df92ea81ca14450c167754784
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.6 MB (219571085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31f6b747c5c7bf29431bf6dffdd6c1e2897d53e932ad0a6cfb443a2623b261a7`
-	Entrypoint: `["docker-php-entrypoint"]`
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
# Wed, 05 Sep 2018 16:31:38 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Wed, 05 Sep 2018 16:31:39 GMT
ENV PHP_VERSION=7.1.21
# Wed, 05 Sep 2018 16:31:40 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.21.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.21.tar.xz.asc/from/this/mirror
# Wed, 05 Sep 2018 16:31:41 GMT
ENV PHP_SHA256=d4da6dc69d3fe1e6b2b80f16b262f391037bfeb21213c966e026bd45d7ca2813 PHP_MD5=
# Wed, 05 Sep 2018 16:32:14 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 05 Sep 2018 16:32:15 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 05 Sep 2018 16:41:13 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 05 Sep 2018 16:41:14 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Wed, 05 Sep 2018 16:41:15 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 05 Sep 2018 16:41:16 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Wed, 05 Sep 2018 16:41:16 GMT
WORKDIR /var/www/html
# Wed, 05 Sep 2018 16:41:17 GMT
EXPOSE 80/tcp
# Wed, 05 Sep 2018 16:41:18 GMT
CMD ["apache2-foreground"]
# Thu, 06 Sep 2018 07:47:44 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 06 Sep 2018 07:51:30 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Thu, 06 Sep 2018 07:52:04 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Thu, 06 Sep 2018 07:52:10 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 06 Sep 2018 07:52:11 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Thu, 06 Sep 2018 07:52:34 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.30
# Thu, 06 Sep 2018 07:52:35 GMT
ENV MEDIAWIKI_BRANCH=REL1_30
# Thu, 06 Sep 2018 07:52:35 GMT
ENV MEDIAWIKI_VERSION=1.30.0
# Thu, 06 Sep 2018 07:52:36 GMT
ENV MEDIAWIKI_SHA512=ec4aeb08c18af0e52aaf99124d43cd357328221934d593d87f38da804a2f4a5b172a114659f87f6de58c2140ee05ae14ec6a270574f655e7780a950a51178643
# Thu, 06 Sep 2018 07:53:13 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
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
	-	`sha256:88cf48808400cf055d69cad81a977a2fa4824ff00df33b8c536a01e94ee7db1e`  
		Last Modified: Wed, 05 Sep 2018 19:19:21 GMT  
		Size: 12.6 MB (12575223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0517896b0fdef5a097004f33990363075cd692899b99ebc870e913c5255262f9`  
		Last Modified: Wed, 05 Sep 2018 19:19:19 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31dacce2b6cf83cc3503105584e572423b46fbc516299107548d50946422401f`  
		Last Modified: Wed, 05 Sep 2018 19:19:25 GMT  
		Size: 13.3 MB (13337482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99231c974e4c14f27b4e09851ce0326f44dc4c92d24432e7cc0723f4a540bd1b`  
		Last Modified: Wed, 05 Sep 2018 19:19:19 GMT  
		Size: 2.2 KB (2194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c647e3d775412d063d337f021c98811600257f1f75af56484639d822977746f2`  
		Last Modified: Wed, 05 Sep 2018 19:19:19 GMT  
		Size: 905.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c5c9b9b3a124c905667affb086f6140e9cc055135397527d9d79dce72d4e745`  
		Last Modified: Thu, 06 Sep 2018 08:05:01 GMT  
		Size: 54.1 MB (54130094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dff5cd08efa831e358de170e09889d4b9be879a37be9ad5856892e05d394d3b8`  
		Last Modified: Thu, 06 Sep 2018 08:04:37 GMT  
		Size: 1.6 MB (1594201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b68d55443371c263bdf1a59b3ce8a35a4daf07b6c6ac36a002ef3d7bb38344f9`  
		Last Modified: Thu, 06 Sep 2018 08:04:37 GMT  
		Size: 400.4 KB (400438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97a68589ab4098d36afc1cf3f1bf91842e1bbf4eec924ed9d5fee4bc0cb6aae3`  
		Last Modified: Thu, 06 Sep 2018 08:04:36 GMT  
		Size: 353.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85c12769e0981e60d6dffc0ed2934004bd5c94aced0d7e1f7b88f80c44f292ff`  
		Last Modified: Thu, 06 Sep 2018 08:04:38 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dea9c4abb0851b3542609fe5c7c2ddbd74cabf73c040aa3518e8bf0ce2025ec7`  
		Last Modified: Thu, 06 Sep 2018 08:05:06 GMT  
		Size: 42.9 MB (42889137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.30.0` - linux; 386

```console
$ docker pull mediawiki@sha256:1dcbdb8400660abdd68177f02c58543009761ac031818ee4367cc0c47e1d9cbe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.9 MB (240928862 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75b55b91401aa041eeb45b5b6b957656c359dad6ab7268dc5b4158159d905a3a`
-	Entrypoint: `["docker-php-entrypoint"]`
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
# Thu, 06 Sep 2018 17:30:22 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Thu, 06 Sep 2018 17:30:22 GMT
ENV PHP_VERSION=7.1.21
# Thu, 06 Sep 2018 17:30:22 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.21.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.21.tar.xz.asc/from/this/mirror
# Thu, 06 Sep 2018 17:30:22 GMT
ENV PHP_SHA256=d4da6dc69d3fe1e6b2b80f16b262f391037bfeb21213c966e026bd45d7ca2813 PHP_MD5=
# Thu, 06 Sep 2018 17:30:32 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Thu, 06 Sep 2018 17:30:32 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 08 Sep 2018 13:48:09 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 08 Sep 2018 13:48:10 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Sat, 08 Sep 2018 13:48:10 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 08 Sep 2018 13:48:10 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 08 Sep 2018 13:48:10 GMT
WORKDIR /var/www/html
# Sat, 08 Sep 2018 13:48:10 GMT
EXPOSE 80/tcp
# Sat, 08 Sep 2018 13:48:11 GMT
CMD ["apache2-foreground"]
# Sat, 08 Sep 2018 19:42:05 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 08 Sep 2018 19:43:38 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Sat, 08 Sep 2018 19:43:47 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Sat, 08 Sep 2018 19:43:48 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 08 Sep 2018 19:43:49 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 08 Sep 2018 19:43:49 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.30
# Sat, 08 Sep 2018 19:43:49 GMT
ENV MEDIAWIKI_BRANCH=REL1_30
# Sat, 08 Sep 2018 19:43:49 GMT
ENV MEDIAWIKI_VERSION=1.30.0
# Sat, 08 Sep 2018 19:43:49 GMT
ENV MEDIAWIKI_SHA512=ec4aeb08c18af0e52aaf99124d43cd357328221934d593d87f38da804a2f4a5b172a114659f87f6de58c2140ee05ae14ec6a270574f655e7780a950a51178643
# Sat, 08 Sep 2018 19:43:59 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
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
	-	`sha256:d0eebc55222bbda15845d67e171a4a0fd485a854911abdce722fb310003c09d9`  
		Last Modified: Thu, 06 Sep 2018 21:32:27 GMT  
		Size: 12.6 MB (12576100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41ee42b1abe560db3bd89f86aecdf37510c66406c7e236a23947e47e07bf78e7`  
		Last Modified: Thu, 06 Sep 2018 21:32:28 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4850afa0ee8126bcc02413480b7afb7c3228cbe4ae498bbc92487436706bd4dd`  
		Last Modified: Sat, 08 Sep 2018 17:38:10 GMT  
		Size: 14.7 MB (14729569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f4998dcc0f297da63f2fc9c167919bd805e4764674990e75963bb9608fbdf03`  
		Last Modified: Sat, 08 Sep 2018 17:38:06 GMT  
		Size: 2.2 KB (2195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49cfb5cd24d88753d793d2d74b7068eefb026348b2ba12100edd5770e8106b30`  
		Last Modified: Sat, 08 Sep 2018 17:38:06 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f68f8e76f1e1527395692681d89347c44087e324d6fabc283bd92746b420ba7`  
		Last Modified: Sat, 08 Sep 2018 19:47:20 GMT  
		Size: 56.5 MB (56494166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2590bc7d4cdd6715e75d6087b6d1cc60d289a3462762c0e64d9c99cbbe8ee7c7`  
		Last Modified: Sat, 08 Sep 2018 19:47:03 GMT  
		Size: 1.7 MB (1664275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d1a18577a531873d95434430b7bb9cef4143a7f370097238a17d0f48dbf329`  
		Last Modified: Sat, 08 Sep 2018 19:47:03 GMT  
		Size: 395.0 KB (395000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9beaa1b74745cff86f824378a20ce123e6afe239ddabcf57000042e09329b9b0`  
		Last Modified: Sat, 08 Sep 2018 19:47:03 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c42d75855414b6ebeb02008e67f63fd38d6f4cdf3eb55aa63cf709757a9cc4c`  
		Last Modified: Sat, 08 Sep 2018 19:47:03 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74f50333e43a18e4b454fe0aa44c87205ee21495e7477ca91deeaccdce3384ab`  
		Last Modified: Sat, 08 Sep 2018 19:47:28 GMT  
		Size: 42.9 MB (42889135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.30.0` - linux; ppc64le

```console
$ docker pull mediawiki@sha256:ea36d68ab45ca61876fa9d59f38b2ebbcf1db15aa3d61f746fe1f4f6dc0de70f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.4 MB (230382781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee603562d33e59246dc1f2894a4d54cefbab15f2762040cd571bda0f410b38c9`
-	Entrypoint: `["docker-php-entrypoint"]`
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
# Wed, 05 Sep 2018 11:20:05 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Wed, 05 Sep 2018 11:20:06 GMT
ENV PHP_VERSION=7.1.21
# Wed, 05 Sep 2018 11:20:07 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.21.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.21.tar.xz.asc/from/this/mirror
# Wed, 05 Sep 2018 11:20:07 GMT
ENV PHP_SHA256=d4da6dc69d3fe1e6b2b80f16b262f391037bfeb21213c966e026bd45d7ca2813 PHP_MD5=
# Wed, 05 Sep 2018 11:20:40 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 05 Sep 2018 11:20:41 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 08 Sep 2018 11:48:22 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 08 Sep 2018 11:48:25 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Sat, 08 Sep 2018 11:48:27 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 08 Sep 2018 11:48:28 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 08 Sep 2018 11:48:29 GMT
WORKDIR /var/www/html
# Sat, 08 Sep 2018 11:48:30 GMT
EXPOSE 80/tcp
# Sat, 08 Sep 2018 11:48:32 GMT
CMD ["apache2-foreground"]
# Sat, 08 Sep 2018 15:31:24 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 08 Sep 2018 15:33:42 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Sat, 08 Sep 2018 15:33:58 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Sat, 08 Sep 2018 15:34:02 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 08 Sep 2018 15:34:04 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 08 Sep 2018 15:34:04 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.30
# Sat, 08 Sep 2018 15:34:05 GMT
ENV MEDIAWIKI_BRANCH=REL1_30
# Sat, 08 Sep 2018 15:34:06 GMT
ENV MEDIAWIKI_VERSION=1.30.0
# Sat, 08 Sep 2018 15:34:07 GMT
ENV MEDIAWIKI_SHA512=ec4aeb08c18af0e52aaf99124d43cd357328221934d593d87f38da804a2f4a5b172a114659f87f6de58c2140ee05ae14ec6a270574f655e7780a950a51178643
# Sat, 08 Sep 2018 15:34:34 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
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
	-	`sha256:be6bc1eb7553104bdb7d8b04313721337fe37f51e5028281f8e26f047e3da6bc`  
		Last Modified: Wed, 05 Sep 2018 12:45:58 GMT  
		Size: 12.6 MB (12575341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48d878a0a2cf9450def82ff23383f0078e8c0852fe23fbc46764ed8e350caba5`  
		Last Modified: Wed, 05 Sep 2018 12:45:56 GMT  
		Size: 502.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbac51f2702913ea13573d76bac48c76dc582643dedc38796c33ad8dc31ec5ad`  
		Last Modified: Sat, 08 Sep 2018 14:15:45 GMT  
		Size: 14.4 MB (14373625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b65d6ca5d3606e82184e19fa3cdf942614cc0021a5b9d01b8376fa230b154882`  
		Last Modified: Sat, 08 Sep 2018 14:15:38 GMT  
		Size: 2.2 KB (2195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:988e282ce426c7e5e1195a332158c32a1981a9d3066a9874d20529f6ee0e7bf0`  
		Last Modified: Sat, 08 Sep 2018 14:15:36 GMT  
		Size: 903.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bd5004b4ba58255d3c7878e8b91f1fcdc9834c9f33e0db5214a75d892d0f345`  
		Last Modified: Sat, 08 Sep 2018 15:40:22 GMT  
		Size: 56.6 MB (56589676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19f8c152a5beea02695d3631d74f50cd91c3835c1b2927d1f70c9eca29ce41ca`  
		Last Modified: Sat, 08 Sep 2018 15:40:01 GMT  
		Size: 1.6 MB (1643511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b3cf04149edf01780486b765b770d029efd30e4bb2485ed30d777c956043249`  
		Last Modified: Sat, 08 Sep 2018 15:40:00 GMT  
		Size: 404.8 KB (404798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5bff01f892ce9d4b273efcf652c0aaa0f27f243d7fc596615b05800e4cd7a7d`  
		Last Modified: Sat, 08 Sep 2018 15:39:59 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6762787507c9783fe3d75abb920e6ab8cdc40ea4e724053f9a54b0fe196569ca`  
		Last Modified: Sat, 08 Sep 2018 15:40:00 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb52d05a4ebb46982298b4c2a9fad7dd13db641646e911284814236693a8a1a7`  
		Last Modified: Sat, 08 Sep 2018 15:40:18 GMT  
		Size: 42.9 MB (42890366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mediawiki:1.31`

```console
$ docker pull mediawiki@sha256:7c7ad97c2607e0c0b7eb3ac6a6048965afeaf748b69a46135d4a51da1945b0b3
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
$ docker pull mediawiki@sha256:f270cf9e51bd73b5cbdcd511d43fc7f54684d4c14750ed766e1778eb9dd270af
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.3 MB (231287882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77fa8ecde5117ba263817b5ff3ecbc4b461fff2c7bde4299e0a971443f132b1b`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:34 GMT
ADD file:e6ca98733431f75e97eb09758ba64065d213d51bd2070a95cf15f2ff5adccfc4 in / 
# Tue, 04 Sep 2018 21:21:34 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 01:55:39 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 05 Sep 2018 01:55:39 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 05 Sep 2018 01:56:06 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 05 Sep 2018 01:56:06 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 05 Sep 2018 01:56:07 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 05 Sep 2018 02:05:18 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 02:05:18 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 05 Sep 2018 02:05:18 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 05 Sep 2018 02:05:19 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 05 Sep 2018 02:05:20 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 05 Sep 2018 02:05:21 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 05 Sep 2018 02:05:21 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 05 Sep 2018 02:05:22 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 05 Sep 2018 02:05:22 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 05 Sep 2018 02:05:22 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 05 Sep 2018 02:05:22 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 05 Sep 2018 02:05:23 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 05 Sep 2018 03:06:42 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Wed, 05 Sep 2018 03:06:42 GMT
ENV PHP_VERSION=7.2.9
# Wed, 05 Sep 2018 03:06:42 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.9.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.9.tar.xz.asc/from/this/mirror
# Wed, 05 Sep 2018 03:06:43 GMT
ENV PHP_SHA256=3585c1222e00494efee4f5a65a8e03a1e6eca3dfb834814236ee7f02c5248ae0 PHP_MD5=
# Wed, 05 Sep 2018 03:06:53 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 05 Sep 2018 03:06:53 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 07 Sep 2018 20:33:19 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 07 Sep 2018 20:33:20 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Fri, 07 Sep 2018 20:33:20 GMT
RUN docker-php-ext-enable sodium
# Fri, 07 Sep 2018 20:33:21 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 07 Sep 2018 20:33:21 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 07 Sep 2018 20:33:21 GMT
WORKDIR /var/www/html
# Fri, 07 Sep 2018 20:33:21 GMT
EXPOSE 80/tcp
# Fri, 07 Sep 2018 20:33:21 GMT
CMD ["apache2-foreground"]
# Sat, 08 Sep 2018 01:58:30 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python3 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 08 Sep 2018 02:00:11 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Sat, 08 Sep 2018 02:00:20 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu 	&& docker-php-ext-enable apcu
# Sat, 08 Sep 2018 02:00:23 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 08 Sep 2018 02:00:23 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 08 Sep 2018 02:00:27 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.31
# Sat, 08 Sep 2018 02:00:27 GMT
ENV MEDIAWIKI_BRANCH=REL1_31
# Sat, 08 Sep 2018 02:00:27 GMT
ENV MEDIAWIKI_VERSION=1.31.0
# Sat, 08 Sep 2018 02:00:27 GMT
ENV MEDIAWIKI_SHA512=50ad9303b0c0bd8380dea7489be18a4022d5b65a31961af8d36c3c9ff6d74cdf25e8e10137ef1e025b4287e9ee9b7e0bf4198ca342a46ab42915c91f1ddaf940
# Sat, 08 Sep 2018 02:00:34 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:802b00ed6f79f48e6a5f44ecbcaf43563d6077aaecb565eee1dfc615c0b18c00`  
		Last Modified: Tue, 04 Sep 2018 21:25:45 GMT  
		Size: 22.5 MB (22485965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59f5a5a895f85ce514e7f66d3715d42e54b6735957b02a2406d3625dd75a2185`  
		Last Modified: Wed, 05 Sep 2018 09:03:28 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6898b2dbcfeb5f9532f39c5906364d294c90c4fa0c942068e0ba27bdcd73029b`  
		Last Modified: Wed, 05 Sep 2018 09:03:45 GMT  
		Size: 67.4 MB (67428958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e0903aaa47ebca2076b2f4d52c1118efa2fd755741247b509ced1085f5c1a72`  
		Last Modified: Wed, 05 Sep 2018 09:03:27 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2961af1e196a66c727ebfa1eaed81c207081b853d8df37106f472582d12dd9db`  
		Last Modified: Wed, 05 Sep 2018 09:04:21 GMT  
		Size: 17.1 MB (17127406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71f7016f79a0218a691e7032c308b38d0de98471d48a19f98b7c1db479330f47`  
		Last Modified: Wed, 05 Sep 2018 09:04:17 GMT  
		Size: 1.2 KB (1242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e1a48e5719ce319ff7b5a20b75a48702ec44e17c13abe3d630327ce03e760a8`  
		Last Modified: Wed, 05 Sep 2018 09:04:17 GMT  
		Size: 428.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ae5291984f364551ae9d9bd0a87648dd96aa88d893da349821a9f66acdb8da8`  
		Last Modified: Wed, 05 Sep 2018 09:04:16 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:725b65166f31691ad826144b84fe7f14622a67486d20d6469ec3be96955ea249`  
		Last Modified: Wed, 05 Sep 2018 09:04:16 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3823a607a5d4d676422d16624b214a21fb7d498808d319d6269ded7bcf17f393`  
		Last Modified: Wed, 05 Sep 2018 09:07:27 GMT  
		Size: 12.5 MB (12476831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bcfa4198e39f1bce8e208334c6827dbd5d1509839d0299c31fb25bb7192e933`  
		Last Modified: Wed, 05 Sep 2018 09:07:25 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1c79da21110a4b6a8572aad7e02640b06e1db33e7e5b5112a365227ef391dac`  
		Last Modified: Sat, 08 Sep 2018 01:13:04 GMT  
		Size: 15.6 MB (15621189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18903f439956b5118232ebf7255939a4b26afb9e0d08c2ddd9507574d1d78c0d`  
		Last Modified: Sat, 08 Sep 2018 01:13:00 GMT  
		Size: 2.2 KB (2191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eda25fffde3494a3d62c03c7da53451c9dcedaa56a5e01bc204d50d9aac59e1`  
		Last Modified: Sat, 08 Sep 2018 01:13:00 GMT  
		Size: 257.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3800dac988242634067e311ae8772352644dacf02c0b4a714d59fd7f9acc0a7b`  
		Last Modified: Sat, 08 Sep 2018 01:13:01 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:375ba05fa7ce220d5c50fc8a3613c1fce8bb37a1599bacaeec6b65813b4aaa25`  
		Last Modified: Sat, 08 Sep 2018 02:06:06 GMT  
		Size: 58.3 MB (58323488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5337befabd7f3a5a2a1d157ec131f72040204cf70312fb5c6885e108089cebeb`  
		Last Modified: Sat, 08 Sep 2018 02:05:52 GMT  
		Size: 1.8 MB (1757082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cfa7e7eba66705e689d978359420676d6d79446231be35f24f2ae7cf9c74126`  
		Last Modified: Sat, 08 Sep 2018 02:05:51 GMT  
		Size: 400.9 KB (400878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b25d043d7444ef0541c4a311db85808045c8c3701c834c0b090f2f4be83eff68`  
		Last Modified: Sat, 08 Sep 2018 02:05:51 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29a19cf5191cc19dddff2dc5f02af9bafdede30433fd103256588f7bb47fa3ea`  
		Last Modified: Sat, 08 Sep 2018 02:05:51 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c0c19cf2379d4d75299662cff1b2046eb4f1c6aa57771ac712b5791cdbbf804`  
		Last Modified: Sat, 08 Sep 2018 02:06:04 GMT  
		Size: 35.7 MB (35658955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.31` - linux; arm variant v5

```console
$ docker pull mediawiki@sha256:9ff6676f33defd4ac1a46711b116d4600cf1444fb5efa578f2307ed2c7a9ee55
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.2 MB (216175043 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aeb8bb1501e6f73ffa8cf944cdeb907cd67a44bd8ae6eeb7404ee3ad6c8a1a1f`
-	Entrypoint: `["docker-php-entrypoint"]`
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
# Wed, 05 Sep 2018 09:58:38 GMT
ENV PHP_VERSION=7.2.9
# Wed, 05 Sep 2018 09:58:38 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.9.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.9.tar.xz.asc/from/this/mirror
# Wed, 05 Sep 2018 09:58:39 GMT
ENV PHP_SHA256=3585c1222e00494efee4f5a65a8e03a1e6eca3dfb834814236ee7f02c5248ae0 PHP_MD5=
# Wed, 05 Sep 2018 09:58:52 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 05 Sep 2018 09:58:53 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 08 Sep 2018 09:23:25 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 08 Sep 2018 09:23:26 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Sat, 08 Sep 2018 09:23:27 GMT
RUN docker-php-ext-enable sodium
# Sat, 08 Sep 2018 09:23:27 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 08 Sep 2018 09:23:28 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 08 Sep 2018 09:23:28 GMT
WORKDIR /var/www/html
# Sat, 08 Sep 2018 09:23:28 GMT
EXPOSE 80/tcp
# Sat, 08 Sep 2018 09:23:29 GMT
CMD ["apache2-foreground"]
# Sat, 08 Sep 2018 13:06:03 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python3 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 08 Sep 2018 13:09:06 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Sat, 08 Sep 2018 13:09:21 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu 	&& docker-php-ext-enable apcu
# Sat, 08 Sep 2018 13:09:25 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 08 Sep 2018 13:09:26 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 08 Sep 2018 13:09:26 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.31
# Sat, 08 Sep 2018 13:09:34 GMT
ENV MEDIAWIKI_BRANCH=REL1_31
# Sat, 08 Sep 2018 13:09:34 GMT
ENV MEDIAWIKI_VERSION=1.31.0
# Sat, 08 Sep 2018 13:09:35 GMT
ENV MEDIAWIKI_SHA512=50ad9303b0c0bd8380dea7489be18a4022d5b65a31961af8d36c3c9ff6d74cdf25e8e10137ef1e025b4287e9ee9b7e0bf4198ca342a46ab42915c91f1ddaf940
# Sat, 08 Sep 2018 13:09:49 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
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
	-	`sha256:a44366cd619282fddd8bc306c687e224f4e94dd92a57ca2753ebf4baf3cfd281`  
		Last Modified: Wed, 05 Sep 2018 12:21:50 GMT  
		Size: 12.5 MB (12474957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48b072106ee624b9716890dd7eaf5400c29e5c2372473f78c246c53e94ec8021`  
		Last Modified: Wed, 05 Sep 2018 12:21:46 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c40851d44714d60aec0d36f1ef6d1ad2de9260205bf9b376090ff00b1f667b4e`  
		Last Modified: Sat, 08 Sep 2018 11:28:48 GMT  
		Size: 14.8 MB (14790707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed96db98894ca6885771178166411f6da79b50ac5188ee316f47e3bb6a8f9d05`  
		Last Modified: Sat, 08 Sep 2018 11:28:42 GMT  
		Size: 2.2 KB (2195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02db5da7323ae62aa027d24ace80b2d76bd8bdfeffaae80a0b59ceb9b631eb13`  
		Last Modified: Sat, 08 Sep 2018 11:28:43 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dfdf694148148008c5f742845735edf3d7774bd2725c389032d95428e35aaef`  
		Last Modified: Sat, 08 Sep 2018 11:28:44 GMT  
		Size: 905.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec139a48a17e525e58afa22e33adb053c3845faf388c0be4c4a11add8b7e0634`  
		Last Modified: Sat, 08 Sep 2018 13:18:51 GMT  
		Size: 55.9 MB (55901325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c56c58a931a1328238c5ba207b02c317be62f64b0461a1fcc2218c1f190dbe1d`  
		Last Modified: Sat, 08 Sep 2018 13:18:32 GMT  
		Size: 1.7 MB (1687658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4989c55a4ebc492cc17b9cd64a29fa814eca4a6350d4b1d2e09ef9992ed921d`  
		Last Modified: Sat, 08 Sep 2018 13:18:32 GMT  
		Size: 392.9 KB (392921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:901c64fb7fa78ec8f5088e2049fc84cead7e4fdbf9cddb32375caeea02d6ec1c`  
		Last Modified: Sat, 08 Sep 2018 13:18:32 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dff53dc9b489e26fa78782a34f464a142ef15fd307941c88b63b4ee1e4e619f`  
		Last Modified: Sat, 08 Sep 2018 13:18:32 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a5a4830ad8245c54644e7dc907657e51aff81796a5bd608854af776580d41ee`  
		Last Modified: Sat, 08 Sep 2018 13:18:49 GMT  
		Size: 35.7 MB (35659244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.31` - linux; arm variant v7

```console
$ docker pull mediawiki@sha256:1124c5c08d7eaee21838b8fb8f23b8daf073849df3b7885fb0f544c426270b44
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.2 MB (206196895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:861afb137cfba41ebf5a1c246bfbf4510e3e18dfa2825c5e557dc930f7aa81be`
-	Entrypoint: `["docker-php-entrypoint"]`
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
# Wed, 05 Sep 2018 14:19:21 GMT
ENV PHP_VERSION=7.2.9
# Wed, 05 Sep 2018 14:19:21 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.9.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.9.tar.xz.asc/from/this/mirror
# Wed, 05 Sep 2018 14:19:21 GMT
ENV PHP_SHA256=3585c1222e00494efee4f5a65a8e03a1e6eca3dfb834814236ee7f02c5248ae0 PHP_MD5=
# Wed, 05 Sep 2018 14:19:33 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 05 Sep 2018 14:19:34 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 05 Sep 2018 14:23:04 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 05 Sep 2018 14:23:06 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Wed, 05 Sep 2018 14:23:07 GMT
RUN docker-php-ext-enable sodium
# Wed, 05 Sep 2018 14:23:08 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 05 Sep 2018 14:23:09 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Wed, 05 Sep 2018 14:23:09 GMT
WORKDIR /var/www/html
# Wed, 05 Sep 2018 14:23:10 GMT
EXPOSE 80/tcp
# Wed, 05 Sep 2018 14:23:10 GMT
CMD ["apache2-foreground"]
# Wed, 05 Sep 2018 19:22:03 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python3 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 05 Sep 2018 19:24:53 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Wed, 05 Sep 2018 19:25:08 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu 	&& docker-php-ext-enable apcu
# Wed, 05 Sep 2018 19:25:09 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 05 Sep 2018 19:25:10 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Wed, 05 Sep 2018 19:25:10 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.31
# Wed, 05 Sep 2018 19:25:11 GMT
ENV MEDIAWIKI_BRANCH=REL1_31
# Wed, 05 Sep 2018 19:25:11 GMT
ENV MEDIAWIKI_VERSION=1.31.0
# Wed, 05 Sep 2018 19:25:11 GMT
ENV MEDIAWIKI_SHA512=50ad9303b0c0bd8380dea7489be18a4022d5b65a31961af8d36c3c9ff6d74cdf25e8e10137ef1e025b4287e9ee9b7e0bf4198ca342a46ab42915c91f1ddaf940
# Wed, 05 Sep 2018 19:25:25 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
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
	-	`sha256:236c7a0fe3f0d71bf5fa04aa265b8335c8da1ba9c6c7a598d302b3f6513bbb84`  
		Last Modified: Wed, 05 Sep 2018 16:42:18 GMT  
		Size: 12.5 MB (12474886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcd75b732719ea6a20b675fececbda9c126e193d1bb64b3de5dc760f0f2ca5fa`  
		Last Modified: Wed, 05 Sep 2018 16:42:15 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a916c09522c7ad8b3c7744382d4a9af7eb9f58140c7d04caf166d83eaba63a2`  
		Last Modified: Wed, 05 Sep 2018 16:42:20 GMT  
		Size: 13.5 MB (13549808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e61e8cd14397bc5f011336c42c404a20485b1e8142b66fbb69590018e4746eea`  
		Last Modified: Wed, 05 Sep 2018 16:42:15 GMT  
		Size: 2.2 KB (2195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f097788450ceb5c2c60f53bb4a5de1a97f7fc56eedc8b973a79cfa29903ad56`  
		Last Modified: Wed, 05 Sep 2018 16:42:19 GMT  
		Size: 263.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72f44b4fed134538c2d67c37ad6719f6ae83440aac0d5e2365d0d4d97f11b42a`  
		Last Modified: Wed, 05 Sep 2018 16:42:15 GMT  
		Size: 903.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d11ed88870d5657ff26a15cbb856a04052b1e779c9ce91f64be123627eb48dc`  
		Last Modified: Wed, 05 Sep 2018 19:33:49 GMT  
		Size: 53.5 MB (53486380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eacc9e9373efbf236950747e7cb9c4ec15303223d90749310df95af28788456a`  
		Last Modified: Wed, 05 Sep 2018 19:33:31 GMT  
		Size: 1.6 MB (1636691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa98c938a7b0805a416f379b61a05c0b00e3a839f328420aa5066702aeef79ab`  
		Last Modified: Wed, 05 Sep 2018 19:33:31 GMT  
		Size: 387.4 KB (387413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1cafff693812652eab8604a5a924fe0b10e9e8dff129c0eb322368f2518d051`  
		Last Modified: Wed, 05 Sep 2018 19:33:30 GMT  
		Size: 353.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ced093166ca472d183ea6e9829ccb4a0d5822b3faaba0a6e4928c31e43c8775`  
		Last Modified: Wed, 05 Sep 2018 19:33:30 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f37894bdd166902389b14c77dadab5f61f8e0b9823cb00935dcb01a13474e661`  
		Last Modified: Wed, 05 Sep 2018 19:33:50 GMT  
		Size: 35.7 MB (35659225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.31` - linux; arm64 variant v8

```console
$ docker pull mediawiki@sha256:d57555ef2edcfcaddd387f69bce0a10ce870280db9827ba1ce7206e0f5e972e9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.7 MB (214697475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9c6c3badeea808dd5691e3a00aca07528c53d97bb9224e78dc87587d24061be`
-	Entrypoint: `["docker-php-entrypoint"]`
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
# Wed, 05 Sep 2018 15:40:52 GMT
ENV PHP_VERSION=7.2.9
# Wed, 05 Sep 2018 15:40:52 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.9.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.9.tar.xz.asc/from/this/mirror
# Wed, 05 Sep 2018 15:40:53 GMT
ENV PHP_SHA256=3585c1222e00494efee4f5a65a8e03a1e6eca3dfb834814236ee7f02c5248ae0 PHP_MD5=
# Wed, 05 Sep 2018 15:41:25 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 05 Sep 2018 15:41:25 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 05 Sep 2018 15:49:01 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 05 Sep 2018 15:49:03 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Wed, 05 Sep 2018 15:49:06 GMT
RUN docker-php-ext-enable sodium
# Wed, 05 Sep 2018 15:49:07 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 05 Sep 2018 15:49:09 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Wed, 05 Sep 2018 15:49:10 GMT
WORKDIR /var/www/html
# Wed, 05 Sep 2018 15:49:11 GMT
EXPOSE 80/tcp
# Wed, 05 Sep 2018 15:49:12 GMT
CMD ["apache2-foreground"]
# Thu, 06 Sep 2018 07:39:31 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python3 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 06 Sep 2018 07:43:29 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Thu, 06 Sep 2018 07:44:09 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu 	&& docker-php-ext-enable apcu
# Thu, 06 Sep 2018 07:44:15 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 06 Sep 2018 07:44:17 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Thu, 06 Sep 2018 07:44:39 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.31
# Thu, 06 Sep 2018 07:44:40 GMT
ENV MEDIAWIKI_BRANCH=REL1_31
# Thu, 06 Sep 2018 07:44:41 GMT
ENV MEDIAWIKI_VERSION=1.31.0
# Thu, 06 Sep 2018 07:44:41 GMT
ENV MEDIAWIKI_SHA512=50ad9303b0c0bd8380dea7489be18a4022d5b65a31961af8d36c3c9ff6d74cdf25e8e10137ef1e025b4287e9ee9b7e0bf4198ca342a46ab42915c91f1ddaf940
# Thu, 06 Sep 2018 07:45:17 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
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
	-	`sha256:4d392cd1076f22cf63f6e7fd3e7b5dcc15d5ca2c852bf2f2b31680a775493d08`  
		Last Modified: Wed, 05 Sep 2018 19:02:47 GMT  
		Size: 12.5 MB (12475241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12c75a0a5e25184fdc8dd1f3222afea3553093bc19d0474159881d7609ced087`  
		Last Modified: Wed, 05 Sep 2018 19:02:40 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5df26c6e784a3cad0f7a25e9b444de08c8c47699e2afaf1f541793601d74ce2`  
		Last Modified: Wed, 05 Sep 2018 19:02:46 GMT  
		Size: 14.2 MB (14182282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b7f8d83f91ff27394436396261d10e1f2380cb3264e5ae22ac865120cd978d6`  
		Last Modified: Wed, 05 Sep 2018 19:02:40 GMT  
		Size: 2.2 KB (2196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55aba78d53b8b9f522aad6720de29102df9d73212a8f9eebad4be2f5831ccf66`  
		Last Modified: Wed, 05 Sep 2018 19:02:40 GMT  
		Size: 264.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa5b38410c4234a70763cc63c5f08e67b9d890956bf07f52a5f446111663a3e2`  
		Last Modified: Wed, 05 Sep 2018 19:02:40 GMT  
		Size: 905.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a500793275052c89a7ee28462c1ef7dbe9642ec88e7325e93fc3cadea09b1e15`  
		Last Modified: Thu, 06 Sep 2018 08:01:39 GMT  
		Size: 55.7 MB (55656614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d65e5447df4240e7c522e978a5aea960dc6186630bcb969a15cb029186edd3f4`  
		Last Modified: Thu, 06 Sep 2018 08:01:13 GMT  
		Size: 1.7 MB (1686139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f86f3fe5b724a69d88210b54a79d0db7f19ffe4dcf32c5e5d05f27b616793df`  
		Last Modified: Thu, 06 Sep 2018 08:01:13 GMT  
		Size: 393.5 KB (393468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a225b8eedb11c7e3d9440c8cee8b3d7f4083d9d18cd81fe7f93cf30572705f7`  
		Last Modified: Thu, 06 Sep 2018 08:01:13 GMT  
		Size: 354.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ab21129855f46030b65264ed10cca3678bf0a42afa46c941a8ae9f342f46e14`  
		Last Modified: Thu, 06 Sep 2018 08:01:13 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35cc27dad42c535370c693da227305e5a08b39bbc5a1ea99b11bca0f7ecb6a78`  
		Last Modified: Thu, 06 Sep 2018 08:01:33 GMT  
		Size: 35.7 MB (35658954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.31` - linux; 386

```console
$ docker pull mediawiki@sha256:216f33d400fec80e01d1449cdbe1aca7c2777a9decd563c46fd72e61c63ded9c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.6 MB (236640408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d417bf62cb7464080e4918d8f67ab8e1e68546d2748db0d539250265a13a042`
-	Entrypoint: `["docker-php-entrypoint"]`
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
# Thu, 06 Sep 2018 16:03:43 GMT
ENV PHP_VERSION=7.2.9
# Thu, 06 Sep 2018 16:03:43 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.9.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.9.tar.xz.asc/from/this/mirror
# Thu, 06 Sep 2018 16:03:43 GMT
ENV PHP_SHA256=3585c1222e00494efee4f5a65a8e03a1e6eca3dfb834814236ee7f02c5248ae0 PHP_MD5=
# Thu, 06 Sep 2018 16:03:52 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Thu, 06 Sep 2018 16:03:53 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 08 Sep 2018 12:22:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 08 Sep 2018 12:22:06 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Sat, 08 Sep 2018 12:22:07 GMT
RUN docker-php-ext-enable sodium
# Sat, 08 Sep 2018 12:22:07 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 08 Sep 2018 12:22:07 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 08 Sep 2018 12:22:08 GMT
WORKDIR /var/www/html
# Sat, 08 Sep 2018 12:22:08 GMT
EXPOSE 80/tcp
# Sat, 08 Sep 2018 12:22:08 GMT
CMD ["apache2-foreground"]
# Sat, 08 Sep 2018 19:39:42 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python3 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 08 Sep 2018 19:41:20 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Sat, 08 Sep 2018 19:41:29 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu 	&& docker-php-ext-enable apcu
# Sat, 08 Sep 2018 19:41:29 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 08 Sep 2018 19:41:30 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 08 Sep 2018 19:41:30 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.31
# Sat, 08 Sep 2018 19:41:30 GMT
ENV MEDIAWIKI_BRANCH=REL1_31
# Sat, 08 Sep 2018 19:41:31 GMT
ENV MEDIAWIKI_VERSION=1.31.0
# Sat, 08 Sep 2018 19:41:31 GMT
ENV MEDIAWIKI_SHA512=50ad9303b0c0bd8380dea7489be18a4022d5b65a31961af8d36c3c9ff6d74cdf25e8e10137ef1e025b4287e9ee9b7e0bf4198ca342a46ab42915c91f1ddaf940
# Sat, 08 Sep 2018 19:41:39 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
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
	-	`sha256:4898d3ed265db3606cac9cfcc19d7db95cf921e42cc45316abbaa5aa5a8b750c`  
		Last Modified: Thu, 06 Sep 2018 21:27:18 GMT  
		Size: 12.5 MB (12476313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4b3aab8a2213be63d235ef4d15667256ba2d23bd48db531b24efaffafafdaa7`  
		Last Modified: Thu, 06 Sep 2018 21:27:16 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c267ff214eaf62ca80ecbc23e93ad64244106a312d1f9e968af0c030bfa24be7`  
		Last Modified: Sat, 08 Sep 2018 17:30:41 GMT  
		Size: 15.7 MB (15690212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4eb52ea2fd693892fbc4e080577addcbfce808dab2c2c6e9f8765a0d4be68cc3`  
		Last Modified: Sat, 08 Sep 2018 17:30:36 GMT  
		Size: 2.2 KB (2194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6222287fa37d51701f1de6703a38ef40f4d776071d0a3ce33e411c2ae2fc994f`  
		Last Modified: Sat, 08 Sep 2018 17:30:36 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0e294bfe770fee91b505ef8723221acc0b5bf095ce7373afc7ea6061a621322`  
		Last Modified: Sat, 08 Sep 2018 17:30:36 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:874c2b8a0977af6f07e3a6bc5dbe85a5da2b638be9c0f2dc1f15f882414e0481`  
		Last Modified: Sat, 08 Sep 2018 19:46:46 GMT  
		Size: 58.5 MB (58487555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5de84ed338dbe130f250b0fd298cb610fdc03dd52f246e25c05cbcc0ba236daa`  
		Last Modified: Sat, 08 Sep 2018 19:46:28 GMT  
		Size: 1.8 MB (1756571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d31d0f24fbce5b09ff6c1e1c4b2bf187dd326d188b4da2b1b579c219cb20f652`  
		Last Modified: Sat, 08 Sep 2018 19:46:31 GMT  
		Size: 389.9 KB (389942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0772fa4915c4036653d48101921ce960ff4a28b04a12d177ef5ef4c45c4e8642`  
		Last Modified: Sat, 08 Sep 2018 19:46:29 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2109572cfff98540f3f75e2732f9d00e87db78517cb06097147070980566fb`  
		Last Modified: Sat, 08 Sep 2018 19:46:27 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b20183f0d493b28a77d328ee9525a2b30b7b4c4ccae0caff05787528e70b62f5`  
		Last Modified: Sat, 08 Sep 2018 19:46:45 GMT  
		Size: 35.7 MB (35658943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.31` - linux; ppc64le

```console
$ docker pull mediawiki@sha256:bb22fe5498bfc741551c618b142e9b4f8f22bbba86d68593ef21bfc1d5e7291f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.2 MB (226151108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9a65796a754121420c30d8982170888627cfbfe93ce2113c65e28dd20aef06a`
-	Entrypoint: `["docker-php-entrypoint"]`
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
# Wed, 05 Sep 2018 10:49:36 GMT
ENV PHP_VERSION=7.2.9
# Wed, 05 Sep 2018 10:49:37 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.9.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.9.tar.xz.asc/from/this/mirror
# Wed, 05 Sep 2018 10:49:38 GMT
ENV PHP_SHA256=3585c1222e00494efee4f5a65a8e03a1e6eca3dfb834814236ee7f02c5248ae0 PHP_MD5=
# Wed, 05 Sep 2018 10:50:04 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 05 Sep 2018 10:50:05 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 08 Sep 2018 10:41:01 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 08 Sep 2018 10:41:06 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Sat, 08 Sep 2018 10:41:10 GMT
RUN docker-php-ext-enable sodium
# Sat, 08 Sep 2018 10:41:11 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 08 Sep 2018 10:41:12 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 08 Sep 2018 10:41:13 GMT
WORKDIR /var/www/html
# Sat, 08 Sep 2018 10:41:14 GMT
EXPOSE 80/tcp
# Sat, 08 Sep 2018 10:41:16 GMT
CMD ["apache2-foreground"]
# Sat, 08 Sep 2018 15:26:43 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python3 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 08 Sep 2018 15:29:07 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Sat, 08 Sep 2018 15:29:25 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu 	&& docker-php-ext-enable apcu
# Sat, 08 Sep 2018 15:29:29 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 08 Sep 2018 15:29:35 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 08 Sep 2018 15:29:37 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.31
# Sat, 08 Sep 2018 15:29:38 GMT
ENV MEDIAWIKI_BRANCH=REL1_31
# Sat, 08 Sep 2018 15:29:40 GMT
ENV MEDIAWIKI_VERSION=1.31.0
# Sat, 08 Sep 2018 15:29:42 GMT
ENV MEDIAWIKI_SHA512=50ad9303b0c0bd8380dea7489be18a4022d5b65a31961af8d36c3c9ff6d74cdf25e8e10137ef1e025b4287e9ee9b7e0bf4198ca342a46ab42915c91f1ddaf940
# Sat, 08 Sep 2018 15:30:07 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
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
	-	`sha256:36cbb7610984e65e121c3bf83aedd4083bbac9746e20813392cb96e4a4431ca2`  
		Last Modified: Wed, 05 Sep 2018 12:40:28 GMT  
		Size: 12.5 MB (12475367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d0c4bf5f02395e714f36e82b0d35af35ef779ce486bb975b661afaea6769265`  
		Last Modified: Wed, 05 Sep 2018 12:40:22 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a8040456a5cc597f9d25f01760daaa6855915f530f978b6b17d1d035edaddd`  
		Last Modified: Sat, 08 Sep 2018 13:56:46 GMT  
		Size: 15.4 MB (15395229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de9f2afe2d1db440e288d8d66599b28ec6c45ef97a4677d4e46a657b52128e54`  
		Last Modified: Sat, 08 Sep 2018 13:56:40 GMT  
		Size: 2.2 KB (2194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f3988935034fca22466da31ba7e4cb5f47c03d5bac7c7f27d6ff6e52a042421`  
		Last Modified: Sat, 08 Sep 2018 13:56:39 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fcd32659c5446b5291bc76a287a88ac13c8ba36c4f2a8325c1223abde890e36`  
		Last Modified: Sat, 08 Sep 2018 13:56:39 GMT  
		Size: 905.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8794c5b6230cd113e046b69cf093299219536a223d34a66a350cde008f3d7202`  
		Last Modified: Sat, 08 Sep 2018 15:39:09 GMT  
		Size: 58.6 MB (58575897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a198146f9ecd30ef5222e8c3dc72f9019a183e9ffafb21a3aa1b4927135c3c3d`  
		Last Modified: Sat, 08 Sep 2018 15:38:45 GMT  
		Size: 1.7 MB (1739857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:017070a9df892bef66253fc5daa73662ec5d9078492a52c08d495f1c72bd7f6e`  
		Last Modified: Sat, 08 Sep 2018 15:38:44 GMT  
		Size: 399.8 KB (399795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adf1971c65b49783b78fb2e7c25da233ed9b864ba2e6ffb128cf4308a7082e71`  
		Last Modified: Sat, 08 Sep 2018 15:38:45 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08ed512d9fd3bb1aa48bf75a5309972b4440f55a917d17f6290bc91351af5cd1`  
		Last Modified: Sat, 08 Sep 2018 15:38:44 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c576d9f4d14c6fedab6fc52420202c9502aa4aedbbf6b7c06f85c325fea3f7c8`  
		Last Modified: Sat, 08 Sep 2018 15:39:10 GMT  
		Size: 35.7 MB (35659244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mediawiki:1.31.0`

```console
$ docker pull mediawiki@sha256:7c7ad97c2607e0c0b7eb3ac6a6048965afeaf748b69a46135d4a51da1945b0b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `mediawiki:1.31.0` - linux; amd64

```console
$ docker pull mediawiki@sha256:f270cf9e51bd73b5cbdcd511d43fc7f54684d4c14750ed766e1778eb9dd270af
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.3 MB (231287882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77fa8ecde5117ba263817b5ff3ecbc4b461fff2c7bde4299e0a971443f132b1b`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:34 GMT
ADD file:e6ca98733431f75e97eb09758ba64065d213d51bd2070a95cf15f2ff5adccfc4 in / 
# Tue, 04 Sep 2018 21:21:34 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 01:55:39 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 05 Sep 2018 01:55:39 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 05 Sep 2018 01:56:06 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 05 Sep 2018 01:56:06 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 05 Sep 2018 01:56:07 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 05 Sep 2018 02:05:18 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 02:05:18 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 05 Sep 2018 02:05:18 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 05 Sep 2018 02:05:19 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 05 Sep 2018 02:05:20 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 05 Sep 2018 02:05:21 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 05 Sep 2018 02:05:21 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 05 Sep 2018 02:05:22 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 05 Sep 2018 02:05:22 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 05 Sep 2018 02:05:22 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 05 Sep 2018 02:05:22 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 05 Sep 2018 02:05:23 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 05 Sep 2018 03:06:42 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Wed, 05 Sep 2018 03:06:42 GMT
ENV PHP_VERSION=7.2.9
# Wed, 05 Sep 2018 03:06:42 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.9.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.9.tar.xz.asc/from/this/mirror
# Wed, 05 Sep 2018 03:06:43 GMT
ENV PHP_SHA256=3585c1222e00494efee4f5a65a8e03a1e6eca3dfb834814236ee7f02c5248ae0 PHP_MD5=
# Wed, 05 Sep 2018 03:06:53 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 05 Sep 2018 03:06:53 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 07 Sep 2018 20:33:19 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 07 Sep 2018 20:33:20 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Fri, 07 Sep 2018 20:33:20 GMT
RUN docker-php-ext-enable sodium
# Fri, 07 Sep 2018 20:33:21 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 07 Sep 2018 20:33:21 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 07 Sep 2018 20:33:21 GMT
WORKDIR /var/www/html
# Fri, 07 Sep 2018 20:33:21 GMT
EXPOSE 80/tcp
# Fri, 07 Sep 2018 20:33:21 GMT
CMD ["apache2-foreground"]
# Sat, 08 Sep 2018 01:58:30 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python3 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 08 Sep 2018 02:00:11 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Sat, 08 Sep 2018 02:00:20 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu 	&& docker-php-ext-enable apcu
# Sat, 08 Sep 2018 02:00:23 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 08 Sep 2018 02:00:23 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 08 Sep 2018 02:00:27 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.31
# Sat, 08 Sep 2018 02:00:27 GMT
ENV MEDIAWIKI_BRANCH=REL1_31
# Sat, 08 Sep 2018 02:00:27 GMT
ENV MEDIAWIKI_VERSION=1.31.0
# Sat, 08 Sep 2018 02:00:27 GMT
ENV MEDIAWIKI_SHA512=50ad9303b0c0bd8380dea7489be18a4022d5b65a31961af8d36c3c9ff6d74cdf25e8e10137ef1e025b4287e9ee9b7e0bf4198ca342a46ab42915c91f1ddaf940
# Sat, 08 Sep 2018 02:00:34 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:802b00ed6f79f48e6a5f44ecbcaf43563d6077aaecb565eee1dfc615c0b18c00`  
		Last Modified: Tue, 04 Sep 2018 21:25:45 GMT  
		Size: 22.5 MB (22485965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59f5a5a895f85ce514e7f66d3715d42e54b6735957b02a2406d3625dd75a2185`  
		Last Modified: Wed, 05 Sep 2018 09:03:28 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6898b2dbcfeb5f9532f39c5906364d294c90c4fa0c942068e0ba27bdcd73029b`  
		Last Modified: Wed, 05 Sep 2018 09:03:45 GMT  
		Size: 67.4 MB (67428958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e0903aaa47ebca2076b2f4d52c1118efa2fd755741247b509ced1085f5c1a72`  
		Last Modified: Wed, 05 Sep 2018 09:03:27 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2961af1e196a66c727ebfa1eaed81c207081b853d8df37106f472582d12dd9db`  
		Last Modified: Wed, 05 Sep 2018 09:04:21 GMT  
		Size: 17.1 MB (17127406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71f7016f79a0218a691e7032c308b38d0de98471d48a19f98b7c1db479330f47`  
		Last Modified: Wed, 05 Sep 2018 09:04:17 GMT  
		Size: 1.2 KB (1242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e1a48e5719ce319ff7b5a20b75a48702ec44e17c13abe3d630327ce03e760a8`  
		Last Modified: Wed, 05 Sep 2018 09:04:17 GMT  
		Size: 428.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ae5291984f364551ae9d9bd0a87648dd96aa88d893da349821a9f66acdb8da8`  
		Last Modified: Wed, 05 Sep 2018 09:04:16 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:725b65166f31691ad826144b84fe7f14622a67486d20d6469ec3be96955ea249`  
		Last Modified: Wed, 05 Sep 2018 09:04:16 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3823a607a5d4d676422d16624b214a21fb7d498808d319d6269ded7bcf17f393`  
		Last Modified: Wed, 05 Sep 2018 09:07:27 GMT  
		Size: 12.5 MB (12476831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bcfa4198e39f1bce8e208334c6827dbd5d1509839d0299c31fb25bb7192e933`  
		Last Modified: Wed, 05 Sep 2018 09:07:25 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1c79da21110a4b6a8572aad7e02640b06e1db33e7e5b5112a365227ef391dac`  
		Last Modified: Sat, 08 Sep 2018 01:13:04 GMT  
		Size: 15.6 MB (15621189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18903f439956b5118232ebf7255939a4b26afb9e0d08c2ddd9507574d1d78c0d`  
		Last Modified: Sat, 08 Sep 2018 01:13:00 GMT  
		Size: 2.2 KB (2191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eda25fffde3494a3d62c03c7da53451c9dcedaa56a5e01bc204d50d9aac59e1`  
		Last Modified: Sat, 08 Sep 2018 01:13:00 GMT  
		Size: 257.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3800dac988242634067e311ae8772352644dacf02c0b4a714d59fd7f9acc0a7b`  
		Last Modified: Sat, 08 Sep 2018 01:13:01 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:375ba05fa7ce220d5c50fc8a3613c1fce8bb37a1599bacaeec6b65813b4aaa25`  
		Last Modified: Sat, 08 Sep 2018 02:06:06 GMT  
		Size: 58.3 MB (58323488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5337befabd7f3a5a2a1d157ec131f72040204cf70312fb5c6885e108089cebeb`  
		Last Modified: Sat, 08 Sep 2018 02:05:52 GMT  
		Size: 1.8 MB (1757082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cfa7e7eba66705e689d978359420676d6d79446231be35f24f2ae7cf9c74126`  
		Last Modified: Sat, 08 Sep 2018 02:05:51 GMT  
		Size: 400.9 KB (400878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b25d043d7444ef0541c4a311db85808045c8c3701c834c0b090f2f4be83eff68`  
		Last Modified: Sat, 08 Sep 2018 02:05:51 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29a19cf5191cc19dddff2dc5f02af9bafdede30433fd103256588f7bb47fa3ea`  
		Last Modified: Sat, 08 Sep 2018 02:05:51 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c0c19cf2379d4d75299662cff1b2046eb4f1c6aa57771ac712b5791cdbbf804`  
		Last Modified: Sat, 08 Sep 2018 02:06:04 GMT  
		Size: 35.7 MB (35658955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.31.0` - linux; arm variant v5

```console
$ docker pull mediawiki@sha256:9ff6676f33defd4ac1a46711b116d4600cf1444fb5efa578f2307ed2c7a9ee55
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.2 MB (216175043 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aeb8bb1501e6f73ffa8cf944cdeb907cd67a44bd8ae6eeb7404ee3ad6c8a1a1f`
-	Entrypoint: `["docker-php-entrypoint"]`
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
# Wed, 05 Sep 2018 09:58:38 GMT
ENV PHP_VERSION=7.2.9
# Wed, 05 Sep 2018 09:58:38 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.9.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.9.tar.xz.asc/from/this/mirror
# Wed, 05 Sep 2018 09:58:39 GMT
ENV PHP_SHA256=3585c1222e00494efee4f5a65a8e03a1e6eca3dfb834814236ee7f02c5248ae0 PHP_MD5=
# Wed, 05 Sep 2018 09:58:52 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 05 Sep 2018 09:58:53 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 08 Sep 2018 09:23:25 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 08 Sep 2018 09:23:26 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Sat, 08 Sep 2018 09:23:27 GMT
RUN docker-php-ext-enable sodium
# Sat, 08 Sep 2018 09:23:27 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 08 Sep 2018 09:23:28 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 08 Sep 2018 09:23:28 GMT
WORKDIR /var/www/html
# Sat, 08 Sep 2018 09:23:28 GMT
EXPOSE 80/tcp
# Sat, 08 Sep 2018 09:23:29 GMT
CMD ["apache2-foreground"]
# Sat, 08 Sep 2018 13:06:03 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python3 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 08 Sep 2018 13:09:06 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Sat, 08 Sep 2018 13:09:21 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu 	&& docker-php-ext-enable apcu
# Sat, 08 Sep 2018 13:09:25 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 08 Sep 2018 13:09:26 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 08 Sep 2018 13:09:26 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.31
# Sat, 08 Sep 2018 13:09:34 GMT
ENV MEDIAWIKI_BRANCH=REL1_31
# Sat, 08 Sep 2018 13:09:34 GMT
ENV MEDIAWIKI_VERSION=1.31.0
# Sat, 08 Sep 2018 13:09:35 GMT
ENV MEDIAWIKI_SHA512=50ad9303b0c0bd8380dea7489be18a4022d5b65a31961af8d36c3c9ff6d74cdf25e8e10137ef1e025b4287e9ee9b7e0bf4198ca342a46ab42915c91f1ddaf940
# Sat, 08 Sep 2018 13:09:49 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
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
	-	`sha256:a44366cd619282fddd8bc306c687e224f4e94dd92a57ca2753ebf4baf3cfd281`  
		Last Modified: Wed, 05 Sep 2018 12:21:50 GMT  
		Size: 12.5 MB (12474957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48b072106ee624b9716890dd7eaf5400c29e5c2372473f78c246c53e94ec8021`  
		Last Modified: Wed, 05 Sep 2018 12:21:46 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c40851d44714d60aec0d36f1ef6d1ad2de9260205bf9b376090ff00b1f667b4e`  
		Last Modified: Sat, 08 Sep 2018 11:28:48 GMT  
		Size: 14.8 MB (14790707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed96db98894ca6885771178166411f6da79b50ac5188ee316f47e3bb6a8f9d05`  
		Last Modified: Sat, 08 Sep 2018 11:28:42 GMT  
		Size: 2.2 KB (2195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02db5da7323ae62aa027d24ace80b2d76bd8bdfeffaae80a0b59ceb9b631eb13`  
		Last Modified: Sat, 08 Sep 2018 11:28:43 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dfdf694148148008c5f742845735edf3d7774bd2725c389032d95428e35aaef`  
		Last Modified: Sat, 08 Sep 2018 11:28:44 GMT  
		Size: 905.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec139a48a17e525e58afa22e33adb053c3845faf388c0be4c4a11add8b7e0634`  
		Last Modified: Sat, 08 Sep 2018 13:18:51 GMT  
		Size: 55.9 MB (55901325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c56c58a931a1328238c5ba207b02c317be62f64b0461a1fcc2218c1f190dbe1d`  
		Last Modified: Sat, 08 Sep 2018 13:18:32 GMT  
		Size: 1.7 MB (1687658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4989c55a4ebc492cc17b9cd64a29fa814eca4a6350d4b1d2e09ef9992ed921d`  
		Last Modified: Sat, 08 Sep 2018 13:18:32 GMT  
		Size: 392.9 KB (392921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:901c64fb7fa78ec8f5088e2049fc84cead7e4fdbf9cddb32375caeea02d6ec1c`  
		Last Modified: Sat, 08 Sep 2018 13:18:32 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dff53dc9b489e26fa78782a34f464a142ef15fd307941c88b63b4ee1e4e619f`  
		Last Modified: Sat, 08 Sep 2018 13:18:32 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a5a4830ad8245c54644e7dc907657e51aff81796a5bd608854af776580d41ee`  
		Last Modified: Sat, 08 Sep 2018 13:18:49 GMT  
		Size: 35.7 MB (35659244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.31.0` - linux; arm variant v7

```console
$ docker pull mediawiki@sha256:1124c5c08d7eaee21838b8fb8f23b8daf073849df3b7885fb0f544c426270b44
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.2 MB (206196895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:861afb137cfba41ebf5a1c246bfbf4510e3e18dfa2825c5e557dc930f7aa81be`
-	Entrypoint: `["docker-php-entrypoint"]`
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
# Wed, 05 Sep 2018 14:19:21 GMT
ENV PHP_VERSION=7.2.9
# Wed, 05 Sep 2018 14:19:21 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.9.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.9.tar.xz.asc/from/this/mirror
# Wed, 05 Sep 2018 14:19:21 GMT
ENV PHP_SHA256=3585c1222e00494efee4f5a65a8e03a1e6eca3dfb834814236ee7f02c5248ae0 PHP_MD5=
# Wed, 05 Sep 2018 14:19:33 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 05 Sep 2018 14:19:34 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 05 Sep 2018 14:23:04 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 05 Sep 2018 14:23:06 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Wed, 05 Sep 2018 14:23:07 GMT
RUN docker-php-ext-enable sodium
# Wed, 05 Sep 2018 14:23:08 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 05 Sep 2018 14:23:09 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Wed, 05 Sep 2018 14:23:09 GMT
WORKDIR /var/www/html
# Wed, 05 Sep 2018 14:23:10 GMT
EXPOSE 80/tcp
# Wed, 05 Sep 2018 14:23:10 GMT
CMD ["apache2-foreground"]
# Wed, 05 Sep 2018 19:22:03 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python3 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 05 Sep 2018 19:24:53 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Wed, 05 Sep 2018 19:25:08 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu 	&& docker-php-ext-enable apcu
# Wed, 05 Sep 2018 19:25:09 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 05 Sep 2018 19:25:10 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Wed, 05 Sep 2018 19:25:10 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.31
# Wed, 05 Sep 2018 19:25:11 GMT
ENV MEDIAWIKI_BRANCH=REL1_31
# Wed, 05 Sep 2018 19:25:11 GMT
ENV MEDIAWIKI_VERSION=1.31.0
# Wed, 05 Sep 2018 19:25:11 GMT
ENV MEDIAWIKI_SHA512=50ad9303b0c0bd8380dea7489be18a4022d5b65a31961af8d36c3c9ff6d74cdf25e8e10137ef1e025b4287e9ee9b7e0bf4198ca342a46ab42915c91f1ddaf940
# Wed, 05 Sep 2018 19:25:25 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
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
	-	`sha256:236c7a0fe3f0d71bf5fa04aa265b8335c8da1ba9c6c7a598d302b3f6513bbb84`  
		Last Modified: Wed, 05 Sep 2018 16:42:18 GMT  
		Size: 12.5 MB (12474886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcd75b732719ea6a20b675fececbda9c126e193d1bb64b3de5dc760f0f2ca5fa`  
		Last Modified: Wed, 05 Sep 2018 16:42:15 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a916c09522c7ad8b3c7744382d4a9af7eb9f58140c7d04caf166d83eaba63a2`  
		Last Modified: Wed, 05 Sep 2018 16:42:20 GMT  
		Size: 13.5 MB (13549808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e61e8cd14397bc5f011336c42c404a20485b1e8142b66fbb69590018e4746eea`  
		Last Modified: Wed, 05 Sep 2018 16:42:15 GMT  
		Size: 2.2 KB (2195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f097788450ceb5c2c60f53bb4a5de1a97f7fc56eedc8b973a79cfa29903ad56`  
		Last Modified: Wed, 05 Sep 2018 16:42:19 GMT  
		Size: 263.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72f44b4fed134538c2d67c37ad6719f6ae83440aac0d5e2365d0d4d97f11b42a`  
		Last Modified: Wed, 05 Sep 2018 16:42:15 GMT  
		Size: 903.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d11ed88870d5657ff26a15cbb856a04052b1e779c9ce91f64be123627eb48dc`  
		Last Modified: Wed, 05 Sep 2018 19:33:49 GMT  
		Size: 53.5 MB (53486380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eacc9e9373efbf236950747e7cb9c4ec15303223d90749310df95af28788456a`  
		Last Modified: Wed, 05 Sep 2018 19:33:31 GMT  
		Size: 1.6 MB (1636691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa98c938a7b0805a416f379b61a05c0b00e3a839f328420aa5066702aeef79ab`  
		Last Modified: Wed, 05 Sep 2018 19:33:31 GMT  
		Size: 387.4 KB (387413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1cafff693812652eab8604a5a924fe0b10e9e8dff129c0eb322368f2518d051`  
		Last Modified: Wed, 05 Sep 2018 19:33:30 GMT  
		Size: 353.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ced093166ca472d183ea6e9829ccb4a0d5822b3faaba0a6e4928c31e43c8775`  
		Last Modified: Wed, 05 Sep 2018 19:33:30 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f37894bdd166902389b14c77dadab5f61f8e0b9823cb00935dcb01a13474e661`  
		Last Modified: Wed, 05 Sep 2018 19:33:50 GMT  
		Size: 35.7 MB (35659225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.31.0` - linux; arm64 variant v8

```console
$ docker pull mediawiki@sha256:d57555ef2edcfcaddd387f69bce0a10ce870280db9827ba1ce7206e0f5e972e9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.7 MB (214697475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9c6c3badeea808dd5691e3a00aca07528c53d97bb9224e78dc87587d24061be`
-	Entrypoint: `["docker-php-entrypoint"]`
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
# Wed, 05 Sep 2018 15:40:52 GMT
ENV PHP_VERSION=7.2.9
# Wed, 05 Sep 2018 15:40:52 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.9.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.9.tar.xz.asc/from/this/mirror
# Wed, 05 Sep 2018 15:40:53 GMT
ENV PHP_SHA256=3585c1222e00494efee4f5a65a8e03a1e6eca3dfb834814236ee7f02c5248ae0 PHP_MD5=
# Wed, 05 Sep 2018 15:41:25 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 05 Sep 2018 15:41:25 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 05 Sep 2018 15:49:01 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 05 Sep 2018 15:49:03 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Wed, 05 Sep 2018 15:49:06 GMT
RUN docker-php-ext-enable sodium
# Wed, 05 Sep 2018 15:49:07 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 05 Sep 2018 15:49:09 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Wed, 05 Sep 2018 15:49:10 GMT
WORKDIR /var/www/html
# Wed, 05 Sep 2018 15:49:11 GMT
EXPOSE 80/tcp
# Wed, 05 Sep 2018 15:49:12 GMT
CMD ["apache2-foreground"]
# Thu, 06 Sep 2018 07:39:31 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python3 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 06 Sep 2018 07:43:29 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Thu, 06 Sep 2018 07:44:09 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu 	&& docker-php-ext-enable apcu
# Thu, 06 Sep 2018 07:44:15 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 06 Sep 2018 07:44:17 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Thu, 06 Sep 2018 07:44:39 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.31
# Thu, 06 Sep 2018 07:44:40 GMT
ENV MEDIAWIKI_BRANCH=REL1_31
# Thu, 06 Sep 2018 07:44:41 GMT
ENV MEDIAWIKI_VERSION=1.31.0
# Thu, 06 Sep 2018 07:44:41 GMT
ENV MEDIAWIKI_SHA512=50ad9303b0c0bd8380dea7489be18a4022d5b65a31961af8d36c3c9ff6d74cdf25e8e10137ef1e025b4287e9ee9b7e0bf4198ca342a46ab42915c91f1ddaf940
# Thu, 06 Sep 2018 07:45:17 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
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
	-	`sha256:4d392cd1076f22cf63f6e7fd3e7b5dcc15d5ca2c852bf2f2b31680a775493d08`  
		Last Modified: Wed, 05 Sep 2018 19:02:47 GMT  
		Size: 12.5 MB (12475241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12c75a0a5e25184fdc8dd1f3222afea3553093bc19d0474159881d7609ced087`  
		Last Modified: Wed, 05 Sep 2018 19:02:40 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5df26c6e784a3cad0f7a25e9b444de08c8c47699e2afaf1f541793601d74ce2`  
		Last Modified: Wed, 05 Sep 2018 19:02:46 GMT  
		Size: 14.2 MB (14182282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b7f8d83f91ff27394436396261d10e1f2380cb3264e5ae22ac865120cd978d6`  
		Last Modified: Wed, 05 Sep 2018 19:02:40 GMT  
		Size: 2.2 KB (2196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55aba78d53b8b9f522aad6720de29102df9d73212a8f9eebad4be2f5831ccf66`  
		Last Modified: Wed, 05 Sep 2018 19:02:40 GMT  
		Size: 264.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa5b38410c4234a70763cc63c5f08e67b9d890956bf07f52a5f446111663a3e2`  
		Last Modified: Wed, 05 Sep 2018 19:02:40 GMT  
		Size: 905.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a500793275052c89a7ee28462c1ef7dbe9642ec88e7325e93fc3cadea09b1e15`  
		Last Modified: Thu, 06 Sep 2018 08:01:39 GMT  
		Size: 55.7 MB (55656614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d65e5447df4240e7c522e978a5aea960dc6186630bcb969a15cb029186edd3f4`  
		Last Modified: Thu, 06 Sep 2018 08:01:13 GMT  
		Size: 1.7 MB (1686139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f86f3fe5b724a69d88210b54a79d0db7f19ffe4dcf32c5e5d05f27b616793df`  
		Last Modified: Thu, 06 Sep 2018 08:01:13 GMT  
		Size: 393.5 KB (393468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a225b8eedb11c7e3d9440c8cee8b3d7f4083d9d18cd81fe7f93cf30572705f7`  
		Last Modified: Thu, 06 Sep 2018 08:01:13 GMT  
		Size: 354.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ab21129855f46030b65264ed10cca3678bf0a42afa46c941a8ae9f342f46e14`  
		Last Modified: Thu, 06 Sep 2018 08:01:13 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35cc27dad42c535370c693da227305e5a08b39bbc5a1ea99b11bca0f7ecb6a78`  
		Last Modified: Thu, 06 Sep 2018 08:01:33 GMT  
		Size: 35.7 MB (35658954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.31.0` - linux; 386

```console
$ docker pull mediawiki@sha256:216f33d400fec80e01d1449cdbe1aca7c2777a9decd563c46fd72e61c63ded9c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.6 MB (236640408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d417bf62cb7464080e4918d8f67ab8e1e68546d2748db0d539250265a13a042`
-	Entrypoint: `["docker-php-entrypoint"]`
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
# Thu, 06 Sep 2018 16:03:43 GMT
ENV PHP_VERSION=7.2.9
# Thu, 06 Sep 2018 16:03:43 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.9.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.9.tar.xz.asc/from/this/mirror
# Thu, 06 Sep 2018 16:03:43 GMT
ENV PHP_SHA256=3585c1222e00494efee4f5a65a8e03a1e6eca3dfb834814236ee7f02c5248ae0 PHP_MD5=
# Thu, 06 Sep 2018 16:03:52 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Thu, 06 Sep 2018 16:03:53 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 08 Sep 2018 12:22:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 08 Sep 2018 12:22:06 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Sat, 08 Sep 2018 12:22:07 GMT
RUN docker-php-ext-enable sodium
# Sat, 08 Sep 2018 12:22:07 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 08 Sep 2018 12:22:07 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 08 Sep 2018 12:22:08 GMT
WORKDIR /var/www/html
# Sat, 08 Sep 2018 12:22:08 GMT
EXPOSE 80/tcp
# Sat, 08 Sep 2018 12:22:08 GMT
CMD ["apache2-foreground"]
# Sat, 08 Sep 2018 19:39:42 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python3 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 08 Sep 2018 19:41:20 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Sat, 08 Sep 2018 19:41:29 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu 	&& docker-php-ext-enable apcu
# Sat, 08 Sep 2018 19:41:29 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 08 Sep 2018 19:41:30 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 08 Sep 2018 19:41:30 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.31
# Sat, 08 Sep 2018 19:41:30 GMT
ENV MEDIAWIKI_BRANCH=REL1_31
# Sat, 08 Sep 2018 19:41:31 GMT
ENV MEDIAWIKI_VERSION=1.31.0
# Sat, 08 Sep 2018 19:41:31 GMT
ENV MEDIAWIKI_SHA512=50ad9303b0c0bd8380dea7489be18a4022d5b65a31961af8d36c3c9ff6d74cdf25e8e10137ef1e025b4287e9ee9b7e0bf4198ca342a46ab42915c91f1ddaf940
# Sat, 08 Sep 2018 19:41:39 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
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
	-	`sha256:4898d3ed265db3606cac9cfcc19d7db95cf921e42cc45316abbaa5aa5a8b750c`  
		Last Modified: Thu, 06 Sep 2018 21:27:18 GMT  
		Size: 12.5 MB (12476313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4b3aab8a2213be63d235ef4d15667256ba2d23bd48db531b24efaffafafdaa7`  
		Last Modified: Thu, 06 Sep 2018 21:27:16 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c267ff214eaf62ca80ecbc23e93ad64244106a312d1f9e968af0c030bfa24be7`  
		Last Modified: Sat, 08 Sep 2018 17:30:41 GMT  
		Size: 15.7 MB (15690212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4eb52ea2fd693892fbc4e080577addcbfce808dab2c2c6e9f8765a0d4be68cc3`  
		Last Modified: Sat, 08 Sep 2018 17:30:36 GMT  
		Size: 2.2 KB (2194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6222287fa37d51701f1de6703a38ef40f4d776071d0a3ce33e411c2ae2fc994f`  
		Last Modified: Sat, 08 Sep 2018 17:30:36 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0e294bfe770fee91b505ef8723221acc0b5bf095ce7373afc7ea6061a621322`  
		Last Modified: Sat, 08 Sep 2018 17:30:36 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:874c2b8a0977af6f07e3a6bc5dbe85a5da2b638be9c0f2dc1f15f882414e0481`  
		Last Modified: Sat, 08 Sep 2018 19:46:46 GMT  
		Size: 58.5 MB (58487555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5de84ed338dbe130f250b0fd298cb610fdc03dd52f246e25c05cbcc0ba236daa`  
		Last Modified: Sat, 08 Sep 2018 19:46:28 GMT  
		Size: 1.8 MB (1756571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d31d0f24fbce5b09ff6c1e1c4b2bf187dd326d188b4da2b1b579c219cb20f652`  
		Last Modified: Sat, 08 Sep 2018 19:46:31 GMT  
		Size: 389.9 KB (389942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0772fa4915c4036653d48101921ce960ff4a28b04a12d177ef5ef4c45c4e8642`  
		Last Modified: Sat, 08 Sep 2018 19:46:29 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2109572cfff98540f3f75e2732f9d00e87db78517cb06097147070980566fb`  
		Last Modified: Sat, 08 Sep 2018 19:46:27 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b20183f0d493b28a77d328ee9525a2b30b7b4c4ccae0caff05787528e70b62f5`  
		Last Modified: Sat, 08 Sep 2018 19:46:45 GMT  
		Size: 35.7 MB (35658943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.31.0` - linux; ppc64le

```console
$ docker pull mediawiki@sha256:bb22fe5498bfc741551c618b142e9b4f8f22bbba86d68593ef21bfc1d5e7291f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.2 MB (226151108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9a65796a754121420c30d8982170888627cfbfe93ce2113c65e28dd20aef06a`
-	Entrypoint: `["docker-php-entrypoint"]`
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
# Wed, 05 Sep 2018 10:49:36 GMT
ENV PHP_VERSION=7.2.9
# Wed, 05 Sep 2018 10:49:37 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.9.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.9.tar.xz.asc/from/this/mirror
# Wed, 05 Sep 2018 10:49:38 GMT
ENV PHP_SHA256=3585c1222e00494efee4f5a65a8e03a1e6eca3dfb834814236ee7f02c5248ae0 PHP_MD5=
# Wed, 05 Sep 2018 10:50:04 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 05 Sep 2018 10:50:05 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 08 Sep 2018 10:41:01 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 08 Sep 2018 10:41:06 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Sat, 08 Sep 2018 10:41:10 GMT
RUN docker-php-ext-enable sodium
# Sat, 08 Sep 2018 10:41:11 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 08 Sep 2018 10:41:12 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 08 Sep 2018 10:41:13 GMT
WORKDIR /var/www/html
# Sat, 08 Sep 2018 10:41:14 GMT
EXPOSE 80/tcp
# Sat, 08 Sep 2018 10:41:16 GMT
CMD ["apache2-foreground"]
# Sat, 08 Sep 2018 15:26:43 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python3 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 08 Sep 2018 15:29:07 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Sat, 08 Sep 2018 15:29:25 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu 	&& docker-php-ext-enable apcu
# Sat, 08 Sep 2018 15:29:29 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 08 Sep 2018 15:29:35 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 08 Sep 2018 15:29:37 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.31
# Sat, 08 Sep 2018 15:29:38 GMT
ENV MEDIAWIKI_BRANCH=REL1_31
# Sat, 08 Sep 2018 15:29:40 GMT
ENV MEDIAWIKI_VERSION=1.31.0
# Sat, 08 Sep 2018 15:29:42 GMT
ENV MEDIAWIKI_SHA512=50ad9303b0c0bd8380dea7489be18a4022d5b65a31961af8d36c3c9ff6d74cdf25e8e10137ef1e025b4287e9ee9b7e0bf4198ca342a46ab42915c91f1ddaf940
# Sat, 08 Sep 2018 15:30:07 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
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
	-	`sha256:36cbb7610984e65e121c3bf83aedd4083bbac9746e20813392cb96e4a4431ca2`  
		Last Modified: Wed, 05 Sep 2018 12:40:28 GMT  
		Size: 12.5 MB (12475367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d0c4bf5f02395e714f36e82b0d35af35ef779ce486bb975b661afaea6769265`  
		Last Modified: Wed, 05 Sep 2018 12:40:22 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a8040456a5cc597f9d25f01760daaa6855915f530f978b6b17d1d035edaddd`  
		Last Modified: Sat, 08 Sep 2018 13:56:46 GMT  
		Size: 15.4 MB (15395229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de9f2afe2d1db440e288d8d66599b28ec6c45ef97a4677d4e46a657b52128e54`  
		Last Modified: Sat, 08 Sep 2018 13:56:40 GMT  
		Size: 2.2 KB (2194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f3988935034fca22466da31ba7e4cb5f47c03d5bac7c7f27d6ff6e52a042421`  
		Last Modified: Sat, 08 Sep 2018 13:56:39 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fcd32659c5446b5291bc76a287a88ac13c8ba36c4f2a8325c1223abde890e36`  
		Last Modified: Sat, 08 Sep 2018 13:56:39 GMT  
		Size: 905.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8794c5b6230cd113e046b69cf093299219536a223d34a66a350cde008f3d7202`  
		Last Modified: Sat, 08 Sep 2018 15:39:09 GMT  
		Size: 58.6 MB (58575897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a198146f9ecd30ef5222e8c3dc72f9019a183e9ffafb21a3aa1b4927135c3c3d`  
		Last Modified: Sat, 08 Sep 2018 15:38:45 GMT  
		Size: 1.7 MB (1739857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:017070a9df892bef66253fc5daa73662ec5d9078492a52c08d495f1c72bd7f6e`  
		Last Modified: Sat, 08 Sep 2018 15:38:44 GMT  
		Size: 399.8 KB (399795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adf1971c65b49783b78fb2e7c25da233ed9b864ba2e6ffb128cf4308a7082e71`  
		Last Modified: Sat, 08 Sep 2018 15:38:45 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08ed512d9fd3bb1aa48bf75a5309972b4440f55a917d17f6290bc91351af5cd1`  
		Last Modified: Sat, 08 Sep 2018 15:38:44 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c576d9f4d14c6fedab6fc52420202c9502aa4aedbbf6b7c06f85c325fea3f7c8`  
		Last Modified: Sat, 08 Sep 2018 15:39:10 GMT  
		Size: 35.7 MB (35659244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mediawiki:latest`

```console
$ docker pull mediawiki@sha256:7c7ad97c2607e0c0b7eb3ac6a6048965afeaf748b69a46135d4a51da1945b0b3
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
$ docker pull mediawiki@sha256:f270cf9e51bd73b5cbdcd511d43fc7f54684d4c14750ed766e1778eb9dd270af
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.3 MB (231287882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77fa8ecde5117ba263817b5ff3ecbc4b461fff2c7bde4299e0a971443f132b1b`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:34 GMT
ADD file:e6ca98733431f75e97eb09758ba64065d213d51bd2070a95cf15f2ff5adccfc4 in / 
# Tue, 04 Sep 2018 21:21:34 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 01:55:39 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 05 Sep 2018 01:55:39 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 05 Sep 2018 01:56:06 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 05 Sep 2018 01:56:06 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 05 Sep 2018 01:56:07 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 05 Sep 2018 02:05:18 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 02:05:18 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 05 Sep 2018 02:05:18 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 05 Sep 2018 02:05:19 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 05 Sep 2018 02:05:20 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 05 Sep 2018 02:05:21 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 05 Sep 2018 02:05:21 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 05 Sep 2018 02:05:22 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 05 Sep 2018 02:05:22 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 05 Sep 2018 02:05:22 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 05 Sep 2018 02:05:22 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 05 Sep 2018 02:05:23 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 05 Sep 2018 03:06:42 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Wed, 05 Sep 2018 03:06:42 GMT
ENV PHP_VERSION=7.2.9
# Wed, 05 Sep 2018 03:06:42 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.9.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.9.tar.xz.asc/from/this/mirror
# Wed, 05 Sep 2018 03:06:43 GMT
ENV PHP_SHA256=3585c1222e00494efee4f5a65a8e03a1e6eca3dfb834814236ee7f02c5248ae0 PHP_MD5=
# Wed, 05 Sep 2018 03:06:53 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 05 Sep 2018 03:06:53 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 07 Sep 2018 20:33:19 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 07 Sep 2018 20:33:20 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Fri, 07 Sep 2018 20:33:20 GMT
RUN docker-php-ext-enable sodium
# Fri, 07 Sep 2018 20:33:21 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 07 Sep 2018 20:33:21 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 07 Sep 2018 20:33:21 GMT
WORKDIR /var/www/html
# Fri, 07 Sep 2018 20:33:21 GMT
EXPOSE 80/tcp
# Fri, 07 Sep 2018 20:33:21 GMT
CMD ["apache2-foreground"]
# Sat, 08 Sep 2018 01:58:30 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python3 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 08 Sep 2018 02:00:11 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Sat, 08 Sep 2018 02:00:20 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu 	&& docker-php-ext-enable apcu
# Sat, 08 Sep 2018 02:00:23 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 08 Sep 2018 02:00:23 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 08 Sep 2018 02:00:27 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.31
# Sat, 08 Sep 2018 02:00:27 GMT
ENV MEDIAWIKI_BRANCH=REL1_31
# Sat, 08 Sep 2018 02:00:27 GMT
ENV MEDIAWIKI_VERSION=1.31.0
# Sat, 08 Sep 2018 02:00:27 GMT
ENV MEDIAWIKI_SHA512=50ad9303b0c0bd8380dea7489be18a4022d5b65a31961af8d36c3c9ff6d74cdf25e8e10137ef1e025b4287e9ee9b7e0bf4198ca342a46ab42915c91f1ddaf940
# Sat, 08 Sep 2018 02:00:34 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:802b00ed6f79f48e6a5f44ecbcaf43563d6077aaecb565eee1dfc615c0b18c00`  
		Last Modified: Tue, 04 Sep 2018 21:25:45 GMT  
		Size: 22.5 MB (22485965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59f5a5a895f85ce514e7f66d3715d42e54b6735957b02a2406d3625dd75a2185`  
		Last Modified: Wed, 05 Sep 2018 09:03:28 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6898b2dbcfeb5f9532f39c5906364d294c90c4fa0c942068e0ba27bdcd73029b`  
		Last Modified: Wed, 05 Sep 2018 09:03:45 GMT  
		Size: 67.4 MB (67428958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e0903aaa47ebca2076b2f4d52c1118efa2fd755741247b509ced1085f5c1a72`  
		Last Modified: Wed, 05 Sep 2018 09:03:27 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2961af1e196a66c727ebfa1eaed81c207081b853d8df37106f472582d12dd9db`  
		Last Modified: Wed, 05 Sep 2018 09:04:21 GMT  
		Size: 17.1 MB (17127406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71f7016f79a0218a691e7032c308b38d0de98471d48a19f98b7c1db479330f47`  
		Last Modified: Wed, 05 Sep 2018 09:04:17 GMT  
		Size: 1.2 KB (1242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e1a48e5719ce319ff7b5a20b75a48702ec44e17c13abe3d630327ce03e760a8`  
		Last Modified: Wed, 05 Sep 2018 09:04:17 GMT  
		Size: 428.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ae5291984f364551ae9d9bd0a87648dd96aa88d893da349821a9f66acdb8da8`  
		Last Modified: Wed, 05 Sep 2018 09:04:16 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:725b65166f31691ad826144b84fe7f14622a67486d20d6469ec3be96955ea249`  
		Last Modified: Wed, 05 Sep 2018 09:04:16 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3823a607a5d4d676422d16624b214a21fb7d498808d319d6269ded7bcf17f393`  
		Last Modified: Wed, 05 Sep 2018 09:07:27 GMT  
		Size: 12.5 MB (12476831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bcfa4198e39f1bce8e208334c6827dbd5d1509839d0299c31fb25bb7192e933`  
		Last Modified: Wed, 05 Sep 2018 09:07:25 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1c79da21110a4b6a8572aad7e02640b06e1db33e7e5b5112a365227ef391dac`  
		Last Modified: Sat, 08 Sep 2018 01:13:04 GMT  
		Size: 15.6 MB (15621189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18903f439956b5118232ebf7255939a4b26afb9e0d08c2ddd9507574d1d78c0d`  
		Last Modified: Sat, 08 Sep 2018 01:13:00 GMT  
		Size: 2.2 KB (2191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eda25fffde3494a3d62c03c7da53451c9dcedaa56a5e01bc204d50d9aac59e1`  
		Last Modified: Sat, 08 Sep 2018 01:13:00 GMT  
		Size: 257.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3800dac988242634067e311ae8772352644dacf02c0b4a714d59fd7f9acc0a7b`  
		Last Modified: Sat, 08 Sep 2018 01:13:01 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:375ba05fa7ce220d5c50fc8a3613c1fce8bb37a1599bacaeec6b65813b4aaa25`  
		Last Modified: Sat, 08 Sep 2018 02:06:06 GMT  
		Size: 58.3 MB (58323488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5337befabd7f3a5a2a1d157ec131f72040204cf70312fb5c6885e108089cebeb`  
		Last Modified: Sat, 08 Sep 2018 02:05:52 GMT  
		Size: 1.8 MB (1757082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cfa7e7eba66705e689d978359420676d6d79446231be35f24f2ae7cf9c74126`  
		Last Modified: Sat, 08 Sep 2018 02:05:51 GMT  
		Size: 400.9 KB (400878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b25d043d7444ef0541c4a311db85808045c8c3701c834c0b090f2f4be83eff68`  
		Last Modified: Sat, 08 Sep 2018 02:05:51 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29a19cf5191cc19dddff2dc5f02af9bafdede30433fd103256588f7bb47fa3ea`  
		Last Modified: Sat, 08 Sep 2018 02:05:51 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c0c19cf2379d4d75299662cff1b2046eb4f1c6aa57771ac712b5791cdbbf804`  
		Last Modified: Sat, 08 Sep 2018 02:06:04 GMT  
		Size: 35.7 MB (35658955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:latest` - linux; arm variant v5

```console
$ docker pull mediawiki@sha256:9ff6676f33defd4ac1a46711b116d4600cf1444fb5efa578f2307ed2c7a9ee55
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.2 MB (216175043 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aeb8bb1501e6f73ffa8cf944cdeb907cd67a44bd8ae6eeb7404ee3ad6c8a1a1f`
-	Entrypoint: `["docker-php-entrypoint"]`
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
# Wed, 05 Sep 2018 09:58:38 GMT
ENV PHP_VERSION=7.2.9
# Wed, 05 Sep 2018 09:58:38 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.9.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.9.tar.xz.asc/from/this/mirror
# Wed, 05 Sep 2018 09:58:39 GMT
ENV PHP_SHA256=3585c1222e00494efee4f5a65a8e03a1e6eca3dfb834814236ee7f02c5248ae0 PHP_MD5=
# Wed, 05 Sep 2018 09:58:52 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 05 Sep 2018 09:58:53 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 08 Sep 2018 09:23:25 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 08 Sep 2018 09:23:26 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Sat, 08 Sep 2018 09:23:27 GMT
RUN docker-php-ext-enable sodium
# Sat, 08 Sep 2018 09:23:27 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 08 Sep 2018 09:23:28 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 08 Sep 2018 09:23:28 GMT
WORKDIR /var/www/html
# Sat, 08 Sep 2018 09:23:28 GMT
EXPOSE 80/tcp
# Sat, 08 Sep 2018 09:23:29 GMT
CMD ["apache2-foreground"]
# Sat, 08 Sep 2018 13:06:03 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python3 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 08 Sep 2018 13:09:06 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Sat, 08 Sep 2018 13:09:21 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu 	&& docker-php-ext-enable apcu
# Sat, 08 Sep 2018 13:09:25 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 08 Sep 2018 13:09:26 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 08 Sep 2018 13:09:26 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.31
# Sat, 08 Sep 2018 13:09:34 GMT
ENV MEDIAWIKI_BRANCH=REL1_31
# Sat, 08 Sep 2018 13:09:34 GMT
ENV MEDIAWIKI_VERSION=1.31.0
# Sat, 08 Sep 2018 13:09:35 GMT
ENV MEDIAWIKI_SHA512=50ad9303b0c0bd8380dea7489be18a4022d5b65a31961af8d36c3c9ff6d74cdf25e8e10137ef1e025b4287e9ee9b7e0bf4198ca342a46ab42915c91f1ddaf940
# Sat, 08 Sep 2018 13:09:49 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
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
	-	`sha256:a44366cd619282fddd8bc306c687e224f4e94dd92a57ca2753ebf4baf3cfd281`  
		Last Modified: Wed, 05 Sep 2018 12:21:50 GMT  
		Size: 12.5 MB (12474957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48b072106ee624b9716890dd7eaf5400c29e5c2372473f78c246c53e94ec8021`  
		Last Modified: Wed, 05 Sep 2018 12:21:46 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c40851d44714d60aec0d36f1ef6d1ad2de9260205bf9b376090ff00b1f667b4e`  
		Last Modified: Sat, 08 Sep 2018 11:28:48 GMT  
		Size: 14.8 MB (14790707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed96db98894ca6885771178166411f6da79b50ac5188ee316f47e3bb6a8f9d05`  
		Last Modified: Sat, 08 Sep 2018 11:28:42 GMT  
		Size: 2.2 KB (2195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02db5da7323ae62aa027d24ace80b2d76bd8bdfeffaae80a0b59ceb9b631eb13`  
		Last Modified: Sat, 08 Sep 2018 11:28:43 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dfdf694148148008c5f742845735edf3d7774bd2725c389032d95428e35aaef`  
		Last Modified: Sat, 08 Sep 2018 11:28:44 GMT  
		Size: 905.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec139a48a17e525e58afa22e33adb053c3845faf388c0be4c4a11add8b7e0634`  
		Last Modified: Sat, 08 Sep 2018 13:18:51 GMT  
		Size: 55.9 MB (55901325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c56c58a931a1328238c5ba207b02c317be62f64b0461a1fcc2218c1f190dbe1d`  
		Last Modified: Sat, 08 Sep 2018 13:18:32 GMT  
		Size: 1.7 MB (1687658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4989c55a4ebc492cc17b9cd64a29fa814eca4a6350d4b1d2e09ef9992ed921d`  
		Last Modified: Sat, 08 Sep 2018 13:18:32 GMT  
		Size: 392.9 KB (392921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:901c64fb7fa78ec8f5088e2049fc84cead7e4fdbf9cddb32375caeea02d6ec1c`  
		Last Modified: Sat, 08 Sep 2018 13:18:32 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dff53dc9b489e26fa78782a34f464a142ef15fd307941c88b63b4ee1e4e619f`  
		Last Modified: Sat, 08 Sep 2018 13:18:32 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a5a4830ad8245c54644e7dc907657e51aff81796a5bd608854af776580d41ee`  
		Last Modified: Sat, 08 Sep 2018 13:18:49 GMT  
		Size: 35.7 MB (35659244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:latest` - linux; arm variant v7

```console
$ docker pull mediawiki@sha256:1124c5c08d7eaee21838b8fb8f23b8daf073849df3b7885fb0f544c426270b44
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.2 MB (206196895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:861afb137cfba41ebf5a1c246bfbf4510e3e18dfa2825c5e557dc930f7aa81be`
-	Entrypoint: `["docker-php-entrypoint"]`
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
# Wed, 05 Sep 2018 14:19:21 GMT
ENV PHP_VERSION=7.2.9
# Wed, 05 Sep 2018 14:19:21 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.9.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.9.tar.xz.asc/from/this/mirror
# Wed, 05 Sep 2018 14:19:21 GMT
ENV PHP_SHA256=3585c1222e00494efee4f5a65a8e03a1e6eca3dfb834814236ee7f02c5248ae0 PHP_MD5=
# Wed, 05 Sep 2018 14:19:33 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 05 Sep 2018 14:19:34 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 05 Sep 2018 14:23:04 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 05 Sep 2018 14:23:06 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Wed, 05 Sep 2018 14:23:07 GMT
RUN docker-php-ext-enable sodium
# Wed, 05 Sep 2018 14:23:08 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 05 Sep 2018 14:23:09 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Wed, 05 Sep 2018 14:23:09 GMT
WORKDIR /var/www/html
# Wed, 05 Sep 2018 14:23:10 GMT
EXPOSE 80/tcp
# Wed, 05 Sep 2018 14:23:10 GMT
CMD ["apache2-foreground"]
# Wed, 05 Sep 2018 19:22:03 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python3 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 05 Sep 2018 19:24:53 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Wed, 05 Sep 2018 19:25:08 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu 	&& docker-php-ext-enable apcu
# Wed, 05 Sep 2018 19:25:09 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 05 Sep 2018 19:25:10 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Wed, 05 Sep 2018 19:25:10 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.31
# Wed, 05 Sep 2018 19:25:11 GMT
ENV MEDIAWIKI_BRANCH=REL1_31
# Wed, 05 Sep 2018 19:25:11 GMT
ENV MEDIAWIKI_VERSION=1.31.0
# Wed, 05 Sep 2018 19:25:11 GMT
ENV MEDIAWIKI_SHA512=50ad9303b0c0bd8380dea7489be18a4022d5b65a31961af8d36c3c9ff6d74cdf25e8e10137ef1e025b4287e9ee9b7e0bf4198ca342a46ab42915c91f1ddaf940
# Wed, 05 Sep 2018 19:25:25 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
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
	-	`sha256:236c7a0fe3f0d71bf5fa04aa265b8335c8da1ba9c6c7a598d302b3f6513bbb84`  
		Last Modified: Wed, 05 Sep 2018 16:42:18 GMT  
		Size: 12.5 MB (12474886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcd75b732719ea6a20b675fececbda9c126e193d1bb64b3de5dc760f0f2ca5fa`  
		Last Modified: Wed, 05 Sep 2018 16:42:15 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a916c09522c7ad8b3c7744382d4a9af7eb9f58140c7d04caf166d83eaba63a2`  
		Last Modified: Wed, 05 Sep 2018 16:42:20 GMT  
		Size: 13.5 MB (13549808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e61e8cd14397bc5f011336c42c404a20485b1e8142b66fbb69590018e4746eea`  
		Last Modified: Wed, 05 Sep 2018 16:42:15 GMT  
		Size: 2.2 KB (2195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f097788450ceb5c2c60f53bb4a5de1a97f7fc56eedc8b973a79cfa29903ad56`  
		Last Modified: Wed, 05 Sep 2018 16:42:19 GMT  
		Size: 263.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72f44b4fed134538c2d67c37ad6719f6ae83440aac0d5e2365d0d4d97f11b42a`  
		Last Modified: Wed, 05 Sep 2018 16:42:15 GMT  
		Size: 903.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d11ed88870d5657ff26a15cbb856a04052b1e779c9ce91f64be123627eb48dc`  
		Last Modified: Wed, 05 Sep 2018 19:33:49 GMT  
		Size: 53.5 MB (53486380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eacc9e9373efbf236950747e7cb9c4ec15303223d90749310df95af28788456a`  
		Last Modified: Wed, 05 Sep 2018 19:33:31 GMT  
		Size: 1.6 MB (1636691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa98c938a7b0805a416f379b61a05c0b00e3a839f328420aa5066702aeef79ab`  
		Last Modified: Wed, 05 Sep 2018 19:33:31 GMT  
		Size: 387.4 KB (387413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1cafff693812652eab8604a5a924fe0b10e9e8dff129c0eb322368f2518d051`  
		Last Modified: Wed, 05 Sep 2018 19:33:30 GMT  
		Size: 353.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ced093166ca472d183ea6e9829ccb4a0d5822b3faaba0a6e4928c31e43c8775`  
		Last Modified: Wed, 05 Sep 2018 19:33:30 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f37894bdd166902389b14c77dadab5f61f8e0b9823cb00935dcb01a13474e661`  
		Last Modified: Wed, 05 Sep 2018 19:33:50 GMT  
		Size: 35.7 MB (35659225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:latest` - linux; arm64 variant v8

```console
$ docker pull mediawiki@sha256:d57555ef2edcfcaddd387f69bce0a10ce870280db9827ba1ce7206e0f5e972e9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.7 MB (214697475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9c6c3badeea808dd5691e3a00aca07528c53d97bb9224e78dc87587d24061be`
-	Entrypoint: `["docker-php-entrypoint"]`
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
# Wed, 05 Sep 2018 15:40:52 GMT
ENV PHP_VERSION=7.2.9
# Wed, 05 Sep 2018 15:40:52 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.9.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.9.tar.xz.asc/from/this/mirror
# Wed, 05 Sep 2018 15:40:53 GMT
ENV PHP_SHA256=3585c1222e00494efee4f5a65a8e03a1e6eca3dfb834814236ee7f02c5248ae0 PHP_MD5=
# Wed, 05 Sep 2018 15:41:25 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 05 Sep 2018 15:41:25 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 05 Sep 2018 15:49:01 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 05 Sep 2018 15:49:03 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Wed, 05 Sep 2018 15:49:06 GMT
RUN docker-php-ext-enable sodium
# Wed, 05 Sep 2018 15:49:07 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 05 Sep 2018 15:49:09 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Wed, 05 Sep 2018 15:49:10 GMT
WORKDIR /var/www/html
# Wed, 05 Sep 2018 15:49:11 GMT
EXPOSE 80/tcp
# Wed, 05 Sep 2018 15:49:12 GMT
CMD ["apache2-foreground"]
# Thu, 06 Sep 2018 07:39:31 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python3 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 06 Sep 2018 07:43:29 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Thu, 06 Sep 2018 07:44:09 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu 	&& docker-php-ext-enable apcu
# Thu, 06 Sep 2018 07:44:15 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 06 Sep 2018 07:44:17 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Thu, 06 Sep 2018 07:44:39 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.31
# Thu, 06 Sep 2018 07:44:40 GMT
ENV MEDIAWIKI_BRANCH=REL1_31
# Thu, 06 Sep 2018 07:44:41 GMT
ENV MEDIAWIKI_VERSION=1.31.0
# Thu, 06 Sep 2018 07:44:41 GMT
ENV MEDIAWIKI_SHA512=50ad9303b0c0bd8380dea7489be18a4022d5b65a31961af8d36c3c9ff6d74cdf25e8e10137ef1e025b4287e9ee9b7e0bf4198ca342a46ab42915c91f1ddaf940
# Thu, 06 Sep 2018 07:45:17 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
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
	-	`sha256:4d392cd1076f22cf63f6e7fd3e7b5dcc15d5ca2c852bf2f2b31680a775493d08`  
		Last Modified: Wed, 05 Sep 2018 19:02:47 GMT  
		Size: 12.5 MB (12475241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12c75a0a5e25184fdc8dd1f3222afea3553093bc19d0474159881d7609ced087`  
		Last Modified: Wed, 05 Sep 2018 19:02:40 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5df26c6e784a3cad0f7a25e9b444de08c8c47699e2afaf1f541793601d74ce2`  
		Last Modified: Wed, 05 Sep 2018 19:02:46 GMT  
		Size: 14.2 MB (14182282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b7f8d83f91ff27394436396261d10e1f2380cb3264e5ae22ac865120cd978d6`  
		Last Modified: Wed, 05 Sep 2018 19:02:40 GMT  
		Size: 2.2 KB (2196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55aba78d53b8b9f522aad6720de29102df9d73212a8f9eebad4be2f5831ccf66`  
		Last Modified: Wed, 05 Sep 2018 19:02:40 GMT  
		Size: 264.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa5b38410c4234a70763cc63c5f08e67b9d890956bf07f52a5f446111663a3e2`  
		Last Modified: Wed, 05 Sep 2018 19:02:40 GMT  
		Size: 905.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a500793275052c89a7ee28462c1ef7dbe9642ec88e7325e93fc3cadea09b1e15`  
		Last Modified: Thu, 06 Sep 2018 08:01:39 GMT  
		Size: 55.7 MB (55656614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d65e5447df4240e7c522e978a5aea960dc6186630bcb969a15cb029186edd3f4`  
		Last Modified: Thu, 06 Sep 2018 08:01:13 GMT  
		Size: 1.7 MB (1686139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f86f3fe5b724a69d88210b54a79d0db7f19ffe4dcf32c5e5d05f27b616793df`  
		Last Modified: Thu, 06 Sep 2018 08:01:13 GMT  
		Size: 393.5 KB (393468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a225b8eedb11c7e3d9440c8cee8b3d7f4083d9d18cd81fe7f93cf30572705f7`  
		Last Modified: Thu, 06 Sep 2018 08:01:13 GMT  
		Size: 354.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ab21129855f46030b65264ed10cca3678bf0a42afa46c941a8ae9f342f46e14`  
		Last Modified: Thu, 06 Sep 2018 08:01:13 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35cc27dad42c535370c693da227305e5a08b39bbc5a1ea99b11bca0f7ecb6a78`  
		Last Modified: Thu, 06 Sep 2018 08:01:33 GMT  
		Size: 35.7 MB (35658954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:latest` - linux; 386

```console
$ docker pull mediawiki@sha256:216f33d400fec80e01d1449cdbe1aca7c2777a9decd563c46fd72e61c63ded9c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.6 MB (236640408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d417bf62cb7464080e4918d8f67ab8e1e68546d2748db0d539250265a13a042`
-	Entrypoint: `["docker-php-entrypoint"]`
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
# Thu, 06 Sep 2018 16:03:43 GMT
ENV PHP_VERSION=7.2.9
# Thu, 06 Sep 2018 16:03:43 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.9.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.9.tar.xz.asc/from/this/mirror
# Thu, 06 Sep 2018 16:03:43 GMT
ENV PHP_SHA256=3585c1222e00494efee4f5a65a8e03a1e6eca3dfb834814236ee7f02c5248ae0 PHP_MD5=
# Thu, 06 Sep 2018 16:03:52 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Thu, 06 Sep 2018 16:03:53 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 08 Sep 2018 12:22:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 08 Sep 2018 12:22:06 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Sat, 08 Sep 2018 12:22:07 GMT
RUN docker-php-ext-enable sodium
# Sat, 08 Sep 2018 12:22:07 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 08 Sep 2018 12:22:07 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 08 Sep 2018 12:22:08 GMT
WORKDIR /var/www/html
# Sat, 08 Sep 2018 12:22:08 GMT
EXPOSE 80/tcp
# Sat, 08 Sep 2018 12:22:08 GMT
CMD ["apache2-foreground"]
# Sat, 08 Sep 2018 19:39:42 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python3 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 08 Sep 2018 19:41:20 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Sat, 08 Sep 2018 19:41:29 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu 	&& docker-php-ext-enable apcu
# Sat, 08 Sep 2018 19:41:29 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 08 Sep 2018 19:41:30 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 08 Sep 2018 19:41:30 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.31
# Sat, 08 Sep 2018 19:41:30 GMT
ENV MEDIAWIKI_BRANCH=REL1_31
# Sat, 08 Sep 2018 19:41:31 GMT
ENV MEDIAWIKI_VERSION=1.31.0
# Sat, 08 Sep 2018 19:41:31 GMT
ENV MEDIAWIKI_SHA512=50ad9303b0c0bd8380dea7489be18a4022d5b65a31961af8d36c3c9ff6d74cdf25e8e10137ef1e025b4287e9ee9b7e0bf4198ca342a46ab42915c91f1ddaf940
# Sat, 08 Sep 2018 19:41:39 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
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
	-	`sha256:4898d3ed265db3606cac9cfcc19d7db95cf921e42cc45316abbaa5aa5a8b750c`  
		Last Modified: Thu, 06 Sep 2018 21:27:18 GMT  
		Size: 12.5 MB (12476313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4b3aab8a2213be63d235ef4d15667256ba2d23bd48db531b24efaffafafdaa7`  
		Last Modified: Thu, 06 Sep 2018 21:27:16 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c267ff214eaf62ca80ecbc23e93ad64244106a312d1f9e968af0c030bfa24be7`  
		Last Modified: Sat, 08 Sep 2018 17:30:41 GMT  
		Size: 15.7 MB (15690212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4eb52ea2fd693892fbc4e080577addcbfce808dab2c2c6e9f8765a0d4be68cc3`  
		Last Modified: Sat, 08 Sep 2018 17:30:36 GMT  
		Size: 2.2 KB (2194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6222287fa37d51701f1de6703a38ef40f4d776071d0a3ce33e411c2ae2fc994f`  
		Last Modified: Sat, 08 Sep 2018 17:30:36 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0e294bfe770fee91b505ef8723221acc0b5bf095ce7373afc7ea6061a621322`  
		Last Modified: Sat, 08 Sep 2018 17:30:36 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:874c2b8a0977af6f07e3a6bc5dbe85a5da2b638be9c0f2dc1f15f882414e0481`  
		Last Modified: Sat, 08 Sep 2018 19:46:46 GMT  
		Size: 58.5 MB (58487555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5de84ed338dbe130f250b0fd298cb610fdc03dd52f246e25c05cbcc0ba236daa`  
		Last Modified: Sat, 08 Sep 2018 19:46:28 GMT  
		Size: 1.8 MB (1756571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d31d0f24fbce5b09ff6c1e1c4b2bf187dd326d188b4da2b1b579c219cb20f652`  
		Last Modified: Sat, 08 Sep 2018 19:46:31 GMT  
		Size: 389.9 KB (389942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0772fa4915c4036653d48101921ce960ff4a28b04a12d177ef5ef4c45c4e8642`  
		Last Modified: Sat, 08 Sep 2018 19:46:29 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2109572cfff98540f3f75e2732f9d00e87db78517cb06097147070980566fb`  
		Last Modified: Sat, 08 Sep 2018 19:46:27 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b20183f0d493b28a77d328ee9525a2b30b7b4c4ccae0caff05787528e70b62f5`  
		Last Modified: Sat, 08 Sep 2018 19:46:45 GMT  
		Size: 35.7 MB (35658943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:latest` - linux; ppc64le

```console
$ docker pull mediawiki@sha256:bb22fe5498bfc741551c618b142e9b4f8f22bbba86d68593ef21bfc1d5e7291f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.2 MB (226151108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9a65796a754121420c30d8982170888627cfbfe93ce2113c65e28dd20aef06a`
-	Entrypoint: `["docker-php-entrypoint"]`
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
# Wed, 05 Sep 2018 10:49:36 GMT
ENV PHP_VERSION=7.2.9
# Wed, 05 Sep 2018 10:49:37 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.9.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.9.tar.xz.asc/from/this/mirror
# Wed, 05 Sep 2018 10:49:38 GMT
ENV PHP_SHA256=3585c1222e00494efee4f5a65a8e03a1e6eca3dfb834814236ee7f02c5248ae0 PHP_MD5=
# Wed, 05 Sep 2018 10:50:04 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 05 Sep 2018 10:50:05 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 08 Sep 2018 10:41:01 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 08 Sep 2018 10:41:06 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Sat, 08 Sep 2018 10:41:10 GMT
RUN docker-php-ext-enable sodium
# Sat, 08 Sep 2018 10:41:11 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 08 Sep 2018 10:41:12 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 08 Sep 2018 10:41:13 GMT
WORKDIR /var/www/html
# Sat, 08 Sep 2018 10:41:14 GMT
EXPOSE 80/tcp
# Sat, 08 Sep 2018 10:41:16 GMT
CMD ["apache2-foreground"]
# Sat, 08 Sep 2018 15:26:43 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python3 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 08 Sep 2018 15:29:07 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Sat, 08 Sep 2018 15:29:25 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu 	&& docker-php-ext-enable apcu
# Sat, 08 Sep 2018 15:29:29 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 08 Sep 2018 15:29:35 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 08 Sep 2018 15:29:37 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.31
# Sat, 08 Sep 2018 15:29:38 GMT
ENV MEDIAWIKI_BRANCH=REL1_31
# Sat, 08 Sep 2018 15:29:40 GMT
ENV MEDIAWIKI_VERSION=1.31.0
# Sat, 08 Sep 2018 15:29:42 GMT
ENV MEDIAWIKI_SHA512=50ad9303b0c0bd8380dea7489be18a4022d5b65a31961af8d36c3c9ff6d74cdf25e8e10137ef1e025b4287e9ee9b7e0bf4198ca342a46ab42915c91f1ddaf940
# Sat, 08 Sep 2018 15:30:07 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
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
	-	`sha256:36cbb7610984e65e121c3bf83aedd4083bbac9746e20813392cb96e4a4431ca2`  
		Last Modified: Wed, 05 Sep 2018 12:40:28 GMT  
		Size: 12.5 MB (12475367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d0c4bf5f02395e714f36e82b0d35af35ef779ce486bb975b661afaea6769265`  
		Last Modified: Wed, 05 Sep 2018 12:40:22 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a8040456a5cc597f9d25f01760daaa6855915f530f978b6b17d1d035edaddd`  
		Last Modified: Sat, 08 Sep 2018 13:56:46 GMT  
		Size: 15.4 MB (15395229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de9f2afe2d1db440e288d8d66599b28ec6c45ef97a4677d4e46a657b52128e54`  
		Last Modified: Sat, 08 Sep 2018 13:56:40 GMT  
		Size: 2.2 KB (2194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f3988935034fca22466da31ba7e4cb5f47c03d5bac7c7f27d6ff6e52a042421`  
		Last Modified: Sat, 08 Sep 2018 13:56:39 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fcd32659c5446b5291bc76a287a88ac13c8ba36c4f2a8325c1223abde890e36`  
		Last Modified: Sat, 08 Sep 2018 13:56:39 GMT  
		Size: 905.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8794c5b6230cd113e046b69cf093299219536a223d34a66a350cde008f3d7202`  
		Last Modified: Sat, 08 Sep 2018 15:39:09 GMT  
		Size: 58.6 MB (58575897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a198146f9ecd30ef5222e8c3dc72f9019a183e9ffafb21a3aa1b4927135c3c3d`  
		Last Modified: Sat, 08 Sep 2018 15:38:45 GMT  
		Size: 1.7 MB (1739857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:017070a9df892bef66253fc5daa73662ec5d9078492a52c08d495f1c72bd7f6e`  
		Last Modified: Sat, 08 Sep 2018 15:38:44 GMT  
		Size: 399.8 KB (399795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adf1971c65b49783b78fb2e7c25da233ed9b864ba2e6ffb128cf4308a7082e71`  
		Last Modified: Sat, 08 Sep 2018 15:38:45 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08ed512d9fd3bb1aa48bf75a5309972b4440f55a917d17f6290bc91351af5cd1`  
		Last Modified: Sat, 08 Sep 2018 15:38:44 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c576d9f4d14c6fedab6fc52420202c9502aa4aedbbf6b7c06f85c325fea3f7c8`  
		Last Modified: Sat, 08 Sep 2018 15:39:10 GMT  
		Size: 35.7 MB (35659244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mediawiki:legacy`

```console
$ docker pull mediawiki@sha256:0e3439ab9179aa51b16d3cee1918266e619e333d8cf2e4620937f36b96679630
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
$ docker pull mediawiki@sha256:389b6d8c1c381747cdb44f4df78acc9d430604a745da1fccff53d1d85165301b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.5 MB (235530659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20c330a09f15fa52ce93e39da528e334ba8c5bdcdd3602508e86fd0291db210b`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:34 GMT
ADD file:e6ca98733431f75e97eb09758ba64065d213d51bd2070a95cf15f2ff5adccfc4 in / 
# Tue, 04 Sep 2018 21:21:34 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 01:55:39 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 05 Sep 2018 01:55:39 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 05 Sep 2018 01:56:06 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 05 Sep 2018 01:56:06 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 05 Sep 2018 01:56:07 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 05 Sep 2018 02:05:18 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 02:05:18 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 05 Sep 2018 02:05:18 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 05 Sep 2018 02:05:19 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 05 Sep 2018 02:05:20 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 05 Sep 2018 02:05:21 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 05 Sep 2018 02:05:21 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 05 Sep 2018 02:05:22 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 05 Sep 2018 02:05:22 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 05 Sep 2018 02:05:22 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 05 Sep 2018 02:05:22 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 05 Sep 2018 02:05:23 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 05 Sep 2018 04:52:35 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Wed, 05 Sep 2018 04:52:35 GMT
ENV PHP_VERSION=7.1.21
# Wed, 05 Sep 2018 04:52:35 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.21.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.21.tar.xz.asc/from/this/mirror
# Wed, 05 Sep 2018 04:52:35 GMT
ENV PHP_SHA256=d4da6dc69d3fe1e6b2b80f16b262f391037bfeb21213c966e026bd45d7ca2813 PHP_MD5=
# Wed, 05 Sep 2018 04:52:43 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 05 Sep 2018 04:52:44 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 07 Sep 2018 21:51:49 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 07 Sep 2018 21:51:49 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Fri, 07 Sep 2018 21:51:49 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 07 Sep 2018 21:51:50 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 07 Sep 2018 21:51:50 GMT
WORKDIR /var/www/html
# Fri, 07 Sep 2018 21:51:50 GMT
EXPOSE 80/tcp
# Fri, 07 Sep 2018 21:51:50 GMT
CMD ["apache2-foreground"]
# Sat, 08 Sep 2018 02:01:12 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 08 Sep 2018 02:02:52 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Sat, 08 Sep 2018 02:03:01 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Sat, 08 Sep 2018 02:03:01 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 08 Sep 2018 02:03:02 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 08 Sep 2018 02:03:02 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.30
# Sat, 08 Sep 2018 02:03:02 GMT
ENV MEDIAWIKI_BRANCH=REL1_30
# Sat, 08 Sep 2018 02:03:03 GMT
ENV MEDIAWIKI_VERSION=1.30.0
# Sat, 08 Sep 2018 02:03:03 GMT
ENV MEDIAWIKI_SHA512=ec4aeb08c18af0e52aaf99124d43cd357328221934d593d87f38da804a2f4a5b172a114659f87f6de58c2140ee05ae14ec6a270574f655e7780a950a51178643
# Sat, 08 Sep 2018 02:03:10 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:802b00ed6f79f48e6a5f44ecbcaf43563d6077aaecb565eee1dfc615c0b18c00`  
		Last Modified: Tue, 04 Sep 2018 21:25:45 GMT  
		Size: 22.5 MB (22485965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59f5a5a895f85ce514e7f66d3715d42e54b6735957b02a2406d3625dd75a2185`  
		Last Modified: Wed, 05 Sep 2018 09:03:28 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6898b2dbcfeb5f9532f39c5906364d294c90c4fa0c942068e0ba27bdcd73029b`  
		Last Modified: Wed, 05 Sep 2018 09:03:45 GMT  
		Size: 67.4 MB (67428958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e0903aaa47ebca2076b2f4d52c1118efa2fd755741247b509ced1085f5c1a72`  
		Last Modified: Wed, 05 Sep 2018 09:03:27 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2961af1e196a66c727ebfa1eaed81c207081b853d8df37106f472582d12dd9db`  
		Last Modified: Wed, 05 Sep 2018 09:04:21 GMT  
		Size: 17.1 MB (17127406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71f7016f79a0218a691e7032c308b38d0de98471d48a19f98b7c1db479330f47`  
		Last Modified: Wed, 05 Sep 2018 09:04:17 GMT  
		Size: 1.2 KB (1242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e1a48e5719ce319ff7b5a20b75a48702ec44e17c13abe3d630327ce03e760a8`  
		Last Modified: Wed, 05 Sep 2018 09:04:17 GMT  
		Size: 428.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ae5291984f364551ae9d9bd0a87648dd96aa88d893da349821a9f66acdb8da8`  
		Last Modified: Wed, 05 Sep 2018 09:04:16 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:725b65166f31691ad826144b84fe7f14622a67486d20d6469ec3be96955ea249`  
		Last Modified: Wed, 05 Sep 2018 09:04:16 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f38e84d81f34b49de9e7f7b0d9705810f28ba039837e3347a7e4cebc9f76048f`  
		Last Modified: Wed, 05 Sep 2018 09:12:43 GMT  
		Size: 12.6 MB (12576747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:661136afd63462a3a10531c9d1a42ae2c9115cd547dcc553dc24abd3a0f34a49`  
		Last Modified: Wed, 05 Sep 2018 09:12:42 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5ce7d144e600a0784bbc21741b88a5f9d2e22d1dc08ed3bddf50b1b1c238cee`  
		Last Modified: Sat, 08 Sep 2018 01:21:09 GMT  
		Size: 14.6 MB (14608191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7651e00c21244f3d818a8267d637a22fd13aa8461f29157f40d80736809f1e52`  
		Last Modified: Sat, 08 Sep 2018 01:21:06 GMT  
		Size: 2.2 KB (2192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d779160703d3c95533393618f158b2656fa67b3ad45958cbd1ddd3578a6a1ef`  
		Last Modified: Sat, 08 Sep 2018 01:21:07 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc25a8ff95ca5faebfe3b72d872af71b5d60bde2ee03d1a7b841f044a822b487`  
		Last Modified: Sat, 08 Sep 2018 02:06:42 GMT  
		Size: 56.3 MB (56335775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f331ab60b7ad6c7ecc8c247c1a6b289c6e81d881e8beba26864dec7e435544fd`  
		Last Modified: Sat, 08 Sep 2018 02:06:28 GMT  
		Size: 1.7 MB (1662986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6eb981d60bfd08689baab2db021e4bd203ef85d9ac84bcb338c6af79d975650`  
		Last Modified: Sat, 08 Sep 2018 02:06:28 GMT  
		Size: 408.6 KB (408583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:351de926bc085f95c86c2c7b438185c88e83e717f580b95f0cd846ac95955c90`  
		Last Modified: Sat, 08 Sep 2018 02:06:28 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2e624f5ed55c5edef40a1b20a3ea2c7c5a2faaf38565a145610b887f7a7cf57`  
		Last Modified: Sat, 08 Sep 2018 02:06:28 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6d017430f195c74b92ae4ce63d69189f953cadc4394249c179c788f648e690`  
		Last Modified: Sat, 08 Sep 2018 02:06:47 GMT  
		Size: 42.9 MB (42889171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:legacy` - linux; arm variant v5

```console
$ docker pull mediawiki@sha256:2cf3d7848415f25bf0014e0fdef431471f39fe433f467b5c89a4999e80f0b2a2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.6 MB (220634633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:403d1a6b212841e2620cf91831838014477012391f45f54f5917cca9c502b238`
-	Entrypoint: `["docker-php-entrypoint"]`
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
# Wed, 05 Sep 2018 10:18:24 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Wed, 05 Sep 2018 10:18:24 GMT
ENV PHP_VERSION=7.1.21
# Wed, 05 Sep 2018 10:18:25 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.21.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.21.tar.xz.asc/from/this/mirror
# Wed, 05 Sep 2018 10:18:25 GMT
ENV PHP_SHA256=d4da6dc69d3fe1e6b2b80f16b262f391037bfeb21213c966e026bd45d7ca2813 PHP_MD5=
# Wed, 05 Sep 2018 10:18:39 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 05 Sep 2018 10:18:39 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 08 Sep 2018 09:42:05 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 08 Sep 2018 09:42:06 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Sat, 08 Sep 2018 09:42:07 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 08 Sep 2018 09:42:07 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 08 Sep 2018 09:42:07 GMT
WORKDIR /var/www/html
# Sat, 08 Sep 2018 09:42:08 GMT
EXPOSE 80/tcp
# Sat, 08 Sep 2018 09:42:08 GMT
CMD ["apache2-foreground"]
# Sat, 08 Sep 2018 13:10:39 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 08 Sep 2018 13:13:34 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Sat, 08 Sep 2018 13:13:50 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Sat, 08 Sep 2018 13:13:52 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 08 Sep 2018 13:13:53 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 08 Sep 2018 13:13:53 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.30
# Sat, 08 Sep 2018 13:13:54 GMT
ENV MEDIAWIKI_BRANCH=REL1_30
# Sat, 08 Sep 2018 13:13:54 GMT
ENV MEDIAWIKI_VERSION=1.30.0
# Sat, 08 Sep 2018 13:13:54 GMT
ENV MEDIAWIKI_SHA512=ec4aeb08c18af0e52aaf99124d43cd357328221934d593d87f38da804a2f4a5b172a114659f87f6de58c2140ee05ae14ec6a270574f655e7780a950a51178643
# Sat, 08 Sep 2018 13:14:09 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
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
	-	`sha256:b2e39ff8f9b15f3661cd41ec87525e6ce8478f01b2d6caa2141df4c27c3a85ea`  
		Last Modified: Wed, 05 Sep 2018 12:26:13 GMT  
		Size: 12.6 MB (12574937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d6ef893e586d3df0cb82412d53eb465f22da792ab74108699d7fba787504af0`  
		Last Modified: Wed, 05 Sep 2018 12:26:11 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf73564aeb2537737fd3b3d01723f34642d41817f4a277c0e8e1837bac16f186`  
		Last Modified: Sat, 08 Sep 2018 11:34:09 GMT  
		Size: 13.9 MB (13928166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67a32065e90eb477d90fcdb48e157416ec73f951220637f80a605a22bf9d68a7`  
		Last Modified: Sat, 08 Sep 2018 11:34:04 GMT  
		Size: 2.2 KB (2194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97366146f63936c736e8a4def54335968c4de78e4c8a681722487d09d2074534`  
		Last Modified: Sat, 08 Sep 2018 11:34:04 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72554bbe95547acf78a7dd47a3c2ff264a1430f0118ddaa5dc7cc34c17a6650c`  
		Last Modified: Sat, 08 Sep 2018 13:19:55 GMT  
		Size: 54.0 MB (53981632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccee25c0b3bd91dcda1dc2d6cec9cee703406b5c06322a2a02af546fd8e1b9e7`  
		Last Modified: Sat, 08 Sep 2018 13:19:34 GMT  
		Size: 1.6 MB (1593754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84d2d9f05c7aa8d24a7c140fcad116e3c906562c9a8c331ff977ac283d13b09e`  
		Last Modified: Sat, 08 Sep 2018 13:19:34 GMT  
		Size: 397.8 KB (397807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90eab45ea75bce24cefc40fc45cd181ea91b7f1e4ea2d6d9968702492061c521`  
		Last Modified: Sat, 08 Sep 2018 13:19:34 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4cd35dec1dfd18255cd25e58993d307a55b9adbfd52691ada500b9c0571a32d`  
		Last Modified: Sat, 08 Sep 2018 13:19:34 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1199f1c0df5bc9590adc349c0790ec3dbcd71713c3c7e076917ce55d200bd6fd`  
		Last Modified: Sat, 08 Sep 2018 13:20:03 GMT  
		Size: 42.9 MB (42890365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:legacy` - linux; arm variant v7

```console
$ docker pull mediawiki@sha256:5fd415569b4a93a3b1919d3885c24a1f7e5148efdcf42e794a9d8241e3903d62
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **210.7 MB (210743189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f37999a497348c6cb35572e443a5c42434862dac2c5087d216734c1a0913a51`
-	Entrypoint: `["docker-php-entrypoint"]`
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
# Wed, 05 Sep 2018 14:37:51 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Wed, 05 Sep 2018 14:37:51 GMT
ENV PHP_VERSION=7.1.21
# Wed, 05 Sep 2018 14:37:51 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.21.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.21.tar.xz.asc/from/this/mirror
# Wed, 05 Sep 2018 14:37:52 GMT
ENV PHP_SHA256=d4da6dc69d3fe1e6b2b80f16b262f391037bfeb21213c966e026bd45d7ca2813 PHP_MD5=
# Wed, 05 Sep 2018 14:38:03 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 05 Sep 2018 14:38:04 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 05 Sep 2018 14:41:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 05 Sep 2018 14:41:25 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Wed, 05 Sep 2018 14:41:25 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 05 Sep 2018 14:41:26 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Wed, 05 Sep 2018 14:41:26 GMT
WORKDIR /var/www/html
# Wed, 05 Sep 2018 14:41:26 GMT
EXPOSE 80/tcp
# Wed, 05 Sep 2018 14:41:26 GMT
CMD ["apache2-foreground"]
# Wed, 05 Sep 2018 19:26:08 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 05 Sep 2018 19:28:55 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Wed, 05 Sep 2018 19:29:10 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Wed, 05 Sep 2018 19:29:14 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 05 Sep 2018 19:29:15 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Wed, 05 Sep 2018 19:29:16 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.30
# Wed, 05 Sep 2018 19:29:16 GMT
ENV MEDIAWIKI_BRANCH=REL1_30
# Wed, 05 Sep 2018 19:29:16 GMT
ENV MEDIAWIKI_VERSION=1.30.0
# Wed, 05 Sep 2018 19:29:17 GMT
ENV MEDIAWIKI_SHA512=ec4aeb08c18af0e52aaf99124d43cd357328221934d593d87f38da804a2f4a5b172a114659f87f6de58c2140ee05ae14ec6a270574f655e7780a950a51178643
# Wed, 05 Sep 2018 19:29:31 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
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
	-	`sha256:d47d028cf4d8fab234172c08fb6eccdfff63a8ca0581d0afc3ad8cf20597c5a1`  
		Last Modified: Wed, 05 Sep 2018 16:47:05 GMT  
		Size: 12.6 MB (12574859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:617dd66dc6d8b5bdc7110c9e678ba13c1efb65ed67696e051fe421a108912ee8`  
		Last Modified: Wed, 05 Sep 2018 16:47:03 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa23422469f50fd90b216b33bb5e7aab8ffd6de732baa911914a41609d2f0b53`  
		Last Modified: Wed, 05 Sep 2018 16:47:08 GMT  
		Size: 12.7 MB (12728560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e92b68431c56230b91301d516d4bc09f2371368416ecdaed845f25c1063ae200`  
		Last Modified: Wed, 05 Sep 2018 16:47:03 GMT  
		Size: 2.2 KB (2195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b5327c374303c0659635c6e5456e37479eb0ce539f485cd8f092be725416707`  
		Last Modified: Wed, 05 Sep 2018 16:47:05 GMT  
		Size: 905.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b352029f9ff8f37b1a10c086ebcc83c448c391be23cdc50db0a068b9637283a8`  
		Last Modified: Wed, 05 Sep 2018 19:34:53 GMT  
		Size: 51.6 MB (51604964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39923b337dc6377ce207e3d39f0203240979d904513a65785933481f0c0ab4c4`  
		Last Modified: Wed, 05 Sep 2018 19:34:38 GMT  
		Size: 1.5 MB (1549444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c19d2a63a258192b1a02442d6d7b2f610219bff3255742b96e55fb6584c4c82`  
		Last Modified: Wed, 05 Sep 2018 19:34:36 GMT  
		Size: 392.8 KB (392766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:142ec0817fa85d41858582ba424b8abebc495ea812f1d6c228f91c237fc82602`  
		Last Modified: Wed, 05 Sep 2018 19:34:36 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc0052e89883a045da66183deaa331824a1796405a49c88262a45a2f9531fab9`  
		Last Modified: Wed, 05 Sep 2018 19:34:36 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07d08fc6245f9adc6b66404de674cb33813844fa2edaf1fa860f5a90a0b6a682`  
		Last Modified: Wed, 05 Sep 2018 19:35:03 GMT  
		Size: 42.9 MB (42890365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:legacy` - linux; arm64 variant v8

```console
$ docker pull mediawiki@sha256:ecfd0b95efe312c23e9f082b416acfc52209853df92ea81ca14450c167754784
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.6 MB (219571085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31f6b747c5c7bf29431bf6dffdd6c1e2897d53e932ad0a6cfb443a2623b261a7`
-	Entrypoint: `["docker-php-entrypoint"]`
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
# Wed, 05 Sep 2018 16:31:38 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Wed, 05 Sep 2018 16:31:39 GMT
ENV PHP_VERSION=7.1.21
# Wed, 05 Sep 2018 16:31:40 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.21.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.21.tar.xz.asc/from/this/mirror
# Wed, 05 Sep 2018 16:31:41 GMT
ENV PHP_SHA256=d4da6dc69d3fe1e6b2b80f16b262f391037bfeb21213c966e026bd45d7ca2813 PHP_MD5=
# Wed, 05 Sep 2018 16:32:14 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 05 Sep 2018 16:32:15 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 05 Sep 2018 16:41:13 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 05 Sep 2018 16:41:14 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Wed, 05 Sep 2018 16:41:15 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 05 Sep 2018 16:41:16 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Wed, 05 Sep 2018 16:41:16 GMT
WORKDIR /var/www/html
# Wed, 05 Sep 2018 16:41:17 GMT
EXPOSE 80/tcp
# Wed, 05 Sep 2018 16:41:18 GMT
CMD ["apache2-foreground"]
# Thu, 06 Sep 2018 07:47:44 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 06 Sep 2018 07:51:30 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Thu, 06 Sep 2018 07:52:04 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Thu, 06 Sep 2018 07:52:10 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 06 Sep 2018 07:52:11 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Thu, 06 Sep 2018 07:52:34 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.30
# Thu, 06 Sep 2018 07:52:35 GMT
ENV MEDIAWIKI_BRANCH=REL1_30
# Thu, 06 Sep 2018 07:52:35 GMT
ENV MEDIAWIKI_VERSION=1.30.0
# Thu, 06 Sep 2018 07:52:36 GMT
ENV MEDIAWIKI_SHA512=ec4aeb08c18af0e52aaf99124d43cd357328221934d593d87f38da804a2f4a5b172a114659f87f6de58c2140ee05ae14ec6a270574f655e7780a950a51178643
# Thu, 06 Sep 2018 07:53:13 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
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
	-	`sha256:88cf48808400cf055d69cad81a977a2fa4824ff00df33b8c536a01e94ee7db1e`  
		Last Modified: Wed, 05 Sep 2018 19:19:21 GMT  
		Size: 12.6 MB (12575223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0517896b0fdef5a097004f33990363075cd692899b99ebc870e913c5255262f9`  
		Last Modified: Wed, 05 Sep 2018 19:19:19 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31dacce2b6cf83cc3503105584e572423b46fbc516299107548d50946422401f`  
		Last Modified: Wed, 05 Sep 2018 19:19:25 GMT  
		Size: 13.3 MB (13337482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99231c974e4c14f27b4e09851ce0326f44dc4c92d24432e7cc0723f4a540bd1b`  
		Last Modified: Wed, 05 Sep 2018 19:19:19 GMT  
		Size: 2.2 KB (2194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c647e3d775412d063d337f021c98811600257f1f75af56484639d822977746f2`  
		Last Modified: Wed, 05 Sep 2018 19:19:19 GMT  
		Size: 905.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c5c9b9b3a124c905667affb086f6140e9cc055135397527d9d79dce72d4e745`  
		Last Modified: Thu, 06 Sep 2018 08:05:01 GMT  
		Size: 54.1 MB (54130094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dff5cd08efa831e358de170e09889d4b9be879a37be9ad5856892e05d394d3b8`  
		Last Modified: Thu, 06 Sep 2018 08:04:37 GMT  
		Size: 1.6 MB (1594201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b68d55443371c263bdf1a59b3ce8a35a4daf07b6c6ac36a002ef3d7bb38344f9`  
		Last Modified: Thu, 06 Sep 2018 08:04:37 GMT  
		Size: 400.4 KB (400438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97a68589ab4098d36afc1cf3f1bf91842e1bbf4eec924ed9d5fee4bc0cb6aae3`  
		Last Modified: Thu, 06 Sep 2018 08:04:36 GMT  
		Size: 353.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85c12769e0981e60d6dffc0ed2934004bd5c94aced0d7e1f7b88f80c44f292ff`  
		Last Modified: Thu, 06 Sep 2018 08:04:38 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dea9c4abb0851b3542609fe5c7c2ddbd74cabf73c040aa3518e8bf0ce2025ec7`  
		Last Modified: Thu, 06 Sep 2018 08:05:06 GMT  
		Size: 42.9 MB (42889137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:legacy` - linux; 386

```console
$ docker pull mediawiki@sha256:1dcbdb8400660abdd68177f02c58543009761ac031818ee4367cc0c47e1d9cbe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.9 MB (240928862 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75b55b91401aa041eeb45b5b6b957656c359dad6ab7268dc5b4158159d905a3a`
-	Entrypoint: `["docker-php-entrypoint"]`
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
# Thu, 06 Sep 2018 17:30:22 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Thu, 06 Sep 2018 17:30:22 GMT
ENV PHP_VERSION=7.1.21
# Thu, 06 Sep 2018 17:30:22 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.21.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.21.tar.xz.asc/from/this/mirror
# Thu, 06 Sep 2018 17:30:22 GMT
ENV PHP_SHA256=d4da6dc69d3fe1e6b2b80f16b262f391037bfeb21213c966e026bd45d7ca2813 PHP_MD5=
# Thu, 06 Sep 2018 17:30:32 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Thu, 06 Sep 2018 17:30:32 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 08 Sep 2018 13:48:09 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 08 Sep 2018 13:48:10 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Sat, 08 Sep 2018 13:48:10 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 08 Sep 2018 13:48:10 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 08 Sep 2018 13:48:10 GMT
WORKDIR /var/www/html
# Sat, 08 Sep 2018 13:48:10 GMT
EXPOSE 80/tcp
# Sat, 08 Sep 2018 13:48:11 GMT
CMD ["apache2-foreground"]
# Sat, 08 Sep 2018 19:42:05 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 08 Sep 2018 19:43:38 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Sat, 08 Sep 2018 19:43:47 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Sat, 08 Sep 2018 19:43:48 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 08 Sep 2018 19:43:49 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 08 Sep 2018 19:43:49 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.30
# Sat, 08 Sep 2018 19:43:49 GMT
ENV MEDIAWIKI_BRANCH=REL1_30
# Sat, 08 Sep 2018 19:43:49 GMT
ENV MEDIAWIKI_VERSION=1.30.0
# Sat, 08 Sep 2018 19:43:49 GMT
ENV MEDIAWIKI_SHA512=ec4aeb08c18af0e52aaf99124d43cd357328221934d593d87f38da804a2f4a5b172a114659f87f6de58c2140ee05ae14ec6a270574f655e7780a950a51178643
# Sat, 08 Sep 2018 19:43:59 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
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
	-	`sha256:d0eebc55222bbda15845d67e171a4a0fd485a854911abdce722fb310003c09d9`  
		Last Modified: Thu, 06 Sep 2018 21:32:27 GMT  
		Size: 12.6 MB (12576100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41ee42b1abe560db3bd89f86aecdf37510c66406c7e236a23947e47e07bf78e7`  
		Last Modified: Thu, 06 Sep 2018 21:32:28 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4850afa0ee8126bcc02413480b7afb7c3228cbe4ae498bbc92487436706bd4dd`  
		Last Modified: Sat, 08 Sep 2018 17:38:10 GMT  
		Size: 14.7 MB (14729569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f4998dcc0f297da63f2fc9c167919bd805e4764674990e75963bb9608fbdf03`  
		Last Modified: Sat, 08 Sep 2018 17:38:06 GMT  
		Size: 2.2 KB (2195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49cfb5cd24d88753d793d2d74b7068eefb026348b2ba12100edd5770e8106b30`  
		Last Modified: Sat, 08 Sep 2018 17:38:06 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f68f8e76f1e1527395692681d89347c44087e324d6fabc283bd92746b420ba7`  
		Last Modified: Sat, 08 Sep 2018 19:47:20 GMT  
		Size: 56.5 MB (56494166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2590bc7d4cdd6715e75d6087b6d1cc60d289a3462762c0e64d9c99cbbe8ee7c7`  
		Last Modified: Sat, 08 Sep 2018 19:47:03 GMT  
		Size: 1.7 MB (1664275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d1a18577a531873d95434430b7bb9cef4143a7f370097238a17d0f48dbf329`  
		Last Modified: Sat, 08 Sep 2018 19:47:03 GMT  
		Size: 395.0 KB (395000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9beaa1b74745cff86f824378a20ce123e6afe239ddabcf57000042e09329b9b0`  
		Last Modified: Sat, 08 Sep 2018 19:47:03 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c42d75855414b6ebeb02008e67f63fd38d6f4cdf3eb55aa63cf709757a9cc4c`  
		Last Modified: Sat, 08 Sep 2018 19:47:03 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74f50333e43a18e4b454fe0aa44c87205ee21495e7477ca91deeaccdce3384ab`  
		Last Modified: Sat, 08 Sep 2018 19:47:28 GMT  
		Size: 42.9 MB (42889135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:legacy` - linux; ppc64le

```console
$ docker pull mediawiki@sha256:ea36d68ab45ca61876fa9d59f38b2ebbcf1db15aa3d61f746fe1f4f6dc0de70f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.4 MB (230382781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee603562d33e59246dc1f2894a4d54cefbab15f2762040cd571bda0f410b38c9`
-	Entrypoint: `["docker-php-entrypoint"]`
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
# Wed, 05 Sep 2018 11:20:05 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Wed, 05 Sep 2018 11:20:06 GMT
ENV PHP_VERSION=7.1.21
# Wed, 05 Sep 2018 11:20:07 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.21.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.21.tar.xz.asc/from/this/mirror
# Wed, 05 Sep 2018 11:20:07 GMT
ENV PHP_SHA256=d4da6dc69d3fe1e6b2b80f16b262f391037bfeb21213c966e026bd45d7ca2813 PHP_MD5=
# Wed, 05 Sep 2018 11:20:40 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 05 Sep 2018 11:20:41 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 08 Sep 2018 11:48:22 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 08 Sep 2018 11:48:25 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Sat, 08 Sep 2018 11:48:27 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 08 Sep 2018 11:48:28 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 08 Sep 2018 11:48:29 GMT
WORKDIR /var/www/html
# Sat, 08 Sep 2018 11:48:30 GMT
EXPOSE 80/tcp
# Sat, 08 Sep 2018 11:48:32 GMT
CMD ["apache2-foreground"]
# Sat, 08 Sep 2018 15:31:24 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 08 Sep 2018 15:33:42 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Sat, 08 Sep 2018 15:33:58 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Sat, 08 Sep 2018 15:34:02 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 08 Sep 2018 15:34:04 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 08 Sep 2018 15:34:04 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.30
# Sat, 08 Sep 2018 15:34:05 GMT
ENV MEDIAWIKI_BRANCH=REL1_30
# Sat, 08 Sep 2018 15:34:06 GMT
ENV MEDIAWIKI_VERSION=1.30.0
# Sat, 08 Sep 2018 15:34:07 GMT
ENV MEDIAWIKI_SHA512=ec4aeb08c18af0e52aaf99124d43cd357328221934d593d87f38da804a2f4a5b172a114659f87f6de58c2140ee05ae14ec6a270574f655e7780a950a51178643
# Sat, 08 Sep 2018 15:34:34 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
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
	-	`sha256:be6bc1eb7553104bdb7d8b04313721337fe37f51e5028281f8e26f047e3da6bc`  
		Last Modified: Wed, 05 Sep 2018 12:45:58 GMT  
		Size: 12.6 MB (12575341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48d878a0a2cf9450def82ff23383f0078e8c0852fe23fbc46764ed8e350caba5`  
		Last Modified: Wed, 05 Sep 2018 12:45:56 GMT  
		Size: 502.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbac51f2702913ea13573d76bac48c76dc582643dedc38796c33ad8dc31ec5ad`  
		Last Modified: Sat, 08 Sep 2018 14:15:45 GMT  
		Size: 14.4 MB (14373625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b65d6ca5d3606e82184e19fa3cdf942614cc0021a5b9d01b8376fa230b154882`  
		Last Modified: Sat, 08 Sep 2018 14:15:38 GMT  
		Size: 2.2 KB (2195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:988e282ce426c7e5e1195a332158c32a1981a9d3066a9874d20529f6ee0e7bf0`  
		Last Modified: Sat, 08 Sep 2018 14:15:36 GMT  
		Size: 903.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bd5004b4ba58255d3c7878e8b91f1fcdc9834c9f33e0db5214a75d892d0f345`  
		Last Modified: Sat, 08 Sep 2018 15:40:22 GMT  
		Size: 56.6 MB (56589676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19f8c152a5beea02695d3631d74f50cd91c3835c1b2927d1f70c9eca29ce41ca`  
		Last Modified: Sat, 08 Sep 2018 15:40:01 GMT  
		Size: 1.6 MB (1643511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b3cf04149edf01780486b765b770d029efd30e4bb2485ed30d777c956043249`  
		Last Modified: Sat, 08 Sep 2018 15:40:00 GMT  
		Size: 404.8 KB (404798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5bff01f892ce9d4b273efcf652c0aaa0f27f243d7fc596615b05800e4cd7a7d`  
		Last Modified: Sat, 08 Sep 2018 15:39:59 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6762787507c9783fe3d75abb920e6ab8cdc40ea4e724053f9a54b0fe196569ca`  
		Last Modified: Sat, 08 Sep 2018 15:40:00 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb52d05a4ebb46982298b4c2a9fad7dd13db641646e911284814236693a8a1a7`  
		Last Modified: Sat, 08 Sep 2018 15:40:18 GMT  
		Size: 42.9 MB (42890366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mediawiki:lts`

```console
$ docker pull mediawiki@sha256:d30cdc67ee37bcf8c439c2e57d3a7d529c64bd313a5bb7d79b517cb242e9a653
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
$ docker pull mediawiki@sha256:c5975d67de0a800a18cbe9ac2772bcd5ae2432dd9180539fc7b0ec3036d5fc18
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.9 MB (223895786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ec9905da75f323d895186340a14e77931d318351d648f0d1f7423e8b07ec7bb`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:34 GMT
ADD file:e6ca98733431f75e97eb09758ba64065d213d51bd2070a95cf15f2ff5adccfc4 in / 
# Tue, 04 Sep 2018 21:21:34 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 01:55:39 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 05 Sep 2018 01:55:39 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 05 Sep 2018 01:56:06 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 05 Sep 2018 01:56:06 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 05 Sep 2018 01:56:07 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 05 Sep 2018 02:05:18 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 02:05:18 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 05 Sep 2018 02:05:18 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 05 Sep 2018 02:05:19 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 05 Sep 2018 02:05:20 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 05 Sep 2018 02:05:21 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 05 Sep 2018 02:05:21 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 05 Sep 2018 02:05:22 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 05 Sep 2018 02:05:22 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 05 Sep 2018 02:05:22 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 05 Sep 2018 02:05:22 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 05 Sep 2018 02:05:23 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 05 Sep 2018 06:33:58 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 05 Sep 2018 06:33:58 GMT
ENV PHP_VERSION=7.0.31
# Wed, 05 Sep 2018 06:33:59 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.31.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.31.tar.xz.asc/from/this/mirror
# Wed, 05 Sep 2018 06:33:59 GMT
ENV PHP_SHA256=68f57b3f4587071fb54a620cb83a1cfb3f0bd4ee071e0ce3bf7046a5f2d2f3cf PHP_MD5=
# Wed, 05 Sep 2018 06:34:07 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 05 Sep 2018 06:34:08 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 07 Sep 2018 23:08:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 07 Sep 2018 23:08:42 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Fri, 07 Sep 2018 23:08:42 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 07 Sep 2018 23:08:42 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 07 Sep 2018 23:08:42 GMT
WORKDIR /var/www/html
# Fri, 07 Sep 2018 23:08:43 GMT
EXPOSE 80/tcp
# Fri, 07 Sep 2018 23:08:43 GMT
CMD ["apache2-foreground"]
# Sat, 08 Sep 2018 02:03:48 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 08 Sep 2018 02:05:19 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Sat, 08 Sep 2018 02:05:28 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Sat, 08 Sep 2018 02:05:29 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 08 Sep 2018 02:05:29 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 08 Sep 2018 02:05:29 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.27
# Sat, 08 Sep 2018 02:05:30 GMT
ENV MEDIAWIKI_BRANCH=REL1_27
# Sat, 08 Sep 2018 02:05:30 GMT
ENV MEDIAWIKI_VERSION=1.27.4
# Sat, 08 Sep 2018 02:05:30 GMT
ENV MEDIAWIKI_SHA512=1a5b82a55c3703db9905a9098922a6008176ae2d53093bd651eb4e5638dc62861f40fe6ae523165f5b1970e8f28dff8ccfa51a5ebdaeb753e6d6e66eaf3c0dd1
# Sat, 08 Sep 2018 02:05:36 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:802b00ed6f79f48e6a5f44ecbcaf43563d6077aaecb565eee1dfc615c0b18c00`  
		Last Modified: Tue, 04 Sep 2018 21:25:45 GMT  
		Size: 22.5 MB (22485965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59f5a5a895f85ce514e7f66d3715d42e54b6735957b02a2406d3625dd75a2185`  
		Last Modified: Wed, 05 Sep 2018 09:03:28 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6898b2dbcfeb5f9532f39c5906364d294c90c4fa0c942068e0ba27bdcd73029b`  
		Last Modified: Wed, 05 Sep 2018 09:03:45 GMT  
		Size: 67.4 MB (67428958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e0903aaa47ebca2076b2f4d52c1118efa2fd755741247b509ced1085f5c1a72`  
		Last Modified: Wed, 05 Sep 2018 09:03:27 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2961af1e196a66c727ebfa1eaed81c207081b853d8df37106f472582d12dd9db`  
		Last Modified: Wed, 05 Sep 2018 09:04:21 GMT  
		Size: 17.1 MB (17127406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71f7016f79a0218a691e7032c308b38d0de98471d48a19f98b7c1db479330f47`  
		Last Modified: Wed, 05 Sep 2018 09:04:17 GMT  
		Size: 1.2 KB (1242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e1a48e5719ce319ff7b5a20b75a48702ec44e17c13abe3d630327ce03e760a8`  
		Last Modified: Wed, 05 Sep 2018 09:04:17 GMT  
		Size: 428.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ae5291984f364551ae9d9bd0a87648dd96aa88d893da349821a9f66acdb8da8`  
		Last Modified: Wed, 05 Sep 2018 09:04:16 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:725b65166f31691ad826144b84fe7f14622a67486d20d6469ec3be96955ea249`  
		Last Modified: Wed, 05 Sep 2018 09:04:16 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d45206e9f6b631f9b0c829f5f0a0beea4d17e4015df63107345a1f7ecc82591f`  
		Last Modified: Wed, 05 Sep 2018 09:16:40 GMT  
		Size: 12.4 MB (12379143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d171671ace32bdf904ba6ef2e48e4dc804c60d726d6ef09a0639d5c8d47a90bf`  
		Last Modified: Wed, 05 Sep 2018 09:16:39 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e580cc39a4d1e7f64bf252641f6010b41d3360139488e07e2cc740d8bcd1019`  
		Last Modified: Sat, 08 Sep 2018 01:26:51 GMT  
		Size: 14.3 MB (14281545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a030f0f9c2b35b3daf297a5852ed5d070849e9a26a866b98650c3db7165ea53`  
		Last Modified: Sat, 08 Sep 2018 01:26:48 GMT  
		Size: 2.2 KB (2194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:267967602263fa85ae417d5bb4855b2cfa2d9ddd3bcfaa6ab655bb82ad0a081d`  
		Last Modified: Sat, 08 Sep 2018 01:26:49 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9926507175131e2598008cecb2f66b13ba339b21f329aa14953cdb33cd167811`  
		Last Modified: Sat, 08 Sep 2018 02:07:17 GMT  
		Size: 56.3 MB (56337471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff716fdd9c8a441e1feae976e3131bf16482ee858c3b4af9f1f93c3ed031cb3a`  
		Last Modified: Sat, 08 Sep 2018 02:07:03 GMT  
		Size: 1.5 MB (1549026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56de73491e4509b0af742d7044c84c0971e98f4490b3974d50f308d78bb42efe`  
		Last Modified: Sat, 08 Sep 2018 02:07:04 GMT  
		Size: 400.4 KB (400360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de307dde21a388fb7dacff2a40a381cbfed51ae84ba9a64d0dc959ccc1686166`  
		Last Modified: Sat, 08 Sep 2018 02:07:03 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acb0e671dde6cff90ba5d051ab2d61d2b6aa851afbf7728f62e107bc9048070f`  
		Last Modified: Sat, 08 Sep 2018 02:07:03 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b0820017d2f3359a9461cbeed2bd7d319fae1ae67af111b98fa2d516889e2f6`  
		Last Modified: Sat, 08 Sep 2018 02:07:16 GMT  
		Size: 31.9 MB (31899036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:lts` - linux; arm variant v5

```console
$ docker pull mediawiki@sha256:b035e9c4eaefeda15c9d10c7d909c9b2c31adf82ff6213998fcf0a1103ac9cc7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.1 MB (209062313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82c3a41032298f506818d5c9911c8c3e80ffd2761704a92d95e31313d44de97b`
-	Entrypoint: `["docker-php-entrypoint"]`
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
# Wed, 05 Sep 2018 11:00:28 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 05 Sep 2018 11:00:29 GMT
ENV PHP_VERSION=7.0.31
# Wed, 05 Sep 2018 11:00:29 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.31.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.31.tar.xz.asc/from/this/mirror
# Wed, 05 Sep 2018 11:00:29 GMT
ENV PHP_SHA256=68f57b3f4587071fb54a620cb83a1cfb3f0bd4ee071e0ce3bf7046a5f2d2f3cf PHP_MD5=
# Wed, 05 Sep 2018 11:00:43 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 05 Sep 2018 11:00:44 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 08 Sep 2018 10:19:03 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 08 Sep 2018 10:19:04 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Sat, 08 Sep 2018 10:19:04 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 08 Sep 2018 10:19:05 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 08 Sep 2018 10:19:05 GMT
WORKDIR /var/www/html
# Sat, 08 Sep 2018 10:19:05 GMT
EXPOSE 80/tcp
# Sat, 08 Sep 2018 10:19:05 GMT
CMD ["apache2-foreground"]
# Sat, 08 Sep 2018 13:14:55 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 08 Sep 2018 13:17:36 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Sat, 08 Sep 2018 13:17:51 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Sat, 08 Sep 2018 13:17:52 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 08 Sep 2018 13:17:53 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 08 Sep 2018 13:17:53 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.27
# Sat, 08 Sep 2018 13:17:53 GMT
ENV MEDIAWIKI_BRANCH=REL1_27
# Sat, 08 Sep 2018 13:17:54 GMT
ENV MEDIAWIKI_VERSION=1.27.4
# Sat, 08 Sep 2018 13:17:54 GMT
ENV MEDIAWIKI_SHA512=1a5b82a55c3703db9905a9098922a6008176ae2d53093bd651eb4e5638dc62861f40fe6ae523165f5b1970e8f28dff8ccfa51a5ebdaeb753e6d6e66eaf3c0dd1
# Sat, 08 Sep 2018 13:18:07 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
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
	-	`sha256:91a1a8733897536f17aef0f525cfd31d6ab102147b5d3d99ca35f44155c274b3`  
		Last Modified: Wed, 05 Sep 2018 12:30:56 GMT  
		Size: 12.4 MB (12377273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:462cdba7610b66bee5ecb88f355bbf31c2a51102f16db58b35454ae55c16393e`  
		Last Modified: Wed, 05 Sep 2018 12:30:54 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac8bfbc164eee1a8603e4285658f50e513c554fab33ed294224adecea078da47`  
		Last Modified: Sat, 08 Sep 2018 11:39:35 GMT  
		Size: 13.7 MB (13658011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cbb836a3ed1dd1e73c5ca3ca3203012a04cf68c19fb443f6f585cb4650b281a`  
		Last Modified: Sat, 08 Sep 2018 11:39:30 GMT  
		Size: 2.2 KB (2195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b9dc06e97d5d7e9567b4ecbd432243d7ebe75666ca5646c6b8e8d29902b556c`  
		Last Modified: Sat, 08 Sep 2018 11:39:30 GMT  
		Size: 906.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b09a08fb1f6c126b4df443690eedecd7ab3ddcf9eefe99b1c211a608ab74ac5`  
		Last Modified: Sat, 08 Sep 2018 13:20:57 GMT  
		Size: 54.0 MB (53981758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:263a8e2d8fde4b8ec0136e7a4617ffca0545ef641eac0a9777015c43d0f729bf`  
		Last Modified: Sat, 08 Sep 2018 13:20:39 GMT  
		Size: 1.5 MB (1485557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795b8518f4408bc93b2f8f557da93b442212c4d7e06ace00426ccbfa113eabc9`  
		Last Modified: Sat, 08 Sep 2018 13:20:39 GMT  
		Size: 392.1 KB (392125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00b2441df4548a26fbfde7922931fe1990c17676a5b58fd41d8653e191dd4789`  
		Last Modified: Sat, 08 Sep 2018 13:20:39 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dfb8639bc867cc790450f129ee3a7873d59d5e1b668f6281c252998dbb59a37`  
		Last Modified: Sat, 08 Sep 2018 13:20:40 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4a0ce71e841460131879055edd0b2e1a04b899de66fdfb95374333facbfbcc7`  
		Last Modified: Sat, 08 Sep 2018 13:20:57 GMT  
		Size: 31.9 MB (31899613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:lts` - linux; arm variant v7

```console
$ docker pull mediawiki@sha256:ce40cc29b5f073d13313e51f88d6e9615a83db17216b88e744972a463aa168f7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.2 MB (199190184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31b2b834d06950378ba3f286b51760ab62c7c2471ac248fb76d6a2a66172e1fc`
-	Entrypoint: `["docker-php-entrypoint"]`
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
# Wed, 05 Sep 2018 15:19:29 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 05 Sep 2018 15:19:29 GMT
ENV PHP_VERSION=7.0.31
# Wed, 05 Sep 2018 15:19:30 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.31.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.31.tar.xz.asc/from/this/mirror
# Wed, 05 Sep 2018 15:19:30 GMT
ENV PHP_SHA256=68f57b3f4587071fb54a620cb83a1cfb3f0bd4ee071e0ce3bf7046a5f2d2f3cf PHP_MD5=
# Wed, 05 Sep 2018 15:19:42 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 05 Sep 2018 15:19:42 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 05 Sep 2018 15:23:11 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 05 Sep 2018 15:23:12 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Wed, 05 Sep 2018 15:23:13 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 05 Sep 2018 15:23:13 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Wed, 05 Sep 2018 15:23:14 GMT
WORKDIR /var/www/html
# Wed, 05 Sep 2018 15:23:14 GMT
EXPOSE 80/tcp
# Wed, 05 Sep 2018 15:23:14 GMT
CMD ["apache2-foreground"]
# Wed, 05 Sep 2018 19:30:07 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 05 Sep 2018 19:32:27 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Wed, 05 Sep 2018 19:32:44 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Wed, 05 Sep 2018 19:32:47 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 05 Sep 2018 19:32:49 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Wed, 05 Sep 2018 19:32:49 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.27
# Wed, 05 Sep 2018 19:32:49 GMT
ENV MEDIAWIKI_BRANCH=REL1_27
# Wed, 05 Sep 2018 19:32:50 GMT
ENV MEDIAWIKI_VERSION=1.27.4
# Wed, 05 Sep 2018 19:32:50 GMT
ENV MEDIAWIKI_SHA512=1a5b82a55c3703db9905a9098922a6008176ae2d53093bd651eb4e5638dc62861f40fe6ae523165f5b1970e8f28dff8ccfa51a5ebdaeb753e6d6e66eaf3c0dd1
# Wed, 05 Sep 2018 19:33:02 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
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
	-	`sha256:8ec768edfa025b2365886167f3d46f4bf66c792665528b94c29638d063d51f54`  
		Last Modified: Wed, 05 Sep 2018 16:54:17 GMT  
		Size: 12.4 MB (12377217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fa5d3ff8f907aeb2fd421291757d6e79d7ac1bf28bb376b4334199017546254`  
		Last Modified: Wed, 05 Sep 2018 16:54:17 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5851b4a415848edf17ca13ac4da8db21113573b14923eefcdd0fd7823539f627`  
		Last Modified: Wed, 05 Sep 2018 16:54:19 GMT  
		Size: 12.5 MB (12471484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e7a3ddb01666cb80f02ced911f5337a16fddf093cb22fc607cd951a43d1bc73`  
		Last Modified: Wed, 05 Sep 2018 16:54:15 GMT  
		Size: 2.2 KB (2191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27aafb3fa8313e40c1aaacb8876be5c9bb096df4fb7fa7210c52ce492bc07a6f`  
		Last Modified: Wed, 05 Sep 2018 16:54:16 GMT  
		Size: 900.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9549c26a02d4798242db1822177430faa48d4736b52a1da7bd29d9938881b837`  
		Last Modified: Wed, 05 Sep 2018 19:35:51 GMT  
		Size: 51.6 MB (51605091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68380715504e481008e168d6129f70502acb65576b0f6937ca4c2200278db3e6`  
		Last Modified: Wed, 05 Sep 2018 19:35:34 GMT  
		Size: 1.4 MB (1447284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fc51b5574fd2300c24258de777862ca873fc1ac4b19abba8d193f1e6a72e88e`  
		Last Modified: Wed, 05 Sep 2018 19:35:35 GMT  
		Size: 387.3 KB (387278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4287df713a778635d2efd9805f5cb814f1f386d7992f034812a33527729c7f86`  
		Last Modified: Wed, 05 Sep 2018 19:35:34 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4344b7c26eabad872b64d5d4ba006b5c5534a4142d2ac36eedd5230b41e3b76a`  
		Last Modified: Wed, 05 Sep 2018 19:35:34 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a107f40cd7847b9d3fd983a2f5823b282c4662dd2cc3defe71b208c88dcf68ce`  
		Last Modified: Wed, 05 Sep 2018 19:35:54 GMT  
		Size: 31.9 MB (31899610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:lts` - linux; arm64 variant v8

```console
$ docker pull mediawiki@sha256:2c9e9a6ac9415ff7622244d5f1900a84e01374f9d34f570b77f3456610e223a4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.0 MB (207982214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11c6baa8bd1309f5feca8be77919e36a8a75db80b44a84fa511259dcf6dd42c3`
-	Entrypoint: `["docker-php-entrypoint"]`
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
# Wed, 05 Sep 2018 17:20:15 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 05 Sep 2018 17:20:16 GMT
ENV PHP_VERSION=7.0.31
# Wed, 05 Sep 2018 17:20:17 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.31.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.31.tar.xz.asc/from/this/mirror
# Wed, 05 Sep 2018 17:20:17 GMT
ENV PHP_SHA256=68f57b3f4587071fb54a620cb83a1cfb3f0bd4ee071e0ce3bf7046a5f2d2f3cf PHP_MD5=
# Wed, 05 Sep 2018 17:20:48 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 05 Sep 2018 17:20:49 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 05 Sep 2018 17:28:35 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 05 Sep 2018 17:28:38 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Wed, 05 Sep 2018 17:28:39 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 05 Sep 2018 17:28:40 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Wed, 05 Sep 2018 17:28:42 GMT
WORKDIR /var/www/html
# Wed, 05 Sep 2018 17:28:43 GMT
EXPOSE 80/tcp
# Wed, 05 Sep 2018 17:28:44 GMT
CMD ["apache2-foreground"]
# Thu, 06 Sep 2018 07:55:26 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 06 Sep 2018 07:58:55 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Thu, 06 Sep 2018 07:59:26 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Thu, 06 Sep 2018 07:59:32 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 06 Sep 2018 07:59:34 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Thu, 06 Sep 2018 07:59:56 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.27
# Thu, 06 Sep 2018 07:59:57 GMT
ENV MEDIAWIKI_BRANCH=REL1_27
# Thu, 06 Sep 2018 07:59:57 GMT
ENV MEDIAWIKI_VERSION=1.27.4
# Thu, 06 Sep 2018 07:59:58 GMT
ENV MEDIAWIKI_SHA512=1a5b82a55c3703db9905a9098922a6008176ae2d53093bd651eb4e5638dc62861f40fe6ae523165f5b1970e8f28dff8ccfa51a5ebdaeb753e6d6e66eaf3c0dd1
# Thu, 06 Sep 2018 08:00:10 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
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
	-	`sha256:40bdda2310e01ef69e1e73035d25c251a552ee9e557ace3e94cbc6b37f338d40`  
		Last Modified: Wed, 05 Sep 2018 19:28:26 GMT  
		Size: 12.4 MB (12377556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59e789b6a29ca1c99c3c691a00a8eb3f8c2e0da507d22f940f2ac7e6f814ac19`  
		Last Modified: Wed, 05 Sep 2018 19:28:23 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c88ca3472cac5a5d2f0e65524067ebcdeeb7ef92ccf3459abaa55c82b90c4db`  
		Last Modified: Wed, 05 Sep 2018 19:28:28 GMT  
		Size: 13.0 MB (13049339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b39619abf39b89cd2ffbe20fbb7f8b4e3f27763db3c288ce4b0e0368297be791`  
		Last Modified: Wed, 05 Sep 2018 19:28:23 GMT  
		Size: 2.2 KB (2192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:600da0744246363270e2c7f7b1d687a4e97f616b6f134aaf92ed4723a46e8c5c`  
		Last Modified: Wed, 05 Sep 2018 19:28:23 GMT  
		Size: 905.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1971c04bc79f31d94b2ce9ab2cd641009661bf30c47b81008d17b55c1d1edfd3`  
		Last Modified: Thu, 06 Sep 2018 08:07:42 GMT  
		Size: 54.1 MB (54130123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3594c804bbaa31b402540cc9cc5c8dfafad9ae2327303f37ce325a2584f578ff`  
		Last Modified: Thu, 06 Sep 2018 08:07:18 GMT  
		Size: 1.5 MB (1486674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cedf4fc81ad23cf040df67d126206a699afe5022b0c8111709e36e988ef22348`  
		Last Modified: Thu, 06 Sep 2018 08:07:18 GMT  
		Size: 395.0 KB (394980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bf559f896c39f581f845181b406a58619f4c75dce5409bf9e5c7b88285cffbd`  
		Last Modified: Thu, 06 Sep 2018 08:07:18 GMT  
		Size: 354.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fac912ab41190fa9636fbd8c1bec9c8bd054b4e17a5013c41d0322081afcaee`  
		Last Modified: Thu, 06 Sep 2018 08:07:17 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b712c9cd8d14ed13adebb3f2c84644bb444f312dc66642fb6753045ec1ce51ba`  
		Last Modified: Thu, 06 Sep 2018 08:07:38 GMT  
		Size: 31.9 MB (31899035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:lts` - linux; 386

```console
$ docker pull mediawiki@sha256:a36d9a9fca9b4fb5348144c2142a34bf0f290d081a801b1fb88271a4bdba240d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.3 MB (229288445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c788e9ec8dfb061bd56875896f3139bbd301a5b8f4a753b0322438334fb62d9`
-	Entrypoint: `["docker-php-entrypoint"]`
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
# Thu, 06 Sep 2018 18:59:33 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Thu, 06 Sep 2018 18:59:34 GMT
ENV PHP_VERSION=7.0.31
# Thu, 06 Sep 2018 18:59:34 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.31.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.31.tar.xz.asc/from/this/mirror
# Thu, 06 Sep 2018 18:59:34 GMT
ENV PHP_SHA256=68f57b3f4587071fb54a620cb83a1cfb3f0bd4ee071e0ce3bf7046a5f2d2f3cf PHP_MD5=
# Thu, 06 Sep 2018 18:59:44 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Thu, 06 Sep 2018 18:59:44 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 08 Sep 2018 15:12:36 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 08 Sep 2018 15:12:36 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Sat, 08 Sep 2018 15:12:36 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 08 Sep 2018 15:12:37 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 08 Sep 2018 15:12:37 GMT
WORKDIR /var/www/html
# Sat, 08 Sep 2018 15:12:37 GMT
EXPOSE 80/tcp
# Sat, 08 Sep 2018 15:12:37 GMT
CMD ["apache2-foreground"]
# Sat, 08 Sep 2018 19:44:22 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 08 Sep 2018 19:45:48 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Sat, 08 Sep 2018 19:46:01 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Sat, 08 Sep 2018 19:46:01 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 08 Sep 2018 19:46:02 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 08 Sep 2018 19:46:02 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.27
# Sat, 08 Sep 2018 19:46:02 GMT
ENV MEDIAWIKI_BRANCH=REL1_27
# Sat, 08 Sep 2018 19:46:03 GMT
ENV MEDIAWIKI_VERSION=1.27.4
# Sat, 08 Sep 2018 19:46:03 GMT
ENV MEDIAWIKI_SHA512=1a5b82a55c3703db9905a9098922a6008176ae2d53093bd651eb4e5638dc62861f40fe6ae523165f5b1970e8f28dff8ccfa51a5ebdaeb753e6d6e66eaf3c0dd1
# Sat, 08 Sep 2018 19:46:10 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
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
	-	`sha256:9c28852f3d7cb507690b2f5f48878f7de2ec50e82e9891644dc6ffb0c5f35b54`  
		Last Modified: Thu, 06 Sep 2018 21:36:56 GMT  
		Size: 12.4 MB (12378601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e999e24ce0fced858fb6db4dc0163b3eb68c41239d56db9d8e42ea650f3fd28`  
		Last Modified: Thu, 06 Sep 2018 21:36:54 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d67e91ef5812bcc374583d52f6919a7ef3c37deec6487bb2df623c1efd3fe2d`  
		Last Modified: Sat, 08 Sep 2018 17:42:54 GMT  
		Size: 14.4 MB (14393849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d38e1bb491bb2886ca38f5eed36d88bd0b07ae9a74c85896b9b74e4333cfb621`  
		Last Modified: Sat, 08 Sep 2018 17:42:50 GMT  
		Size: 2.2 KB (2196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba564c0a8b892d126735fbf101bdf6b802b016798ef062a74023c347891a4609`  
		Last Modified: Sat, 08 Sep 2018 17:42:50 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5056d689e35fc213034c62340f3582b2356b18f6d9aa6a666fc831c075eef60e`  
		Last Modified: Sat, 08 Sep 2018 19:48:02 GMT  
		Size: 56.5 MB (56494287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fefa8f114df85f3226747b2f9af1076b5ef083919aa80db84786767b6d3e2a0d`  
		Last Modified: Sat, 08 Sep 2018 19:47:45 GMT  
		Size: 1.6 MB (1552696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc159a9ccf565045c6ff09f9f4f049b0c51813750ffec5f45c42fd42b4384e80`  
		Last Modified: Sat, 08 Sep 2018 19:47:44 GMT  
		Size: 389.4 KB (389356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0072b23200d31107698b635662f58905b768fa70d8b52fa707e2cfdb34460a22`  
		Last Modified: Sat, 08 Sep 2018 19:47:44 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e71557fba827b5e5064e8339be0590983ce1d602a0887d687ed274b0bc2b6f5d`  
		Last Modified: Sat, 08 Sep 2018 19:47:45 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fde42ae6cf3715f745a803a7126c4db10bb6d2dcb18a5d912b1b6a4d9c1af961`  
		Last Modified: Sat, 08 Sep 2018 19:48:01 GMT  
		Size: 31.9 MB (31899040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:lts` - linux; ppc64le

```console
$ docker pull mediawiki@sha256:6698039299c1b21e17ffd5d77104e09ccb68530903b6be3a5166f9eb077c8314
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.8 MB (218771840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80b7e525600db94737e3060585cf408bf7dbc8e80642270334f8bc9da9b65d73`
-	Entrypoint: `["docker-php-entrypoint"]`
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
# Wed, 05 Sep 2018 11:45:01 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 05 Sep 2018 11:45:04 GMT
ENV PHP_VERSION=7.0.31
# Wed, 05 Sep 2018 11:45:04 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.31.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.31.tar.xz.asc/from/this/mirror
# Wed, 05 Sep 2018 11:45:06 GMT
ENV PHP_SHA256=68f57b3f4587071fb54a620cb83a1cfb3f0bd4ee071e0ce3bf7046a5f2d2f3cf PHP_MD5=
# Wed, 05 Sep 2018 11:45:59 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 05 Sep 2018 11:46:02 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 08 Sep 2018 12:35:34 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 08 Sep 2018 12:35:35 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Sat, 08 Sep 2018 12:35:36 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 08 Sep 2018 12:35:37 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 08 Sep 2018 12:35:38 GMT
WORKDIR /var/www/html
# Sat, 08 Sep 2018 12:35:39 GMT
EXPOSE 80/tcp
# Sat, 08 Sep 2018 12:35:40 GMT
CMD ["apache2-foreground"]
# Sat, 08 Sep 2018 15:35:37 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 08 Sep 2018 15:37:41 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Sat, 08 Sep 2018 15:37:57 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Sat, 08 Sep 2018 15:38:00 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 08 Sep 2018 15:38:02 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 08 Sep 2018 15:38:02 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.27
# Sat, 08 Sep 2018 15:38:03 GMT
ENV MEDIAWIKI_BRANCH=REL1_27
# Sat, 08 Sep 2018 15:38:04 GMT
ENV MEDIAWIKI_VERSION=1.27.4
# Sat, 08 Sep 2018 15:38:04 GMT
ENV MEDIAWIKI_SHA512=1a5b82a55c3703db9905a9098922a6008176ae2d53093bd651eb4e5638dc62861f40fe6ae523165f5b1970e8f28dff8ccfa51a5ebdaeb753e6d6e66eaf3c0dd1
# Sat, 08 Sep 2018 15:38:25 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
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
	-	`sha256:2d12381b23ab7afc53a94cbb6447016d9f48d7f711e3fe32050b20aec8048699`  
		Last Modified: Wed, 05 Sep 2018 12:49:53 GMT  
		Size: 12.4 MB (12377733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfbc134d79d65ddd242dae7e6806625c0cfe05fce2c9b1667d9002ba18071050`  
		Last Modified: Wed, 05 Sep 2018 12:49:50 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4df47a6c26dcdddd2617dba4da0c31dfce89006724f6e1863d278ea4eb6438d`  
		Last Modified: Sat, 08 Sep 2018 14:25:59 GMT  
		Size: 14.1 MB (14067995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6482cd36f125cdfafe6a547d2f79f3632c10e004b5b7859125a97a6054c97ac`  
		Last Modified: Sat, 08 Sep 2018 14:25:53 GMT  
		Size: 2.2 KB (2193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:697706714639cfc788de240960102a33c915e19bef90eded1e824749b7fe93a0`  
		Last Modified: Sat, 08 Sep 2018 14:25:52 GMT  
		Size: 906.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bea685a0101ea5083f0bfe781c019d6cf657d6e430f84e243e0f1ae2c3fc637a`  
		Last Modified: Sat, 08 Sep 2018 15:41:27 GMT  
		Size: 56.6 MB (56589749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eacc7a8a5ab6df5cad04e07ead4d19c0cbb4a20091a211ae067b6ad5b8b0306e`  
		Last Modified: Sat, 08 Sep 2018 15:41:03 GMT  
		Size: 1.5 MB (1530912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18ad50596c567527d0cee6c34f5284747af4216774ff2312d6df47427f53c80d`  
		Last Modified: Sat, 08 Sep 2018 15:41:02 GMT  
		Size: 400.4 KB (400372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a140ab7824a4e0742b79468910f2bebc0899f1b1bbc2c5db862f143a7240553`  
		Last Modified: Sat, 08 Sep 2018 15:41:02 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1e035b0886debba4509f3165b17bc5c532882fd82e834edb3515bfaff353cb7`  
		Last Modified: Sat, 08 Sep 2018 15:41:02 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e345a3ddac7984e0f2de069f21492d83262267063b0f0514ebbfabd274b7cdb8`  
		Last Modified: Sat, 08 Sep 2018 15:41:15 GMT  
		Size: 31.9 MB (31899614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mediawiki:stable`

```console
$ docker pull mediawiki@sha256:7c7ad97c2607e0c0b7eb3ac6a6048965afeaf748b69a46135d4a51da1945b0b3
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
$ docker pull mediawiki@sha256:f270cf9e51bd73b5cbdcd511d43fc7f54684d4c14750ed766e1778eb9dd270af
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.3 MB (231287882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77fa8ecde5117ba263817b5ff3ecbc4b461fff2c7bde4299e0a971443f132b1b`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:34 GMT
ADD file:e6ca98733431f75e97eb09758ba64065d213d51bd2070a95cf15f2ff5adccfc4 in / 
# Tue, 04 Sep 2018 21:21:34 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 01:55:39 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 05 Sep 2018 01:55:39 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 05 Sep 2018 01:56:06 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 05 Sep 2018 01:56:06 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 05 Sep 2018 01:56:07 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 05 Sep 2018 02:05:18 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 02:05:18 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 05 Sep 2018 02:05:18 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 05 Sep 2018 02:05:19 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 05 Sep 2018 02:05:20 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 05 Sep 2018 02:05:21 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 05 Sep 2018 02:05:21 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 05 Sep 2018 02:05:22 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 05 Sep 2018 02:05:22 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 05 Sep 2018 02:05:22 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 05 Sep 2018 02:05:22 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 05 Sep 2018 02:05:23 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 05 Sep 2018 03:06:42 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Wed, 05 Sep 2018 03:06:42 GMT
ENV PHP_VERSION=7.2.9
# Wed, 05 Sep 2018 03:06:42 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.9.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.9.tar.xz.asc/from/this/mirror
# Wed, 05 Sep 2018 03:06:43 GMT
ENV PHP_SHA256=3585c1222e00494efee4f5a65a8e03a1e6eca3dfb834814236ee7f02c5248ae0 PHP_MD5=
# Wed, 05 Sep 2018 03:06:53 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 05 Sep 2018 03:06:53 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 07 Sep 2018 20:33:19 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 07 Sep 2018 20:33:20 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Fri, 07 Sep 2018 20:33:20 GMT
RUN docker-php-ext-enable sodium
# Fri, 07 Sep 2018 20:33:21 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 07 Sep 2018 20:33:21 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 07 Sep 2018 20:33:21 GMT
WORKDIR /var/www/html
# Fri, 07 Sep 2018 20:33:21 GMT
EXPOSE 80/tcp
# Fri, 07 Sep 2018 20:33:21 GMT
CMD ["apache2-foreground"]
# Sat, 08 Sep 2018 01:58:30 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python3 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 08 Sep 2018 02:00:11 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Sat, 08 Sep 2018 02:00:20 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu 	&& docker-php-ext-enable apcu
# Sat, 08 Sep 2018 02:00:23 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 08 Sep 2018 02:00:23 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 08 Sep 2018 02:00:27 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.31
# Sat, 08 Sep 2018 02:00:27 GMT
ENV MEDIAWIKI_BRANCH=REL1_31
# Sat, 08 Sep 2018 02:00:27 GMT
ENV MEDIAWIKI_VERSION=1.31.0
# Sat, 08 Sep 2018 02:00:27 GMT
ENV MEDIAWIKI_SHA512=50ad9303b0c0bd8380dea7489be18a4022d5b65a31961af8d36c3c9ff6d74cdf25e8e10137ef1e025b4287e9ee9b7e0bf4198ca342a46ab42915c91f1ddaf940
# Sat, 08 Sep 2018 02:00:34 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:802b00ed6f79f48e6a5f44ecbcaf43563d6077aaecb565eee1dfc615c0b18c00`  
		Last Modified: Tue, 04 Sep 2018 21:25:45 GMT  
		Size: 22.5 MB (22485965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59f5a5a895f85ce514e7f66d3715d42e54b6735957b02a2406d3625dd75a2185`  
		Last Modified: Wed, 05 Sep 2018 09:03:28 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6898b2dbcfeb5f9532f39c5906364d294c90c4fa0c942068e0ba27bdcd73029b`  
		Last Modified: Wed, 05 Sep 2018 09:03:45 GMT  
		Size: 67.4 MB (67428958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e0903aaa47ebca2076b2f4d52c1118efa2fd755741247b509ced1085f5c1a72`  
		Last Modified: Wed, 05 Sep 2018 09:03:27 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2961af1e196a66c727ebfa1eaed81c207081b853d8df37106f472582d12dd9db`  
		Last Modified: Wed, 05 Sep 2018 09:04:21 GMT  
		Size: 17.1 MB (17127406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71f7016f79a0218a691e7032c308b38d0de98471d48a19f98b7c1db479330f47`  
		Last Modified: Wed, 05 Sep 2018 09:04:17 GMT  
		Size: 1.2 KB (1242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e1a48e5719ce319ff7b5a20b75a48702ec44e17c13abe3d630327ce03e760a8`  
		Last Modified: Wed, 05 Sep 2018 09:04:17 GMT  
		Size: 428.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ae5291984f364551ae9d9bd0a87648dd96aa88d893da349821a9f66acdb8da8`  
		Last Modified: Wed, 05 Sep 2018 09:04:16 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:725b65166f31691ad826144b84fe7f14622a67486d20d6469ec3be96955ea249`  
		Last Modified: Wed, 05 Sep 2018 09:04:16 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3823a607a5d4d676422d16624b214a21fb7d498808d319d6269ded7bcf17f393`  
		Last Modified: Wed, 05 Sep 2018 09:07:27 GMT  
		Size: 12.5 MB (12476831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bcfa4198e39f1bce8e208334c6827dbd5d1509839d0299c31fb25bb7192e933`  
		Last Modified: Wed, 05 Sep 2018 09:07:25 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1c79da21110a4b6a8572aad7e02640b06e1db33e7e5b5112a365227ef391dac`  
		Last Modified: Sat, 08 Sep 2018 01:13:04 GMT  
		Size: 15.6 MB (15621189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18903f439956b5118232ebf7255939a4b26afb9e0d08c2ddd9507574d1d78c0d`  
		Last Modified: Sat, 08 Sep 2018 01:13:00 GMT  
		Size: 2.2 KB (2191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eda25fffde3494a3d62c03c7da53451c9dcedaa56a5e01bc204d50d9aac59e1`  
		Last Modified: Sat, 08 Sep 2018 01:13:00 GMT  
		Size: 257.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3800dac988242634067e311ae8772352644dacf02c0b4a714d59fd7f9acc0a7b`  
		Last Modified: Sat, 08 Sep 2018 01:13:01 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:375ba05fa7ce220d5c50fc8a3613c1fce8bb37a1599bacaeec6b65813b4aaa25`  
		Last Modified: Sat, 08 Sep 2018 02:06:06 GMT  
		Size: 58.3 MB (58323488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5337befabd7f3a5a2a1d157ec131f72040204cf70312fb5c6885e108089cebeb`  
		Last Modified: Sat, 08 Sep 2018 02:05:52 GMT  
		Size: 1.8 MB (1757082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cfa7e7eba66705e689d978359420676d6d79446231be35f24f2ae7cf9c74126`  
		Last Modified: Sat, 08 Sep 2018 02:05:51 GMT  
		Size: 400.9 KB (400878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b25d043d7444ef0541c4a311db85808045c8c3701c834c0b090f2f4be83eff68`  
		Last Modified: Sat, 08 Sep 2018 02:05:51 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29a19cf5191cc19dddff2dc5f02af9bafdede30433fd103256588f7bb47fa3ea`  
		Last Modified: Sat, 08 Sep 2018 02:05:51 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c0c19cf2379d4d75299662cff1b2046eb4f1c6aa57771ac712b5791cdbbf804`  
		Last Modified: Sat, 08 Sep 2018 02:06:04 GMT  
		Size: 35.7 MB (35658955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:stable` - linux; arm variant v5

```console
$ docker pull mediawiki@sha256:9ff6676f33defd4ac1a46711b116d4600cf1444fb5efa578f2307ed2c7a9ee55
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.2 MB (216175043 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aeb8bb1501e6f73ffa8cf944cdeb907cd67a44bd8ae6eeb7404ee3ad6c8a1a1f`
-	Entrypoint: `["docker-php-entrypoint"]`
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
# Wed, 05 Sep 2018 09:58:38 GMT
ENV PHP_VERSION=7.2.9
# Wed, 05 Sep 2018 09:58:38 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.9.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.9.tar.xz.asc/from/this/mirror
# Wed, 05 Sep 2018 09:58:39 GMT
ENV PHP_SHA256=3585c1222e00494efee4f5a65a8e03a1e6eca3dfb834814236ee7f02c5248ae0 PHP_MD5=
# Wed, 05 Sep 2018 09:58:52 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 05 Sep 2018 09:58:53 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 08 Sep 2018 09:23:25 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 08 Sep 2018 09:23:26 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Sat, 08 Sep 2018 09:23:27 GMT
RUN docker-php-ext-enable sodium
# Sat, 08 Sep 2018 09:23:27 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 08 Sep 2018 09:23:28 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 08 Sep 2018 09:23:28 GMT
WORKDIR /var/www/html
# Sat, 08 Sep 2018 09:23:28 GMT
EXPOSE 80/tcp
# Sat, 08 Sep 2018 09:23:29 GMT
CMD ["apache2-foreground"]
# Sat, 08 Sep 2018 13:06:03 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python3 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 08 Sep 2018 13:09:06 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Sat, 08 Sep 2018 13:09:21 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu 	&& docker-php-ext-enable apcu
# Sat, 08 Sep 2018 13:09:25 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 08 Sep 2018 13:09:26 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 08 Sep 2018 13:09:26 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.31
# Sat, 08 Sep 2018 13:09:34 GMT
ENV MEDIAWIKI_BRANCH=REL1_31
# Sat, 08 Sep 2018 13:09:34 GMT
ENV MEDIAWIKI_VERSION=1.31.0
# Sat, 08 Sep 2018 13:09:35 GMT
ENV MEDIAWIKI_SHA512=50ad9303b0c0bd8380dea7489be18a4022d5b65a31961af8d36c3c9ff6d74cdf25e8e10137ef1e025b4287e9ee9b7e0bf4198ca342a46ab42915c91f1ddaf940
# Sat, 08 Sep 2018 13:09:49 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
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
	-	`sha256:a44366cd619282fddd8bc306c687e224f4e94dd92a57ca2753ebf4baf3cfd281`  
		Last Modified: Wed, 05 Sep 2018 12:21:50 GMT  
		Size: 12.5 MB (12474957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48b072106ee624b9716890dd7eaf5400c29e5c2372473f78c246c53e94ec8021`  
		Last Modified: Wed, 05 Sep 2018 12:21:46 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c40851d44714d60aec0d36f1ef6d1ad2de9260205bf9b376090ff00b1f667b4e`  
		Last Modified: Sat, 08 Sep 2018 11:28:48 GMT  
		Size: 14.8 MB (14790707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed96db98894ca6885771178166411f6da79b50ac5188ee316f47e3bb6a8f9d05`  
		Last Modified: Sat, 08 Sep 2018 11:28:42 GMT  
		Size: 2.2 KB (2195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02db5da7323ae62aa027d24ace80b2d76bd8bdfeffaae80a0b59ceb9b631eb13`  
		Last Modified: Sat, 08 Sep 2018 11:28:43 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dfdf694148148008c5f742845735edf3d7774bd2725c389032d95428e35aaef`  
		Last Modified: Sat, 08 Sep 2018 11:28:44 GMT  
		Size: 905.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec139a48a17e525e58afa22e33adb053c3845faf388c0be4c4a11add8b7e0634`  
		Last Modified: Sat, 08 Sep 2018 13:18:51 GMT  
		Size: 55.9 MB (55901325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c56c58a931a1328238c5ba207b02c317be62f64b0461a1fcc2218c1f190dbe1d`  
		Last Modified: Sat, 08 Sep 2018 13:18:32 GMT  
		Size: 1.7 MB (1687658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4989c55a4ebc492cc17b9cd64a29fa814eca4a6350d4b1d2e09ef9992ed921d`  
		Last Modified: Sat, 08 Sep 2018 13:18:32 GMT  
		Size: 392.9 KB (392921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:901c64fb7fa78ec8f5088e2049fc84cead7e4fdbf9cddb32375caeea02d6ec1c`  
		Last Modified: Sat, 08 Sep 2018 13:18:32 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dff53dc9b489e26fa78782a34f464a142ef15fd307941c88b63b4ee1e4e619f`  
		Last Modified: Sat, 08 Sep 2018 13:18:32 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a5a4830ad8245c54644e7dc907657e51aff81796a5bd608854af776580d41ee`  
		Last Modified: Sat, 08 Sep 2018 13:18:49 GMT  
		Size: 35.7 MB (35659244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:stable` - linux; arm variant v7

```console
$ docker pull mediawiki@sha256:1124c5c08d7eaee21838b8fb8f23b8daf073849df3b7885fb0f544c426270b44
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.2 MB (206196895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:861afb137cfba41ebf5a1c246bfbf4510e3e18dfa2825c5e557dc930f7aa81be`
-	Entrypoint: `["docker-php-entrypoint"]`
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
# Wed, 05 Sep 2018 14:19:21 GMT
ENV PHP_VERSION=7.2.9
# Wed, 05 Sep 2018 14:19:21 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.9.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.9.tar.xz.asc/from/this/mirror
# Wed, 05 Sep 2018 14:19:21 GMT
ENV PHP_SHA256=3585c1222e00494efee4f5a65a8e03a1e6eca3dfb834814236ee7f02c5248ae0 PHP_MD5=
# Wed, 05 Sep 2018 14:19:33 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 05 Sep 2018 14:19:34 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 05 Sep 2018 14:23:04 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 05 Sep 2018 14:23:06 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Wed, 05 Sep 2018 14:23:07 GMT
RUN docker-php-ext-enable sodium
# Wed, 05 Sep 2018 14:23:08 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 05 Sep 2018 14:23:09 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Wed, 05 Sep 2018 14:23:09 GMT
WORKDIR /var/www/html
# Wed, 05 Sep 2018 14:23:10 GMT
EXPOSE 80/tcp
# Wed, 05 Sep 2018 14:23:10 GMT
CMD ["apache2-foreground"]
# Wed, 05 Sep 2018 19:22:03 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python3 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 05 Sep 2018 19:24:53 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Wed, 05 Sep 2018 19:25:08 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu 	&& docker-php-ext-enable apcu
# Wed, 05 Sep 2018 19:25:09 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 05 Sep 2018 19:25:10 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Wed, 05 Sep 2018 19:25:10 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.31
# Wed, 05 Sep 2018 19:25:11 GMT
ENV MEDIAWIKI_BRANCH=REL1_31
# Wed, 05 Sep 2018 19:25:11 GMT
ENV MEDIAWIKI_VERSION=1.31.0
# Wed, 05 Sep 2018 19:25:11 GMT
ENV MEDIAWIKI_SHA512=50ad9303b0c0bd8380dea7489be18a4022d5b65a31961af8d36c3c9ff6d74cdf25e8e10137ef1e025b4287e9ee9b7e0bf4198ca342a46ab42915c91f1ddaf940
# Wed, 05 Sep 2018 19:25:25 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
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
	-	`sha256:236c7a0fe3f0d71bf5fa04aa265b8335c8da1ba9c6c7a598d302b3f6513bbb84`  
		Last Modified: Wed, 05 Sep 2018 16:42:18 GMT  
		Size: 12.5 MB (12474886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcd75b732719ea6a20b675fececbda9c126e193d1bb64b3de5dc760f0f2ca5fa`  
		Last Modified: Wed, 05 Sep 2018 16:42:15 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a916c09522c7ad8b3c7744382d4a9af7eb9f58140c7d04caf166d83eaba63a2`  
		Last Modified: Wed, 05 Sep 2018 16:42:20 GMT  
		Size: 13.5 MB (13549808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e61e8cd14397bc5f011336c42c404a20485b1e8142b66fbb69590018e4746eea`  
		Last Modified: Wed, 05 Sep 2018 16:42:15 GMT  
		Size: 2.2 KB (2195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f097788450ceb5c2c60f53bb4a5de1a97f7fc56eedc8b973a79cfa29903ad56`  
		Last Modified: Wed, 05 Sep 2018 16:42:19 GMT  
		Size: 263.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72f44b4fed134538c2d67c37ad6719f6ae83440aac0d5e2365d0d4d97f11b42a`  
		Last Modified: Wed, 05 Sep 2018 16:42:15 GMT  
		Size: 903.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d11ed88870d5657ff26a15cbb856a04052b1e779c9ce91f64be123627eb48dc`  
		Last Modified: Wed, 05 Sep 2018 19:33:49 GMT  
		Size: 53.5 MB (53486380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eacc9e9373efbf236950747e7cb9c4ec15303223d90749310df95af28788456a`  
		Last Modified: Wed, 05 Sep 2018 19:33:31 GMT  
		Size: 1.6 MB (1636691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa98c938a7b0805a416f379b61a05c0b00e3a839f328420aa5066702aeef79ab`  
		Last Modified: Wed, 05 Sep 2018 19:33:31 GMT  
		Size: 387.4 KB (387413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1cafff693812652eab8604a5a924fe0b10e9e8dff129c0eb322368f2518d051`  
		Last Modified: Wed, 05 Sep 2018 19:33:30 GMT  
		Size: 353.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ced093166ca472d183ea6e9829ccb4a0d5822b3faaba0a6e4928c31e43c8775`  
		Last Modified: Wed, 05 Sep 2018 19:33:30 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f37894bdd166902389b14c77dadab5f61f8e0b9823cb00935dcb01a13474e661`  
		Last Modified: Wed, 05 Sep 2018 19:33:50 GMT  
		Size: 35.7 MB (35659225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:stable` - linux; arm64 variant v8

```console
$ docker pull mediawiki@sha256:d57555ef2edcfcaddd387f69bce0a10ce870280db9827ba1ce7206e0f5e972e9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.7 MB (214697475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9c6c3badeea808dd5691e3a00aca07528c53d97bb9224e78dc87587d24061be`
-	Entrypoint: `["docker-php-entrypoint"]`
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
# Wed, 05 Sep 2018 15:40:52 GMT
ENV PHP_VERSION=7.2.9
# Wed, 05 Sep 2018 15:40:52 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.9.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.9.tar.xz.asc/from/this/mirror
# Wed, 05 Sep 2018 15:40:53 GMT
ENV PHP_SHA256=3585c1222e00494efee4f5a65a8e03a1e6eca3dfb834814236ee7f02c5248ae0 PHP_MD5=
# Wed, 05 Sep 2018 15:41:25 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 05 Sep 2018 15:41:25 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 05 Sep 2018 15:49:01 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 05 Sep 2018 15:49:03 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Wed, 05 Sep 2018 15:49:06 GMT
RUN docker-php-ext-enable sodium
# Wed, 05 Sep 2018 15:49:07 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 05 Sep 2018 15:49:09 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Wed, 05 Sep 2018 15:49:10 GMT
WORKDIR /var/www/html
# Wed, 05 Sep 2018 15:49:11 GMT
EXPOSE 80/tcp
# Wed, 05 Sep 2018 15:49:12 GMT
CMD ["apache2-foreground"]
# Thu, 06 Sep 2018 07:39:31 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python3 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 06 Sep 2018 07:43:29 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Thu, 06 Sep 2018 07:44:09 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu 	&& docker-php-ext-enable apcu
# Thu, 06 Sep 2018 07:44:15 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 06 Sep 2018 07:44:17 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Thu, 06 Sep 2018 07:44:39 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.31
# Thu, 06 Sep 2018 07:44:40 GMT
ENV MEDIAWIKI_BRANCH=REL1_31
# Thu, 06 Sep 2018 07:44:41 GMT
ENV MEDIAWIKI_VERSION=1.31.0
# Thu, 06 Sep 2018 07:44:41 GMT
ENV MEDIAWIKI_SHA512=50ad9303b0c0bd8380dea7489be18a4022d5b65a31961af8d36c3c9ff6d74cdf25e8e10137ef1e025b4287e9ee9b7e0bf4198ca342a46ab42915c91f1ddaf940
# Thu, 06 Sep 2018 07:45:17 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
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
	-	`sha256:4d392cd1076f22cf63f6e7fd3e7b5dcc15d5ca2c852bf2f2b31680a775493d08`  
		Last Modified: Wed, 05 Sep 2018 19:02:47 GMT  
		Size: 12.5 MB (12475241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12c75a0a5e25184fdc8dd1f3222afea3553093bc19d0474159881d7609ced087`  
		Last Modified: Wed, 05 Sep 2018 19:02:40 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5df26c6e784a3cad0f7a25e9b444de08c8c47699e2afaf1f541793601d74ce2`  
		Last Modified: Wed, 05 Sep 2018 19:02:46 GMT  
		Size: 14.2 MB (14182282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b7f8d83f91ff27394436396261d10e1f2380cb3264e5ae22ac865120cd978d6`  
		Last Modified: Wed, 05 Sep 2018 19:02:40 GMT  
		Size: 2.2 KB (2196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55aba78d53b8b9f522aad6720de29102df9d73212a8f9eebad4be2f5831ccf66`  
		Last Modified: Wed, 05 Sep 2018 19:02:40 GMT  
		Size: 264.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa5b38410c4234a70763cc63c5f08e67b9d890956bf07f52a5f446111663a3e2`  
		Last Modified: Wed, 05 Sep 2018 19:02:40 GMT  
		Size: 905.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a500793275052c89a7ee28462c1ef7dbe9642ec88e7325e93fc3cadea09b1e15`  
		Last Modified: Thu, 06 Sep 2018 08:01:39 GMT  
		Size: 55.7 MB (55656614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d65e5447df4240e7c522e978a5aea960dc6186630bcb969a15cb029186edd3f4`  
		Last Modified: Thu, 06 Sep 2018 08:01:13 GMT  
		Size: 1.7 MB (1686139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f86f3fe5b724a69d88210b54a79d0db7f19ffe4dcf32c5e5d05f27b616793df`  
		Last Modified: Thu, 06 Sep 2018 08:01:13 GMT  
		Size: 393.5 KB (393468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a225b8eedb11c7e3d9440c8cee8b3d7f4083d9d18cd81fe7f93cf30572705f7`  
		Last Modified: Thu, 06 Sep 2018 08:01:13 GMT  
		Size: 354.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ab21129855f46030b65264ed10cca3678bf0a42afa46c941a8ae9f342f46e14`  
		Last Modified: Thu, 06 Sep 2018 08:01:13 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35cc27dad42c535370c693da227305e5a08b39bbc5a1ea99b11bca0f7ecb6a78`  
		Last Modified: Thu, 06 Sep 2018 08:01:33 GMT  
		Size: 35.7 MB (35658954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:stable` - linux; 386

```console
$ docker pull mediawiki@sha256:216f33d400fec80e01d1449cdbe1aca7c2777a9decd563c46fd72e61c63ded9c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.6 MB (236640408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d417bf62cb7464080e4918d8f67ab8e1e68546d2748db0d539250265a13a042`
-	Entrypoint: `["docker-php-entrypoint"]`
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
# Thu, 06 Sep 2018 16:03:43 GMT
ENV PHP_VERSION=7.2.9
# Thu, 06 Sep 2018 16:03:43 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.9.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.9.tar.xz.asc/from/this/mirror
# Thu, 06 Sep 2018 16:03:43 GMT
ENV PHP_SHA256=3585c1222e00494efee4f5a65a8e03a1e6eca3dfb834814236ee7f02c5248ae0 PHP_MD5=
# Thu, 06 Sep 2018 16:03:52 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Thu, 06 Sep 2018 16:03:53 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 08 Sep 2018 12:22:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 08 Sep 2018 12:22:06 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Sat, 08 Sep 2018 12:22:07 GMT
RUN docker-php-ext-enable sodium
# Sat, 08 Sep 2018 12:22:07 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 08 Sep 2018 12:22:07 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 08 Sep 2018 12:22:08 GMT
WORKDIR /var/www/html
# Sat, 08 Sep 2018 12:22:08 GMT
EXPOSE 80/tcp
# Sat, 08 Sep 2018 12:22:08 GMT
CMD ["apache2-foreground"]
# Sat, 08 Sep 2018 19:39:42 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python3 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 08 Sep 2018 19:41:20 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Sat, 08 Sep 2018 19:41:29 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu 	&& docker-php-ext-enable apcu
# Sat, 08 Sep 2018 19:41:29 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 08 Sep 2018 19:41:30 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 08 Sep 2018 19:41:30 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.31
# Sat, 08 Sep 2018 19:41:30 GMT
ENV MEDIAWIKI_BRANCH=REL1_31
# Sat, 08 Sep 2018 19:41:31 GMT
ENV MEDIAWIKI_VERSION=1.31.0
# Sat, 08 Sep 2018 19:41:31 GMT
ENV MEDIAWIKI_SHA512=50ad9303b0c0bd8380dea7489be18a4022d5b65a31961af8d36c3c9ff6d74cdf25e8e10137ef1e025b4287e9ee9b7e0bf4198ca342a46ab42915c91f1ddaf940
# Sat, 08 Sep 2018 19:41:39 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
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
	-	`sha256:4898d3ed265db3606cac9cfcc19d7db95cf921e42cc45316abbaa5aa5a8b750c`  
		Last Modified: Thu, 06 Sep 2018 21:27:18 GMT  
		Size: 12.5 MB (12476313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4b3aab8a2213be63d235ef4d15667256ba2d23bd48db531b24efaffafafdaa7`  
		Last Modified: Thu, 06 Sep 2018 21:27:16 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c267ff214eaf62ca80ecbc23e93ad64244106a312d1f9e968af0c030bfa24be7`  
		Last Modified: Sat, 08 Sep 2018 17:30:41 GMT  
		Size: 15.7 MB (15690212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4eb52ea2fd693892fbc4e080577addcbfce808dab2c2c6e9f8765a0d4be68cc3`  
		Last Modified: Sat, 08 Sep 2018 17:30:36 GMT  
		Size: 2.2 KB (2194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6222287fa37d51701f1de6703a38ef40f4d776071d0a3ce33e411c2ae2fc994f`  
		Last Modified: Sat, 08 Sep 2018 17:30:36 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0e294bfe770fee91b505ef8723221acc0b5bf095ce7373afc7ea6061a621322`  
		Last Modified: Sat, 08 Sep 2018 17:30:36 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:874c2b8a0977af6f07e3a6bc5dbe85a5da2b638be9c0f2dc1f15f882414e0481`  
		Last Modified: Sat, 08 Sep 2018 19:46:46 GMT  
		Size: 58.5 MB (58487555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5de84ed338dbe130f250b0fd298cb610fdc03dd52f246e25c05cbcc0ba236daa`  
		Last Modified: Sat, 08 Sep 2018 19:46:28 GMT  
		Size: 1.8 MB (1756571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d31d0f24fbce5b09ff6c1e1c4b2bf187dd326d188b4da2b1b579c219cb20f652`  
		Last Modified: Sat, 08 Sep 2018 19:46:31 GMT  
		Size: 389.9 KB (389942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0772fa4915c4036653d48101921ce960ff4a28b04a12d177ef5ef4c45c4e8642`  
		Last Modified: Sat, 08 Sep 2018 19:46:29 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2109572cfff98540f3f75e2732f9d00e87db78517cb06097147070980566fb`  
		Last Modified: Sat, 08 Sep 2018 19:46:27 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b20183f0d493b28a77d328ee9525a2b30b7b4c4ccae0caff05787528e70b62f5`  
		Last Modified: Sat, 08 Sep 2018 19:46:45 GMT  
		Size: 35.7 MB (35658943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:stable` - linux; ppc64le

```console
$ docker pull mediawiki@sha256:bb22fe5498bfc741551c618b142e9b4f8f22bbba86d68593ef21bfc1d5e7291f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.2 MB (226151108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9a65796a754121420c30d8982170888627cfbfe93ce2113c65e28dd20aef06a`
-	Entrypoint: `["docker-php-entrypoint"]`
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
# Wed, 05 Sep 2018 10:49:36 GMT
ENV PHP_VERSION=7.2.9
# Wed, 05 Sep 2018 10:49:37 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.9.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.9.tar.xz.asc/from/this/mirror
# Wed, 05 Sep 2018 10:49:38 GMT
ENV PHP_SHA256=3585c1222e00494efee4f5a65a8e03a1e6eca3dfb834814236ee7f02c5248ae0 PHP_MD5=
# Wed, 05 Sep 2018 10:50:04 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 05 Sep 2018 10:50:05 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 08 Sep 2018 10:41:01 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 08 Sep 2018 10:41:06 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Sat, 08 Sep 2018 10:41:10 GMT
RUN docker-php-ext-enable sodium
# Sat, 08 Sep 2018 10:41:11 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 08 Sep 2018 10:41:12 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 08 Sep 2018 10:41:13 GMT
WORKDIR /var/www/html
# Sat, 08 Sep 2018 10:41:14 GMT
EXPOSE 80/tcp
# Sat, 08 Sep 2018 10:41:16 GMT
CMD ["apache2-foreground"]
# Sat, 08 Sep 2018 15:26:43 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python3 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 08 Sep 2018 15:29:07 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Sat, 08 Sep 2018 15:29:25 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu 	&& docker-php-ext-enable apcu
# Sat, 08 Sep 2018 15:29:29 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 08 Sep 2018 15:29:35 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 08 Sep 2018 15:29:37 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.31
# Sat, 08 Sep 2018 15:29:38 GMT
ENV MEDIAWIKI_BRANCH=REL1_31
# Sat, 08 Sep 2018 15:29:40 GMT
ENV MEDIAWIKI_VERSION=1.31.0
# Sat, 08 Sep 2018 15:29:42 GMT
ENV MEDIAWIKI_SHA512=50ad9303b0c0bd8380dea7489be18a4022d5b65a31961af8d36c3c9ff6d74cdf25e8e10137ef1e025b4287e9ee9b7e0bf4198ca342a46ab42915c91f1ddaf940
# Sat, 08 Sep 2018 15:30:07 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
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
	-	`sha256:36cbb7610984e65e121c3bf83aedd4083bbac9746e20813392cb96e4a4431ca2`  
		Last Modified: Wed, 05 Sep 2018 12:40:28 GMT  
		Size: 12.5 MB (12475367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d0c4bf5f02395e714f36e82b0d35af35ef779ce486bb975b661afaea6769265`  
		Last Modified: Wed, 05 Sep 2018 12:40:22 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a8040456a5cc597f9d25f01760daaa6855915f530f978b6b17d1d035edaddd`  
		Last Modified: Sat, 08 Sep 2018 13:56:46 GMT  
		Size: 15.4 MB (15395229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de9f2afe2d1db440e288d8d66599b28ec6c45ef97a4677d4e46a657b52128e54`  
		Last Modified: Sat, 08 Sep 2018 13:56:40 GMT  
		Size: 2.2 KB (2194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f3988935034fca22466da31ba7e4cb5f47c03d5bac7c7f27d6ff6e52a042421`  
		Last Modified: Sat, 08 Sep 2018 13:56:39 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fcd32659c5446b5291bc76a287a88ac13c8ba36c4f2a8325c1223abde890e36`  
		Last Modified: Sat, 08 Sep 2018 13:56:39 GMT  
		Size: 905.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8794c5b6230cd113e046b69cf093299219536a223d34a66a350cde008f3d7202`  
		Last Modified: Sat, 08 Sep 2018 15:39:09 GMT  
		Size: 58.6 MB (58575897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a198146f9ecd30ef5222e8c3dc72f9019a183e9ffafb21a3aa1b4927135c3c3d`  
		Last Modified: Sat, 08 Sep 2018 15:38:45 GMT  
		Size: 1.7 MB (1739857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:017070a9df892bef66253fc5daa73662ec5d9078492a52c08d495f1c72bd7f6e`  
		Last Modified: Sat, 08 Sep 2018 15:38:44 GMT  
		Size: 399.8 KB (399795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adf1971c65b49783b78fb2e7c25da233ed9b864ba2e6ffb128cf4308a7082e71`  
		Last Modified: Sat, 08 Sep 2018 15:38:45 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08ed512d9fd3bb1aa48bf75a5309972b4440f55a917d17f6290bc91351af5cd1`  
		Last Modified: Sat, 08 Sep 2018 15:38:44 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c576d9f4d14c6fedab6fc52420202c9502aa4aedbbf6b7c06f85c325fea3f7c8`  
		Last Modified: Sat, 08 Sep 2018 15:39:10 GMT  
		Size: 35.7 MB (35659244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
