<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mediawiki`

-	[`mediawiki:1.27`](#mediawiki127)
-	[`mediawiki:1.27.4`](#mediawiki1274)
-	[`mediawiki:1.29`](#mediawiki129)
-	[`mediawiki:1.29.2`](#mediawiki1292)
-	[`mediawiki:1.30`](#mediawiki130)
-	[`mediawiki:1.30.0`](#mediawiki1300)
-	[`mediawiki:latest`](#mediawikilatest)
-	[`mediawiki:legacy`](#mediawikilegacy)
-	[`mediawiki:lts`](#mediawikilts)
-	[`mediawiki:stable`](#mediawikistable)

## `mediawiki:1.27`

```console
$ docker pull mediawiki@sha256:3fd16cd86ff4891a3ec26a3246af93b0c3a703369f32e7672ebbb00ab4b5e1c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mediawiki:1.27` - linux; amd64

```console
$ docker pull mediawiki@sha256:23c6f1c1a1579534d3e7c318ba554cf1537ea6c87c74fdd512ca51d51cf64fff
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.9 MB (223854644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f6b0c114ded31dd32ece25e27d0085fdc46ff58eff98eb1a4097abe9415b980`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Sat, 28 Apr 2018 07:09:59 GMT
ADD file:ec5be7eec56a749752ca284359ece04f5eb0b981eac08b8855454c6b16e3893c in / 
# Sat, 28 Apr 2018 07:09:59 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 20:34:21 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Mon, 30 Apr 2018 20:34:21 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Mon, 30 Apr 2018 20:34:56 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Mon, 30 Apr 2018 20:34:56 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 30 Apr 2018 20:34:57 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Mon, 30 Apr 2018 21:04:08 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Mon, 30 Apr 2018 21:04:08 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Mon, 30 Apr 2018 21:04:08 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Mon, 30 Apr 2018 21:04:09 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Mon, 30 Apr 2018 21:04:10 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Mon, 30 Apr 2018 21:04:11 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Mon, 30 Apr 2018 21:04:11 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Mon, 30 Apr 2018 21:04:12 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Mon, 30 Apr 2018 21:04:12 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Mon, 30 Apr 2018 21:04:12 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Mon, 30 Apr 2018 21:04:12 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Mon, 30 Apr 2018 21:04:13 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 23 May 2018 23:09:41 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 23 May 2018 23:09:41 GMT
ENV PHP_VERSION=7.0.30
# Wed, 23 May 2018 23:09:41 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.30.tar.xz.asc/from/this/mirror
# Wed, 23 May 2018 23:09:41 GMT
ENV PHP_SHA256=c90892fb68ab9b8476519658d3f78f6388f2609ae1309bdc2a2e1cc9f92dd686 PHP_MD5=
# Wed, 23 May 2018 23:09:51 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 23 May 2018 23:09:52 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 23 May 2018 23:12:19 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--disable-cgi 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 23 May 2018 23:12:20 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Wed, 23 May 2018 23:12:20 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 23 May 2018 23:12:21 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Wed, 23 May 2018 23:12:21 GMT
WORKDIR /var/www/html
# Wed, 23 May 2018 23:12:21 GMT
EXPOSE 80/tcp
# Wed, 23 May 2018 23:12:21 GMT
CMD ["apache2-foreground"]
# Thu, 24 May 2018 04:56:42 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 24 May 2018 04:58:02 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Thu, 24 May 2018 04:58:17 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Thu, 24 May 2018 04:58:18 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 24 May 2018 04:58:18 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Thu, 24 May 2018 04:58:19 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.27
# Thu, 24 May 2018 04:58:19 GMT
ENV MEDIAWIKI_BRANCH=REL1_27
# Thu, 24 May 2018 04:58:19 GMT
ENV MEDIAWIKI_VERSION=1.27.4
# Thu, 24 May 2018 04:58:19 GMT
ENV MEDIAWIKI_SHA512=1a5b82a55c3703db9905a9098922a6008176ae2d53093bd651eb4e5638dc62861f40fe6ae523165f5b1970e8f28dff8ccfa51a5ebdaeb753e6d6e66eaf3c0dd1
# Thu, 24 May 2018 04:58:24 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:f2aa67a397c49232112953088506d02074a1fe577f65dc2052f158a3e5da52e8`  
		Last Modified: Sat, 28 Apr 2018 09:31:20 GMT  
		Size: 22.5 MB (22496029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c533bdb78a46d6fc7392f5fd59496af8e95cd2eb52072c5bd9e262d8a9943e5b`  
		Last Modified: Tue, 01 May 2018 01:06:37 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a7293804ac541b4e9fb51a61f31aba124f3f97a40712be982f7a3cdaa84426`  
		Last Modified: Tue, 01 May 2018 01:06:57 GMT  
		Size: 67.5 MB (67458589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35a9c1f94aea2473a0dc8c23d711525935ef414c4744c0845e0f945501c788ca`  
		Last Modified: Tue, 01 May 2018 01:06:39 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:651774c607cca74adfe7a9212a81ab061593db09d6c491f9b18927db5d9749ce`  
		Last Modified: Tue, 01 May 2018 02:03:29 GMT  
		Size: 17.1 MB (17126363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c01fbe5ed3defb0d94eaea342c661eb0ab582896e108019c23bc88e596c75fc`  
		Last Modified: Tue, 01 May 2018 02:03:24 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ff29ed84bfc2323b6fc07a71aa1cb1e466bf44127aab741109032b8d019755c`  
		Last Modified: Tue, 01 May 2018 02:03:24 GMT  
		Size: 429.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:647feb0f63551e55427f222eb4e3b033b4a2b36291b5f43d560ed1eb1184ce50`  
		Last Modified: Tue, 01 May 2018 02:03:22 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b9d1c5408630a920da8d987ff97a3dc1cfcf362a31d3cd1a310011bd46971cf`  
		Last Modified: Tue, 01 May 2018 02:03:23 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c2c4c5b1672ffc58993952ff39d0ed65ac264c36e42cc32b7694f19dc5d0e52`  
		Last Modified: Thu, 24 May 2018 00:33:52 GMT  
		Size: 12.4 MB (12379586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e55593624c2523f13af02ea9c5b19c6ed3e9962036d46373bd7f828a524e559`  
		Last Modified: Thu, 24 May 2018 00:33:49 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3028d8ea9eb7fb08696bd9b479f5a8a5bb1a2aeb5a473a87bd0852216d7ea0ce`  
		Last Modified: Thu, 24 May 2018 00:33:54 GMT  
		Size: 14.2 MB (14237721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:231a298c01703a9a606ce6b831b5d7b342ee194579cb7c36631394a01b47a585`  
		Last Modified: Thu, 24 May 2018 00:33:49 GMT  
		Size: 2.2 KB (2190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d941e4e096a69d02be550e2e358d9c83fc908234d53e68076d1f221645d3ddca`  
		Last Modified: Thu, 24 May 2018 00:33:49 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21742494536539636194e44969b0edbb83b95c2d0323c807940a3952075bb7f9`  
		Last Modified: Thu, 24 May 2018 05:06:15 GMT  
		Size: 56.3 MB (56301021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdee4ed21cd5c259f90dff9cd0f8a1769b6338284b251e68147e61d7779b6e2a`  
		Last Modified: Thu, 24 May 2018 05:06:00 GMT  
		Size: 1.5 MB (1549021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3340fd559206815a38b061762ecbc458371a1279123058093de5d94d576cada`  
		Last Modified: Thu, 24 May 2018 05:06:00 GMT  
		Size: 400.4 KB (400395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddc91bbbe6dd31187b15eaee1a58fcdf7f33b9fb05aac013686305bd61cef974`  
		Last Modified: Thu, 24 May 2018 05:05:59 GMT  
		Size: 355.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b21a39942924f47ab3934db6463390b2292d7ec2083a2b82728b9c48edaa0d91`  
		Last Modified: Thu, 24 May 2018 05:06:01 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed69e24121258c4bc176f12df498418b0e37c5f965144bc85e2c9390a324f3f4`  
		Last Modified: Thu, 24 May 2018 05:06:10 GMT  
		Size: 31.9 MB (31899032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mediawiki:1.27.4`

```console
$ docker pull mediawiki@sha256:3fd16cd86ff4891a3ec26a3246af93b0c3a703369f32e7672ebbb00ab4b5e1c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mediawiki:1.27.4` - linux; amd64

```console
$ docker pull mediawiki@sha256:23c6f1c1a1579534d3e7c318ba554cf1537ea6c87c74fdd512ca51d51cf64fff
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.9 MB (223854644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f6b0c114ded31dd32ece25e27d0085fdc46ff58eff98eb1a4097abe9415b980`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Sat, 28 Apr 2018 07:09:59 GMT
ADD file:ec5be7eec56a749752ca284359ece04f5eb0b981eac08b8855454c6b16e3893c in / 
# Sat, 28 Apr 2018 07:09:59 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 20:34:21 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Mon, 30 Apr 2018 20:34:21 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Mon, 30 Apr 2018 20:34:56 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Mon, 30 Apr 2018 20:34:56 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 30 Apr 2018 20:34:57 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Mon, 30 Apr 2018 21:04:08 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Mon, 30 Apr 2018 21:04:08 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Mon, 30 Apr 2018 21:04:08 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Mon, 30 Apr 2018 21:04:09 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Mon, 30 Apr 2018 21:04:10 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Mon, 30 Apr 2018 21:04:11 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Mon, 30 Apr 2018 21:04:11 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Mon, 30 Apr 2018 21:04:12 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Mon, 30 Apr 2018 21:04:12 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Mon, 30 Apr 2018 21:04:12 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Mon, 30 Apr 2018 21:04:12 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Mon, 30 Apr 2018 21:04:13 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 23 May 2018 23:09:41 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 23 May 2018 23:09:41 GMT
ENV PHP_VERSION=7.0.30
# Wed, 23 May 2018 23:09:41 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.30.tar.xz.asc/from/this/mirror
# Wed, 23 May 2018 23:09:41 GMT
ENV PHP_SHA256=c90892fb68ab9b8476519658d3f78f6388f2609ae1309bdc2a2e1cc9f92dd686 PHP_MD5=
# Wed, 23 May 2018 23:09:51 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 23 May 2018 23:09:52 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 23 May 2018 23:12:19 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--disable-cgi 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 23 May 2018 23:12:20 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Wed, 23 May 2018 23:12:20 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 23 May 2018 23:12:21 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Wed, 23 May 2018 23:12:21 GMT
WORKDIR /var/www/html
# Wed, 23 May 2018 23:12:21 GMT
EXPOSE 80/tcp
# Wed, 23 May 2018 23:12:21 GMT
CMD ["apache2-foreground"]
# Thu, 24 May 2018 04:56:42 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 24 May 2018 04:58:02 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Thu, 24 May 2018 04:58:17 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Thu, 24 May 2018 04:58:18 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 24 May 2018 04:58:18 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Thu, 24 May 2018 04:58:19 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.27
# Thu, 24 May 2018 04:58:19 GMT
ENV MEDIAWIKI_BRANCH=REL1_27
# Thu, 24 May 2018 04:58:19 GMT
ENV MEDIAWIKI_VERSION=1.27.4
# Thu, 24 May 2018 04:58:19 GMT
ENV MEDIAWIKI_SHA512=1a5b82a55c3703db9905a9098922a6008176ae2d53093bd651eb4e5638dc62861f40fe6ae523165f5b1970e8f28dff8ccfa51a5ebdaeb753e6d6e66eaf3c0dd1
# Thu, 24 May 2018 04:58:24 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:f2aa67a397c49232112953088506d02074a1fe577f65dc2052f158a3e5da52e8`  
		Last Modified: Sat, 28 Apr 2018 09:31:20 GMT  
		Size: 22.5 MB (22496029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c533bdb78a46d6fc7392f5fd59496af8e95cd2eb52072c5bd9e262d8a9943e5b`  
		Last Modified: Tue, 01 May 2018 01:06:37 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a7293804ac541b4e9fb51a61f31aba124f3f97a40712be982f7a3cdaa84426`  
		Last Modified: Tue, 01 May 2018 01:06:57 GMT  
		Size: 67.5 MB (67458589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35a9c1f94aea2473a0dc8c23d711525935ef414c4744c0845e0f945501c788ca`  
		Last Modified: Tue, 01 May 2018 01:06:39 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:651774c607cca74adfe7a9212a81ab061593db09d6c491f9b18927db5d9749ce`  
		Last Modified: Tue, 01 May 2018 02:03:29 GMT  
		Size: 17.1 MB (17126363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c01fbe5ed3defb0d94eaea342c661eb0ab582896e108019c23bc88e596c75fc`  
		Last Modified: Tue, 01 May 2018 02:03:24 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ff29ed84bfc2323b6fc07a71aa1cb1e466bf44127aab741109032b8d019755c`  
		Last Modified: Tue, 01 May 2018 02:03:24 GMT  
		Size: 429.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:647feb0f63551e55427f222eb4e3b033b4a2b36291b5f43d560ed1eb1184ce50`  
		Last Modified: Tue, 01 May 2018 02:03:22 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b9d1c5408630a920da8d987ff97a3dc1cfcf362a31d3cd1a310011bd46971cf`  
		Last Modified: Tue, 01 May 2018 02:03:23 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c2c4c5b1672ffc58993952ff39d0ed65ac264c36e42cc32b7694f19dc5d0e52`  
		Last Modified: Thu, 24 May 2018 00:33:52 GMT  
		Size: 12.4 MB (12379586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e55593624c2523f13af02ea9c5b19c6ed3e9962036d46373bd7f828a524e559`  
		Last Modified: Thu, 24 May 2018 00:33:49 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3028d8ea9eb7fb08696bd9b479f5a8a5bb1a2aeb5a473a87bd0852216d7ea0ce`  
		Last Modified: Thu, 24 May 2018 00:33:54 GMT  
		Size: 14.2 MB (14237721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:231a298c01703a9a606ce6b831b5d7b342ee194579cb7c36631394a01b47a585`  
		Last Modified: Thu, 24 May 2018 00:33:49 GMT  
		Size: 2.2 KB (2190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d941e4e096a69d02be550e2e358d9c83fc908234d53e68076d1f221645d3ddca`  
		Last Modified: Thu, 24 May 2018 00:33:49 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21742494536539636194e44969b0edbb83b95c2d0323c807940a3952075bb7f9`  
		Last Modified: Thu, 24 May 2018 05:06:15 GMT  
		Size: 56.3 MB (56301021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdee4ed21cd5c259f90dff9cd0f8a1769b6338284b251e68147e61d7779b6e2a`  
		Last Modified: Thu, 24 May 2018 05:06:00 GMT  
		Size: 1.5 MB (1549021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3340fd559206815a38b061762ecbc458371a1279123058093de5d94d576cada`  
		Last Modified: Thu, 24 May 2018 05:06:00 GMT  
		Size: 400.4 KB (400395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddc91bbbe6dd31187b15eaee1a58fcdf7f33b9fb05aac013686305bd61cef974`  
		Last Modified: Thu, 24 May 2018 05:05:59 GMT  
		Size: 355.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b21a39942924f47ab3934db6463390b2292d7ec2083a2b82728b9c48edaa0d91`  
		Last Modified: Thu, 24 May 2018 05:06:01 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed69e24121258c4bc176f12df498418b0e37c5f965144bc85e2c9390a324f3f4`  
		Last Modified: Thu, 24 May 2018 05:06:10 GMT  
		Size: 31.9 MB (31899032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mediawiki:1.29`

```console
$ docker pull mediawiki@sha256:ba23151ab6e9eed96bc1729e0dfc423043e4a6f87a91e8ee70958e35ad3579bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mediawiki:1.29` - linux; amd64

```console
$ docker pull mediawiki@sha256:ecf035ed4655252b63138f28429b15aeefcca55517b8b1110c85644cbd58f800
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.8 MB (232829594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:429f6020cf1995517c1f5fe31faa274c28a15e4829a9d13f39d1412e7d5f00a6`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Sat, 28 Apr 2018 07:09:59 GMT
ADD file:ec5be7eec56a749752ca284359ece04f5eb0b981eac08b8855454c6b16e3893c in / 
# Sat, 28 Apr 2018 07:09:59 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 20:34:21 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Mon, 30 Apr 2018 20:34:21 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Mon, 30 Apr 2018 20:34:56 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Mon, 30 Apr 2018 20:34:56 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 30 Apr 2018 20:34:57 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Mon, 30 Apr 2018 21:04:08 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Mon, 30 Apr 2018 21:04:08 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Mon, 30 Apr 2018 21:04:08 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Mon, 30 Apr 2018 21:04:09 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Mon, 30 Apr 2018 21:04:10 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Mon, 30 Apr 2018 21:04:11 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Mon, 30 Apr 2018 21:04:11 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Mon, 30 Apr 2018 21:04:12 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Mon, 30 Apr 2018 21:04:12 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Mon, 30 Apr 2018 21:04:12 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Mon, 30 Apr 2018 21:04:12 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Mon, 30 Apr 2018 21:04:13 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 23 May 2018 22:10:32 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Wed, 30 May 2018 19:27:11 GMT
ENV PHP_VERSION=7.1.18
# Wed, 30 May 2018 19:27:11 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.18.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.18.tar.xz.asc/from/this/mirror
# Wed, 30 May 2018 19:27:11 GMT
ENV PHP_SHA256=8bd91cea072ea5b368cc9b4533a1a683eb426abdacbf024bb6ffa9b799cd3b01 PHP_MD5=
# Wed, 30 May 2018 19:27:22 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 30 May 2018 19:27:23 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 30 May 2018 19:30:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--disable-cgi 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 30 May 2018 19:30:00 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Wed, 30 May 2018 19:30:01 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 30 May 2018 19:30:01 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Wed, 30 May 2018 19:30:01 GMT
WORKDIR /var/www/html
# Wed, 30 May 2018 19:30:01 GMT
EXPOSE 80/tcp
# Wed, 30 May 2018 19:30:02 GMT
CMD ["apache2-foreground"]
# Wed, 30 May 2018 22:41:02 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 30 May 2018 22:42:26 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Wed, 30 May 2018 22:42:41 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Wed, 30 May 2018 22:42:42 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 30 May 2018 22:42:42 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Wed, 30 May 2018 22:48:21 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.29
# Wed, 30 May 2018 22:48:21 GMT
ENV MEDIAWIKI_BRANCH=REL1_29
# Wed, 30 May 2018 22:48:22 GMT
ENV MEDIAWIKI_VERSION=1.29.2
# Wed, 30 May 2018 22:48:22 GMT
ENV MEDIAWIKI_SHA512=53c6ca82280938d1e3281aa296f44c86dcfbbdf82710b7de578e73e1ef3150db145e059c8c8208859bc437f7a7f7a13eed896be9d44fd364a0ee6d78893fbe86
# Wed, 30 May 2018 22:48:29 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:f2aa67a397c49232112953088506d02074a1fe577f65dc2052f158a3e5da52e8`  
		Last Modified: Sat, 28 Apr 2018 09:31:20 GMT  
		Size: 22.5 MB (22496029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c533bdb78a46d6fc7392f5fd59496af8e95cd2eb52072c5bd9e262d8a9943e5b`  
		Last Modified: Tue, 01 May 2018 01:06:37 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a7293804ac541b4e9fb51a61f31aba124f3f97a40712be982f7a3cdaa84426`  
		Last Modified: Tue, 01 May 2018 01:06:57 GMT  
		Size: 67.5 MB (67458589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35a9c1f94aea2473a0dc8c23d711525935ef414c4744c0845e0f945501c788ca`  
		Last Modified: Tue, 01 May 2018 01:06:39 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:651774c607cca74adfe7a9212a81ab061593db09d6c491f9b18927db5d9749ce`  
		Last Modified: Tue, 01 May 2018 02:03:29 GMT  
		Size: 17.1 MB (17126363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c01fbe5ed3defb0d94eaea342c661eb0ab582896e108019c23bc88e596c75fc`  
		Last Modified: Tue, 01 May 2018 02:03:24 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ff29ed84bfc2323b6fc07a71aa1cb1e466bf44127aab741109032b8d019755c`  
		Last Modified: Tue, 01 May 2018 02:03:24 GMT  
		Size: 429.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:647feb0f63551e55427f222eb4e3b033b4a2b36291b5f43d560ed1eb1184ce50`  
		Last Modified: Tue, 01 May 2018 02:03:22 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b9d1c5408630a920da8d987ff97a3dc1cfcf362a31d3cd1a310011bd46971cf`  
		Last Modified: Tue, 01 May 2018 02:03:23 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39d84a78c96e4ffc68e094fd4a800e261bee48dc9e5832e161cbc04af589bda6`  
		Last Modified: Wed, 30 May 2018 20:53:44 GMT  
		Size: 12.6 MB (12562654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b6653737a3a19b565353aac1e25a94cc428d6a453f351e5a7260987e1ece884`  
		Last Modified: Wed, 30 May 2018 20:53:42 GMT  
		Size: 502.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0188ca2e3389de52c7ea130616fde95d2950d84139adef58bc6d997f0742a92`  
		Last Modified: Wed, 30 May 2018 20:53:47 GMT  
		Size: 14.6 MB (14558325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2811b3b2535af5e1bc5b23459f7d3cdcbfcdf1a5192bdd46ed0d92d94cb7c2cc`  
		Last Modified: Wed, 30 May 2018 20:53:42 GMT  
		Size: 2.2 KB (2194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b4c5ff9691f5c73251d044641501d995877d4f51413490425aa1b4166d36753`  
		Last Modified: Wed, 30 May 2018 20:53:42 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0231a131ef5e1764c12d360dd0be9dc8770b0f62d8dc9b5037cf60a5484847df`  
		Last Modified: Wed, 30 May 2018 22:48:59 GMT  
		Size: 56.3 MB (56336078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ee42411818ff587346744c8f95935b4b8ead6b31e317b7ac1f5c008ede2d5f6`  
		Last Modified: Wed, 30 May 2018 22:48:43 GMT  
		Size: 1.7 MB (1660739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:258da39a7f2a86e12eef2bae75d735dd4210c10cacdb967e6419046ff688779b`  
		Last Modified: Wed, 30 May 2018 22:48:42 GMT  
		Size: 408.6 KB (408594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1b2f49185861f9b70b2137b8f40f18e1008673f7bca931550346b0fb70d925f`  
		Last Modified: Wed, 30 May 2018 22:48:42 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d043b08ab2bbe23fdf9067376f81c38580a52b36a6b849e3269bbe4878e3e5`  
		Last Modified: Wed, 30 May 2018 22:48:42 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80c980f1f51c76317f5abb3364e8f5f19dcf72e5600e4d631fad800217311e81`  
		Last Modified: Wed, 30 May 2018 22:49:50 GMT  
		Size: 40.2 MB (40215326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mediawiki:1.29.2`

```console
$ docker pull mediawiki@sha256:ba23151ab6e9eed96bc1729e0dfc423043e4a6f87a91e8ee70958e35ad3579bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mediawiki:1.29.2` - linux; amd64

```console
$ docker pull mediawiki@sha256:ecf035ed4655252b63138f28429b15aeefcca55517b8b1110c85644cbd58f800
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.8 MB (232829594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:429f6020cf1995517c1f5fe31faa274c28a15e4829a9d13f39d1412e7d5f00a6`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Sat, 28 Apr 2018 07:09:59 GMT
ADD file:ec5be7eec56a749752ca284359ece04f5eb0b981eac08b8855454c6b16e3893c in / 
# Sat, 28 Apr 2018 07:09:59 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 20:34:21 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Mon, 30 Apr 2018 20:34:21 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Mon, 30 Apr 2018 20:34:56 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Mon, 30 Apr 2018 20:34:56 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 30 Apr 2018 20:34:57 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Mon, 30 Apr 2018 21:04:08 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Mon, 30 Apr 2018 21:04:08 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Mon, 30 Apr 2018 21:04:08 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Mon, 30 Apr 2018 21:04:09 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Mon, 30 Apr 2018 21:04:10 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Mon, 30 Apr 2018 21:04:11 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Mon, 30 Apr 2018 21:04:11 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Mon, 30 Apr 2018 21:04:12 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Mon, 30 Apr 2018 21:04:12 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Mon, 30 Apr 2018 21:04:12 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Mon, 30 Apr 2018 21:04:12 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Mon, 30 Apr 2018 21:04:13 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 23 May 2018 22:10:32 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Wed, 30 May 2018 19:27:11 GMT
ENV PHP_VERSION=7.1.18
# Wed, 30 May 2018 19:27:11 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.18.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.18.tar.xz.asc/from/this/mirror
# Wed, 30 May 2018 19:27:11 GMT
ENV PHP_SHA256=8bd91cea072ea5b368cc9b4533a1a683eb426abdacbf024bb6ffa9b799cd3b01 PHP_MD5=
# Wed, 30 May 2018 19:27:22 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 30 May 2018 19:27:23 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 30 May 2018 19:30:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--disable-cgi 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 30 May 2018 19:30:00 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Wed, 30 May 2018 19:30:01 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 30 May 2018 19:30:01 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Wed, 30 May 2018 19:30:01 GMT
WORKDIR /var/www/html
# Wed, 30 May 2018 19:30:01 GMT
EXPOSE 80/tcp
# Wed, 30 May 2018 19:30:02 GMT
CMD ["apache2-foreground"]
# Wed, 30 May 2018 22:41:02 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 30 May 2018 22:42:26 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Wed, 30 May 2018 22:42:41 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Wed, 30 May 2018 22:42:42 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 30 May 2018 22:42:42 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Wed, 30 May 2018 22:48:21 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.29
# Wed, 30 May 2018 22:48:21 GMT
ENV MEDIAWIKI_BRANCH=REL1_29
# Wed, 30 May 2018 22:48:22 GMT
ENV MEDIAWIKI_VERSION=1.29.2
# Wed, 30 May 2018 22:48:22 GMT
ENV MEDIAWIKI_SHA512=53c6ca82280938d1e3281aa296f44c86dcfbbdf82710b7de578e73e1ef3150db145e059c8c8208859bc437f7a7f7a13eed896be9d44fd364a0ee6d78893fbe86
# Wed, 30 May 2018 22:48:29 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:f2aa67a397c49232112953088506d02074a1fe577f65dc2052f158a3e5da52e8`  
		Last Modified: Sat, 28 Apr 2018 09:31:20 GMT  
		Size: 22.5 MB (22496029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c533bdb78a46d6fc7392f5fd59496af8e95cd2eb52072c5bd9e262d8a9943e5b`  
		Last Modified: Tue, 01 May 2018 01:06:37 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a7293804ac541b4e9fb51a61f31aba124f3f97a40712be982f7a3cdaa84426`  
		Last Modified: Tue, 01 May 2018 01:06:57 GMT  
		Size: 67.5 MB (67458589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35a9c1f94aea2473a0dc8c23d711525935ef414c4744c0845e0f945501c788ca`  
		Last Modified: Tue, 01 May 2018 01:06:39 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:651774c607cca74adfe7a9212a81ab061593db09d6c491f9b18927db5d9749ce`  
		Last Modified: Tue, 01 May 2018 02:03:29 GMT  
		Size: 17.1 MB (17126363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c01fbe5ed3defb0d94eaea342c661eb0ab582896e108019c23bc88e596c75fc`  
		Last Modified: Tue, 01 May 2018 02:03:24 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ff29ed84bfc2323b6fc07a71aa1cb1e466bf44127aab741109032b8d019755c`  
		Last Modified: Tue, 01 May 2018 02:03:24 GMT  
		Size: 429.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:647feb0f63551e55427f222eb4e3b033b4a2b36291b5f43d560ed1eb1184ce50`  
		Last Modified: Tue, 01 May 2018 02:03:22 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b9d1c5408630a920da8d987ff97a3dc1cfcf362a31d3cd1a310011bd46971cf`  
		Last Modified: Tue, 01 May 2018 02:03:23 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39d84a78c96e4ffc68e094fd4a800e261bee48dc9e5832e161cbc04af589bda6`  
		Last Modified: Wed, 30 May 2018 20:53:44 GMT  
		Size: 12.6 MB (12562654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b6653737a3a19b565353aac1e25a94cc428d6a453f351e5a7260987e1ece884`  
		Last Modified: Wed, 30 May 2018 20:53:42 GMT  
		Size: 502.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0188ca2e3389de52c7ea130616fde95d2950d84139adef58bc6d997f0742a92`  
		Last Modified: Wed, 30 May 2018 20:53:47 GMT  
		Size: 14.6 MB (14558325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2811b3b2535af5e1bc5b23459f7d3cdcbfcdf1a5192bdd46ed0d92d94cb7c2cc`  
		Last Modified: Wed, 30 May 2018 20:53:42 GMT  
		Size: 2.2 KB (2194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b4c5ff9691f5c73251d044641501d995877d4f51413490425aa1b4166d36753`  
		Last Modified: Wed, 30 May 2018 20:53:42 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0231a131ef5e1764c12d360dd0be9dc8770b0f62d8dc9b5037cf60a5484847df`  
		Last Modified: Wed, 30 May 2018 22:48:59 GMT  
		Size: 56.3 MB (56336078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ee42411818ff587346744c8f95935b4b8ead6b31e317b7ac1f5c008ede2d5f6`  
		Last Modified: Wed, 30 May 2018 22:48:43 GMT  
		Size: 1.7 MB (1660739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:258da39a7f2a86e12eef2bae75d735dd4210c10cacdb967e6419046ff688779b`  
		Last Modified: Wed, 30 May 2018 22:48:42 GMT  
		Size: 408.6 KB (408594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1b2f49185861f9b70b2137b8f40f18e1008673f7bca931550346b0fb70d925f`  
		Last Modified: Wed, 30 May 2018 22:48:42 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d043b08ab2bbe23fdf9067376f81c38580a52b36a6b849e3269bbe4878e3e5`  
		Last Modified: Wed, 30 May 2018 22:48:42 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80c980f1f51c76317f5abb3364e8f5f19dcf72e5600e4d631fad800217311e81`  
		Last Modified: Wed, 30 May 2018 22:49:50 GMT  
		Size: 40.2 MB (40215326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mediawiki:1.30`

```console
$ docker pull mediawiki@sha256:6e2bb50bd83d31ae165f86db4d7c59a43ff32a1a492b0f6f8135cd51e0437fa7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mediawiki:1.30` - linux; amd64

```console
$ docker pull mediawiki@sha256:932d881fe58a42843b81eecf493c8922fa1f333a84c4501845d127063a2c4bee
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.5 MB (235503404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0447a27d080fab0b270bfe0cc9ca04e2f2936d3bcb6fefe63490499b6d3e8bb7`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Sat, 28 Apr 2018 07:09:59 GMT
ADD file:ec5be7eec56a749752ca284359ece04f5eb0b981eac08b8855454c6b16e3893c in / 
# Sat, 28 Apr 2018 07:09:59 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 20:34:21 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Mon, 30 Apr 2018 20:34:21 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Mon, 30 Apr 2018 20:34:56 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Mon, 30 Apr 2018 20:34:56 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 30 Apr 2018 20:34:57 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Mon, 30 Apr 2018 21:04:08 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Mon, 30 Apr 2018 21:04:08 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Mon, 30 Apr 2018 21:04:08 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Mon, 30 Apr 2018 21:04:09 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Mon, 30 Apr 2018 21:04:10 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Mon, 30 Apr 2018 21:04:11 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Mon, 30 Apr 2018 21:04:11 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Mon, 30 Apr 2018 21:04:12 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Mon, 30 Apr 2018 21:04:12 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Mon, 30 Apr 2018 21:04:12 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Mon, 30 Apr 2018 21:04:12 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Mon, 30 Apr 2018 21:04:13 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 23 May 2018 22:10:32 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Wed, 30 May 2018 19:27:11 GMT
ENV PHP_VERSION=7.1.18
# Wed, 30 May 2018 19:27:11 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.18.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.18.tar.xz.asc/from/this/mirror
# Wed, 30 May 2018 19:27:11 GMT
ENV PHP_SHA256=8bd91cea072ea5b368cc9b4533a1a683eb426abdacbf024bb6ffa9b799cd3b01 PHP_MD5=
# Wed, 30 May 2018 19:27:22 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 30 May 2018 19:27:23 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 30 May 2018 19:30:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--disable-cgi 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 30 May 2018 19:30:00 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Wed, 30 May 2018 19:30:01 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 30 May 2018 19:30:01 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Wed, 30 May 2018 19:30:01 GMT
WORKDIR /var/www/html
# Wed, 30 May 2018 19:30:01 GMT
EXPOSE 80/tcp
# Wed, 30 May 2018 19:30:02 GMT
CMD ["apache2-foreground"]
# Wed, 30 May 2018 22:41:02 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 30 May 2018 22:42:26 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Wed, 30 May 2018 22:42:41 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Wed, 30 May 2018 22:42:42 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 30 May 2018 22:42:42 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Wed, 30 May 2018 22:42:43 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.30
# Wed, 30 May 2018 22:42:43 GMT
ENV MEDIAWIKI_BRANCH=REL1_30
# Wed, 30 May 2018 22:42:43 GMT
ENV MEDIAWIKI_VERSION=1.30.0
# Wed, 30 May 2018 22:42:43 GMT
ENV MEDIAWIKI_SHA512=ec4aeb08c18af0e52aaf99124d43cd357328221934d593d87f38da804a2f4a5b172a114659f87f6de58c2140ee05ae14ec6a270574f655e7780a950a51178643
# Wed, 30 May 2018 22:42:49 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:f2aa67a397c49232112953088506d02074a1fe577f65dc2052f158a3e5da52e8`  
		Last Modified: Sat, 28 Apr 2018 09:31:20 GMT  
		Size: 22.5 MB (22496029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c533bdb78a46d6fc7392f5fd59496af8e95cd2eb52072c5bd9e262d8a9943e5b`  
		Last Modified: Tue, 01 May 2018 01:06:37 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a7293804ac541b4e9fb51a61f31aba124f3f97a40712be982f7a3cdaa84426`  
		Last Modified: Tue, 01 May 2018 01:06:57 GMT  
		Size: 67.5 MB (67458589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35a9c1f94aea2473a0dc8c23d711525935ef414c4744c0845e0f945501c788ca`  
		Last Modified: Tue, 01 May 2018 01:06:39 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:651774c607cca74adfe7a9212a81ab061593db09d6c491f9b18927db5d9749ce`  
		Last Modified: Tue, 01 May 2018 02:03:29 GMT  
		Size: 17.1 MB (17126363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c01fbe5ed3defb0d94eaea342c661eb0ab582896e108019c23bc88e596c75fc`  
		Last Modified: Tue, 01 May 2018 02:03:24 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ff29ed84bfc2323b6fc07a71aa1cb1e466bf44127aab741109032b8d019755c`  
		Last Modified: Tue, 01 May 2018 02:03:24 GMT  
		Size: 429.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:647feb0f63551e55427f222eb4e3b033b4a2b36291b5f43d560ed1eb1184ce50`  
		Last Modified: Tue, 01 May 2018 02:03:22 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b9d1c5408630a920da8d987ff97a3dc1cfcf362a31d3cd1a310011bd46971cf`  
		Last Modified: Tue, 01 May 2018 02:03:23 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39d84a78c96e4ffc68e094fd4a800e261bee48dc9e5832e161cbc04af589bda6`  
		Last Modified: Wed, 30 May 2018 20:53:44 GMT  
		Size: 12.6 MB (12562654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b6653737a3a19b565353aac1e25a94cc428d6a453f351e5a7260987e1ece884`  
		Last Modified: Wed, 30 May 2018 20:53:42 GMT  
		Size: 502.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0188ca2e3389de52c7ea130616fde95d2950d84139adef58bc6d997f0742a92`  
		Last Modified: Wed, 30 May 2018 20:53:47 GMT  
		Size: 14.6 MB (14558325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2811b3b2535af5e1bc5b23459f7d3cdcbfcdf1a5192bdd46ed0d92d94cb7c2cc`  
		Last Modified: Wed, 30 May 2018 20:53:42 GMT  
		Size: 2.2 KB (2194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b4c5ff9691f5c73251d044641501d995877d4f51413490425aa1b4166d36753`  
		Last Modified: Wed, 30 May 2018 20:53:42 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0231a131ef5e1764c12d360dd0be9dc8770b0f62d8dc9b5037cf60a5484847df`  
		Last Modified: Wed, 30 May 2018 22:48:59 GMT  
		Size: 56.3 MB (56336078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ee42411818ff587346744c8f95935b4b8ead6b31e317b7ac1f5c008ede2d5f6`  
		Last Modified: Wed, 30 May 2018 22:48:43 GMT  
		Size: 1.7 MB (1660739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:258da39a7f2a86e12eef2bae75d735dd4210c10cacdb967e6419046ff688779b`  
		Last Modified: Wed, 30 May 2018 22:48:42 GMT  
		Size: 408.6 KB (408594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1b2f49185861f9b70b2137b8f40f18e1008673f7bca931550346b0fb70d925f`  
		Last Modified: Wed, 30 May 2018 22:48:42 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d043b08ab2bbe23fdf9067376f81c38580a52b36a6b849e3269bbe4878e3e5`  
		Last Modified: Wed, 30 May 2018 22:48:42 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52c046e3cf8b73ff3224c89561ec02fd6552659af769e08d1bf59587def170b0`  
		Last Modified: Wed, 30 May 2018 22:48:54 GMT  
		Size: 42.9 MB (42889136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mediawiki:1.30.0`

```console
$ docker pull mediawiki@sha256:6e2bb50bd83d31ae165f86db4d7c59a43ff32a1a492b0f6f8135cd51e0437fa7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mediawiki:1.30.0` - linux; amd64

```console
$ docker pull mediawiki@sha256:932d881fe58a42843b81eecf493c8922fa1f333a84c4501845d127063a2c4bee
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.5 MB (235503404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0447a27d080fab0b270bfe0cc9ca04e2f2936d3bcb6fefe63490499b6d3e8bb7`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Sat, 28 Apr 2018 07:09:59 GMT
ADD file:ec5be7eec56a749752ca284359ece04f5eb0b981eac08b8855454c6b16e3893c in / 
# Sat, 28 Apr 2018 07:09:59 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 20:34:21 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Mon, 30 Apr 2018 20:34:21 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Mon, 30 Apr 2018 20:34:56 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Mon, 30 Apr 2018 20:34:56 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 30 Apr 2018 20:34:57 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Mon, 30 Apr 2018 21:04:08 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Mon, 30 Apr 2018 21:04:08 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Mon, 30 Apr 2018 21:04:08 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Mon, 30 Apr 2018 21:04:09 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Mon, 30 Apr 2018 21:04:10 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Mon, 30 Apr 2018 21:04:11 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Mon, 30 Apr 2018 21:04:11 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Mon, 30 Apr 2018 21:04:12 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Mon, 30 Apr 2018 21:04:12 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Mon, 30 Apr 2018 21:04:12 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Mon, 30 Apr 2018 21:04:12 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Mon, 30 Apr 2018 21:04:13 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 23 May 2018 22:10:32 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Wed, 30 May 2018 19:27:11 GMT
ENV PHP_VERSION=7.1.18
# Wed, 30 May 2018 19:27:11 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.18.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.18.tar.xz.asc/from/this/mirror
# Wed, 30 May 2018 19:27:11 GMT
ENV PHP_SHA256=8bd91cea072ea5b368cc9b4533a1a683eb426abdacbf024bb6ffa9b799cd3b01 PHP_MD5=
# Wed, 30 May 2018 19:27:22 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 30 May 2018 19:27:23 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 30 May 2018 19:30:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--disable-cgi 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 30 May 2018 19:30:00 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Wed, 30 May 2018 19:30:01 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 30 May 2018 19:30:01 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Wed, 30 May 2018 19:30:01 GMT
WORKDIR /var/www/html
# Wed, 30 May 2018 19:30:01 GMT
EXPOSE 80/tcp
# Wed, 30 May 2018 19:30:02 GMT
CMD ["apache2-foreground"]
# Wed, 30 May 2018 22:41:02 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 30 May 2018 22:42:26 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Wed, 30 May 2018 22:42:41 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Wed, 30 May 2018 22:42:42 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 30 May 2018 22:42:42 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Wed, 30 May 2018 22:42:43 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.30
# Wed, 30 May 2018 22:42:43 GMT
ENV MEDIAWIKI_BRANCH=REL1_30
# Wed, 30 May 2018 22:42:43 GMT
ENV MEDIAWIKI_VERSION=1.30.0
# Wed, 30 May 2018 22:42:43 GMT
ENV MEDIAWIKI_SHA512=ec4aeb08c18af0e52aaf99124d43cd357328221934d593d87f38da804a2f4a5b172a114659f87f6de58c2140ee05ae14ec6a270574f655e7780a950a51178643
# Wed, 30 May 2018 22:42:49 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:f2aa67a397c49232112953088506d02074a1fe577f65dc2052f158a3e5da52e8`  
		Last Modified: Sat, 28 Apr 2018 09:31:20 GMT  
		Size: 22.5 MB (22496029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c533bdb78a46d6fc7392f5fd59496af8e95cd2eb52072c5bd9e262d8a9943e5b`  
		Last Modified: Tue, 01 May 2018 01:06:37 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a7293804ac541b4e9fb51a61f31aba124f3f97a40712be982f7a3cdaa84426`  
		Last Modified: Tue, 01 May 2018 01:06:57 GMT  
		Size: 67.5 MB (67458589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35a9c1f94aea2473a0dc8c23d711525935ef414c4744c0845e0f945501c788ca`  
		Last Modified: Tue, 01 May 2018 01:06:39 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:651774c607cca74adfe7a9212a81ab061593db09d6c491f9b18927db5d9749ce`  
		Last Modified: Tue, 01 May 2018 02:03:29 GMT  
		Size: 17.1 MB (17126363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c01fbe5ed3defb0d94eaea342c661eb0ab582896e108019c23bc88e596c75fc`  
		Last Modified: Tue, 01 May 2018 02:03:24 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ff29ed84bfc2323b6fc07a71aa1cb1e466bf44127aab741109032b8d019755c`  
		Last Modified: Tue, 01 May 2018 02:03:24 GMT  
		Size: 429.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:647feb0f63551e55427f222eb4e3b033b4a2b36291b5f43d560ed1eb1184ce50`  
		Last Modified: Tue, 01 May 2018 02:03:22 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b9d1c5408630a920da8d987ff97a3dc1cfcf362a31d3cd1a310011bd46971cf`  
		Last Modified: Tue, 01 May 2018 02:03:23 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39d84a78c96e4ffc68e094fd4a800e261bee48dc9e5832e161cbc04af589bda6`  
		Last Modified: Wed, 30 May 2018 20:53:44 GMT  
		Size: 12.6 MB (12562654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b6653737a3a19b565353aac1e25a94cc428d6a453f351e5a7260987e1ece884`  
		Last Modified: Wed, 30 May 2018 20:53:42 GMT  
		Size: 502.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0188ca2e3389de52c7ea130616fde95d2950d84139adef58bc6d997f0742a92`  
		Last Modified: Wed, 30 May 2018 20:53:47 GMT  
		Size: 14.6 MB (14558325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2811b3b2535af5e1bc5b23459f7d3cdcbfcdf1a5192bdd46ed0d92d94cb7c2cc`  
		Last Modified: Wed, 30 May 2018 20:53:42 GMT  
		Size: 2.2 KB (2194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b4c5ff9691f5c73251d044641501d995877d4f51413490425aa1b4166d36753`  
		Last Modified: Wed, 30 May 2018 20:53:42 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0231a131ef5e1764c12d360dd0be9dc8770b0f62d8dc9b5037cf60a5484847df`  
		Last Modified: Wed, 30 May 2018 22:48:59 GMT  
		Size: 56.3 MB (56336078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ee42411818ff587346744c8f95935b4b8ead6b31e317b7ac1f5c008ede2d5f6`  
		Last Modified: Wed, 30 May 2018 22:48:43 GMT  
		Size: 1.7 MB (1660739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:258da39a7f2a86e12eef2bae75d735dd4210c10cacdb967e6419046ff688779b`  
		Last Modified: Wed, 30 May 2018 22:48:42 GMT  
		Size: 408.6 KB (408594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1b2f49185861f9b70b2137b8f40f18e1008673f7bca931550346b0fb70d925f`  
		Last Modified: Wed, 30 May 2018 22:48:42 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d043b08ab2bbe23fdf9067376f81c38580a52b36a6b849e3269bbe4878e3e5`  
		Last Modified: Wed, 30 May 2018 22:48:42 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52c046e3cf8b73ff3224c89561ec02fd6552659af769e08d1bf59587def170b0`  
		Last Modified: Wed, 30 May 2018 22:48:54 GMT  
		Size: 42.9 MB (42889136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mediawiki:latest`

```console
$ docker pull mediawiki@sha256:6e2bb50bd83d31ae165f86db4d7c59a43ff32a1a492b0f6f8135cd51e0437fa7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mediawiki:latest` - linux; amd64

```console
$ docker pull mediawiki@sha256:932d881fe58a42843b81eecf493c8922fa1f333a84c4501845d127063a2c4bee
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.5 MB (235503404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0447a27d080fab0b270bfe0cc9ca04e2f2936d3bcb6fefe63490499b6d3e8bb7`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Sat, 28 Apr 2018 07:09:59 GMT
ADD file:ec5be7eec56a749752ca284359ece04f5eb0b981eac08b8855454c6b16e3893c in / 
# Sat, 28 Apr 2018 07:09:59 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 20:34:21 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Mon, 30 Apr 2018 20:34:21 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Mon, 30 Apr 2018 20:34:56 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Mon, 30 Apr 2018 20:34:56 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 30 Apr 2018 20:34:57 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Mon, 30 Apr 2018 21:04:08 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Mon, 30 Apr 2018 21:04:08 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Mon, 30 Apr 2018 21:04:08 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Mon, 30 Apr 2018 21:04:09 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Mon, 30 Apr 2018 21:04:10 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Mon, 30 Apr 2018 21:04:11 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Mon, 30 Apr 2018 21:04:11 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Mon, 30 Apr 2018 21:04:12 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Mon, 30 Apr 2018 21:04:12 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Mon, 30 Apr 2018 21:04:12 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Mon, 30 Apr 2018 21:04:12 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Mon, 30 Apr 2018 21:04:13 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 23 May 2018 22:10:32 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Wed, 30 May 2018 19:27:11 GMT
ENV PHP_VERSION=7.1.18
# Wed, 30 May 2018 19:27:11 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.18.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.18.tar.xz.asc/from/this/mirror
# Wed, 30 May 2018 19:27:11 GMT
ENV PHP_SHA256=8bd91cea072ea5b368cc9b4533a1a683eb426abdacbf024bb6ffa9b799cd3b01 PHP_MD5=
# Wed, 30 May 2018 19:27:22 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 30 May 2018 19:27:23 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 30 May 2018 19:30:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--disable-cgi 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 30 May 2018 19:30:00 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Wed, 30 May 2018 19:30:01 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 30 May 2018 19:30:01 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Wed, 30 May 2018 19:30:01 GMT
WORKDIR /var/www/html
# Wed, 30 May 2018 19:30:01 GMT
EXPOSE 80/tcp
# Wed, 30 May 2018 19:30:02 GMT
CMD ["apache2-foreground"]
# Wed, 30 May 2018 22:41:02 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 30 May 2018 22:42:26 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Wed, 30 May 2018 22:42:41 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Wed, 30 May 2018 22:42:42 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 30 May 2018 22:42:42 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Wed, 30 May 2018 22:42:43 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.30
# Wed, 30 May 2018 22:42:43 GMT
ENV MEDIAWIKI_BRANCH=REL1_30
# Wed, 30 May 2018 22:42:43 GMT
ENV MEDIAWIKI_VERSION=1.30.0
# Wed, 30 May 2018 22:42:43 GMT
ENV MEDIAWIKI_SHA512=ec4aeb08c18af0e52aaf99124d43cd357328221934d593d87f38da804a2f4a5b172a114659f87f6de58c2140ee05ae14ec6a270574f655e7780a950a51178643
# Wed, 30 May 2018 22:42:49 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:f2aa67a397c49232112953088506d02074a1fe577f65dc2052f158a3e5da52e8`  
		Last Modified: Sat, 28 Apr 2018 09:31:20 GMT  
		Size: 22.5 MB (22496029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c533bdb78a46d6fc7392f5fd59496af8e95cd2eb52072c5bd9e262d8a9943e5b`  
		Last Modified: Tue, 01 May 2018 01:06:37 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a7293804ac541b4e9fb51a61f31aba124f3f97a40712be982f7a3cdaa84426`  
		Last Modified: Tue, 01 May 2018 01:06:57 GMT  
		Size: 67.5 MB (67458589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35a9c1f94aea2473a0dc8c23d711525935ef414c4744c0845e0f945501c788ca`  
		Last Modified: Tue, 01 May 2018 01:06:39 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:651774c607cca74adfe7a9212a81ab061593db09d6c491f9b18927db5d9749ce`  
		Last Modified: Tue, 01 May 2018 02:03:29 GMT  
		Size: 17.1 MB (17126363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c01fbe5ed3defb0d94eaea342c661eb0ab582896e108019c23bc88e596c75fc`  
		Last Modified: Tue, 01 May 2018 02:03:24 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ff29ed84bfc2323b6fc07a71aa1cb1e466bf44127aab741109032b8d019755c`  
		Last Modified: Tue, 01 May 2018 02:03:24 GMT  
		Size: 429.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:647feb0f63551e55427f222eb4e3b033b4a2b36291b5f43d560ed1eb1184ce50`  
		Last Modified: Tue, 01 May 2018 02:03:22 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b9d1c5408630a920da8d987ff97a3dc1cfcf362a31d3cd1a310011bd46971cf`  
		Last Modified: Tue, 01 May 2018 02:03:23 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39d84a78c96e4ffc68e094fd4a800e261bee48dc9e5832e161cbc04af589bda6`  
		Last Modified: Wed, 30 May 2018 20:53:44 GMT  
		Size: 12.6 MB (12562654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b6653737a3a19b565353aac1e25a94cc428d6a453f351e5a7260987e1ece884`  
		Last Modified: Wed, 30 May 2018 20:53:42 GMT  
		Size: 502.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0188ca2e3389de52c7ea130616fde95d2950d84139adef58bc6d997f0742a92`  
		Last Modified: Wed, 30 May 2018 20:53:47 GMT  
		Size: 14.6 MB (14558325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2811b3b2535af5e1bc5b23459f7d3cdcbfcdf1a5192bdd46ed0d92d94cb7c2cc`  
		Last Modified: Wed, 30 May 2018 20:53:42 GMT  
		Size: 2.2 KB (2194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b4c5ff9691f5c73251d044641501d995877d4f51413490425aa1b4166d36753`  
		Last Modified: Wed, 30 May 2018 20:53:42 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0231a131ef5e1764c12d360dd0be9dc8770b0f62d8dc9b5037cf60a5484847df`  
		Last Modified: Wed, 30 May 2018 22:48:59 GMT  
		Size: 56.3 MB (56336078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ee42411818ff587346744c8f95935b4b8ead6b31e317b7ac1f5c008ede2d5f6`  
		Last Modified: Wed, 30 May 2018 22:48:43 GMT  
		Size: 1.7 MB (1660739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:258da39a7f2a86e12eef2bae75d735dd4210c10cacdb967e6419046ff688779b`  
		Last Modified: Wed, 30 May 2018 22:48:42 GMT  
		Size: 408.6 KB (408594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1b2f49185861f9b70b2137b8f40f18e1008673f7bca931550346b0fb70d925f`  
		Last Modified: Wed, 30 May 2018 22:48:42 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d043b08ab2bbe23fdf9067376f81c38580a52b36a6b849e3269bbe4878e3e5`  
		Last Modified: Wed, 30 May 2018 22:48:42 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52c046e3cf8b73ff3224c89561ec02fd6552659af769e08d1bf59587def170b0`  
		Last Modified: Wed, 30 May 2018 22:48:54 GMT  
		Size: 42.9 MB (42889136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mediawiki:legacy`

```console
$ docker pull mediawiki@sha256:ba23151ab6e9eed96bc1729e0dfc423043e4a6f87a91e8ee70958e35ad3579bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mediawiki:legacy` - linux; amd64

```console
$ docker pull mediawiki@sha256:ecf035ed4655252b63138f28429b15aeefcca55517b8b1110c85644cbd58f800
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.8 MB (232829594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:429f6020cf1995517c1f5fe31faa274c28a15e4829a9d13f39d1412e7d5f00a6`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Sat, 28 Apr 2018 07:09:59 GMT
ADD file:ec5be7eec56a749752ca284359ece04f5eb0b981eac08b8855454c6b16e3893c in / 
# Sat, 28 Apr 2018 07:09:59 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 20:34:21 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Mon, 30 Apr 2018 20:34:21 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Mon, 30 Apr 2018 20:34:56 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Mon, 30 Apr 2018 20:34:56 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 30 Apr 2018 20:34:57 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Mon, 30 Apr 2018 21:04:08 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Mon, 30 Apr 2018 21:04:08 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Mon, 30 Apr 2018 21:04:08 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Mon, 30 Apr 2018 21:04:09 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Mon, 30 Apr 2018 21:04:10 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Mon, 30 Apr 2018 21:04:11 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Mon, 30 Apr 2018 21:04:11 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Mon, 30 Apr 2018 21:04:12 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Mon, 30 Apr 2018 21:04:12 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Mon, 30 Apr 2018 21:04:12 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Mon, 30 Apr 2018 21:04:12 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Mon, 30 Apr 2018 21:04:13 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 23 May 2018 22:10:32 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Wed, 30 May 2018 19:27:11 GMT
ENV PHP_VERSION=7.1.18
# Wed, 30 May 2018 19:27:11 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.18.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.18.tar.xz.asc/from/this/mirror
# Wed, 30 May 2018 19:27:11 GMT
ENV PHP_SHA256=8bd91cea072ea5b368cc9b4533a1a683eb426abdacbf024bb6ffa9b799cd3b01 PHP_MD5=
# Wed, 30 May 2018 19:27:22 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 30 May 2018 19:27:23 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 30 May 2018 19:30:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--disable-cgi 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 30 May 2018 19:30:00 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Wed, 30 May 2018 19:30:01 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 30 May 2018 19:30:01 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Wed, 30 May 2018 19:30:01 GMT
WORKDIR /var/www/html
# Wed, 30 May 2018 19:30:01 GMT
EXPOSE 80/tcp
# Wed, 30 May 2018 19:30:02 GMT
CMD ["apache2-foreground"]
# Wed, 30 May 2018 22:41:02 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 30 May 2018 22:42:26 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Wed, 30 May 2018 22:42:41 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Wed, 30 May 2018 22:42:42 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 30 May 2018 22:42:42 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Wed, 30 May 2018 22:48:21 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.29
# Wed, 30 May 2018 22:48:21 GMT
ENV MEDIAWIKI_BRANCH=REL1_29
# Wed, 30 May 2018 22:48:22 GMT
ENV MEDIAWIKI_VERSION=1.29.2
# Wed, 30 May 2018 22:48:22 GMT
ENV MEDIAWIKI_SHA512=53c6ca82280938d1e3281aa296f44c86dcfbbdf82710b7de578e73e1ef3150db145e059c8c8208859bc437f7a7f7a13eed896be9d44fd364a0ee6d78893fbe86
# Wed, 30 May 2018 22:48:29 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:f2aa67a397c49232112953088506d02074a1fe577f65dc2052f158a3e5da52e8`  
		Last Modified: Sat, 28 Apr 2018 09:31:20 GMT  
		Size: 22.5 MB (22496029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c533bdb78a46d6fc7392f5fd59496af8e95cd2eb52072c5bd9e262d8a9943e5b`  
		Last Modified: Tue, 01 May 2018 01:06:37 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a7293804ac541b4e9fb51a61f31aba124f3f97a40712be982f7a3cdaa84426`  
		Last Modified: Tue, 01 May 2018 01:06:57 GMT  
		Size: 67.5 MB (67458589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35a9c1f94aea2473a0dc8c23d711525935ef414c4744c0845e0f945501c788ca`  
		Last Modified: Tue, 01 May 2018 01:06:39 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:651774c607cca74adfe7a9212a81ab061593db09d6c491f9b18927db5d9749ce`  
		Last Modified: Tue, 01 May 2018 02:03:29 GMT  
		Size: 17.1 MB (17126363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c01fbe5ed3defb0d94eaea342c661eb0ab582896e108019c23bc88e596c75fc`  
		Last Modified: Tue, 01 May 2018 02:03:24 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ff29ed84bfc2323b6fc07a71aa1cb1e466bf44127aab741109032b8d019755c`  
		Last Modified: Tue, 01 May 2018 02:03:24 GMT  
		Size: 429.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:647feb0f63551e55427f222eb4e3b033b4a2b36291b5f43d560ed1eb1184ce50`  
		Last Modified: Tue, 01 May 2018 02:03:22 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b9d1c5408630a920da8d987ff97a3dc1cfcf362a31d3cd1a310011bd46971cf`  
		Last Modified: Tue, 01 May 2018 02:03:23 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39d84a78c96e4ffc68e094fd4a800e261bee48dc9e5832e161cbc04af589bda6`  
		Last Modified: Wed, 30 May 2018 20:53:44 GMT  
		Size: 12.6 MB (12562654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b6653737a3a19b565353aac1e25a94cc428d6a453f351e5a7260987e1ece884`  
		Last Modified: Wed, 30 May 2018 20:53:42 GMT  
		Size: 502.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0188ca2e3389de52c7ea130616fde95d2950d84139adef58bc6d997f0742a92`  
		Last Modified: Wed, 30 May 2018 20:53:47 GMT  
		Size: 14.6 MB (14558325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2811b3b2535af5e1bc5b23459f7d3cdcbfcdf1a5192bdd46ed0d92d94cb7c2cc`  
		Last Modified: Wed, 30 May 2018 20:53:42 GMT  
		Size: 2.2 KB (2194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b4c5ff9691f5c73251d044641501d995877d4f51413490425aa1b4166d36753`  
		Last Modified: Wed, 30 May 2018 20:53:42 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0231a131ef5e1764c12d360dd0be9dc8770b0f62d8dc9b5037cf60a5484847df`  
		Last Modified: Wed, 30 May 2018 22:48:59 GMT  
		Size: 56.3 MB (56336078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ee42411818ff587346744c8f95935b4b8ead6b31e317b7ac1f5c008ede2d5f6`  
		Last Modified: Wed, 30 May 2018 22:48:43 GMT  
		Size: 1.7 MB (1660739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:258da39a7f2a86e12eef2bae75d735dd4210c10cacdb967e6419046ff688779b`  
		Last Modified: Wed, 30 May 2018 22:48:42 GMT  
		Size: 408.6 KB (408594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1b2f49185861f9b70b2137b8f40f18e1008673f7bca931550346b0fb70d925f`  
		Last Modified: Wed, 30 May 2018 22:48:42 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d043b08ab2bbe23fdf9067376f81c38580a52b36a6b849e3269bbe4878e3e5`  
		Last Modified: Wed, 30 May 2018 22:48:42 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80c980f1f51c76317f5abb3364e8f5f19dcf72e5600e4d631fad800217311e81`  
		Last Modified: Wed, 30 May 2018 22:49:50 GMT  
		Size: 40.2 MB (40215326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mediawiki:lts`

```console
$ docker pull mediawiki@sha256:3fd16cd86ff4891a3ec26a3246af93b0c3a703369f32e7672ebbb00ab4b5e1c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mediawiki:lts` - linux; amd64

```console
$ docker pull mediawiki@sha256:23c6f1c1a1579534d3e7c318ba554cf1537ea6c87c74fdd512ca51d51cf64fff
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.9 MB (223854644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f6b0c114ded31dd32ece25e27d0085fdc46ff58eff98eb1a4097abe9415b980`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Sat, 28 Apr 2018 07:09:59 GMT
ADD file:ec5be7eec56a749752ca284359ece04f5eb0b981eac08b8855454c6b16e3893c in / 
# Sat, 28 Apr 2018 07:09:59 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 20:34:21 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Mon, 30 Apr 2018 20:34:21 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Mon, 30 Apr 2018 20:34:56 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Mon, 30 Apr 2018 20:34:56 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 30 Apr 2018 20:34:57 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Mon, 30 Apr 2018 21:04:08 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Mon, 30 Apr 2018 21:04:08 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Mon, 30 Apr 2018 21:04:08 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Mon, 30 Apr 2018 21:04:09 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Mon, 30 Apr 2018 21:04:10 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Mon, 30 Apr 2018 21:04:11 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Mon, 30 Apr 2018 21:04:11 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Mon, 30 Apr 2018 21:04:12 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Mon, 30 Apr 2018 21:04:12 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Mon, 30 Apr 2018 21:04:12 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Mon, 30 Apr 2018 21:04:12 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Mon, 30 Apr 2018 21:04:13 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 23 May 2018 23:09:41 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Wed, 23 May 2018 23:09:41 GMT
ENV PHP_VERSION=7.0.30
# Wed, 23 May 2018 23:09:41 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.30.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.30.tar.xz.asc/from/this/mirror
# Wed, 23 May 2018 23:09:41 GMT
ENV PHP_SHA256=c90892fb68ab9b8476519658d3f78f6388f2609ae1309bdc2a2e1cc9f92dd686 PHP_MD5=
# Wed, 23 May 2018 23:09:51 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 23 May 2018 23:09:52 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 23 May 2018 23:12:19 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--disable-cgi 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 23 May 2018 23:12:20 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Wed, 23 May 2018 23:12:20 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 23 May 2018 23:12:21 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Wed, 23 May 2018 23:12:21 GMT
WORKDIR /var/www/html
# Wed, 23 May 2018 23:12:21 GMT
EXPOSE 80/tcp
# Wed, 23 May 2018 23:12:21 GMT
CMD ["apache2-foreground"]
# Thu, 24 May 2018 04:56:42 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 24 May 2018 04:58:02 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Thu, 24 May 2018 04:58:17 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Thu, 24 May 2018 04:58:18 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 24 May 2018 04:58:18 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Thu, 24 May 2018 04:58:19 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.27
# Thu, 24 May 2018 04:58:19 GMT
ENV MEDIAWIKI_BRANCH=REL1_27
# Thu, 24 May 2018 04:58:19 GMT
ENV MEDIAWIKI_VERSION=1.27.4
# Thu, 24 May 2018 04:58:19 GMT
ENV MEDIAWIKI_SHA512=1a5b82a55c3703db9905a9098922a6008176ae2d53093bd651eb4e5638dc62861f40fe6ae523165f5b1970e8f28dff8ccfa51a5ebdaeb753e6d6e66eaf3c0dd1
# Thu, 24 May 2018 04:58:24 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:f2aa67a397c49232112953088506d02074a1fe577f65dc2052f158a3e5da52e8`  
		Last Modified: Sat, 28 Apr 2018 09:31:20 GMT  
		Size: 22.5 MB (22496029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c533bdb78a46d6fc7392f5fd59496af8e95cd2eb52072c5bd9e262d8a9943e5b`  
		Last Modified: Tue, 01 May 2018 01:06:37 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a7293804ac541b4e9fb51a61f31aba124f3f97a40712be982f7a3cdaa84426`  
		Last Modified: Tue, 01 May 2018 01:06:57 GMT  
		Size: 67.5 MB (67458589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35a9c1f94aea2473a0dc8c23d711525935ef414c4744c0845e0f945501c788ca`  
		Last Modified: Tue, 01 May 2018 01:06:39 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:651774c607cca74adfe7a9212a81ab061593db09d6c491f9b18927db5d9749ce`  
		Last Modified: Tue, 01 May 2018 02:03:29 GMT  
		Size: 17.1 MB (17126363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c01fbe5ed3defb0d94eaea342c661eb0ab582896e108019c23bc88e596c75fc`  
		Last Modified: Tue, 01 May 2018 02:03:24 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ff29ed84bfc2323b6fc07a71aa1cb1e466bf44127aab741109032b8d019755c`  
		Last Modified: Tue, 01 May 2018 02:03:24 GMT  
		Size: 429.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:647feb0f63551e55427f222eb4e3b033b4a2b36291b5f43d560ed1eb1184ce50`  
		Last Modified: Tue, 01 May 2018 02:03:22 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b9d1c5408630a920da8d987ff97a3dc1cfcf362a31d3cd1a310011bd46971cf`  
		Last Modified: Tue, 01 May 2018 02:03:23 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c2c4c5b1672ffc58993952ff39d0ed65ac264c36e42cc32b7694f19dc5d0e52`  
		Last Modified: Thu, 24 May 2018 00:33:52 GMT  
		Size: 12.4 MB (12379586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e55593624c2523f13af02ea9c5b19c6ed3e9962036d46373bd7f828a524e559`  
		Last Modified: Thu, 24 May 2018 00:33:49 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3028d8ea9eb7fb08696bd9b479f5a8a5bb1a2aeb5a473a87bd0852216d7ea0ce`  
		Last Modified: Thu, 24 May 2018 00:33:54 GMT  
		Size: 14.2 MB (14237721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:231a298c01703a9a606ce6b831b5d7b342ee194579cb7c36631394a01b47a585`  
		Last Modified: Thu, 24 May 2018 00:33:49 GMT  
		Size: 2.2 KB (2190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d941e4e096a69d02be550e2e358d9c83fc908234d53e68076d1f221645d3ddca`  
		Last Modified: Thu, 24 May 2018 00:33:49 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21742494536539636194e44969b0edbb83b95c2d0323c807940a3952075bb7f9`  
		Last Modified: Thu, 24 May 2018 05:06:15 GMT  
		Size: 56.3 MB (56301021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdee4ed21cd5c259f90dff9cd0f8a1769b6338284b251e68147e61d7779b6e2a`  
		Last Modified: Thu, 24 May 2018 05:06:00 GMT  
		Size: 1.5 MB (1549021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3340fd559206815a38b061762ecbc458371a1279123058093de5d94d576cada`  
		Last Modified: Thu, 24 May 2018 05:06:00 GMT  
		Size: 400.4 KB (400395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddc91bbbe6dd31187b15eaee1a58fcdf7f33b9fb05aac013686305bd61cef974`  
		Last Modified: Thu, 24 May 2018 05:05:59 GMT  
		Size: 355.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b21a39942924f47ab3934db6463390b2292d7ec2083a2b82728b9c48edaa0d91`  
		Last Modified: Thu, 24 May 2018 05:06:01 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed69e24121258c4bc176f12df498418b0e37c5f965144bc85e2c9390a324f3f4`  
		Last Modified: Thu, 24 May 2018 05:06:10 GMT  
		Size: 31.9 MB (31899032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mediawiki:stable`

```console
$ docker pull mediawiki@sha256:6e2bb50bd83d31ae165f86db4d7c59a43ff32a1a492b0f6f8135cd51e0437fa7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mediawiki:stable` - linux; amd64

```console
$ docker pull mediawiki@sha256:932d881fe58a42843b81eecf493c8922fa1f333a84c4501845d127063a2c4bee
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.5 MB (235503404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0447a27d080fab0b270bfe0cc9ca04e2f2936d3bcb6fefe63490499b6d3e8bb7`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Sat, 28 Apr 2018 07:09:59 GMT
ADD file:ec5be7eec56a749752ca284359ece04f5eb0b981eac08b8855454c6b16e3893c in / 
# Sat, 28 Apr 2018 07:09:59 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 20:34:21 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Mon, 30 Apr 2018 20:34:21 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Mon, 30 Apr 2018 20:34:56 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Mon, 30 Apr 2018 20:34:56 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 30 Apr 2018 20:34:57 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Mon, 30 Apr 2018 21:04:08 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Mon, 30 Apr 2018 21:04:08 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Mon, 30 Apr 2018 21:04:08 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Mon, 30 Apr 2018 21:04:09 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Mon, 30 Apr 2018 21:04:10 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Mon, 30 Apr 2018 21:04:11 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Mon, 30 Apr 2018 21:04:11 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Mon, 30 Apr 2018 21:04:12 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Mon, 30 Apr 2018 21:04:12 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Mon, 30 Apr 2018 21:04:12 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Mon, 30 Apr 2018 21:04:12 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Mon, 30 Apr 2018 21:04:13 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 23 May 2018 22:10:32 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Wed, 30 May 2018 19:27:11 GMT
ENV PHP_VERSION=7.1.18
# Wed, 30 May 2018 19:27:11 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.18.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.18.tar.xz.asc/from/this/mirror
# Wed, 30 May 2018 19:27:11 GMT
ENV PHP_SHA256=8bd91cea072ea5b368cc9b4533a1a683eb426abdacbf024bb6ffa9b799cd3b01 PHP_MD5=
# Wed, 30 May 2018 19:27:22 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 30 May 2018 19:27:23 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 30 May 2018 19:30:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--disable-cgi 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 30 May 2018 19:30:00 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Wed, 30 May 2018 19:30:01 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 30 May 2018 19:30:01 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Wed, 30 May 2018 19:30:01 GMT
WORKDIR /var/www/html
# Wed, 30 May 2018 19:30:01 GMT
EXPOSE 80/tcp
# Wed, 30 May 2018 19:30:02 GMT
CMD ["apache2-foreground"]
# Wed, 30 May 2018 22:41:02 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 30 May 2018 22:42:26 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Wed, 30 May 2018 22:42:41 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Wed, 30 May 2018 22:42:42 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 30 May 2018 22:42:42 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Wed, 30 May 2018 22:42:43 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.30
# Wed, 30 May 2018 22:42:43 GMT
ENV MEDIAWIKI_BRANCH=REL1_30
# Wed, 30 May 2018 22:42:43 GMT
ENV MEDIAWIKI_VERSION=1.30.0
# Wed, 30 May 2018 22:42:43 GMT
ENV MEDIAWIKI_SHA512=ec4aeb08c18af0e52aaf99124d43cd357328221934d593d87f38da804a2f4a5b172a114659f87f6de58c2140ee05ae14ec6a270574f655e7780a950a51178643
# Wed, 30 May 2018 22:42:49 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:f2aa67a397c49232112953088506d02074a1fe577f65dc2052f158a3e5da52e8`  
		Last Modified: Sat, 28 Apr 2018 09:31:20 GMT  
		Size: 22.5 MB (22496029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c533bdb78a46d6fc7392f5fd59496af8e95cd2eb52072c5bd9e262d8a9943e5b`  
		Last Modified: Tue, 01 May 2018 01:06:37 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a7293804ac541b4e9fb51a61f31aba124f3f97a40712be982f7a3cdaa84426`  
		Last Modified: Tue, 01 May 2018 01:06:57 GMT  
		Size: 67.5 MB (67458589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35a9c1f94aea2473a0dc8c23d711525935ef414c4744c0845e0f945501c788ca`  
		Last Modified: Tue, 01 May 2018 01:06:39 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:651774c607cca74adfe7a9212a81ab061593db09d6c491f9b18927db5d9749ce`  
		Last Modified: Tue, 01 May 2018 02:03:29 GMT  
		Size: 17.1 MB (17126363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c01fbe5ed3defb0d94eaea342c661eb0ab582896e108019c23bc88e596c75fc`  
		Last Modified: Tue, 01 May 2018 02:03:24 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ff29ed84bfc2323b6fc07a71aa1cb1e466bf44127aab741109032b8d019755c`  
		Last Modified: Tue, 01 May 2018 02:03:24 GMT  
		Size: 429.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:647feb0f63551e55427f222eb4e3b033b4a2b36291b5f43d560ed1eb1184ce50`  
		Last Modified: Tue, 01 May 2018 02:03:22 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b9d1c5408630a920da8d987ff97a3dc1cfcf362a31d3cd1a310011bd46971cf`  
		Last Modified: Tue, 01 May 2018 02:03:23 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39d84a78c96e4ffc68e094fd4a800e261bee48dc9e5832e161cbc04af589bda6`  
		Last Modified: Wed, 30 May 2018 20:53:44 GMT  
		Size: 12.6 MB (12562654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b6653737a3a19b565353aac1e25a94cc428d6a453f351e5a7260987e1ece884`  
		Last Modified: Wed, 30 May 2018 20:53:42 GMT  
		Size: 502.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0188ca2e3389de52c7ea130616fde95d2950d84139adef58bc6d997f0742a92`  
		Last Modified: Wed, 30 May 2018 20:53:47 GMT  
		Size: 14.6 MB (14558325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2811b3b2535af5e1bc5b23459f7d3cdcbfcdf1a5192bdd46ed0d92d94cb7c2cc`  
		Last Modified: Wed, 30 May 2018 20:53:42 GMT  
		Size: 2.2 KB (2194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b4c5ff9691f5c73251d044641501d995877d4f51413490425aa1b4166d36753`  
		Last Modified: Wed, 30 May 2018 20:53:42 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0231a131ef5e1764c12d360dd0be9dc8770b0f62d8dc9b5037cf60a5484847df`  
		Last Modified: Wed, 30 May 2018 22:48:59 GMT  
		Size: 56.3 MB (56336078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ee42411818ff587346744c8f95935b4b8ead6b31e317b7ac1f5c008ede2d5f6`  
		Last Modified: Wed, 30 May 2018 22:48:43 GMT  
		Size: 1.7 MB (1660739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:258da39a7f2a86e12eef2bae75d735dd4210c10cacdb967e6419046ff688779b`  
		Last Modified: Wed, 30 May 2018 22:48:42 GMT  
		Size: 408.6 KB (408594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1b2f49185861f9b70b2137b8f40f18e1008673f7bca931550346b0fb70d925f`  
		Last Modified: Wed, 30 May 2018 22:48:42 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d043b08ab2bbe23fdf9067376f81c38580a52b36a6b849e3269bbe4878e3e5`  
		Last Modified: Wed, 30 May 2018 22:48:42 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52c046e3cf8b73ff3224c89561ec02fd6552659af769e08d1bf59587def170b0`  
		Last Modified: Wed, 30 May 2018 22:48:54 GMT  
		Size: 42.9 MB (42889136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
