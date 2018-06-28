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
$ docker pull mediawiki@sha256:b3a57866aeaa00444acc5e579fd927eb6b0aa69ae167874c1e14cc45cd6ba64f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mediawiki:1.27` - linux; amd64

```console
$ docker pull mediawiki@sha256:f69606fa1c16bb4657df11d51bceb7c1f2cf857d5cbcbac0c2c120333924a72a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.5 MB (223514414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c61fd90b0ebc93dc2adc316d9e7400dcbca3f8b0c9e676f868616756241ac23b`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 26 Jun 2018 21:25:25 GMT
ADD file:28fbc9fd012eef72780d1c75fc2b0969d13f0138f735035335ab4b76793da2da in / 
# Tue, 26 Jun 2018 21:25:25 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 22:29:03 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 27 Jun 2018 22:29:03 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 27 Jun 2018 22:29:24 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 27 Jun 2018 22:29:24 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 27 Jun 2018 22:29:25 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 27 Jun 2018 22:42:42 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 22:42:42 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 27 Jun 2018 22:42:43 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 27 Jun 2018 22:42:43 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 27 Jun 2018 22:42:44 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 27 Jun 2018 22:42:45 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 27 Jun 2018 22:42:45 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 27 Jun 2018 22:42:46 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 27 Jun 2018 22:42:46 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 27 Jun 2018 22:42:46 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 27 Jun 2018 22:42:46 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 27 Jun 2018 22:42:47 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 28 Jun 2018 02:45:39 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Thu, 28 Jun 2018 02:45:39 GMT
ENV PHP_VERSION=7.0.30
# Thu, 28 Jun 2018 02:45:39 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.30.tar.xz.asc/from/this/mirror
# Thu, 28 Jun 2018 02:45:39 GMT
ENV PHP_SHA256=c90892fb68ab9b8476519658d3f78f6388f2609ae1309bdc2a2e1cc9f92dd686 PHP_MD5=
# Thu, 28 Jun 2018 02:45:50 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Thu, 28 Jun 2018 02:45:51 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 28 Jun 2018 02:48:23 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Thu, 28 Jun 2018 02:48:24 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Thu, 28 Jun 2018 02:48:24 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 28 Jun 2018 02:48:24 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Thu, 28 Jun 2018 02:48:24 GMT
WORKDIR /var/www/html
# Thu, 28 Jun 2018 02:48:25 GMT
EXPOSE 80/tcp
# Thu, 28 Jun 2018 02:48:25 GMT
CMD ["apache2-foreground"]
# Thu, 28 Jun 2018 07:49:59 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 28 Jun 2018 07:52:47 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Thu, 28 Jun 2018 07:53:11 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Thu, 28 Jun 2018 07:53:12 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 28 Jun 2018 07:53:13 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Thu, 28 Jun 2018 07:53:13 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.27
# Thu, 28 Jun 2018 07:53:13 GMT
ENV MEDIAWIKI_BRANCH=REL1_27
# Thu, 28 Jun 2018 07:53:13 GMT
ENV MEDIAWIKI_VERSION=1.27.4
# Thu, 28 Jun 2018 07:53:14 GMT
ENV MEDIAWIKI_SHA512=1a5b82a55c3703db9905a9098922a6008176ae2d53093bd651eb4e5638dc62861f40fe6ae523165f5b1970e8f28dff8ccfa51a5ebdaeb753e6d6e66eaf3c0dd1
# Thu, 28 Jun 2018 07:53:22 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:683abbb4ea60e108164f1d351e7bcf13daf45941137d800086447874df05f48e`  
		Last Modified: Tue, 26 Jun 2018 21:37:45 GMT  
		Size: 22.5 MB (22496975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7573949a21a76a3f609e4d14daca15fe0c10fab84806891f2e8bded88dd40074`  
		Last Modified: Thu, 28 Jun 2018 05:19:49 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a95c20cda7b85f7e049b5b2999399d185f7048c5ac481172021f3a26dcb26b6`  
		Last Modified: Thu, 28 Jun 2018 05:20:06 GMT  
		Size: 67.5 MB (67457678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:803353b042685003f52935fa75ffd472a5c6ed1763c92a15b94142fef7dbd08e`  
		Last Modified: Thu, 28 Jun 2018 05:19:48 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07212a2089a5d184a471f9b72a1913e8bd3d0d4a02f1494f3fbb6756c0b2f285`  
		Last Modified: Thu, 28 Jun 2018 05:23:15 GMT  
		Size: 17.1 MB (17127967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f815f63d38a4a4c2b5380a6db8374a6bb49db8977a778ce11d0af458db79c25b`  
		Last Modified: Thu, 28 Jun 2018 05:23:11 GMT  
		Size: 1.2 KB (1243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2586bd0b43c23d864d044a8395e7228b35356f90dddfeedd3ccc140e98e8f32`  
		Last Modified: Thu, 28 Jun 2018 05:23:09 GMT  
		Size: 428.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:952eb484037e67ba9ddb942b0e6c00e4838309f5c1fc35802ab78c8526efee87`  
		Last Modified: Thu, 28 Jun 2018 05:23:08 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc5cbbbef49fd0d2baa459ee3db12d6877152d16c7239e928317583217b8ca41`  
		Last Modified: Thu, 28 Jun 2018 05:23:08 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c707c32b4c01b3a8112398738887f3ace8885aa8ecc77f4afd4307412d1bd048`  
		Last Modified: Thu, 28 Jun 2018 05:49:42 GMT  
		Size: 12.4 MB (12379588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18a07220e9902291d610f284e823001d678f73000347c661bb00579b44ef5485`  
		Last Modified: Thu, 28 Jun 2018 05:49:40 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f81f020054370895e39c64b72759aa73b55a19cc89322a6a9b65931b14f5c642`  
		Last Modified: Thu, 28 Jun 2018 05:49:44 GMT  
		Size: 13.9 MB (13861495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a05915261c5213c01ebd6e6594deebfe82c0a9d54f6039974b391b16afa15f87`  
		Last Modified: Thu, 28 Jun 2018 05:49:40 GMT  
		Size: 2.2 KB (2195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a44ac2043eeb1a7c135ce5f2cace1a96b9faaaefd6f289dab3fca9a7d9e38b46`  
		Last Modified: Thu, 28 Jun 2018 05:49:40 GMT  
		Size: 905.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba83bc83964299f670c06ac9ee6edbf635a508b57c657f04fe0935d45e4fd2a9`  
		Last Modified: Thu, 28 Jun 2018 07:57:20 GMT  
		Size: 56.3 MB (56335422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f771ffe68ef81c491289eabc651c6f848013aa01af8d0478a584debb7ed2b77`  
		Last Modified: Thu, 28 Jun 2018 07:56:57 GMT  
		Size: 1.5 MB (1549041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bd7828c8b5b5969869f1662015a7d62ceb4c5d7642d4e5c27d45da36db54180`  
		Last Modified: Thu, 28 Jun 2018 07:56:57 GMT  
		Size: 400.3 KB (400333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0786b4a8280d384b77587057864ab596059db21f314c12496071ad8f993f7e84`  
		Last Modified: Thu, 28 Jun 2018 07:56:56 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf5b9c459e482ce2b3e9cdbef764d99584bf8a4a8718e78fd0f3b93228102336`  
		Last Modified: Thu, 28 Jun 2018 07:56:56 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dcf6a69a9628bc5a9c80303436282ce860115e931648228cb8c4058fc94f3a5`  
		Last Modified: Thu, 28 Jun 2018 07:57:16 GMT  
		Size: 31.9 MB (31899035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mediawiki:1.27.4`

```console
$ docker pull mediawiki@sha256:b3a57866aeaa00444acc5e579fd927eb6b0aa69ae167874c1e14cc45cd6ba64f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mediawiki:1.27.4` - linux; amd64

```console
$ docker pull mediawiki@sha256:f69606fa1c16bb4657df11d51bceb7c1f2cf857d5cbcbac0c2c120333924a72a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.5 MB (223514414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c61fd90b0ebc93dc2adc316d9e7400dcbca3f8b0c9e676f868616756241ac23b`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 26 Jun 2018 21:25:25 GMT
ADD file:28fbc9fd012eef72780d1c75fc2b0969d13f0138f735035335ab4b76793da2da in / 
# Tue, 26 Jun 2018 21:25:25 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 22:29:03 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 27 Jun 2018 22:29:03 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 27 Jun 2018 22:29:24 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 27 Jun 2018 22:29:24 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 27 Jun 2018 22:29:25 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 27 Jun 2018 22:42:42 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 22:42:42 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 27 Jun 2018 22:42:43 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 27 Jun 2018 22:42:43 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 27 Jun 2018 22:42:44 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 27 Jun 2018 22:42:45 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 27 Jun 2018 22:42:45 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 27 Jun 2018 22:42:46 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 27 Jun 2018 22:42:46 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 27 Jun 2018 22:42:46 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 27 Jun 2018 22:42:46 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 27 Jun 2018 22:42:47 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 28 Jun 2018 02:45:39 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Thu, 28 Jun 2018 02:45:39 GMT
ENV PHP_VERSION=7.0.30
# Thu, 28 Jun 2018 02:45:39 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.30.tar.xz.asc/from/this/mirror
# Thu, 28 Jun 2018 02:45:39 GMT
ENV PHP_SHA256=c90892fb68ab9b8476519658d3f78f6388f2609ae1309bdc2a2e1cc9f92dd686 PHP_MD5=
# Thu, 28 Jun 2018 02:45:50 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Thu, 28 Jun 2018 02:45:51 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 28 Jun 2018 02:48:23 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Thu, 28 Jun 2018 02:48:24 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Thu, 28 Jun 2018 02:48:24 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 28 Jun 2018 02:48:24 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Thu, 28 Jun 2018 02:48:24 GMT
WORKDIR /var/www/html
# Thu, 28 Jun 2018 02:48:25 GMT
EXPOSE 80/tcp
# Thu, 28 Jun 2018 02:48:25 GMT
CMD ["apache2-foreground"]
# Thu, 28 Jun 2018 07:49:59 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 28 Jun 2018 07:52:47 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Thu, 28 Jun 2018 07:53:11 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Thu, 28 Jun 2018 07:53:12 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 28 Jun 2018 07:53:13 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Thu, 28 Jun 2018 07:53:13 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.27
# Thu, 28 Jun 2018 07:53:13 GMT
ENV MEDIAWIKI_BRANCH=REL1_27
# Thu, 28 Jun 2018 07:53:13 GMT
ENV MEDIAWIKI_VERSION=1.27.4
# Thu, 28 Jun 2018 07:53:14 GMT
ENV MEDIAWIKI_SHA512=1a5b82a55c3703db9905a9098922a6008176ae2d53093bd651eb4e5638dc62861f40fe6ae523165f5b1970e8f28dff8ccfa51a5ebdaeb753e6d6e66eaf3c0dd1
# Thu, 28 Jun 2018 07:53:22 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:683abbb4ea60e108164f1d351e7bcf13daf45941137d800086447874df05f48e`  
		Last Modified: Tue, 26 Jun 2018 21:37:45 GMT  
		Size: 22.5 MB (22496975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7573949a21a76a3f609e4d14daca15fe0c10fab84806891f2e8bded88dd40074`  
		Last Modified: Thu, 28 Jun 2018 05:19:49 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a95c20cda7b85f7e049b5b2999399d185f7048c5ac481172021f3a26dcb26b6`  
		Last Modified: Thu, 28 Jun 2018 05:20:06 GMT  
		Size: 67.5 MB (67457678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:803353b042685003f52935fa75ffd472a5c6ed1763c92a15b94142fef7dbd08e`  
		Last Modified: Thu, 28 Jun 2018 05:19:48 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07212a2089a5d184a471f9b72a1913e8bd3d0d4a02f1494f3fbb6756c0b2f285`  
		Last Modified: Thu, 28 Jun 2018 05:23:15 GMT  
		Size: 17.1 MB (17127967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f815f63d38a4a4c2b5380a6db8374a6bb49db8977a778ce11d0af458db79c25b`  
		Last Modified: Thu, 28 Jun 2018 05:23:11 GMT  
		Size: 1.2 KB (1243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2586bd0b43c23d864d044a8395e7228b35356f90dddfeedd3ccc140e98e8f32`  
		Last Modified: Thu, 28 Jun 2018 05:23:09 GMT  
		Size: 428.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:952eb484037e67ba9ddb942b0e6c00e4838309f5c1fc35802ab78c8526efee87`  
		Last Modified: Thu, 28 Jun 2018 05:23:08 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc5cbbbef49fd0d2baa459ee3db12d6877152d16c7239e928317583217b8ca41`  
		Last Modified: Thu, 28 Jun 2018 05:23:08 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c707c32b4c01b3a8112398738887f3ace8885aa8ecc77f4afd4307412d1bd048`  
		Last Modified: Thu, 28 Jun 2018 05:49:42 GMT  
		Size: 12.4 MB (12379588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18a07220e9902291d610f284e823001d678f73000347c661bb00579b44ef5485`  
		Last Modified: Thu, 28 Jun 2018 05:49:40 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f81f020054370895e39c64b72759aa73b55a19cc89322a6a9b65931b14f5c642`  
		Last Modified: Thu, 28 Jun 2018 05:49:44 GMT  
		Size: 13.9 MB (13861495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a05915261c5213c01ebd6e6594deebfe82c0a9d54f6039974b391b16afa15f87`  
		Last Modified: Thu, 28 Jun 2018 05:49:40 GMT  
		Size: 2.2 KB (2195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a44ac2043eeb1a7c135ce5f2cace1a96b9faaaefd6f289dab3fca9a7d9e38b46`  
		Last Modified: Thu, 28 Jun 2018 05:49:40 GMT  
		Size: 905.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba83bc83964299f670c06ac9ee6edbf635a508b57c657f04fe0935d45e4fd2a9`  
		Last Modified: Thu, 28 Jun 2018 07:57:20 GMT  
		Size: 56.3 MB (56335422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f771ffe68ef81c491289eabc651c6f848013aa01af8d0478a584debb7ed2b77`  
		Last Modified: Thu, 28 Jun 2018 07:56:57 GMT  
		Size: 1.5 MB (1549041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bd7828c8b5b5969869f1662015a7d62ceb4c5d7642d4e5c27d45da36db54180`  
		Last Modified: Thu, 28 Jun 2018 07:56:57 GMT  
		Size: 400.3 KB (400333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0786b4a8280d384b77587057864ab596059db21f314c12496071ad8f993f7e84`  
		Last Modified: Thu, 28 Jun 2018 07:56:56 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf5b9c459e482ce2b3e9cdbef764d99584bf8a4a8718e78fd0f3b93228102336`  
		Last Modified: Thu, 28 Jun 2018 07:56:56 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dcf6a69a9628bc5a9c80303436282ce860115e931648228cb8c4058fc94f3a5`  
		Last Modified: Thu, 28 Jun 2018 07:57:16 GMT  
		Size: 31.9 MB (31899035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mediawiki:1.30`

```console
$ docker pull mediawiki@sha256:129d980d8e1103f2049086993482a4c065599d050359ee2002821685c6a86114
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mediawiki:1.30` - linux; amd64

```console
$ docker pull mediawiki@sha256:f804622c4dc0f33267f2d5a663482b53dc7bc77f6d97224bbe90747efbb9b130
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.1 MB (235134002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:485fd3aeb4f8af3a4fc8c6ac395f37ba974d62393126785fe3e45271a862be9a`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 26 Jun 2018 21:25:25 GMT
ADD file:28fbc9fd012eef72780d1c75fc2b0969d13f0138f735035335ab4b76793da2da in / 
# Tue, 26 Jun 2018 21:25:25 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 22:29:03 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 27 Jun 2018 22:29:03 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 27 Jun 2018 22:29:24 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 27 Jun 2018 22:29:24 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 27 Jun 2018 22:29:25 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 27 Jun 2018 22:42:42 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 22:42:42 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 27 Jun 2018 22:42:43 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 27 Jun 2018 22:42:43 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 27 Jun 2018 22:42:44 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 27 Jun 2018 22:42:45 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 27 Jun 2018 22:42:45 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 27 Jun 2018 22:42:46 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 27 Jun 2018 22:42:46 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 27 Jun 2018 22:42:46 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 27 Jun 2018 22:42:46 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 27 Jun 2018 22:42:47 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 28 Jun 2018 00:44:43 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Thu, 28 Jun 2018 00:44:43 GMT
ENV PHP_VERSION=7.1.19
# Thu, 28 Jun 2018 00:44:43 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.19.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.19.tar.xz.asc/from/this/mirror
# Thu, 28 Jun 2018 00:44:43 GMT
ENV PHP_SHA256=7cab88f269b90a8a38dbcccf3ec0d5c6eba86122431a53eaa94405bbb60370a8 PHP_MD5=
# Thu, 28 Jun 2018 00:44:54 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Thu, 28 Jun 2018 00:44:54 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 28 Jun 2018 00:47:30 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Thu, 28 Jun 2018 00:47:31 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Thu, 28 Jun 2018 00:47:31 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 28 Jun 2018 00:47:32 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Thu, 28 Jun 2018 00:47:32 GMT
WORKDIR /var/www/html
# Thu, 28 Jun 2018 00:47:32 GMT
EXPOSE 80/tcp
# Thu, 28 Jun 2018 00:47:32 GMT
CMD ["apache2-foreground"]
# Thu, 28 Jun 2018 07:45:26 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 28 Jun 2018 07:48:24 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Thu, 28 Jun 2018 07:48:44 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Thu, 28 Jun 2018 07:48:51 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 28 Jun 2018 07:48:52 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Thu, 28 Jun 2018 07:48:52 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.30
# Thu, 28 Jun 2018 07:48:53 GMT
ENV MEDIAWIKI_BRANCH=REL1_30
# Thu, 28 Jun 2018 07:48:53 GMT
ENV MEDIAWIKI_VERSION=1.30.0
# Thu, 28 Jun 2018 07:48:53 GMT
ENV MEDIAWIKI_SHA512=ec4aeb08c18af0e52aaf99124d43cd357328221934d593d87f38da804a2f4a5b172a114659f87f6de58c2140ee05ae14ec6a270574f655e7780a950a51178643
# Thu, 28 Jun 2018 07:49:02 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:683abbb4ea60e108164f1d351e7bcf13daf45941137d800086447874df05f48e`  
		Last Modified: Tue, 26 Jun 2018 21:37:45 GMT  
		Size: 22.5 MB (22496975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7573949a21a76a3f609e4d14daca15fe0c10fab84806891f2e8bded88dd40074`  
		Last Modified: Thu, 28 Jun 2018 05:19:49 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a95c20cda7b85f7e049b5b2999399d185f7048c5ac481172021f3a26dcb26b6`  
		Last Modified: Thu, 28 Jun 2018 05:20:06 GMT  
		Size: 67.5 MB (67457678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:803353b042685003f52935fa75ffd472a5c6ed1763c92a15b94142fef7dbd08e`  
		Last Modified: Thu, 28 Jun 2018 05:19:48 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07212a2089a5d184a471f9b72a1913e8bd3d0d4a02f1494f3fbb6756c0b2f285`  
		Last Modified: Thu, 28 Jun 2018 05:23:15 GMT  
		Size: 17.1 MB (17127967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f815f63d38a4a4c2b5380a6db8374a6bb49db8977a778ce11d0af458db79c25b`  
		Last Modified: Thu, 28 Jun 2018 05:23:11 GMT  
		Size: 1.2 KB (1243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2586bd0b43c23d864d044a8395e7228b35356f90dddfeedd3ccc140e98e8f32`  
		Last Modified: Thu, 28 Jun 2018 05:23:09 GMT  
		Size: 428.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:952eb484037e67ba9ddb942b0e6c00e4838309f5c1fc35802ab78c8526efee87`  
		Last Modified: Thu, 28 Jun 2018 05:23:08 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc5cbbbef49fd0d2baa459ee3db12d6877152d16c7239e928317583217b8ca41`  
		Last Modified: Thu, 28 Jun 2018 05:23:08 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44433639602b97f3981faa91249325647204697d6d0548b059cd76d9eab6ffc4`  
		Last Modified: Thu, 28 Jun 2018 05:39:15 GMT  
		Size: 12.6 MB (12563916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c78e784b9f0f9f8390923169ec1ac2b9e21f19863a9397047c2ad6fce053d45`  
		Last Modified: Thu, 28 Jun 2018 05:39:14 GMT  
		Size: 502.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a64bfee340ffc34b80576f23025ef957a7c8e03f8c0c85c03aff3843bfdc85b3`  
		Last Modified: Thu, 28 Jun 2018 05:39:18 GMT  
		Size: 14.2 MB (14186567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cd9a9755a96d52d00b5abffd2b116540034de8b779fc8147419fb48f724f1c2`  
		Last Modified: Thu, 28 Jun 2018 05:39:14 GMT  
		Size: 2.2 KB (2193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b8774609b8daf6eef0f393e97a6f021329c0f69612b783908198cbff9cf3690`  
		Last Modified: Thu, 28 Jun 2018 05:39:14 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0a04f5e4f843f2012f0484087bf53fbd1c04cce96326bf7cc460cb2966594cb`  
		Last Modified: Thu, 28 Jun 2018 07:55:58 GMT  
		Size: 56.3 MB (56335576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b193a77dfafb91e089a2553c9da18f6682a326fa5a26481fe06db6b9443e2855`  
		Last Modified: Thu, 28 Jun 2018 07:55:35 GMT  
		Size: 1.7 MB (1660713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:470a9886fe68718dce93294e287245e45168aa0cb78c93eb63546708352d756b`  
		Last Modified: Thu, 28 Jun 2018 07:55:34 GMT  
		Size: 408.6 KB (408596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ccc64a33d16414bf25b36cf8123f9c632b80888f74ac61760cde022d25e89c9`  
		Last Modified: Thu, 28 Jun 2018 07:55:34 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b70597021d09d7b0e971414e55e9de1c0167184279194a7e5d73d0b01d477341`  
		Last Modified: Thu, 28 Jun 2018 07:55:34 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a3b8b67d939ed53c06fff8b7cfecff64c0a75be0a5dcf0c45d2a0634c8ede63`  
		Last Modified: Thu, 28 Jun 2018 07:56:02 GMT  
		Size: 42.9 MB (42889138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mediawiki:1.30.0`

```console
$ docker pull mediawiki@sha256:129d980d8e1103f2049086993482a4c065599d050359ee2002821685c6a86114
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mediawiki:1.30.0` - linux; amd64

```console
$ docker pull mediawiki@sha256:f804622c4dc0f33267f2d5a663482b53dc7bc77f6d97224bbe90747efbb9b130
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.1 MB (235134002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:485fd3aeb4f8af3a4fc8c6ac395f37ba974d62393126785fe3e45271a862be9a`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 26 Jun 2018 21:25:25 GMT
ADD file:28fbc9fd012eef72780d1c75fc2b0969d13f0138f735035335ab4b76793da2da in / 
# Tue, 26 Jun 2018 21:25:25 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 22:29:03 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 27 Jun 2018 22:29:03 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 27 Jun 2018 22:29:24 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 27 Jun 2018 22:29:24 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 27 Jun 2018 22:29:25 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 27 Jun 2018 22:42:42 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 22:42:42 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 27 Jun 2018 22:42:43 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 27 Jun 2018 22:42:43 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 27 Jun 2018 22:42:44 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 27 Jun 2018 22:42:45 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 27 Jun 2018 22:42:45 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 27 Jun 2018 22:42:46 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 27 Jun 2018 22:42:46 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 27 Jun 2018 22:42:46 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 27 Jun 2018 22:42:46 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 27 Jun 2018 22:42:47 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 28 Jun 2018 00:44:43 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Thu, 28 Jun 2018 00:44:43 GMT
ENV PHP_VERSION=7.1.19
# Thu, 28 Jun 2018 00:44:43 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.19.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.19.tar.xz.asc/from/this/mirror
# Thu, 28 Jun 2018 00:44:43 GMT
ENV PHP_SHA256=7cab88f269b90a8a38dbcccf3ec0d5c6eba86122431a53eaa94405bbb60370a8 PHP_MD5=
# Thu, 28 Jun 2018 00:44:54 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Thu, 28 Jun 2018 00:44:54 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 28 Jun 2018 00:47:30 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Thu, 28 Jun 2018 00:47:31 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Thu, 28 Jun 2018 00:47:31 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 28 Jun 2018 00:47:32 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Thu, 28 Jun 2018 00:47:32 GMT
WORKDIR /var/www/html
# Thu, 28 Jun 2018 00:47:32 GMT
EXPOSE 80/tcp
# Thu, 28 Jun 2018 00:47:32 GMT
CMD ["apache2-foreground"]
# Thu, 28 Jun 2018 07:45:26 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 28 Jun 2018 07:48:24 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Thu, 28 Jun 2018 07:48:44 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Thu, 28 Jun 2018 07:48:51 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 28 Jun 2018 07:48:52 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Thu, 28 Jun 2018 07:48:52 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.30
# Thu, 28 Jun 2018 07:48:53 GMT
ENV MEDIAWIKI_BRANCH=REL1_30
# Thu, 28 Jun 2018 07:48:53 GMT
ENV MEDIAWIKI_VERSION=1.30.0
# Thu, 28 Jun 2018 07:48:53 GMT
ENV MEDIAWIKI_SHA512=ec4aeb08c18af0e52aaf99124d43cd357328221934d593d87f38da804a2f4a5b172a114659f87f6de58c2140ee05ae14ec6a270574f655e7780a950a51178643
# Thu, 28 Jun 2018 07:49:02 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:683abbb4ea60e108164f1d351e7bcf13daf45941137d800086447874df05f48e`  
		Last Modified: Tue, 26 Jun 2018 21:37:45 GMT  
		Size: 22.5 MB (22496975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7573949a21a76a3f609e4d14daca15fe0c10fab84806891f2e8bded88dd40074`  
		Last Modified: Thu, 28 Jun 2018 05:19:49 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a95c20cda7b85f7e049b5b2999399d185f7048c5ac481172021f3a26dcb26b6`  
		Last Modified: Thu, 28 Jun 2018 05:20:06 GMT  
		Size: 67.5 MB (67457678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:803353b042685003f52935fa75ffd472a5c6ed1763c92a15b94142fef7dbd08e`  
		Last Modified: Thu, 28 Jun 2018 05:19:48 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07212a2089a5d184a471f9b72a1913e8bd3d0d4a02f1494f3fbb6756c0b2f285`  
		Last Modified: Thu, 28 Jun 2018 05:23:15 GMT  
		Size: 17.1 MB (17127967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f815f63d38a4a4c2b5380a6db8374a6bb49db8977a778ce11d0af458db79c25b`  
		Last Modified: Thu, 28 Jun 2018 05:23:11 GMT  
		Size: 1.2 KB (1243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2586bd0b43c23d864d044a8395e7228b35356f90dddfeedd3ccc140e98e8f32`  
		Last Modified: Thu, 28 Jun 2018 05:23:09 GMT  
		Size: 428.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:952eb484037e67ba9ddb942b0e6c00e4838309f5c1fc35802ab78c8526efee87`  
		Last Modified: Thu, 28 Jun 2018 05:23:08 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc5cbbbef49fd0d2baa459ee3db12d6877152d16c7239e928317583217b8ca41`  
		Last Modified: Thu, 28 Jun 2018 05:23:08 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44433639602b97f3981faa91249325647204697d6d0548b059cd76d9eab6ffc4`  
		Last Modified: Thu, 28 Jun 2018 05:39:15 GMT  
		Size: 12.6 MB (12563916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c78e784b9f0f9f8390923169ec1ac2b9e21f19863a9397047c2ad6fce053d45`  
		Last Modified: Thu, 28 Jun 2018 05:39:14 GMT  
		Size: 502.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a64bfee340ffc34b80576f23025ef957a7c8e03f8c0c85c03aff3843bfdc85b3`  
		Last Modified: Thu, 28 Jun 2018 05:39:18 GMT  
		Size: 14.2 MB (14186567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cd9a9755a96d52d00b5abffd2b116540034de8b779fc8147419fb48f724f1c2`  
		Last Modified: Thu, 28 Jun 2018 05:39:14 GMT  
		Size: 2.2 KB (2193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b8774609b8daf6eef0f393e97a6f021329c0f69612b783908198cbff9cf3690`  
		Last Modified: Thu, 28 Jun 2018 05:39:14 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0a04f5e4f843f2012f0484087bf53fbd1c04cce96326bf7cc460cb2966594cb`  
		Last Modified: Thu, 28 Jun 2018 07:55:58 GMT  
		Size: 56.3 MB (56335576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b193a77dfafb91e089a2553c9da18f6682a326fa5a26481fe06db6b9443e2855`  
		Last Modified: Thu, 28 Jun 2018 07:55:35 GMT  
		Size: 1.7 MB (1660713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:470a9886fe68718dce93294e287245e45168aa0cb78c93eb63546708352d756b`  
		Last Modified: Thu, 28 Jun 2018 07:55:34 GMT  
		Size: 408.6 KB (408596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ccc64a33d16414bf25b36cf8123f9c632b80888f74ac61760cde022d25e89c9`  
		Last Modified: Thu, 28 Jun 2018 07:55:34 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b70597021d09d7b0e971414e55e9de1c0167184279194a7e5d73d0b01d477341`  
		Last Modified: Thu, 28 Jun 2018 07:55:34 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a3b8b67d939ed53c06fff8b7cfecff64c0a75be0a5dcf0c45d2a0634c8ede63`  
		Last Modified: Thu, 28 Jun 2018 07:56:02 GMT  
		Size: 42.9 MB (42889138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mediawiki:1.31`

```console
$ docker pull mediawiki@sha256:9a0784234a9471fcfa64cb7201b56dec339b9097162ae98f694aa4a41382872b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mediawiki:1.31` - linux; amd64

```console
$ docker pull mediawiki@sha256:6a4d0ee74c5e6265099b4f51db211371f9de5a9b89d97362a8be669b3cd20cf3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.9 MB (230886317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:740cf877e769f32858634b8ddef0ee8a5e5474236ddb3e6481b8b1b9bee77345`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 26 Jun 2018 21:25:25 GMT
ADD file:28fbc9fd012eef72780d1c75fc2b0969d13f0138f735035335ab4b76793da2da in / 
# Tue, 26 Jun 2018 21:25:25 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 22:29:03 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 27 Jun 2018 22:29:03 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 27 Jun 2018 22:29:24 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 27 Jun 2018 22:29:24 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 27 Jun 2018 22:29:25 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 27 Jun 2018 22:42:42 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 22:42:42 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 27 Jun 2018 22:42:43 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 27 Jun 2018 22:42:43 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 27 Jun 2018 22:42:44 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 27 Jun 2018 22:42:45 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 27 Jun 2018 22:42:45 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 27 Jun 2018 22:42:46 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 27 Jun 2018 22:42:46 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 27 Jun 2018 22:42:46 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 27 Jun 2018 22:42:46 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 27 Jun 2018 22:42:47 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 27 Jun 2018 22:42:47 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Wed, 27 Jun 2018 22:42:47 GMT
ENV PHP_VERSION=7.2.7
# Wed, 27 Jun 2018 22:42:47 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.7.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.7.tar.xz.asc/from/this/mirror
# Wed, 27 Jun 2018 22:42:47 GMT
ENV PHP_SHA256=eb01c0153b3baf1f64b8b044013ce414b52fede222df3f509e8ff209478f31f0 PHP_MD5=
# Wed, 27 Jun 2018 22:42:57 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 27 Jun 2018 22:42:58 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 27 Jun 2018 22:45:47 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-0-dev 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 27 Jun 2018 22:45:48 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Wed, 27 Jun 2018 22:45:49 GMT
RUN docker-php-ext-enable sodium
# Wed, 27 Jun 2018 22:45:49 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 27 Jun 2018 22:45:49 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Wed, 27 Jun 2018 22:45:50 GMT
WORKDIR /var/www/html
# Wed, 27 Jun 2018 22:45:50 GMT
EXPOSE 80/tcp
# Wed, 27 Jun 2018 22:45:50 GMT
CMD ["apache2-foreground"]
# Thu, 28 Jun 2018 07:40:51 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python3 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 28 Jun 2018 07:43:59 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Thu, 28 Jun 2018 07:44:18 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu 	&& docker-php-ext-enable apcu
# Thu, 28 Jun 2018 07:44:18 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 28 Jun 2018 07:44:19 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Thu, 28 Jun 2018 07:44:19 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.31
# Thu, 28 Jun 2018 07:44:19 GMT
ENV MEDIAWIKI_BRANCH=REL1_31
# Thu, 28 Jun 2018 07:44:20 GMT
ENV MEDIAWIKI_VERSION=1.31.0
# Thu, 28 Jun 2018 07:44:20 GMT
ENV MEDIAWIKI_SHA512=50ad9303b0c0bd8380dea7489be18a4022d5b65a31961af8d36c3c9ff6d74cdf25e8e10137ef1e025b4287e9ee9b7e0bf4198ca342a46ab42915c91f1ddaf940
# Thu, 28 Jun 2018 07:44:29 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:683abbb4ea60e108164f1d351e7bcf13daf45941137d800086447874df05f48e`  
		Last Modified: Tue, 26 Jun 2018 21:37:45 GMT  
		Size: 22.5 MB (22496975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7573949a21a76a3f609e4d14daca15fe0c10fab84806891f2e8bded88dd40074`  
		Last Modified: Thu, 28 Jun 2018 05:19:49 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a95c20cda7b85f7e049b5b2999399d185f7048c5ac481172021f3a26dcb26b6`  
		Last Modified: Thu, 28 Jun 2018 05:20:06 GMT  
		Size: 67.5 MB (67457678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:803353b042685003f52935fa75ffd472a5c6ed1763c92a15b94142fef7dbd08e`  
		Last Modified: Thu, 28 Jun 2018 05:19:48 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07212a2089a5d184a471f9b72a1913e8bd3d0d4a02f1494f3fbb6756c0b2f285`  
		Last Modified: Thu, 28 Jun 2018 05:23:15 GMT  
		Size: 17.1 MB (17127967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f815f63d38a4a4c2b5380a6db8374a6bb49db8977a778ce11d0af458db79c25b`  
		Last Modified: Thu, 28 Jun 2018 05:23:11 GMT  
		Size: 1.2 KB (1243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2586bd0b43c23d864d044a8395e7228b35356f90dddfeedd3ccc140e98e8f32`  
		Last Modified: Thu, 28 Jun 2018 05:23:09 GMT  
		Size: 428.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:952eb484037e67ba9ddb942b0e6c00e4838309f5c1fc35802ab78c8526efee87`  
		Last Modified: Thu, 28 Jun 2018 05:23:08 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc5cbbbef49fd0d2baa459ee3db12d6877152d16c7239e928317583217b8ca41`  
		Last Modified: Thu, 28 Jun 2018 05:23:08 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:400874eeb80020a1a5b2a38805a3ba199f92ed12fc9bdc42d67c915f1ba7de28`  
		Last Modified: Thu, 28 Jun 2018 05:23:10 GMT  
		Size: 12.5 MB (12464575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7bba14e289cd3bf25bd0d00e8f9acff69f4eba19fe5bd2ca4ade363014bb5e1`  
		Last Modified: Thu, 28 Jun 2018 05:23:06 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:019a3f5a16dc0a19b187797379f4df4a36ac4284939269c654efafdcce7810ca`  
		Last Modified: Thu, 28 Jun 2018 05:23:11 GMT  
		Size: 15.2 MB (15198517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4a37c4529f06aefa4c5ce2262520c1c0e51d9f0e6ebbe2c4735a81cba4da5b4`  
		Last Modified: Thu, 28 Jun 2018 05:23:06 GMT  
		Size: 2.2 KB (2193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f458814f77a84b0ada4ea9ee2096b7ed00f556afa3dba0f5874314ff272b7a9`  
		Last Modified: Thu, 28 Jun 2018 05:23:06 GMT  
		Size: 261.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b51e043526af487ad7f150485292cbe6f9d91debc1207f0390722e07cf53566c`  
		Last Modified: Thu, 28 Jun 2018 05:23:06 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cec552be07fd0a5be2ec87cf7793878688a6201f49e594b9c1f8091ba4ed312`  
		Last Modified: Thu, 28 Jun 2018 07:54:18 GMT  
		Size: 58.3 MB (58322161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc59a30dbc5adcf6c70e05a8f69a7cd03b89bc8a6a213413ac7c50061c720989`  
		Last Modified: Thu, 28 Jun 2018 07:53:53 GMT  
		Size: 1.8 MB (1754981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc90b383bccd0a23fffa8ff6304fe386df5a89fc58c497df691a43bff99b0b44`  
		Last Modified: Thu, 28 Jun 2018 07:53:53 GMT  
		Size: 397.4 KB (397383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44738fc320325240901402764f4c81c895ed724df559588442f7d1bb2eb7b099`  
		Last Modified: Thu, 28 Jun 2018 07:53:53 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:920b8d414677317efeccd9fd564083ac32d277f08ddd7f8685cfd58d7164d9f6`  
		Last Modified: Thu, 28 Jun 2018 07:53:53 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c340eecfca01f0f73532320ee2abe99eece12308c18fff08c71f4763e4ae21b0`  
		Last Modified: Thu, 28 Jun 2018 07:54:12 GMT  
		Size: 35.7 MB (35658945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mediawiki:1.31.0`

```console
$ docker pull mediawiki@sha256:9a0784234a9471fcfa64cb7201b56dec339b9097162ae98f694aa4a41382872b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mediawiki:1.31.0` - linux; amd64

```console
$ docker pull mediawiki@sha256:6a4d0ee74c5e6265099b4f51db211371f9de5a9b89d97362a8be669b3cd20cf3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.9 MB (230886317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:740cf877e769f32858634b8ddef0ee8a5e5474236ddb3e6481b8b1b9bee77345`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 26 Jun 2018 21:25:25 GMT
ADD file:28fbc9fd012eef72780d1c75fc2b0969d13f0138f735035335ab4b76793da2da in / 
# Tue, 26 Jun 2018 21:25:25 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 22:29:03 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 27 Jun 2018 22:29:03 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 27 Jun 2018 22:29:24 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 27 Jun 2018 22:29:24 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 27 Jun 2018 22:29:25 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 27 Jun 2018 22:42:42 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 22:42:42 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 27 Jun 2018 22:42:43 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 27 Jun 2018 22:42:43 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 27 Jun 2018 22:42:44 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 27 Jun 2018 22:42:45 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 27 Jun 2018 22:42:45 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 27 Jun 2018 22:42:46 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 27 Jun 2018 22:42:46 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 27 Jun 2018 22:42:46 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 27 Jun 2018 22:42:46 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 27 Jun 2018 22:42:47 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 27 Jun 2018 22:42:47 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Wed, 27 Jun 2018 22:42:47 GMT
ENV PHP_VERSION=7.2.7
# Wed, 27 Jun 2018 22:42:47 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.7.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.7.tar.xz.asc/from/this/mirror
# Wed, 27 Jun 2018 22:42:47 GMT
ENV PHP_SHA256=eb01c0153b3baf1f64b8b044013ce414b52fede222df3f509e8ff209478f31f0 PHP_MD5=
# Wed, 27 Jun 2018 22:42:57 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 27 Jun 2018 22:42:58 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 27 Jun 2018 22:45:47 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-0-dev 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 27 Jun 2018 22:45:48 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Wed, 27 Jun 2018 22:45:49 GMT
RUN docker-php-ext-enable sodium
# Wed, 27 Jun 2018 22:45:49 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 27 Jun 2018 22:45:49 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Wed, 27 Jun 2018 22:45:50 GMT
WORKDIR /var/www/html
# Wed, 27 Jun 2018 22:45:50 GMT
EXPOSE 80/tcp
# Wed, 27 Jun 2018 22:45:50 GMT
CMD ["apache2-foreground"]
# Thu, 28 Jun 2018 07:40:51 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python3 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 28 Jun 2018 07:43:59 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Thu, 28 Jun 2018 07:44:18 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu 	&& docker-php-ext-enable apcu
# Thu, 28 Jun 2018 07:44:18 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 28 Jun 2018 07:44:19 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Thu, 28 Jun 2018 07:44:19 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.31
# Thu, 28 Jun 2018 07:44:19 GMT
ENV MEDIAWIKI_BRANCH=REL1_31
# Thu, 28 Jun 2018 07:44:20 GMT
ENV MEDIAWIKI_VERSION=1.31.0
# Thu, 28 Jun 2018 07:44:20 GMT
ENV MEDIAWIKI_SHA512=50ad9303b0c0bd8380dea7489be18a4022d5b65a31961af8d36c3c9ff6d74cdf25e8e10137ef1e025b4287e9ee9b7e0bf4198ca342a46ab42915c91f1ddaf940
# Thu, 28 Jun 2018 07:44:29 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:683abbb4ea60e108164f1d351e7bcf13daf45941137d800086447874df05f48e`  
		Last Modified: Tue, 26 Jun 2018 21:37:45 GMT  
		Size: 22.5 MB (22496975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7573949a21a76a3f609e4d14daca15fe0c10fab84806891f2e8bded88dd40074`  
		Last Modified: Thu, 28 Jun 2018 05:19:49 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a95c20cda7b85f7e049b5b2999399d185f7048c5ac481172021f3a26dcb26b6`  
		Last Modified: Thu, 28 Jun 2018 05:20:06 GMT  
		Size: 67.5 MB (67457678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:803353b042685003f52935fa75ffd472a5c6ed1763c92a15b94142fef7dbd08e`  
		Last Modified: Thu, 28 Jun 2018 05:19:48 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07212a2089a5d184a471f9b72a1913e8bd3d0d4a02f1494f3fbb6756c0b2f285`  
		Last Modified: Thu, 28 Jun 2018 05:23:15 GMT  
		Size: 17.1 MB (17127967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f815f63d38a4a4c2b5380a6db8374a6bb49db8977a778ce11d0af458db79c25b`  
		Last Modified: Thu, 28 Jun 2018 05:23:11 GMT  
		Size: 1.2 KB (1243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2586bd0b43c23d864d044a8395e7228b35356f90dddfeedd3ccc140e98e8f32`  
		Last Modified: Thu, 28 Jun 2018 05:23:09 GMT  
		Size: 428.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:952eb484037e67ba9ddb942b0e6c00e4838309f5c1fc35802ab78c8526efee87`  
		Last Modified: Thu, 28 Jun 2018 05:23:08 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc5cbbbef49fd0d2baa459ee3db12d6877152d16c7239e928317583217b8ca41`  
		Last Modified: Thu, 28 Jun 2018 05:23:08 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:400874eeb80020a1a5b2a38805a3ba199f92ed12fc9bdc42d67c915f1ba7de28`  
		Last Modified: Thu, 28 Jun 2018 05:23:10 GMT  
		Size: 12.5 MB (12464575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7bba14e289cd3bf25bd0d00e8f9acff69f4eba19fe5bd2ca4ade363014bb5e1`  
		Last Modified: Thu, 28 Jun 2018 05:23:06 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:019a3f5a16dc0a19b187797379f4df4a36ac4284939269c654efafdcce7810ca`  
		Last Modified: Thu, 28 Jun 2018 05:23:11 GMT  
		Size: 15.2 MB (15198517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4a37c4529f06aefa4c5ce2262520c1c0e51d9f0e6ebbe2c4735a81cba4da5b4`  
		Last Modified: Thu, 28 Jun 2018 05:23:06 GMT  
		Size: 2.2 KB (2193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f458814f77a84b0ada4ea9ee2096b7ed00f556afa3dba0f5874314ff272b7a9`  
		Last Modified: Thu, 28 Jun 2018 05:23:06 GMT  
		Size: 261.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b51e043526af487ad7f150485292cbe6f9d91debc1207f0390722e07cf53566c`  
		Last Modified: Thu, 28 Jun 2018 05:23:06 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cec552be07fd0a5be2ec87cf7793878688a6201f49e594b9c1f8091ba4ed312`  
		Last Modified: Thu, 28 Jun 2018 07:54:18 GMT  
		Size: 58.3 MB (58322161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc59a30dbc5adcf6c70e05a8f69a7cd03b89bc8a6a213413ac7c50061c720989`  
		Last Modified: Thu, 28 Jun 2018 07:53:53 GMT  
		Size: 1.8 MB (1754981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc90b383bccd0a23fffa8ff6304fe386df5a89fc58c497df691a43bff99b0b44`  
		Last Modified: Thu, 28 Jun 2018 07:53:53 GMT  
		Size: 397.4 KB (397383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44738fc320325240901402764f4c81c895ed724df559588442f7d1bb2eb7b099`  
		Last Modified: Thu, 28 Jun 2018 07:53:53 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:920b8d414677317efeccd9fd564083ac32d277f08ddd7f8685cfd58d7164d9f6`  
		Last Modified: Thu, 28 Jun 2018 07:53:53 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c340eecfca01f0f73532320ee2abe99eece12308c18fff08c71f4763e4ae21b0`  
		Last Modified: Thu, 28 Jun 2018 07:54:12 GMT  
		Size: 35.7 MB (35658945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mediawiki:latest`

```console
$ docker pull mediawiki@sha256:9a0784234a9471fcfa64cb7201b56dec339b9097162ae98f694aa4a41382872b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mediawiki:latest` - linux; amd64

```console
$ docker pull mediawiki@sha256:6a4d0ee74c5e6265099b4f51db211371f9de5a9b89d97362a8be669b3cd20cf3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.9 MB (230886317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:740cf877e769f32858634b8ddef0ee8a5e5474236ddb3e6481b8b1b9bee77345`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 26 Jun 2018 21:25:25 GMT
ADD file:28fbc9fd012eef72780d1c75fc2b0969d13f0138f735035335ab4b76793da2da in / 
# Tue, 26 Jun 2018 21:25:25 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 22:29:03 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 27 Jun 2018 22:29:03 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 27 Jun 2018 22:29:24 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 27 Jun 2018 22:29:24 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 27 Jun 2018 22:29:25 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 27 Jun 2018 22:42:42 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 22:42:42 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 27 Jun 2018 22:42:43 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 27 Jun 2018 22:42:43 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 27 Jun 2018 22:42:44 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 27 Jun 2018 22:42:45 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 27 Jun 2018 22:42:45 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 27 Jun 2018 22:42:46 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 27 Jun 2018 22:42:46 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 27 Jun 2018 22:42:46 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 27 Jun 2018 22:42:46 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 27 Jun 2018 22:42:47 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 27 Jun 2018 22:42:47 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Wed, 27 Jun 2018 22:42:47 GMT
ENV PHP_VERSION=7.2.7
# Wed, 27 Jun 2018 22:42:47 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.7.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.7.tar.xz.asc/from/this/mirror
# Wed, 27 Jun 2018 22:42:47 GMT
ENV PHP_SHA256=eb01c0153b3baf1f64b8b044013ce414b52fede222df3f509e8ff209478f31f0 PHP_MD5=
# Wed, 27 Jun 2018 22:42:57 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 27 Jun 2018 22:42:58 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 27 Jun 2018 22:45:47 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-0-dev 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 27 Jun 2018 22:45:48 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Wed, 27 Jun 2018 22:45:49 GMT
RUN docker-php-ext-enable sodium
# Wed, 27 Jun 2018 22:45:49 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 27 Jun 2018 22:45:49 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Wed, 27 Jun 2018 22:45:50 GMT
WORKDIR /var/www/html
# Wed, 27 Jun 2018 22:45:50 GMT
EXPOSE 80/tcp
# Wed, 27 Jun 2018 22:45:50 GMT
CMD ["apache2-foreground"]
# Thu, 28 Jun 2018 07:40:51 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python3 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 28 Jun 2018 07:43:59 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Thu, 28 Jun 2018 07:44:18 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu 	&& docker-php-ext-enable apcu
# Thu, 28 Jun 2018 07:44:18 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 28 Jun 2018 07:44:19 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Thu, 28 Jun 2018 07:44:19 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.31
# Thu, 28 Jun 2018 07:44:19 GMT
ENV MEDIAWIKI_BRANCH=REL1_31
# Thu, 28 Jun 2018 07:44:20 GMT
ENV MEDIAWIKI_VERSION=1.31.0
# Thu, 28 Jun 2018 07:44:20 GMT
ENV MEDIAWIKI_SHA512=50ad9303b0c0bd8380dea7489be18a4022d5b65a31961af8d36c3c9ff6d74cdf25e8e10137ef1e025b4287e9ee9b7e0bf4198ca342a46ab42915c91f1ddaf940
# Thu, 28 Jun 2018 07:44:29 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:683abbb4ea60e108164f1d351e7bcf13daf45941137d800086447874df05f48e`  
		Last Modified: Tue, 26 Jun 2018 21:37:45 GMT  
		Size: 22.5 MB (22496975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7573949a21a76a3f609e4d14daca15fe0c10fab84806891f2e8bded88dd40074`  
		Last Modified: Thu, 28 Jun 2018 05:19:49 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a95c20cda7b85f7e049b5b2999399d185f7048c5ac481172021f3a26dcb26b6`  
		Last Modified: Thu, 28 Jun 2018 05:20:06 GMT  
		Size: 67.5 MB (67457678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:803353b042685003f52935fa75ffd472a5c6ed1763c92a15b94142fef7dbd08e`  
		Last Modified: Thu, 28 Jun 2018 05:19:48 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07212a2089a5d184a471f9b72a1913e8bd3d0d4a02f1494f3fbb6756c0b2f285`  
		Last Modified: Thu, 28 Jun 2018 05:23:15 GMT  
		Size: 17.1 MB (17127967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f815f63d38a4a4c2b5380a6db8374a6bb49db8977a778ce11d0af458db79c25b`  
		Last Modified: Thu, 28 Jun 2018 05:23:11 GMT  
		Size: 1.2 KB (1243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2586bd0b43c23d864d044a8395e7228b35356f90dddfeedd3ccc140e98e8f32`  
		Last Modified: Thu, 28 Jun 2018 05:23:09 GMT  
		Size: 428.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:952eb484037e67ba9ddb942b0e6c00e4838309f5c1fc35802ab78c8526efee87`  
		Last Modified: Thu, 28 Jun 2018 05:23:08 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc5cbbbef49fd0d2baa459ee3db12d6877152d16c7239e928317583217b8ca41`  
		Last Modified: Thu, 28 Jun 2018 05:23:08 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:400874eeb80020a1a5b2a38805a3ba199f92ed12fc9bdc42d67c915f1ba7de28`  
		Last Modified: Thu, 28 Jun 2018 05:23:10 GMT  
		Size: 12.5 MB (12464575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7bba14e289cd3bf25bd0d00e8f9acff69f4eba19fe5bd2ca4ade363014bb5e1`  
		Last Modified: Thu, 28 Jun 2018 05:23:06 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:019a3f5a16dc0a19b187797379f4df4a36ac4284939269c654efafdcce7810ca`  
		Last Modified: Thu, 28 Jun 2018 05:23:11 GMT  
		Size: 15.2 MB (15198517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4a37c4529f06aefa4c5ce2262520c1c0e51d9f0e6ebbe2c4735a81cba4da5b4`  
		Last Modified: Thu, 28 Jun 2018 05:23:06 GMT  
		Size: 2.2 KB (2193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f458814f77a84b0ada4ea9ee2096b7ed00f556afa3dba0f5874314ff272b7a9`  
		Last Modified: Thu, 28 Jun 2018 05:23:06 GMT  
		Size: 261.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b51e043526af487ad7f150485292cbe6f9d91debc1207f0390722e07cf53566c`  
		Last Modified: Thu, 28 Jun 2018 05:23:06 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cec552be07fd0a5be2ec87cf7793878688a6201f49e594b9c1f8091ba4ed312`  
		Last Modified: Thu, 28 Jun 2018 07:54:18 GMT  
		Size: 58.3 MB (58322161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc59a30dbc5adcf6c70e05a8f69a7cd03b89bc8a6a213413ac7c50061c720989`  
		Last Modified: Thu, 28 Jun 2018 07:53:53 GMT  
		Size: 1.8 MB (1754981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc90b383bccd0a23fffa8ff6304fe386df5a89fc58c497df691a43bff99b0b44`  
		Last Modified: Thu, 28 Jun 2018 07:53:53 GMT  
		Size: 397.4 KB (397383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44738fc320325240901402764f4c81c895ed724df559588442f7d1bb2eb7b099`  
		Last Modified: Thu, 28 Jun 2018 07:53:53 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:920b8d414677317efeccd9fd564083ac32d277f08ddd7f8685cfd58d7164d9f6`  
		Last Modified: Thu, 28 Jun 2018 07:53:53 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c340eecfca01f0f73532320ee2abe99eece12308c18fff08c71f4763e4ae21b0`  
		Last Modified: Thu, 28 Jun 2018 07:54:12 GMT  
		Size: 35.7 MB (35658945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mediawiki:legacy`

```console
$ docker pull mediawiki@sha256:129d980d8e1103f2049086993482a4c065599d050359ee2002821685c6a86114
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mediawiki:legacy` - linux; amd64

```console
$ docker pull mediawiki@sha256:f804622c4dc0f33267f2d5a663482b53dc7bc77f6d97224bbe90747efbb9b130
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.1 MB (235134002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:485fd3aeb4f8af3a4fc8c6ac395f37ba974d62393126785fe3e45271a862be9a`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 26 Jun 2018 21:25:25 GMT
ADD file:28fbc9fd012eef72780d1c75fc2b0969d13f0138f735035335ab4b76793da2da in / 
# Tue, 26 Jun 2018 21:25:25 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 22:29:03 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 27 Jun 2018 22:29:03 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 27 Jun 2018 22:29:24 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 27 Jun 2018 22:29:24 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 27 Jun 2018 22:29:25 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 27 Jun 2018 22:42:42 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 22:42:42 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 27 Jun 2018 22:42:43 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 27 Jun 2018 22:42:43 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 27 Jun 2018 22:42:44 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 27 Jun 2018 22:42:45 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 27 Jun 2018 22:42:45 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 27 Jun 2018 22:42:46 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 27 Jun 2018 22:42:46 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 27 Jun 2018 22:42:46 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 27 Jun 2018 22:42:46 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 27 Jun 2018 22:42:47 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 28 Jun 2018 00:44:43 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Thu, 28 Jun 2018 00:44:43 GMT
ENV PHP_VERSION=7.1.19
# Thu, 28 Jun 2018 00:44:43 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.19.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.19.tar.xz.asc/from/this/mirror
# Thu, 28 Jun 2018 00:44:43 GMT
ENV PHP_SHA256=7cab88f269b90a8a38dbcccf3ec0d5c6eba86122431a53eaa94405bbb60370a8 PHP_MD5=
# Thu, 28 Jun 2018 00:44:54 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Thu, 28 Jun 2018 00:44:54 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 28 Jun 2018 00:47:30 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Thu, 28 Jun 2018 00:47:31 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Thu, 28 Jun 2018 00:47:31 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 28 Jun 2018 00:47:32 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Thu, 28 Jun 2018 00:47:32 GMT
WORKDIR /var/www/html
# Thu, 28 Jun 2018 00:47:32 GMT
EXPOSE 80/tcp
# Thu, 28 Jun 2018 00:47:32 GMT
CMD ["apache2-foreground"]
# Thu, 28 Jun 2018 07:45:26 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 28 Jun 2018 07:48:24 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Thu, 28 Jun 2018 07:48:44 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Thu, 28 Jun 2018 07:48:51 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 28 Jun 2018 07:48:52 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Thu, 28 Jun 2018 07:48:52 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.30
# Thu, 28 Jun 2018 07:48:53 GMT
ENV MEDIAWIKI_BRANCH=REL1_30
# Thu, 28 Jun 2018 07:48:53 GMT
ENV MEDIAWIKI_VERSION=1.30.0
# Thu, 28 Jun 2018 07:48:53 GMT
ENV MEDIAWIKI_SHA512=ec4aeb08c18af0e52aaf99124d43cd357328221934d593d87f38da804a2f4a5b172a114659f87f6de58c2140ee05ae14ec6a270574f655e7780a950a51178643
# Thu, 28 Jun 2018 07:49:02 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:683abbb4ea60e108164f1d351e7bcf13daf45941137d800086447874df05f48e`  
		Last Modified: Tue, 26 Jun 2018 21:37:45 GMT  
		Size: 22.5 MB (22496975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7573949a21a76a3f609e4d14daca15fe0c10fab84806891f2e8bded88dd40074`  
		Last Modified: Thu, 28 Jun 2018 05:19:49 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a95c20cda7b85f7e049b5b2999399d185f7048c5ac481172021f3a26dcb26b6`  
		Last Modified: Thu, 28 Jun 2018 05:20:06 GMT  
		Size: 67.5 MB (67457678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:803353b042685003f52935fa75ffd472a5c6ed1763c92a15b94142fef7dbd08e`  
		Last Modified: Thu, 28 Jun 2018 05:19:48 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07212a2089a5d184a471f9b72a1913e8bd3d0d4a02f1494f3fbb6756c0b2f285`  
		Last Modified: Thu, 28 Jun 2018 05:23:15 GMT  
		Size: 17.1 MB (17127967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f815f63d38a4a4c2b5380a6db8374a6bb49db8977a778ce11d0af458db79c25b`  
		Last Modified: Thu, 28 Jun 2018 05:23:11 GMT  
		Size: 1.2 KB (1243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2586bd0b43c23d864d044a8395e7228b35356f90dddfeedd3ccc140e98e8f32`  
		Last Modified: Thu, 28 Jun 2018 05:23:09 GMT  
		Size: 428.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:952eb484037e67ba9ddb942b0e6c00e4838309f5c1fc35802ab78c8526efee87`  
		Last Modified: Thu, 28 Jun 2018 05:23:08 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc5cbbbef49fd0d2baa459ee3db12d6877152d16c7239e928317583217b8ca41`  
		Last Modified: Thu, 28 Jun 2018 05:23:08 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44433639602b97f3981faa91249325647204697d6d0548b059cd76d9eab6ffc4`  
		Last Modified: Thu, 28 Jun 2018 05:39:15 GMT  
		Size: 12.6 MB (12563916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c78e784b9f0f9f8390923169ec1ac2b9e21f19863a9397047c2ad6fce053d45`  
		Last Modified: Thu, 28 Jun 2018 05:39:14 GMT  
		Size: 502.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a64bfee340ffc34b80576f23025ef957a7c8e03f8c0c85c03aff3843bfdc85b3`  
		Last Modified: Thu, 28 Jun 2018 05:39:18 GMT  
		Size: 14.2 MB (14186567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cd9a9755a96d52d00b5abffd2b116540034de8b779fc8147419fb48f724f1c2`  
		Last Modified: Thu, 28 Jun 2018 05:39:14 GMT  
		Size: 2.2 KB (2193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b8774609b8daf6eef0f393e97a6f021329c0f69612b783908198cbff9cf3690`  
		Last Modified: Thu, 28 Jun 2018 05:39:14 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0a04f5e4f843f2012f0484087bf53fbd1c04cce96326bf7cc460cb2966594cb`  
		Last Modified: Thu, 28 Jun 2018 07:55:58 GMT  
		Size: 56.3 MB (56335576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b193a77dfafb91e089a2553c9da18f6682a326fa5a26481fe06db6b9443e2855`  
		Last Modified: Thu, 28 Jun 2018 07:55:35 GMT  
		Size: 1.7 MB (1660713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:470a9886fe68718dce93294e287245e45168aa0cb78c93eb63546708352d756b`  
		Last Modified: Thu, 28 Jun 2018 07:55:34 GMT  
		Size: 408.6 KB (408596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ccc64a33d16414bf25b36cf8123f9c632b80888f74ac61760cde022d25e89c9`  
		Last Modified: Thu, 28 Jun 2018 07:55:34 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b70597021d09d7b0e971414e55e9de1c0167184279194a7e5d73d0b01d477341`  
		Last Modified: Thu, 28 Jun 2018 07:55:34 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a3b8b67d939ed53c06fff8b7cfecff64c0a75be0a5dcf0c45d2a0634c8ede63`  
		Last Modified: Thu, 28 Jun 2018 07:56:02 GMT  
		Size: 42.9 MB (42889138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mediawiki:lts`

```console
$ docker pull mediawiki@sha256:b3a57866aeaa00444acc5e579fd927eb6b0aa69ae167874c1e14cc45cd6ba64f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mediawiki:lts` - linux; amd64

```console
$ docker pull mediawiki@sha256:f69606fa1c16bb4657df11d51bceb7c1f2cf857d5cbcbac0c2c120333924a72a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.5 MB (223514414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c61fd90b0ebc93dc2adc316d9e7400dcbca3f8b0c9e676f868616756241ac23b`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 26 Jun 2018 21:25:25 GMT
ADD file:28fbc9fd012eef72780d1c75fc2b0969d13f0138f735035335ab4b76793da2da in / 
# Tue, 26 Jun 2018 21:25:25 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 22:29:03 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 27 Jun 2018 22:29:03 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 27 Jun 2018 22:29:24 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 27 Jun 2018 22:29:24 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 27 Jun 2018 22:29:25 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 27 Jun 2018 22:42:42 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 22:42:42 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 27 Jun 2018 22:42:43 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 27 Jun 2018 22:42:43 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 27 Jun 2018 22:42:44 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 27 Jun 2018 22:42:45 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 27 Jun 2018 22:42:45 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 27 Jun 2018 22:42:46 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 27 Jun 2018 22:42:46 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 27 Jun 2018 22:42:46 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 27 Jun 2018 22:42:46 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 27 Jun 2018 22:42:47 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 28 Jun 2018 02:45:39 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Thu, 28 Jun 2018 02:45:39 GMT
ENV PHP_VERSION=7.0.30
# Thu, 28 Jun 2018 02:45:39 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.30.tar.xz.asc/from/this/mirror
# Thu, 28 Jun 2018 02:45:39 GMT
ENV PHP_SHA256=c90892fb68ab9b8476519658d3f78f6388f2609ae1309bdc2a2e1cc9f92dd686 PHP_MD5=
# Thu, 28 Jun 2018 02:45:50 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Thu, 28 Jun 2018 02:45:51 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 28 Jun 2018 02:48:23 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Thu, 28 Jun 2018 02:48:24 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Thu, 28 Jun 2018 02:48:24 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 28 Jun 2018 02:48:24 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Thu, 28 Jun 2018 02:48:24 GMT
WORKDIR /var/www/html
# Thu, 28 Jun 2018 02:48:25 GMT
EXPOSE 80/tcp
# Thu, 28 Jun 2018 02:48:25 GMT
CMD ["apache2-foreground"]
# Thu, 28 Jun 2018 07:49:59 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 28 Jun 2018 07:52:47 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Thu, 28 Jun 2018 07:53:11 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Thu, 28 Jun 2018 07:53:12 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 28 Jun 2018 07:53:13 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Thu, 28 Jun 2018 07:53:13 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.27
# Thu, 28 Jun 2018 07:53:13 GMT
ENV MEDIAWIKI_BRANCH=REL1_27
# Thu, 28 Jun 2018 07:53:13 GMT
ENV MEDIAWIKI_VERSION=1.27.4
# Thu, 28 Jun 2018 07:53:14 GMT
ENV MEDIAWIKI_SHA512=1a5b82a55c3703db9905a9098922a6008176ae2d53093bd651eb4e5638dc62861f40fe6ae523165f5b1970e8f28dff8ccfa51a5ebdaeb753e6d6e66eaf3c0dd1
# Thu, 28 Jun 2018 07:53:22 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:683abbb4ea60e108164f1d351e7bcf13daf45941137d800086447874df05f48e`  
		Last Modified: Tue, 26 Jun 2018 21:37:45 GMT  
		Size: 22.5 MB (22496975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7573949a21a76a3f609e4d14daca15fe0c10fab84806891f2e8bded88dd40074`  
		Last Modified: Thu, 28 Jun 2018 05:19:49 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a95c20cda7b85f7e049b5b2999399d185f7048c5ac481172021f3a26dcb26b6`  
		Last Modified: Thu, 28 Jun 2018 05:20:06 GMT  
		Size: 67.5 MB (67457678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:803353b042685003f52935fa75ffd472a5c6ed1763c92a15b94142fef7dbd08e`  
		Last Modified: Thu, 28 Jun 2018 05:19:48 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07212a2089a5d184a471f9b72a1913e8bd3d0d4a02f1494f3fbb6756c0b2f285`  
		Last Modified: Thu, 28 Jun 2018 05:23:15 GMT  
		Size: 17.1 MB (17127967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f815f63d38a4a4c2b5380a6db8374a6bb49db8977a778ce11d0af458db79c25b`  
		Last Modified: Thu, 28 Jun 2018 05:23:11 GMT  
		Size: 1.2 KB (1243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2586bd0b43c23d864d044a8395e7228b35356f90dddfeedd3ccc140e98e8f32`  
		Last Modified: Thu, 28 Jun 2018 05:23:09 GMT  
		Size: 428.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:952eb484037e67ba9ddb942b0e6c00e4838309f5c1fc35802ab78c8526efee87`  
		Last Modified: Thu, 28 Jun 2018 05:23:08 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc5cbbbef49fd0d2baa459ee3db12d6877152d16c7239e928317583217b8ca41`  
		Last Modified: Thu, 28 Jun 2018 05:23:08 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c707c32b4c01b3a8112398738887f3ace8885aa8ecc77f4afd4307412d1bd048`  
		Last Modified: Thu, 28 Jun 2018 05:49:42 GMT  
		Size: 12.4 MB (12379588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18a07220e9902291d610f284e823001d678f73000347c661bb00579b44ef5485`  
		Last Modified: Thu, 28 Jun 2018 05:49:40 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f81f020054370895e39c64b72759aa73b55a19cc89322a6a9b65931b14f5c642`  
		Last Modified: Thu, 28 Jun 2018 05:49:44 GMT  
		Size: 13.9 MB (13861495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a05915261c5213c01ebd6e6594deebfe82c0a9d54f6039974b391b16afa15f87`  
		Last Modified: Thu, 28 Jun 2018 05:49:40 GMT  
		Size: 2.2 KB (2195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a44ac2043eeb1a7c135ce5f2cace1a96b9faaaefd6f289dab3fca9a7d9e38b46`  
		Last Modified: Thu, 28 Jun 2018 05:49:40 GMT  
		Size: 905.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba83bc83964299f670c06ac9ee6edbf635a508b57c657f04fe0935d45e4fd2a9`  
		Last Modified: Thu, 28 Jun 2018 07:57:20 GMT  
		Size: 56.3 MB (56335422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f771ffe68ef81c491289eabc651c6f848013aa01af8d0478a584debb7ed2b77`  
		Last Modified: Thu, 28 Jun 2018 07:56:57 GMT  
		Size: 1.5 MB (1549041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bd7828c8b5b5969869f1662015a7d62ceb4c5d7642d4e5c27d45da36db54180`  
		Last Modified: Thu, 28 Jun 2018 07:56:57 GMT  
		Size: 400.3 KB (400333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0786b4a8280d384b77587057864ab596059db21f314c12496071ad8f993f7e84`  
		Last Modified: Thu, 28 Jun 2018 07:56:56 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf5b9c459e482ce2b3e9cdbef764d99584bf8a4a8718e78fd0f3b93228102336`  
		Last Modified: Thu, 28 Jun 2018 07:56:56 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dcf6a69a9628bc5a9c80303436282ce860115e931648228cb8c4058fc94f3a5`  
		Last Modified: Thu, 28 Jun 2018 07:57:16 GMT  
		Size: 31.9 MB (31899035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mediawiki:stable`

```console
$ docker pull mediawiki@sha256:9a0784234a9471fcfa64cb7201b56dec339b9097162ae98f694aa4a41382872b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mediawiki:stable` - linux; amd64

```console
$ docker pull mediawiki@sha256:6a4d0ee74c5e6265099b4f51db211371f9de5a9b89d97362a8be669b3cd20cf3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.9 MB (230886317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:740cf877e769f32858634b8ddef0ee8a5e5474236ddb3e6481b8b1b9bee77345`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 26 Jun 2018 21:25:25 GMT
ADD file:28fbc9fd012eef72780d1c75fc2b0969d13f0138f735035335ab4b76793da2da in / 
# Tue, 26 Jun 2018 21:25:25 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 22:29:03 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 27 Jun 2018 22:29:03 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 27 Jun 2018 22:29:24 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 27 Jun 2018 22:29:24 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 27 Jun 2018 22:29:25 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 27 Jun 2018 22:42:42 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 22:42:42 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 27 Jun 2018 22:42:43 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 27 Jun 2018 22:42:43 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 27 Jun 2018 22:42:44 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 27 Jun 2018 22:42:45 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 27 Jun 2018 22:42:45 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 27 Jun 2018 22:42:46 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 27 Jun 2018 22:42:46 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 27 Jun 2018 22:42:46 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 27 Jun 2018 22:42:46 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 27 Jun 2018 22:42:47 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 27 Jun 2018 22:42:47 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Wed, 27 Jun 2018 22:42:47 GMT
ENV PHP_VERSION=7.2.7
# Wed, 27 Jun 2018 22:42:47 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.7.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.7.tar.xz.asc/from/this/mirror
# Wed, 27 Jun 2018 22:42:47 GMT
ENV PHP_SHA256=eb01c0153b3baf1f64b8b044013ce414b52fede222df3f509e8ff209478f31f0 PHP_MD5=
# Wed, 27 Jun 2018 22:42:57 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 27 Jun 2018 22:42:58 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 27 Jun 2018 22:45:47 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-0-dev 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 27 Jun 2018 22:45:48 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Wed, 27 Jun 2018 22:45:49 GMT
RUN docker-php-ext-enable sodium
# Wed, 27 Jun 2018 22:45:49 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 27 Jun 2018 22:45:49 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Wed, 27 Jun 2018 22:45:50 GMT
WORKDIR /var/www/html
# Wed, 27 Jun 2018 22:45:50 GMT
EXPOSE 80/tcp
# Wed, 27 Jun 2018 22:45:50 GMT
CMD ["apache2-foreground"]
# Thu, 28 Jun 2018 07:40:51 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python3 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 28 Jun 2018 07:43:59 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Thu, 28 Jun 2018 07:44:18 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu 	&& docker-php-ext-enable apcu
# Thu, 28 Jun 2018 07:44:18 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 28 Jun 2018 07:44:19 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Thu, 28 Jun 2018 07:44:19 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.31
# Thu, 28 Jun 2018 07:44:19 GMT
ENV MEDIAWIKI_BRANCH=REL1_31
# Thu, 28 Jun 2018 07:44:20 GMT
ENV MEDIAWIKI_VERSION=1.31.0
# Thu, 28 Jun 2018 07:44:20 GMT
ENV MEDIAWIKI_SHA512=50ad9303b0c0bd8380dea7489be18a4022d5b65a31961af8d36c3c9ff6d74cdf25e8e10137ef1e025b4287e9ee9b7e0bf4198ca342a46ab42915c91f1ddaf940
# Thu, 28 Jun 2018 07:44:29 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:683abbb4ea60e108164f1d351e7bcf13daf45941137d800086447874df05f48e`  
		Last Modified: Tue, 26 Jun 2018 21:37:45 GMT  
		Size: 22.5 MB (22496975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7573949a21a76a3f609e4d14daca15fe0c10fab84806891f2e8bded88dd40074`  
		Last Modified: Thu, 28 Jun 2018 05:19:49 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a95c20cda7b85f7e049b5b2999399d185f7048c5ac481172021f3a26dcb26b6`  
		Last Modified: Thu, 28 Jun 2018 05:20:06 GMT  
		Size: 67.5 MB (67457678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:803353b042685003f52935fa75ffd472a5c6ed1763c92a15b94142fef7dbd08e`  
		Last Modified: Thu, 28 Jun 2018 05:19:48 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07212a2089a5d184a471f9b72a1913e8bd3d0d4a02f1494f3fbb6756c0b2f285`  
		Last Modified: Thu, 28 Jun 2018 05:23:15 GMT  
		Size: 17.1 MB (17127967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f815f63d38a4a4c2b5380a6db8374a6bb49db8977a778ce11d0af458db79c25b`  
		Last Modified: Thu, 28 Jun 2018 05:23:11 GMT  
		Size: 1.2 KB (1243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2586bd0b43c23d864d044a8395e7228b35356f90dddfeedd3ccc140e98e8f32`  
		Last Modified: Thu, 28 Jun 2018 05:23:09 GMT  
		Size: 428.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:952eb484037e67ba9ddb942b0e6c00e4838309f5c1fc35802ab78c8526efee87`  
		Last Modified: Thu, 28 Jun 2018 05:23:08 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc5cbbbef49fd0d2baa459ee3db12d6877152d16c7239e928317583217b8ca41`  
		Last Modified: Thu, 28 Jun 2018 05:23:08 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:400874eeb80020a1a5b2a38805a3ba199f92ed12fc9bdc42d67c915f1ba7de28`  
		Last Modified: Thu, 28 Jun 2018 05:23:10 GMT  
		Size: 12.5 MB (12464575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7bba14e289cd3bf25bd0d00e8f9acff69f4eba19fe5bd2ca4ade363014bb5e1`  
		Last Modified: Thu, 28 Jun 2018 05:23:06 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:019a3f5a16dc0a19b187797379f4df4a36ac4284939269c654efafdcce7810ca`  
		Last Modified: Thu, 28 Jun 2018 05:23:11 GMT  
		Size: 15.2 MB (15198517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4a37c4529f06aefa4c5ce2262520c1c0e51d9f0e6ebbe2c4735a81cba4da5b4`  
		Last Modified: Thu, 28 Jun 2018 05:23:06 GMT  
		Size: 2.2 KB (2193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f458814f77a84b0ada4ea9ee2096b7ed00f556afa3dba0f5874314ff272b7a9`  
		Last Modified: Thu, 28 Jun 2018 05:23:06 GMT  
		Size: 261.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b51e043526af487ad7f150485292cbe6f9d91debc1207f0390722e07cf53566c`  
		Last Modified: Thu, 28 Jun 2018 05:23:06 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cec552be07fd0a5be2ec87cf7793878688a6201f49e594b9c1f8091ba4ed312`  
		Last Modified: Thu, 28 Jun 2018 07:54:18 GMT  
		Size: 58.3 MB (58322161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc59a30dbc5adcf6c70e05a8f69a7cd03b89bc8a6a213413ac7c50061c720989`  
		Last Modified: Thu, 28 Jun 2018 07:53:53 GMT  
		Size: 1.8 MB (1754981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc90b383bccd0a23fffa8ff6304fe386df5a89fc58c497df691a43bff99b0b44`  
		Last Modified: Thu, 28 Jun 2018 07:53:53 GMT  
		Size: 397.4 KB (397383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44738fc320325240901402764f4c81c895ed724df559588442f7d1bb2eb7b099`  
		Last Modified: Thu, 28 Jun 2018 07:53:53 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:920b8d414677317efeccd9fd564083ac32d277f08ddd7f8685cfd58d7164d9f6`  
		Last Modified: Thu, 28 Jun 2018 07:53:53 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c340eecfca01f0f73532320ee2abe99eece12308c18fff08c71f4763e4ae21b0`  
		Last Modified: Thu, 28 Jun 2018 07:54:12 GMT  
		Size: 35.7 MB (35658945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
