<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mediawiki`

-	[`mediawiki:1.27`](#mediawiki127)
-	[`mediawiki:1.27.5`](#mediawiki1275)
-	[`mediawiki:1.30`](#mediawiki130)
-	[`mediawiki:1.30.1`](#mediawiki1301)
-	[`mediawiki:1.31`](#mediawiki131)
-	[`mediawiki:1.31.1`](#mediawiki1311)
-	[`mediawiki:latest`](#mediawikilatest)
-	[`mediawiki:legacy`](#mediawikilegacy)
-	[`mediawiki:legacylts`](#mediawikilegacylts)
-	[`mediawiki:lts`](#mediawikilts)
-	[`mediawiki:stable`](#mediawikistable)

## `mediawiki:1.27`

```console
$ docker pull mediawiki@sha256:aabdb5194354f49a987bcbb30d583a73102d4ef35067bff1329a37ce474d9b21
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
$ docker pull mediawiki@sha256:bd7a2b1abdf8c8abffd686c8986897e7bd6ee9210be6d83cf9d7870c734f35df
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.6 MB (223559873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8832e1c4afd5c4a6aeaeb41731900aa11b2a3256459cecf17a441898dc73e126`
-	Entrypoint: `["docker-php-entrypoint"]`
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
# Tue, 16 Oct 2018 01:46:19 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 16 Oct 2018 01:46:19 GMT
ENV PHP_VERSION=7.0.32
# Tue, 16 Oct 2018 01:46:19 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.32.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.32.tar.xz.asc/from/this/mirror
# Tue, 16 Oct 2018 01:46:20 GMT
ENV PHP_SHA256=ff6f62afeb32c71b3b89ecbd42950ef6c5e0c329cc6e1c58ffac47e6f1f883c4 PHP_MD5=
# Tue, 16 Oct 2018 01:46:28 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 16 Oct 2018 01:46:31 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 16 Oct 2018 01:49:43 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 16 Oct 2018 01:49:43 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Tue, 16 Oct 2018 01:49:43 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 16 Oct 2018 01:49:44 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 16 Oct 2018 01:49:44 GMT
WORKDIR /var/www/html
# Tue, 16 Oct 2018 01:49:44 GMT
EXPOSE 80/tcp
# Tue, 16 Oct 2018 01:49:44 GMT
CMD ["apache2-foreground"]
# Tue, 16 Oct 2018 12:58:53 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 16 Oct 2018 13:01:23 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Tue, 16 Oct 2018 13:01:44 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Tue, 16 Oct 2018 13:01:45 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 16 Oct 2018 13:01:46 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Tue, 16 Oct 2018 13:01:47 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.27
# Tue, 16 Oct 2018 13:01:47 GMT
ENV MEDIAWIKI_BRANCH=REL1_27
# Tue, 16 Oct 2018 13:01:47 GMT
ENV MEDIAWIKI_VERSION=1.27.5
# Tue, 16 Oct 2018 13:01:48 GMT
ENV MEDIAWIKI_SHA512=2f341ed5afab24b81c315db6bcc58dd617f95231f71408c08bb2a8b974c95b7edd93d0f3c857f24058111c3228b9919a0f1c2fd2f85be940dc571e390225027a
# Tue, 16 Oct 2018 13:01:59 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
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
	-	`sha256:4299e0bacf8fbcc69dfb0d6acba3f45697ceaf5c29c977ee706281283523d885`  
		Last Modified: Tue, 16 Oct 2018 03:47:38 GMT  
		Size: 12.4 MB (12379835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9263f9577aad0f8ef48adc205d5f182f109289e8a555326b593b1c25360fe557`  
		Last Modified: Tue, 16 Oct 2018 03:47:37 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ca842beb74556b475d94bbd9cac21d02bdb319480beed4b8f42d832be6e77d7`  
		Last Modified: Tue, 16 Oct 2018 03:47:41 GMT  
		Size: 13.9 MB (13904473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:087c6240046d169882f5e9b62019496b3d25b288f0f56b7dae962af273f704e7`  
		Last Modified: Tue, 16 Oct 2018 03:47:37 GMT  
		Size: 2.2 KB (2193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d31af3632f760e46acb44058658b8db7162eff13890dc8f4e9443d6749cfa8db`  
		Last Modified: Tue, 16 Oct 2018 03:47:37 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8928fd73d2525bf27216fe983a1297fa1c1655db7909e055c9d4f33c5790196f`  
		Last Modified: Tue, 16 Oct 2018 13:06:36 GMT  
		Size: 56.3 MB (56343305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b089431ea3f41c7da814b07d89301e8061ba645eb3355afade58aa49ee1026c6`  
		Last Modified: Tue, 16 Oct 2018 13:06:11 GMT  
		Size: 1.5 MB (1549030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b4c5b4f7f5727dc409515e6373dae57fb7e93b46fc3603f96cb09587bfe05af`  
		Last Modified: Tue, 16 Oct 2018 13:06:10 GMT  
		Size: 400.3 KB (400325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b1adac96a5ca85b6667438d5fb23d8641669d423ff22278e6d8275d12e6953d`  
		Last Modified: Tue, 16 Oct 2018 13:06:09 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b631ea5aef3e47965335a4357e5e7c51162bfbeb627f5927cc632d2ec914f27d`  
		Last Modified: Tue, 16 Oct 2018 13:06:09 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acc040b08360839d015c45757d6fcff6e3fc728f735065317d6d6134534d6f5d`  
		Last Modified: Tue, 16 Oct 2018 13:06:40 GMT  
		Size: 31.9 MB (31933768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.27` - linux; arm variant v5

```console
$ docker pull mediawiki@sha256:aa4f49c48775e3c93828b1dcdbc8521fc58378305065177e6e6b7cc52dd75024
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.7 MB (208735644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9396d4c18d945890c8d6a8d1736fcdc0b1a3e378f142f2f5aad80f514cf90b3`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 16 Oct 2018 08:55:22 GMT
ADD file:8f2148adabc29587e17b50138f305f39e94e0e2bd9211a9f913fef56013ac35a in / 
# Tue, 16 Oct 2018 08:55:23 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 08:59:24 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 16 Oct 2018 08:59:25 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 16 Oct 2018 09:00:38 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 16 Oct 2018 09:00:40 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 16 Oct 2018 09:00:41 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 16 Oct 2018 09:01:03 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 09:01:04 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 16 Oct 2018 09:01:04 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 16 Oct 2018 09:01:05 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 16 Oct 2018 09:01:06 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 16 Oct 2018 09:01:08 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 16 Oct 2018 09:01:09 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 16 Oct 2018 09:01:09 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 16 Oct 2018 09:01:09 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Tue, 16 Oct 2018 09:01:10 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 16 Oct 2018 09:01:10 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 16 Oct 2018 09:01:10 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 16 Oct 2018 09:53:06 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 16 Oct 2018 09:53:06 GMT
ENV PHP_VERSION=7.0.32
# Tue, 16 Oct 2018 09:53:06 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.32.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.32.tar.xz.asc/from/this/mirror
# Tue, 16 Oct 2018 09:53:07 GMT
ENV PHP_SHA256=ff6f62afeb32c71b3b89ecbd42950ef6c5e0c329cc6e1c58ffac47e6f1f883c4 PHP_MD5=
# Tue, 16 Oct 2018 09:53:22 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 16 Oct 2018 09:53:23 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 16 Oct 2018 09:56:09 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 16 Oct 2018 09:56:11 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Tue, 16 Oct 2018 09:56:11 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 16 Oct 2018 09:56:12 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 16 Oct 2018 09:56:13 GMT
WORKDIR /var/www/html
# Tue, 16 Oct 2018 09:56:13 GMT
EXPOSE 80/tcp
# Tue, 16 Oct 2018 09:56:14 GMT
CMD ["apache2-foreground"]
# Tue, 16 Oct 2018 15:46:06 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 16 Oct 2018 15:50:26 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Tue, 16 Oct 2018 15:50:43 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Tue, 16 Oct 2018 15:50:45 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 16 Oct 2018 15:50:46 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Tue, 16 Oct 2018 15:50:51 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.27
# Tue, 16 Oct 2018 15:50:51 GMT
ENV MEDIAWIKI_BRANCH=REL1_27
# Tue, 16 Oct 2018 15:50:52 GMT
ENV MEDIAWIKI_VERSION=1.27.5
# Tue, 16 Oct 2018 15:50:53 GMT
ENV MEDIAWIKI_SHA512=2f341ed5afab24b81c315db6bcc58dd617f95231f71408c08bb2a8b974c95b7edd93d0f3c857f24058111c3228b9919a0f1c2fd2f85be940dc571e390225027a
# Tue, 16 Oct 2018 15:51:10 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:4b7ffdf9817f718c84be550e8edf757070396d69165fa729c6ddd4e775428eb2`  
		Last Modified: Tue, 16 Oct 2018 09:04:44 GMT  
		Size: 21.2 MB (21162965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20460378a8f38aacfeb9a0bcf3a38abbaebb8845cf0f7ca8c5f8ccb51f3ba5d8`  
		Last Modified: Tue, 16 Oct 2018 10:20:49 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecb7e6fb4c6270cb10f9b8f7aa93b2d05eca8e4ca542ae6b884f3d507b3f2c06`  
		Last Modified: Tue, 16 Oct 2018 10:21:09 GMT  
		Size: 57.4 MB (57447518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ad837638c5f551ce2ed0722f0aa0206be6b2503befb732461de20785c38ed13`  
		Last Modified: Tue, 16 Oct 2018 10:20:48 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02b8207a3bfbe878b8a8d846a774c3ce482e349d482e7084559f88b12618ffb1`  
		Last Modified: Tue, 16 Oct 2018 10:20:52 GMT  
		Size: 16.7 MB (16650918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7198acceff99d48ae548b76f8e9eb26d52d8a63521d95d7db38554594b5d1223`  
		Last Modified: Tue, 16 Oct 2018 10:20:47 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e62a81208df875e54460875df6afbac9065b4afc56282d9fb756acffa5656a7`  
		Last Modified: Tue, 16 Oct 2018 10:20:46 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5a783b15fb65ce49afc889cc25e5744af9318920f2c2b5419dc1d6209f71d6a`  
		Last Modified: Tue, 16 Oct 2018 10:20:46 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b8615ebbc988042c7c4db62198beea70acc923ccc2b3f98aba803a3947a68fa`  
		Last Modified: Tue, 16 Oct 2018 10:20:46 GMT  
		Size: 510.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ece25366f010e684b086e074dd441893c18b0869f29bb35473d29cff7a90ec0`  
		Last Modified: Tue, 16 Oct 2018 10:27:34 GMT  
		Size: 12.4 MB (12378176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acac26b0a955b93606c1bda892dde9998d0d2fdb2596d3aff3584aef5710399f`  
		Last Modified: Tue, 16 Oct 2018 10:27:33 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec478cc93f457864ca960a4b547e77a9fe3fca360a8d149dd38bfce21870e81a`  
		Last Modified: Tue, 16 Oct 2018 10:27:37 GMT  
		Size: 13.3 MB (13295450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4caa3f53725c324c788b8fb4f7ceadb7b2207091076e9bfc31c3778eb4a7774f`  
		Last Modified: Tue, 16 Oct 2018 10:27:33 GMT  
		Size: 2.2 KB (2193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4418bf006c01b1197d0e31adb36ac7ecce3c0a72df177cd80624df5fdc809644`  
		Last Modified: Tue, 16 Oct 2018 10:27:33 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9693bbf3add9170f48816064ebdd75b28a486a6a87e97177b68837772e2e804a`  
		Last Modified: Tue, 16 Oct 2018 15:53:34 GMT  
		Size: 54.0 MB (53981869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faa9c6ccfdd7d68fe0a0212b0bef24e21fce6a6056f3dd70d3dd5804a037e92d`  
		Last Modified: Tue, 16 Oct 2018 15:53:15 GMT  
		Size: 1.5 MB (1485553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6403912d93cc9e02cc0a3b9532cccb22c4adad55e010e33656f8268dc446fa5c`  
		Last Modified: Tue, 16 Oct 2018 15:53:15 GMT  
		Size: 392.2 KB (392163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae5bf14fcd40fa5b3501e9b7cecb9ba815ce2a3478cb5bb93620857b842cd15f`  
		Last Modified: Tue, 16 Oct 2018 15:53:15 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce74c7219f519d3e5a570c95a74a92e1580e36ef64e88bcc59a52f1030bab137`  
		Last Modified: Tue, 16 Oct 2018 15:53:15 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a56d2d132436a61038533dedeab0dd5a374705b25852a2a34647f91f6afd5b7`  
		Last Modified: Tue, 16 Oct 2018 15:53:33 GMT  
		Size: 31.9 MB (31933987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.27` - linux; arm variant v7

```console
$ docker pull mediawiki@sha256:bc6e1555842b1e60c541bc386dbbc597535373a20d2f40f9efee555864c8e8b2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.6 MB (199603270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a1b06ea56a5f825c7de472382d99de6aab98b0872ce67f572f79ddbb5b6d1d0`
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
# Sat, 15 Sep 2018 13:08:05 GMT
ENV PHP_VERSION=7.0.32
# Sat, 15 Sep 2018 13:08:05 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.32.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.32.tar.xz.asc/from/this/mirror
# Sat, 15 Sep 2018 13:08:06 GMT
ENV PHP_SHA256=ff6f62afeb32c71b3b89ecbd42950ef6c5e0c329cc6e1c58ffac47e6f1f883c4 PHP_MD5=
# Sat, 15 Sep 2018 13:08:20 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 15 Sep 2018 13:08:20 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 15 Sep 2018 13:10:53 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 15 Sep 2018 13:10:55 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Sat, 15 Sep 2018 13:10:55 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 15 Sep 2018 13:10:56 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 15 Sep 2018 13:10:56 GMT
WORKDIR /var/www/html
# Sat, 15 Sep 2018 13:10:56 GMT
EXPOSE 80/tcp
# Sat, 15 Sep 2018 13:10:57 GMT
CMD ["apache2-foreground"]
# Sat, 22 Sep 2018 12:06:56 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 22 Sep 2018 12:09:25 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Sat, 22 Sep 2018 12:09:44 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Sat, 22 Sep 2018 12:09:45 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 22 Sep 2018 12:09:46 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 22 Sep 2018 12:09:47 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.27
# Sat, 22 Sep 2018 12:09:47 GMT
ENV MEDIAWIKI_BRANCH=REL1_27
# Sat, 22 Sep 2018 12:09:47 GMT
ENV MEDIAWIKI_VERSION=1.27.5
# Sat, 22 Sep 2018 12:09:48 GMT
ENV MEDIAWIKI_SHA512=2f341ed5afab24b81c315db6bcc58dd617f95231f71408c08bb2a8b974c95b7edd93d0f3c857f24058111c3228b9919a0f1c2fd2f85be940dc571e390225027a
# Sat, 22 Sep 2018 12:10:08 GMT
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
	-	`sha256:87bebdb4556d13b60bacbb7cbc2c7da5ed6d3e3ee21ceb2437b2dba702839c1f`  
		Last Modified: Sat, 15 Sep 2018 14:30:37 GMT  
		Size: 12.4 MB (12378100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d21992453bb47eea1f83a09445075e4cc8479e430e279a92ae01044e07cc0ac`  
		Last Modified: Sat, 15 Sep 2018 14:30:35 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19858538a4d434e6373ef34a90d1c959cebed30530a35c753365e4252ad5e766`  
		Last Modified: Sat, 15 Sep 2018 14:30:41 GMT  
		Size: 12.8 MB (12849254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5fa0b8a1718349d25f758c9f7849d91259f9491eccdfe1a07d12558d067d35a`  
		Last Modified: Sat, 15 Sep 2018 14:30:35 GMT  
		Size: 2.2 KB (2193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ed7f14c11dff33d5c94f3865527899170283ac29a92446c87502e160ff81437`  
		Last Modified: Sat, 15 Sep 2018 14:30:35 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98a394db97f6eecb3d32ec3eef6eb108215d2f87cf48708872b2db2c0bc71a15`  
		Last Modified: Sat, 22 Sep 2018 12:12:53 GMT  
		Size: 51.6 MB (51605391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:754e942d693955d858205e82c822e341f1e6ee3e18637eecc97c025baa5b74d1`  
		Last Modified: Sat, 22 Sep 2018 12:12:38 GMT  
		Size: 1.4 MB (1447265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dff22164ea6cb5a89d4b638dbc9441c343684df2376401360eae56e5acf8ff8d`  
		Last Modified: Sat, 22 Sep 2018 12:12:38 GMT  
		Size: 387.3 KB (387272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae107497a1fa2ac5ea091720eef99b3d49a35e76389baa226ec13035563619cb`  
		Last Modified: Sat, 22 Sep 2018 12:12:38 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f954dd1fe08fbc2a6e66923f4def0a0cbaab9764ec10f048ac59f228c4b4587`  
		Last Modified: Sat, 22 Sep 2018 12:12:38 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f463abd2ba9f62fe791e2fa3cec5c788d48a2130f08ad99a87c50da52c7fdba2`  
		Last Modified: Sat, 22 Sep 2018 12:12:56 GMT  
		Size: 31.9 MB (31933764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.27` - linux; arm64 variant v8

```console
$ docker pull mediawiki@sha256:44ffe8d4078d33a6ca1a4799cfdf44a2c0025c9cd21d043a4f38d90257633929
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.1 MB (208080243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b208e944cb7e755680b7263bb4f7054d90055588f8cf8f9085f55ccd5fa0c900`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 16 Oct 2018 08:43:45 GMT
ADD file:e83c09a5cfc1cecaeba6b736737d551fe0f5d3f204ec3fc984fe768003774f81 in / 
# Tue, 16 Oct 2018 08:43:46 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 09:37:09 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 16 Oct 2018 09:37:10 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 16 Oct 2018 09:38:24 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 16 Oct 2018 09:38:25 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 16 Oct 2018 09:38:27 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 16 Oct 2018 09:49:43 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 09:49:44 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 16 Oct 2018 09:49:44 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 16 Oct 2018 09:49:46 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 16 Oct 2018 09:49:47 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 16 Oct 2018 09:49:49 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 16 Oct 2018 09:49:51 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 16 Oct 2018 09:49:51 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 16 Oct 2018 09:49:52 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Tue, 16 Oct 2018 09:49:53 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 16 Oct 2018 09:49:53 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 16 Oct 2018 09:49:54 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 16 Oct 2018 13:56:08 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 16 Oct 2018 13:56:09 GMT
ENV PHP_VERSION=7.0.32
# Tue, 16 Oct 2018 13:56:10 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.32.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.32.tar.xz.asc/from/this/mirror
# Tue, 16 Oct 2018 13:56:10 GMT
ENV PHP_SHA256=ff6f62afeb32c71b3b89ecbd42950ef6c5e0c329cc6e1c58ffac47e6f1f883c4 PHP_MD5=
# Tue, 16 Oct 2018 13:56:54 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 16 Oct 2018 13:56:55 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 16 Oct 2018 14:04:23 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 16 Oct 2018 14:04:25 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Tue, 16 Oct 2018 14:04:26 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 16 Oct 2018 14:04:27 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 16 Oct 2018 14:04:28 GMT
WORKDIR /var/www/html
# Tue, 16 Oct 2018 14:04:33 GMT
EXPOSE 80/tcp
# Tue, 16 Oct 2018 14:04:34 GMT
CMD ["apache2-foreground"]
# Wed, 17 Oct 2018 06:04:36 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 17 Oct 2018 06:07:58 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Wed, 17 Oct 2018 06:08:19 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Wed, 17 Oct 2018 06:08:22 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 17 Oct 2018 06:08:24 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Wed, 17 Oct 2018 06:08:32 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.27
# Wed, 17 Oct 2018 06:08:32 GMT
ENV MEDIAWIKI_BRANCH=REL1_27
# Wed, 17 Oct 2018 06:08:33 GMT
ENV MEDIAWIKI_VERSION=1.27.5
# Wed, 17 Oct 2018 06:08:34 GMT
ENV MEDIAWIKI_SHA512=2f341ed5afab24b81c315db6bcc58dd617f95231f71408c08bb2a8b974c95b7edd93d0f3c857f24058111c3228b9919a0f1c2fd2f85be940dc571e390225027a
# Wed, 17 Oct 2018 06:08:45 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:141796bfcf0d5a5edb072138e517bf85deef4f47f40afb51ba8705bec3b921dd`  
		Last Modified: Tue, 16 Oct 2018 08:50:53 GMT  
		Size: 20.3 MB (20331585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa887e40ae8a2b78a8eba6e16f2902853327c922f0110c4bd2e4728fb79b305b`  
		Last Modified: Tue, 16 Oct 2018 15:06:53 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99271cba459dd39a663363166e510f7cc1ebf18b221d33bb6c4e26d54774a5d7`  
		Last Modified: Tue, 16 Oct 2018 15:08:26 GMT  
		Size: 57.6 MB (57596184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:440b75b2132ae75a804754d6dd4f874b688e2f6a1d034fd0d2de6e496b8f1f0b`  
		Last Modified: Tue, 16 Oct 2018 15:06:52 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9716126acdb685c5ea84948fb47306c1b2d74752160d8de98d14cac45c1734a`  
		Last Modified: Tue, 16 Oct 2018 15:10:47 GMT  
		Size: 16.7 MB (16709722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92cd9f340623c79febab023e7bed21713ff7c5a54222f6e864d484df51e5eb5e`  
		Last Modified: Tue, 16 Oct 2018 15:10:15 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f4aca00aec726971992cfa7cb081238ab6d32d57c69cf024ee2690cef29374d`  
		Last Modified: Tue, 16 Oct 2018 15:10:14 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef70a607bae65cff09c6a3fd4add05727d00f023e83540e9823c8c73ce65afba`  
		Last Modified: Tue, 16 Oct 2018 15:10:14 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3482f362267a35679e02d84771ac1e78594ccb8598b70cfdb652909f558ae451`  
		Last Modified: Tue, 16 Oct 2018 15:10:13 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50624813ae71a53d58d6982af86920e9fdbaec7b06c8329e4ea88181ea682607`  
		Last Modified: Tue, 16 Oct 2018 15:43:35 GMT  
		Size: 12.4 MB (12378440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:154f5759e9b16e9a04f92afd14a7b5d5c2a92f781638c704f740986d5232caca`  
		Last Modified: Tue, 16 Oct 2018 15:43:33 GMT  
		Size: 502.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:116563a0376986b0dffd04b739a472b46be9e087b0e1aff085c5ee17cf08e287`  
		Last Modified: Tue, 16 Oct 2018 15:43:39 GMT  
		Size: 13.1 MB (13092238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:204e51532312e737fb45fedfafbff35b2381bbd51ed63b8bedadd5b79c86a8fc`  
		Last Modified: Tue, 16 Oct 2018 15:43:33 GMT  
		Size: 2.2 KB (2193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6520db0429b6facca4c9fed9a535ab187a6755dde45ba303c81da97db840095f`  
		Last Modified: Tue, 16 Oct 2018 15:43:33 GMT  
		Size: 905.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa8e3dce0d2b00c07b8b1d81365aba40a107ee790a3196a44c6e91de872d741b`  
		Last Modified: Wed, 17 Oct 2018 06:12:26 GMT  
		Size: 54.1 MB (54149817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad93e1fe64d7067a9db1021e3c4e3eaab44558105ebde6a50ac0f9ba3a5645e2`  
		Last Modified: Wed, 17 Oct 2018 06:12:05 GMT  
		Size: 1.5 MB (1486658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ac1f5aa91252d9dafcc4e5ba74eef3f7c3fa65cb1931cbe39ab155c07031f73`  
		Last Modified: Wed, 17 Oct 2018 06:12:02 GMT  
		Size: 395.0 KB (394970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56946bf185cff149538ad11ea4912945b25b68e8a7cab8f2457efd2701cef4d9`  
		Last Modified: Wed, 17 Oct 2018 06:12:02 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85b5171d7d075f37055f4a31e64767d5854ad0057627cd4b2564dd3790d838d2`  
		Last Modified: Wed, 17 Oct 2018 06:12:02 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f7948973641c4f1ad24c42af64c7125499a4f05252ec0d0507b6567ebef26f8`  
		Last Modified: Wed, 17 Oct 2018 06:12:24 GMT  
		Size: 31.9 MB (31933727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.27` - linux; 386

```console
$ docker pull mediawiki@sha256:b21d1d70242702efdbb70168a3c286b30076caec26c6628394dc286be4ef5da1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.3 MB (229329317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e869b7784bacd85cc3b9f01934da9edaa4e408bd1d1e3e46f97553d3dc015024`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 16 Oct 2018 10:49:05 GMT
ADD file:a71ef0e9adb528ae2dc5ca3395654522c23762d8936a4902378c6749bb357582 in / 
# Tue, 16 Oct 2018 10:49:05 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 11:59:35 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 16 Oct 2018 11:59:36 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 16 Oct 2018 12:00:22 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:00:23 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 16 Oct 2018 12:00:24 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 16 Oct 2018 12:11:59 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:11:59 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 16 Oct 2018 12:12:00 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 16 Oct 2018 12:12:01 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 16 Oct 2018 12:12:02 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 16 Oct 2018 12:12:03 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 16 Oct 2018 12:12:04 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 16 Oct 2018 12:12:04 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 16 Oct 2018 12:12:05 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Tue, 16 Oct 2018 12:12:05 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 16 Oct 2018 12:12:05 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 16 Oct 2018 12:12:05 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 16 Oct 2018 17:29:54 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 16 Oct 2018 17:29:54 GMT
ENV PHP_VERSION=7.0.32
# Tue, 16 Oct 2018 17:29:55 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.32.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.32.tar.xz.asc/from/this/mirror
# Tue, 16 Oct 2018 17:29:55 GMT
ENV PHP_SHA256=ff6f62afeb32c71b3b89ecbd42950ef6c5e0c329cc6e1c58ffac47e6f1f883c4 PHP_MD5=
# Tue, 16 Oct 2018 17:30:07 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 16 Oct 2018 17:30:07 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 16 Oct 2018 17:34:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 16 Oct 2018 17:34:07 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Tue, 16 Oct 2018 17:34:07 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 16 Oct 2018 17:34:08 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 16 Oct 2018 17:34:08 GMT
WORKDIR /var/www/html
# Tue, 16 Oct 2018 17:34:08 GMT
EXPOSE 80/tcp
# Tue, 16 Oct 2018 17:34:08 GMT
CMD ["apache2-foreground"]
# Wed, 17 Oct 2018 07:58:33 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 17 Oct 2018 07:59:59 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Wed, 17 Oct 2018 08:00:08 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Wed, 17 Oct 2018 08:00:09 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 17 Oct 2018 08:00:09 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Wed, 17 Oct 2018 08:00:10 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.27
# Wed, 17 Oct 2018 08:00:10 GMT
ENV MEDIAWIKI_BRANCH=REL1_27
# Wed, 17 Oct 2018 08:00:10 GMT
ENV MEDIAWIKI_VERSION=1.27.5
# Wed, 17 Oct 2018 08:00:10 GMT
ENV MEDIAWIKI_SHA512=2f341ed5afab24b81c315db6bcc58dd617f95231f71408c08bb2a8b974c95b7edd93d0f3c857f24058111c3228b9919a0f1c2fd2f85be940dc571e390225027a
# Wed, 17 Oct 2018 08:00:18 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:2b7bcb618c4033f37486fd700e6d0debf2260935f888a192119c41eaddd29978`  
		Last Modified: Tue, 16 Oct 2018 11:06:15 GMT  
		Size: 23.1 MB (23126605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ac9f5e161441372e549d094f25b4640689548d53bb47c34a8ced01a74b8ad6f`  
		Last Modified: Tue, 16 Oct 2018 19:08:04 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cac64c78cd80e7e59f4a0fd49c7632e4799f427a439c1339df81ad969a7aed3`  
		Last Modified: Tue, 16 Oct 2018 19:08:39 GMT  
		Size: 71.5 MB (71484645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a7cfe59c8cc409c1eb116e2905e9a239f1f1a26128b6fd15cf1217563b373e4`  
		Last Modified: Tue, 16 Oct 2018 19:08:04 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99051976b849498ac53e2ffcd090cb770169576c8fe2ba03b72ec38559319cff`  
		Last Modified: Tue, 16 Oct 2018 19:10:57 GMT  
		Size: 17.6 MB (17562598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8baa008090db722001228a8b24993ff76cc41b4f3c5ee668b4ba3a9a91a8beb`  
		Last Modified: Tue, 16 Oct 2018 19:10:51 GMT  
		Size: 1.2 KB (1243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8f645450e0e3cf05fbcd8a2ca3ca89deb3a97661b07a8e11130055680df3138`  
		Last Modified: Tue, 16 Oct 2018 19:11:16 GMT  
		Size: 429.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a636e140725a9abf6bfca67dce52d8d0729b612493c86addf510f88cd41ff73`  
		Last Modified: Tue, 16 Oct 2018 19:10:50 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c899e0d2536fbfcfaa4ef00f9497a5891261cfb1fca3e776a428e461db7ee410`  
		Last Modified: Tue, 16 Oct 2018 19:10:50 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0cba1ef0564202ac1445408ed856bfc567867695100138b6278c4a50680cf7a`  
		Last Modified: Tue, 16 Oct 2018 19:49:33 GMT  
		Size: 12.4 MB (12379305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ca96ddbed1b213bc6b7cdd27cc821791a1a1594630bd9afbae4b648ee450255`  
		Last Modified: Tue, 16 Oct 2018 19:49:31 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b970950633084b70af418e3cf114d23a70f27e9e8fa032a907328f795aef1b81`  
		Last Modified: Tue, 16 Oct 2018 19:49:36 GMT  
		Size: 14.4 MB (14393946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add8f03f18325d56159cd2f3fcad9119a2bab20fd859fde0738145f82e5c6b8f`  
		Last Modified: Tue, 16 Oct 2018 19:49:31 GMT  
		Size: 2.2 KB (2193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c7c94c298264615aa9da4abf6b9e47f4b11d3c699c9d6a624e04f84679855ad`  
		Last Modified: Tue, 16 Oct 2018 19:49:31 GMT  
		Size: 903.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05cdbec925eca59dd43b5ffcb57c08abbae8d13d76179431dbc03b1041018770`  
		Last Modified: Wed, 17 Oct 2018 08:03:13 GMT  
		Size: 56.5 MB (56499573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb6e8e69dc478801be87de36f35f63ac515bae458b89124dbce6b3699a00296`  
		Last Modified: Wed, 17 Oct 2018 08:02:35 GMT  
		Size: 1.6 MB (1552701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d0ff586df7ffffb2c50c9cd9c0ed992526ca2ef675a027011984d3e2e63ae83`  
		Last Modified: Wed, 17 Oct 2018 08:02:34 GMT  
		Size: 389.4 KB (389353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28fc31eb8ac64e77e115c05b989b5f57b1a9f7f20cb66d1f997c54aa74fca7dc`  
		Last Modified: Wed, 17 Oct 2018 08:02:34 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b257eceaa8885e119f77ac04ebf8473d4e820244c945abefb769c9abe444a6e`  
		Last Modified: Wed, 17 Oct 2018 08:02:34 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79cb8aad099aaa347b0c7f6b94c0cadcd8f36533710f7a793b86a4660ca59184`  
		Last Modified: Wed, 17 Oct 2018 08:02:51 GMT  
		Size: 31.9 MB (31933705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.27` - linux; ppc64le

```console
$ docker pull mediawiki@sha256:e76eacfa4ae216c9b7f4e6165ad7fa554f544f47ee5ae4d8b0d46e602777552f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.4 MB (218449205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:814f618dcdcccb99814687061d3b8b49e32ef553c89429c2a0a130c4577e6570`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 16 Oct 2018 08:22:25 GMT
ADD file:b1fa1d0ffa2b206311dfd95642d74c3312565a1ec2e6e3a2197bfd2a4b3de6c6 in / 
# Tue, 16 Oct 2018 08:22:30 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 08:36:20 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 16 Oct 2018 08:36:20 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 16 Oct 2018 08:38:14 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 16 Oct 2018 08:38:16 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 16 Oct 2018 08:38:19 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 16 Oct 2018 08:47:02 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 08:47:04 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 16 Oct 2018 08:47:06 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 16 Oct 2018 08:47:12 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 16 Oct 2018 08:47:15 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 16 Oct 2018 08:47:21 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 16 Oct 2018 08:47:25 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 16 Oct 2018 08:47:26 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 16 Oct 2018 08:47:27 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Tue, 16 Oct 2018 08:47:28 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 16 Oct 2018 08:47:30 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 16 Oct 2018 08:47:33 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 16 Oct 2018 11:37:55 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 16 Oct 2018 11:37:56 GMT
ENV PHP_VERSION=7.0.32
# Tue, 16 Oct 2018 11:37:57 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.32.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.32.tar.xz.asc/from/this/mirror
# Tue, 16 Oct 2018 11:37:58 GMT
ENV PHP_SHA256=ff6f62afeb32c71b3b89ecbd42950ef6c5e0c329cc6e1c58ffac47e6f1f883c4 PHP_MD5=
# Tue, 16 Oct 2018 11:38:37 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 16 Oct 2018 11:38:41 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 16 Oct 2018 11:42:36 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 16 Oct 2018 11:42:38 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Tue, 16 Oct 2018 11:42:39 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 16 Oct 2018 11:42:42 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 16 Oct 2018 11:42:43 GMT
WORKDIR /var/www/html
# Tue, 16 Oct 2018 11:42:44 GMT
EXPOSE 80/tcp
# Tue, 16 Oct 2018 11:42:44 GMT
CMD ["apache2-foreground"]
# Tue, 16 Oct 2018 20:12:30 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 16 Oct 2018 20:14:29 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Tue, 16 Oct 2018 20:14:47 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Tue, 16 Oct 2018 20:14:54 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 16 Oct 2018 20:14:59 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Tue, 16 Oct 2018 20:15:00 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.27
# Tue, 16 Oct 2018 20:15:01 GMT
ENV MEDIAWIKI_BRANCH=REL1_27
# Tue, 16 Oct 2018 20:15:03 GMT
ENV MEDIAWIKI_VERSION=1.27.5
# Tue, 16 Oct 2018 20:15:04 GMT
ENV MEDIAWIKI_SHA512=2f341ed5afab24b81c315db6bcc58dd617f95231f71408c08bb2a8b974c95b7edd93d0f3c857f24058111c3228b9919a0f1c2fd2f85be940dc571e390225027a
# Tue, 16 Oct 2018 20:15:27 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:202f659db3e53c01ac947538d8b37251e9fa16c4a6a699dc6c2a8910afcdfed4`  
		Last Modified: Tue, 16 Oct 2018 08:30:59 GMT  
		Size: 22.7 MB (22740583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba0f6d499d48eb19dc9d2e6453db815f1d64074f2775cbd9cac4928c0461cdbc`  
		Last Modified: Tue, 16 Oct 2018 12:20:25 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f354790bdfa97d0b204ca9cf4402d437e713049020362b7ad4af49ef47efb984`  
		Last Modified: Tue, 16 Oct 2018 12:21:25 GMT  
		Size: 61.8 MB (61809966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:745377e23f5d138b115edff3b4ebf7c90114d7d658bff2cd8453aaffc66a04db`  
		Last Modified: Tue, 16 Oct 2018 12:20:28 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6ca68ed7b31a0303cdb6d7669c24c6dedb55ddece4d992172fb000dc3f93eeb`  
		Last Modified: Tue, 16 Oct 2018 12:23:21 GMT  
		Size: 17.3 MB (17348500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba60179e94e0e6514a8bd50455affa30a26a572b16013a2b01ea060c2aaa60d3`  
		Last Modified: Tue, 16 Oct 2018 12:23:07 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9292d4db20fce2c69be0ea52392b7616f1846e01f9b70e0aadff84c1084bf254`  
		Last Modified: Tue, 16 Oct 2018 12:23:01 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a20d33fb196e2e93548afbb4d63cb3d16c02b0d6d342e94e77c6beca290525`  
		Last Modified: Tue, 16 Oct 2018 12:22:59 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c4ea029b99fcbbd8bfbfd74bd42ca81a84fbee060a87904f570a192fc958db5`  
		Last Modified: Tue, 16 Oct 2018 12:22:57 GMT  
		Size: 517.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c9720eb00827218a025ca83a1200da8fe81ff06a7addc7bb5bbe67a7135ce16`  
		Last Modified: Tue, 16 Oct 2018 12:48:36 GMT  
		Size: 12.4 MB (12378819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5df700c2238de8679c6dbb08bf02760e4e40bccf6ccaf35af683095dc66198ea`  
		Last Modified: Tue, 16 Oct 2018 12:48:33 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22b62e69dd460d061013a0b345cbdcfeb9adedbb59d021732cfca2a21eaf10de`  
		Last Modified: Tue, 16 Oct 2018 12:48:40 GMT  
		Size: 13.7 MB (13702592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc8b0e1276d18fb2703450c458d281a06a6bf5f57d56bfafa78804c108cfa33c`  
		Last Modified: Tue, 16 Oct 2018 12:48:33 GMT  
		Size: 2.2 KB (2194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1210917658a99e151617ddf0dded555475f0ec8ce36cd98daa699c042519fe8`  
		Last Modified: Tue, 16 Oct 2018 12:48:34 GMT  
		Size: 906.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e406cec386b4c449c6428e2ae5dc6f7677d1f5d173fb2b536a3d71ae16dfc121`  
		Last Modified: Tue, 16 Oct 2018 20:18:11 GMT  
		Size: 56.6 MB (56596313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f43efb949dce69d5327e901bc97faa44c380d96012f814fa33740e666bc1ab3`  
		Last Modified: Tue, 16 Oct 2018 20:17:52 GMT  
		Size: 1.5 MB (1530906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b93074650452c34e4a3bd7d8d9fe167cf458ae6688dc190a14f7ca5eedf8083`  
		Last Modified: Tue, 16 Oct 2018 20:17:52 GMT  
		Size: 400.4 KB (400382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c082530349e505f3093d4c9bec2ed7622e3f8f82f27cb4b700eeb6c1a1423130`  
		Last Modified: Tue, 16 Oct 2018 20:17:51 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69ee635cd230017d2bc1b368f6d42edd24f93f85202d8d24950baef9bfbd0001`  
		Last Modified: Tue, 16 Oct 2018 20:17:51 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65882f587f0e22183aa5dc102c5201529a1306d81e0cdd8b6359dd681854d123`  
		Last Modified: Tue, 16 Oct 2018 20:18:05 GMT  
		Size: 31.9 MB (31934083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mediawiki:1.27.5`

```console
$ docker pull mediawiki@sha256:aabdb5194354f49a987bcbb30d583a73102d4ef35067bff1329a37ce474d9b21
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
$ docker pull mediawiki@sha256:bd7a2b1abdf8c8abffd686c8986897e7bd6ee9210be6d83cf9d7870c734f35df
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.6 MB (223559873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8832e1c4afd5c4a6aeaeb41731900aa11b2a3256459cecf17a441898dc73e126`
-	Entrypoint: `["docker-php-entrypoint"]`
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
# Tue, 16 Oct 2018 01:46:19 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 16 Oct 2018 01:46:19 GMT
ENV PHP_VERSION=7.0.32
# Tue, 16 Oct 2018 01:46:19 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.32.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.32.tar.xz.asc/from/this/mirror
# Tue, 16 Oct 2018 01:46:20 GMT
ENV PHP_SHA256=ff6f62afeb32c71b3b89ecbd42950ef6c5e0c329cc6e1c58ffac47e6f1f883c4 PHP_MD5=
# Tue, 16 Oct 2018 01:46:28 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 16 Oct 2018 01:46:31 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 16 Oct 2018 01:49:43 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 16 Oct 2018 01:49:43 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Tue, 16 Oct 2018 01:49:43 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 16 Oct 2018 01:49:44 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 16 Oct 2018 01:49:44 GMT
WORKDIR /var/www/html
# Tue, 16 Oct 2018 01:49:44 GMT
EXPOSE 80/tcp
# Tue, 16 Oct 2018 01:49:44 GMT
CMD ["apache2-foreground"]
# Tue, 16 Oct 2018 12:58:53 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 16 Oct 2018 13:01:23 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Tue, 16 Oct 2018 13:01:44 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Tue, 16 Oct 2018 13:01:45 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 16 Oct 2018 13:01:46 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Tue, 16 Oct 2018 13:01:47 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.27
# Tue, 16 Oct 2018 13:01:47 GMT
ENV MEDIAWIKI_BRANCH=REL1_27
# Tue, 16 Oct 2018 13:01:47 GMT
ENV MEDIAWIKI_VERSION=1.27.5
# Tue, 16 Oct 2018 13:01:48 GMT
ENV MEDIAWIKI_SHA512=2f341ed5afab24b81c315db6bcc58dd617f95231f71408c08bb2a8b974c95b7edd93d0f3c857f24058111c3228b9919a0f1c2fd2f85be940dc571e390225027a
# Tue, 16 Oct 2018 13:01:59 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
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
	-	`sha256:4299e0bacf8fbcc69dfb0d6acba3f45697ceaf5c29c977ee706281283523d885`  
		Last Modified: Tue, 16 Oct 2018 03:47:38 GMT  
		Size: 12.4 MB (12379835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9263f9577aad0f8ef48adc205d5f182f109289e8a555326b593b1c25360fe557`  
		Last Modified: Tue, 16 Oct 2018 03:47:37 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ca842beb74556b475d94bbd9cac21d02bdb319480beed4b8f42d832be6e77d7`  
		Last Modified: Tue, 16 Oct 2018 03:47:41 GMT  
		Size: 13.9 MB (13904473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:087c6240046d169882f5e9b62019496b3d25b288f0f56b7dae962af273f704e7`  
		Last Modified: Tue, 16 Oct 2018 03:47:37 GMT  
		Size: 2.2 KB (2193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d31af3632f760e46acb44058658b8db7162eff13890dc8f4e9443d6749cfa8db`  
		Last Modified: Tue, 16 Oct 2018 03:47:37 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8928fd73d2525bf27216fe983a1297fa1c1655db7909e055c9d4f33c5790196f`  
		Last Modified: Tue, 16 Oct 2018 13:06:36 GMT  
		Size: 56.3 MB (56343305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b089431ea3f41c7da814b07d89301e8061ba645eb3355afade58aa49ee1026c6`  
		Last Modified: Tue, 16 Oct 2018 13:06:11 GMT  
		Size: 1.5 MB (1549030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b4c5b4f7f5727dc409515e6373dae57fb7e93b46fc3603f96cb09587bfe05af`  
		Last Modified: Tue, 16 Oct 2018 13:06:10 GMT  
		Size: 400.3 KB (400325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b1adac96a5ca85b6667438d5fb23d8641669d423ff22278e6d8275d12e6953d`  
		Last Modified: Tue, 16 Oct 2018 13:06:09 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b631ea5aef3e47965335a4357e5e7c51162bfbeb627f5927cc632d2ec914f27d`  
		Last Modified: Tue, 16 Oct 2018 13:06:09 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acc040b08360839d015c45757d6fcff6e3fc728f735065317d6d6134534d6f5d`  
		Last Modified: Tue, 16 Oct 2018 13:06:40 GMT  
		Size: 31.9 MB (31933768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.27.5` - linux; arm variant v5

```console
$ docker pull mediawiki@sha256:aa4f49c48775e3c93828b1dcdbc8521fc58378305065177e6e6b7cc52dd75024
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.7 MB (208735644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9396d4c18d945890c8d6a8d1736fcdc0b1a3e378f142f2f5aad80f514cf90b3`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 16 Oct 2018 08:55:22 GMT
ADD file:8f2148adabc29587e17b50138f305f39e94e0e2bd9211a9f913fef56013ac35a in / 
# Tue, 16 Oct 2018 08:55:23 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 08:59:24 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 16 Oct 2018 08:59:25 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 16 Oct 2018 09:00:38 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 16 Oct 2018 09:00:40 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 16 Oct 2018 09:00:41 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 16 Oct 2018 09:01:03 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 09:01:04 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 16 Oct 2018 09:01:04 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 16 Oct 2018 09:01:05 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 16 Oct 2018 09:01:06 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 16 Oct 2018 09:01:08 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 16 Oct 2018 09:01:09 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 16 Oct 2018 09:01:09 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 16 Oct 2018 09:01:09 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Tue, 16 Oct 2018 09:01:10 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 16 Oct 2018 09:01:10 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 16 Oct 2018 09:01:10 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 16 Oct 2018 09:53:06 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 16 Oct 2018 09:53:06 GMT
ENV PHP_VERSION=7.0.32
# Tue, 16 Oct 2018 09:53:06 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.32.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.32.tar.xz.asc/from/this/mirror
# Tue, 16 Oct 2018 09:53:07 GMT
ENV PHP_SHA256=ff6f62afeb32c71b3b89ecbd42950ef6c5e0c329cc6e1c58ffac47e6f1f883c4 PHP_MD5=
# Tue, 16 Oct 2018 09:53:22 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 16 Oct 2018 09:53:23 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 16 Oct 2018 09:56:09 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 16 Oct 2018 09:56:11 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Tue, 16 Oct 2018 09:56:11 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 16 Oct 2018 09:56:12 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 16 Oct 2018 09:56:13 GMT
WORKDIR /var/www/html
# Tue, 16 Oct 2018 09:56:13 GMT
EXPOSE 80/tcp
# Tue, 16 Oct 2018 09:56:14 GMT
CMD ["apache2-foreground"]
# Tue, 16 Oct 2018 15:46:06 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 16 Oct 2018 15:50:26 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Tue, 16 Oct 2018 15:50:43 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Tue, 16 Oct 2018 15:50:45 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 16 Oct 2018 15:50:46 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Tue, 16 Oct 2018 15:50:51 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.27
# Tue, 16 Oct 2018 15:50:51 GMT
ENV MEDIAWIKI_BRANCH=REL1_27
# Tue, 16 Oct 2018 15:50:52 GMT
ENV MEDIAWIKI_VERSION=1.27.5
# Tue, 16 Oct 2018 15:50:53 GMT
ENV MEDIAWIKI_SHA512=2f341ed5afab24b81c315db6bcc58dd617f95231f71408c08bb2a8b974c95b7edd93d0f3c857f24058111c3228b9919a0f1c2fd2f85be940dc571e390225027a
# Tue, 16 Oct 2018 15:51:10 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:4b7ffdf9817f718c84be550e8edf757070396d69165fa729c6ddd4e775428eb2`  
		Last Modified: Tue, 16 Oct 2018 09:04:44 GMT  
		Size: 21.2 MB (21162965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20460378a8f38aacfeb9a0bcf3a38abbaebb8845cf0f7ca8c5f8ccb51f3ba5d8`  
		Last Modified: Tue, 16 Oct 2018 10:20:49 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecb7e6fb4c6270cb10f9b8f7aa93b2d05eca8e4ca542ae6b884f3d507b3f2c06`  
		Last Modified: Tue, 16 Oct 2018 10:21:09 GMT  
		Size: 57.4 MB (57447518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ad837638c5f551ce2ed0722f0aa0206be6b2503befb732461de20785c38ed13`  
		Last Modified: Tue, 16 Oct 2018 10:20:48 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02b8207a3bfbe878b8a8d846a774c3ce482e349d482e7084559f88b12618ffb1`  
		Last Modified: Tue, 16 Oct 2018 10:20:52 GMT  
		Size: 16.7 MB (16650918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7198acceff99d48ae548b76f8e9eb26d52d8a63521d95d7db38554594b5d1223`  
		Last Modified: Tue, 16 Oct 2018 10:20:47 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e62a81208df875e54460875df6afbac9065b4afc56282d9fb756acffa5656a7`  
		Last Modified: Tue, 16 Oct 2018 10:20:46 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5a783b15fb65ce49afc889cc25e5744af9318920f2c2b5419dc1d6209f71d6a`  
		Last Modified: Tue, 16 Oct 2018 10:20:46 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b8615ebbc988042c7c4db62198beea70acc923ccc2b3f98aba803a3947a68fa`  
		Last Modified: Tue, 16 Oct 2018 10:20:46 GMT  
		Size: 510.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ece25366f010e684b086e074dd441893c18b0869f29bb35473d29cff7a90ec0`  
		Last Modified: Tue, 16 Oct 2018 10:27:34 GMT  
		Size: 12.4 MB (12378176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acac26b0a955b93606c1bda892dde9998d0d2fdb2596d3aff3584aef5710399f`  
		Last Modified: Tue, 16 Oct 2018 10:27:33 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec478cc93f457864ca960a4b547e77a9fe3fca360a8d149dd38bfce21870e81a`  
		Last Modified: Tue, 16 Oct 2018 10:27:37 GMT  
		Size: 13.3 MB (13295450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4caa3f53725c324c788b8fb4f7ceadb7b2207091076e9bfc31c3778eb4a7774f`  
		Last Modified: Tue, 16 Oct 2018 10:27:33 GMT  
		Size: 2.2 KB (2193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4418bf006c01b1197d0e31adb36ac7ecce3c0a72df177cd80624df5fdc809644`  
		Last Modified: Tue, 16 Oct 2018 10:27:33 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9693bbf3add9170f48816064ebdd75b28a486a6a87e97177b68837772e2e804a`  
		Last Modified: Tue, 16 Oct 2018 15:53:34 GMT  
		Size: 54.0 MB (53981869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faa9c6ccfdd7d68fe0a0212b0bef24e21fce6a6056f3dd70d3dd5804a037e92d`  
		Last Modified: Tue, 16 Oct 2018 15:53:15 GMT  
		Size: 1.5 MB (1485553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6403912d93cc9e02cc0a3b9532cccb22c4adad55e010e33656f8268dc446fa5c`  
		Last Modified: Tue, 16 Oct 2018 15:53:15 GMT  
		Size: 392.2 KB (392163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae5bf14fcd40fa5b3501e9b7cecb9ba815ce2a3478cb5bb93620857b842cd15f`  
		Last Modified: Tue, 16 Oct 2018 15:53:15 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce74c7219f519d3e5a570c95a74a92e1580e36ef64e88bcc59a52f1030bab137`  
		Last Modified: Tue, 16 Oct 2018 15:53:15 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a56d2d132436a61038533dedeab0dd5a374705b25852a2a34647f91f6afd5b7`  
		Last Modified: Tue, 16 Oct 2018 15:53:33 GMT  
		Size: 31.9 MB (31933987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.27.5` - linux; arm variant v7

```console
$ docker pull mediawiki@sha256:bc6e1555842b1e60c541bc386dbbc597535373a20d2f40f9efee555864c8e8b2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.6 MB (199603270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a1b06ea56a5f825c7de472382d99de6aab98b0872ce67f572f79ddbb5b6d1d0`
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
# Sat, 15 Sep 2018 13:08:05 GMT
ENV PHP_VERSION=7.0.32
# Sat, 15 Sep 2018 13:08:05 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.32.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.32.tar.xz.asc/from/this/mirror
# Sat, 15 Sep 2018 13:08:06 GMT
ENV PHP_SHA256=ff6f62afeb32c71b3b89ecbd42950ef6c5e0c329cc6e1c58ffac47e6f1f883c4 PHP_MD5=
# Sat, 15 Sep 2018 13:08:20 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 15 Sep 2018 13:08:20 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 15 Sep 2018 13:10:53 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 15 Sep 2018 13:10:55 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Sat, 15 Sep 2018 13:10:55 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 15 Sep 2018 13:10:56 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 15 Sep 2018 13:10:56 GMT
WORKDIR /var/www/html
# Sat, 15 Sep 2018 13:10:56 GMT
EXPOSE 80/tcp
# Sat, 15 Sep 2018 13:10:57 GMT
CMD ["apache2-foreground"]
# Sat, 22 Sep 2018 12:06:56 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 22 Sep 2018 12:09:25 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Sat, 22 Sep 2018 12:09:44 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Sat, 22 Sep 2018 12:09:45 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 22 Sep 2018 12:09:46 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 22 Sep 2018 12:09:47 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.27
# Sat, 22 Sep 2018 12:09:47 GMT
ENV MEDIAWIKI_BRANCH=REL1_27
# Sat, 22 Sep 2018 12:09:47 GMT
ENV MEDIAWIKI_VERSION=1.27.5
# Sat, 22 Sep 2018 12:09:48 GMT
ENV MEDIAWIKI_SHA512=2f341ed5afab24b81c315db6bcc58dd617f95231f71408c08bb2a8b974c95b7edd93d0f3c857f24058111c3228b9919a0f1c2fd2f85be940dc571e390225027a
# Sat, 22 Sep 2018 12:10:08 GMT
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
	-	`sha256:87bebdb4556d13b60bacbb7cbc2c7da5ed6d3e3ee21ceb2437b2dba702839c1f`  
		Last Modified: Sat, 15 Sep 2018 14:30:37 GMT  
		Size: 12.4 MB (12378100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d21992453bb47eea1f83a09445075e4cc8479e430e279a92ae01044e07cc0ac`  
		Last Modified: Sat, 15 Sep 2018 14:30:35 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19858538a4d434e6373ef34a90d1c959cebed30530a35c753365e4252ad5e766`  
		Last Modified: Sat, 15 Sep 2018 14:30:41 GMT  
		Size: 12.8 MB (12849254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5fa0b8a1718349d25f758c9f7849d91259f9491eccdfe1a07d12558d067d35a`  
		Last Modified: Sat, 15 Sep 2018 14:30:35 GMT  
		Size: 2.2 KB (2193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ed7f14c11dff33d5c94f3865527899170283ac29a92446c87502e160ff81437`  
		Last Modified: Sat, 15 Sep 2018 14:30:35 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98a394db97f6eecb3d32ec3eef6eb108215d2f87cf48708872b2db2c0bc71a15`  
		Last Modified: Sat, 22 Sep 2018 12:12:53 GMT  
		Size: 51.6 MB (51605391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:754e942d693955d858205e82c822e341f1e6ee3e18637eecc97c025baa5b74d1`  
		Last Modified: Sat, 22 Sep 2018 12:12:38 GMT  
		Size: 1.4 MB (1447265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dff22164ea6cb5a89d4b638dbc9441c343684df2376401360eae56e5acf8ff8d`  
		Last Modified: Sat, 22 Sep 2018 12:12:38 GMT  
		Size: 387.3 KB (387272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae107497a1fa2ac5ea091720eef99b3d49a35e76389baa226ec13035563619cb`  
		Last Modified: Sat, 22 Sep 2018 12:12:38 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f954dd1fe08fbc2a6e66923f4def0a0cbaab9764ec10f048ac59f228c4b4587`  
		Last Modified: Sat, 22 Sep 2018 12:12:38 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f463abd2ba9f62fe791e2fa3cec5c788d48a2130f08ad99a87c50da52c7fdba2`  
		Last Modified: Sat, 22 Sep 2018 12:12:56 GMT  
		Size: 31.9 MB (31933764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.27.5` - linux; arm64 variant v8

```console
$ docker pull mediawiki@sha256:44ffe8d4078d33a6ca1a4799cfdf44a2c0025c9cd21d043a4f38d90257633929
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.1 MB (208080243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b208e944cb7e755680b7263bb4f7054d90055588f8cf8f9085f55ccd5fa0c900`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 16 Oct 2018 08:43:45 GMT
ADD file:e83c09a5cfc1cecaeba6b736737d551fe0f5d3f204ec3fc984fe768003774f81 in / 
# Tue, 16 Oct 2018 08:43:46 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 09:37:09 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 16 Oct 2018 09:37:10 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 16 Oct 2018 09:38:24 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 16 Oct 2018 09:38:25 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 16 Oct 2018 09:38:27 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 16 Oct 2018 09:49:43 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 09:49:44 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 16 Oct 2018 09:49:44 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 16 Oct 2018 09:49:46 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 16 Oct 2018 09:49:47 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 16 Oct 2018 09:49:49 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 16 Oct 2018 09:49:51 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 16 Oct 2018 09:49:51 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 16 Oct 2018 09:49:52 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Tue, 16 Oct 2018 09:49:53 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 16 Oct 2018 09:49:53 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 16 Oct 2018 09:49:54 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 16 Oct 2018 13:56:08 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 16 Oct 2018 13:56:09 GMT
ENV PHP_VERSION=7.0.32
# Tue, 16 Oct 2018 13:56:10 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.32.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.32.tar.xz.asc/from/this/mirror
# Tue, 16 Oct 2018 13:56:10 GMT
ENV PHP_SHA256=ff6f62afeb32c71b3b89ecbd42950ef6c5e0c329cc6e1c58ffac47e6f1f883c4 PHP_MD5=
# Tue, 16 Oct 2018 13:56:54 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 16 Oct 2018 13:56:55 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 16 Oct 2018 14:04:23 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 16 Oct 2018 14:04:25 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Tue, 16 Oct 2018 14:04:26 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 16 Oct 2018 14:04:27 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 16 Oct 2018 14:04:28 GMT
WORKDIR /var/www/html
# Tue, 16 Oct 2018 14:04:33 GMT
EXPOSE 80/tcp
# Tue, 16 Oct 2018 14:04:34 GMT
CMD ["apache2-foreground"]
# Wed, 17 Oct 2018 06:04:36 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 17 Oct 2018 06:07:58 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Wed, 17 Oct 2018 06:08:19 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Wed, 17 Oct 2018 06:08:22 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 17 Oct 2018 06:08:24 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Wed, 17 Oct 2018 06:08:32 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.27
# Wed, 17 Oct 2018 06:08:32 GMT
ENV MEDIAWIKI_BRANCH=REL1_27
# Wed, 17 Oct 2018 06:08:33 GMT
ENV MEDIAWIKI_VERSION=1.27.5
# Wed, 17 Oct 2018 06:08:34 GMT
ENV MEDIAWIKI_SHA512=2f341ed5afab24b81c315db6bcc58dd617f95231f71408c08bb2a8b974c95b7edd93d0f3c857f24058111c3228b9919a0f1c2fd2f85be940dc571e390225027a
# Wed, 17 Oct 2018 06:08:45 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:141796bfcf0d5a5edb072138e517bf85deef4f47f40afb51ba8705bec3b921dd`  
		Last Modified: Tue, 16 Oct 2018 08:50:53 GMT  
		Size: 20.3 MB (20331585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa887e40ae8a2b78a8eba6e16f2902853327c922f0110c4bd2e4728fb79b305b`  
		Last Modified: Tue, 16 Oct 2018 15:06:53 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99271cba459dd39a663363166e510f7cc1ebf18b221d33bb6c4e26d54774a5d7`  
		Last Modified: Tue, 16 Oct 2018 15:08:26 GMT  
		Size: 57.6 MB (57596184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:440b75b2132ae75a804754d6dd4f874b688e2f6a1d034fd0d2de6e496b8f1f0b`  
		Last Modified: Tue, 16 Oct 2018 15:06:52 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9716126acdb685c5ea84948fb47306c1b2d74752160d8de98d14cac45c1734a`  
		Last Modified: Tue, 16 Oct 2018 15:10:47 GMT  
		Size: 16.7 MB (16709722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92cd9f340623c79febab023e7bed21713ff7c5a54222f6e864d484df51e5eb5e`  
		Last Modified: Tue, 16 Oct 2018 15:10:15 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f4aca00aec726971992cfa7cb081238ab6d32d57c69cf024ee2690cef29374d`  
		Last Modified: Tue, 16 Oct 2018 15:10:14 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef70a607bae65cff09c6a3fd4add05727d00f023e83540e9823c8c73ce65afba`  
		Last Modified: Tue, 16 Oct 2018 15:10:14 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3482f362267a35679e02d84771ac1e78594ccb8598b70cfdb652909f558ae451`  
		Last Modified: Tue, 16 Oct 2018 15:10:13 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50624813ae71a53d58d6982af86920e9fdbaec7b06c8329e4ea88181ea682607`  
		Last Modified: Tue, 16 Oct 2018 15:43:35 GMT  
		Size: 12.4 MB (12378440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:154f5759e9b16e9a04f92afd14a7b5d5c2a92f781638c704f740986d5232caca`  
		Last Modified: Tue, 16 Oct 2018 15:43:33 GMT  
		Size: 502.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:116563a0376986b0dffd04b739a472b46be9e087b0e1aff085c5ee17cf08e287`  
		Last Modified: Tue, 16 Oct 2018 15:43:39 GMT  
		Size: 13.1 MB (13092238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:204e51532312e737fb45fedfafbff35b2381bbd51ed63b8bedadd5b79c86a8fc`  
		Last Modified: Tue, 16 Oct 2018 15:43:33 GMT  
		Size: 2.2 KB (2193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6520db0429b6facca4c9fed9a535ab187a6755dde45ba303c81da97db840095f`  
		Last Modified: Tue, 16 Oct 2018 15:43:33 GMT  
		Size: 905.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa8e3dce0d2b00c07b8b1d81365aba40a107ee790a3196a44c6e91de872d741b`  
		Last Modified: Wed, 17 Oct 2018 06:12:26 GMT  
		Size: 54.1 MB (54149817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad93e1fe64d7067a9db1021e3c4e3eaab44558105ebde6a50ac0f9ba3a5645e2`  
		Last Modified: Wed, 17 Oct 2018 06:12:05 GMT  
		Size: 1.5 MB (1486658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ac1f5aa91252d9dafcc4e5ba74eef3f7c3fa65cb1931cbe39ab155c07031f73`  
		Last Modified: Wed, 17 Oct 2018 06:12:02 GMT  
		Size: 395.0 KB (394970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56946bf185cff149538ad11ea4912945b25b68e8a7cab8f2457efd2701cef4d9`  
		Last Modified: Wed, 17 Oct 2018 06:12:02 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85b5171d7d075f37055f4a31e64767d5854ad0057627cd4b2564dd3790d838d2`  
		Last Modified: Wed, 17 Oct 2018 06:12:02 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f7948973641c4f1ad24c42af64c7125499a4f05252ec0d0507b6567ebef26f8`  
		Last Modified: Wed, 17 Oct 2018 06:12:24 GMT  
		Size: 31.9 MB (31933727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.27.5` - linux; 386

```console
$ docker pull mediawiki@sha256:b21d1d70242702efdbb70168a3c286b30076caec26c6628394dc286be4ef5da1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.3 MB (229329317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e869b7784bacd85cc3b9f01934da9edaa4e408bd1d1e3e46f97553d3dc015024`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 16 Oct 2018 10:49:05 GMT
ADD file:a71ef0e9adb528ae2dc5ca3395654522c23762d8936a4902378c6749bb357582 in / 
# Tue, 16 Oct 2018 10:49:05 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 11:59:35 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 16 Oct 2018 11:59:36 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 16 Oct 2018 12:00:22 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:00:23 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 16 Oct 2018 12:00:24 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 16 Oct 2018 12:11:59 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:11:59 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 16 Oct 2018 12:12:00 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 16 Oct 2018 12:12:01 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 16 Oct 2018 12:12:02 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 16 Oct 2018 12:12:03 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 16 Oct 2018 12:12:04 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 16 Oct 2018 12:12:04 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 16 Oct 2018 12:12:05 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Tue, 16 Oct 2018 12:12:05 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 16 Oct 2018 12:12:05 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 16 Oct 2018 12:12:05 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 16 Oct 2018 17:29:54 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 16 Oct 2018 17:29:54 GMT
ENV PHP_VERSION=7.0.32
# Tue, 16 Oct 2018 17:29:55 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.32.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.32.tar.xz.asc/from/this/mirror
# Tue, 16 Oct 2018 17:29:55 GMT
ENV PHP_SHA256=ff6f62afeb32c71b3b89ecbd42950ef6c5e0c329cc6e1c58ffac47e6f1f883c4 PHP_MD5=
# Tue, 16 Oct 2018 17:30:07 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 16 Oct 2018 17:30:07 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 16 Oct 2018 17:34:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 16 Oct 2018 17:34:07 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Tue, 16 Oct 2018 17:34:07 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 16 Oct 2018 17:34:08 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 16 Oct 2018 17:34:08 GMT
WORKDIR /var/www/html
# Tue, 16 Oct 2018 17:34:08 GMT
EXPOSE 80/tcp
# Tue, 16 Oct 2018 17:34:08 GMT
CMD ["apache2-foreground"]
# Wed, 17 Oct 2018 07:58:33 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 17 Oct 2018 07:59:59 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Wed, 17 Oct 2018 08:00:08 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Wed, 17 Oct 2018 08:00:09 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 17 Oct 2018 08:00:09 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Wed, 17 Oct 2018 08:00:10 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.27
# Wed, 17 Oct 2018 08:00:10 GMT
ENV MEDIAWIKI_BRANCH=REL1_27
# Wed, 17 Oct 2018 08:00:10 GMT
ENV MEDIAWIKI_VERSION=1.27.5
# Wed, 17 Oct 2018 08:00:10 GMT
ENV MEDIAWIKI_SHA512=2f341ed5afab24b81c315db6bcc58dd617f95231f71408c08bb2a8b974c95b7edd93d0f3c857f24058111c3228b9919a0f1c2fd2f85be940dc571e390225027a
# Wed, 17 Oct 2018 08:00:18 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:2b7bcb618c4033f37486fd700e6d0debf2260935f888a192119c41eaddd29978`  
		Last Modified: Tue, 16 Oct 2018 11:06:15 GMT  
		Size: 23.1 MB (23126605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ac9f5e161441372e549d094f25b4640689548d53bb47c34a8ced01a74b8ad6f`  
		Last Modified: Tue, 16 Oct 2018 19:08:04 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cac64c78cd80e7e59f4a0fd49c7632e4799f427a439c1339df81ad969a7aed3`  
		Last Modified: Tue, 16 Oct 2018 19:08:39 GMT  
		Size: 71.5 MB (71484645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a7cfe59c8cc409c1eb116e2905e9a239f1f1a26128b6fd15cf1217563b373e4`  
		Last Modified: Tue, 16 Oct 2018 19:08:04 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99051976b849498ac53e2ffcd090cb770169576c8fe2ba03b72ec38559319cff`  
		Last Modified: Tue, 16 Oct 2018 19:10:57 GMT  
		Size: 17.6 MB (17562598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8baa008090db722001228a8b24993ff76cc41b4f3c5ee668b4ba3a9a91a8beb`  
		Last Modified: Tue, 16 Oct 2018 19:10:51 GMT  
		Size: 1.2 KB (1243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8f645450e0e3cf05fbcd8a2ca3ca89deb3a97661b07a8e11130055680df3138`  
		Last Modified: Tue, 16 Oct 2018 19:11:16 GMT  
		Size: 429.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a636e140725a9abf6bfca67dce52d8d0729b612493c86addf510f88cd41ff73`  
		Last Modified: Tue, 16 Oct 2018 19:10:50 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c899e0d2536fbfcfaa4ef00f9497a5891261cfb1fca3e776a428e461db7ee410`  
		Last Modified: Tue, 16 Oct 2018 19:10:50 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0cba1ef0564202ac1445408ed856bfc567867695100138b6278c4a50680cf7a`  
		Last Modified: Tue, 16 Oct 2018 19:49:33 GMT  
		Size: 12.4 MB (12379305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ca96ddbed1b213bc6b7cdd27cc821791a1a1594630bd9afbae4b648ee450255`  
		Last Modified: Tue, 16 Oct 2018 19:49:31 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b970950633084b70af418e3cf114d23a70f27e9e8fa032a907328f795aef1b81`  
		Last Modified: Tue, 16 Oct 2018 19:49:36 GMT  
		Size: 14.4 MB (14393946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add8f03f18325d56159cd2f3fcad9119a2bab20fd859fde0738145f82e5c6b8f`  
		Last Modified: Tue, 16 Oct 2018 19:49:31 GMT  
		Size: 2.2 KB (2193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c7c94c298264615aa9da4abf6b9e47f4b11d3c699c9d6a624e04f84679855ad`  
		Last Modified: Tue, 16 Oct 2018 19:49:31 GMT  
		Size: 903.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05cdbec925eca59dd43b5ffcb57c08abbae8d13d76179431dbc03b1041018770`  
		Last Modified: Wed, 17 Oct 2018 08:03:13 GMT  
		Size: 56.5 MB (56499573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb6e8e69dc478801be87de36f35f63ac515bae458b89124dbce6b3699a00296`  
		Last Modified: Wed, 17 Oct 2018 08:02:35 GMT  
		Size: 1.6 MB (1552701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d0ff586df7ffffb2c50c9cd9c0ed992526ca2ef675a027011984d3e2e63ae83`  
		Last Modified: Wed, 17 Oct 2018 08:02:34 GMT  
		Size: 389.4 KB (389353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28fc31eb8ac64e77e115c05b989b5f57b1a9f7f20cb66d1f997c54aa74fca7dc`  
		Last Modified: Wed, 17 Oct 2018 08:02:34 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b257eceaa8885e119f77ac04ebf8473d4e820244c945abefb769c9abe444a6e`  
		Last Modified: Wed, 17 Oct 2018 08:02:34 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79cb8aad099aaa347b0c7f6b94c0cadcd8f36533710f7a793b86a4660ca59184`  
		Last Modified: Wed, 17 Oct 2018 08:02:51 GMT  
		Size: 31.9 MB (31933705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.27.5` - linux; ppc64le

```console
$ docker pull mediawiki@sha256:e76eacfa4ae216c9b7f4e6165ad7fa554f544f47ee5ae4d8b0d46e602777552f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.4 MB (218449205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:814f618dcdcccb99814687061d3b8b49e32ef553c89429c2a0a130c4577e6570`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 16 Oct 2018 08:22:25 GMT
ADD file:b1fa1d0ffa2b206311dfd95642d74c3312565a1ec2e6e3a2197bfd2a4b3de6c6 in / 
# Tue, 16 Oct 2018 08:22:30 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 08:36:20 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 16 Oct 2018 08:36:20 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 16 Oct 2018 08:38:14 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 16 Oct 2018 08:38:16 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 16 Oct 2018 08:38:19 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 16 Oct 2018 08:47:02 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 08:47:04 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 16 Oct 2018 08:47:06 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 16 Oct 2018 08:47:12 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 16 Oct 2018 08:47:15 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 16 Oct 2018 08:47:21 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 16 Oct 2018 08:47:25 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 16 Oct 2018 08:47:26 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 16 Oct 2018 08:47:27 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Tue, 16 Oct 2018 08:47:28 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 16 Oct 2018 08:47:30 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 16 Oct 2018 08:47:33 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 16 Oct 2018 11:37:55 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 16 Oct 2018 11:37:56 GMT
ENV PHP_VERSION=7.0.32
# Tue, 16 Oct 2018 11:37:57 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.32.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.32.tar.xz.asc/from/this/mirror
# Tue, 16 Oct 2018 11:37:58 GMT
ENV PHP_SHA256=ff6f62afeb32c71b3b89ecbd42950ef6c5e0c329cc6e1c58ffac47e6f1f883c4 PHP_MD5=
# Tue, 16 Oct 2018 11:38:37 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 16 Oct 2018 11:38:41 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 16 Oct 2018 11:42:36 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 16 Oct 2018 11:42:38 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Tue, 16 Oct 2018 11:42:39 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 16 Oct 2018 11:42:42 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 16 Oct 2018 11:42:43 GMT
WORKDIR /var/www/html
# Tue, 16 Oct 2018 11:42:44 GMT
EXPOSE 80/tcp
# Tue, 16 Oct 2018 11:42:44 GMT
CMD ["apache2-foreground"]
# Tue, 16 Oct 2018 20:12:30 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 16 Oct 2018 20:14:29 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Tue, 16 Oct 2018 20:14:47 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Tue, 16 Oct 2018 20:14:54 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 16 Oct 2018 20:14:59 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Tue, 16 Oct 2018 20:15:00 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.27
# Tue, 16 Oct 2018 20:15:01 GMT
ENV MEDIAWIKI_BRANCH=REL1_27
# Tue, 16 Oct 2018 20:15:03 GMT
ENV MEDIAWIKI_VERSION=1.27.5
# Tue, 16 Oct 2018 20:15:04 GMT
ENV MEDIAWIKI_SHA512=2f341ed5afab24b81c315db6bcc58dd617f95231f71408c08bb2a8b974c95b7edd93d0f3c857f24058111c3228b9919a0f1c2fd2f85be940dc571e390225027a
# Tue, 16 Oct 2018 20:15:27 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:202f659db3e53c01ac947538d8b37251e9fa16c4a6a699dc6c2a8910afcdfed4`  
		Last Modified: Tue, 16 Oct 2018 08:30:59 GMT  
		Size: 22.7 MB (22740583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba0f6d499d48eb19dc9d2e6453db815f1d64074f2775cbd9cac4928c0461cdbc`  
		Last Modified: Tue, 16 Oct 2018 12:20:25 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f354790bdfa97d0b204ca9cf4402d437e713049020362b7ad4af49ef47efb984`  
		Last Modified: Tue, 16 Oct 2018 12:21:25 GMT  
		Size: 61.8 MB (61809966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:745377e23f5d138b115edff3b4ebf7c90114d7d658bff2cd8453aaffc66a04db`  
		Last Modified: Tue, 16 Oct 2018 12:20:28 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6ca68ed7b31a0303cdb6d7669c24c6dedb55ddece4d992172fb000dc3f93eeb`  
		Last Modified: Tue, 16 Oct 2018 12:23:21 GMT  
		Size: 17.3 MB (17348500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba60179e94e0e6514a8bd50455affa30a26a572b16013a2b01ea060c2aaa60d3`  
		Last Modified: Tue, 16 Oct 2018 12:23:07 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9292d4db20fce2c69be0ea52392b7616f1846e01f9b70e0aadff84c1084bf254`  
		Last Modified: Tue, 16 Oct 2018 12:23:01 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a20d33fb196e2e93548afbb4d63cb3d16c02b0d6d342e94e77c6beca290525`  
		Last Modified: Tue, 16 Oct 2018 12:22:59 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c4ea029b99fcbbd8bfbfd74bd42ca81a84fbee060a87904f570a192fc958db5`  
		Last Modified: Tue, 16 Oct 2018 12:22:57 GMT  
		Size: 517.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c9720eb00827218a025ca83a1200da8fe81ff06a7addc7bb5bbe67a7135ce16`  
		Last Modified: Tue, 16 Oct 2018 12:48:36 GMT  
		Size: 12.4 MB (12378819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5df700c2238de8679c6dbb08bf02760e4e40bccf6ccaf35af683095dc66198ea`  
		Last Modified: Tue, 16 Oct 2018 12:48:33 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22b62e69dd460d061013a0b345cbdcfeb9adedbb59d021732cfca2a21eaf10de`  
		Last Modified: Tue, 16 Oct 2018 12:48:40 GMT  
		Size: 13.7 MB (13702592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc8b0e1276d18fb2703450c458d281a06a6bf5f57d56bfafa78804c108cfa33c`  
		Last Modified: Tue, 16 Oct 2018 12:48:33 GMT  
		Size: 2.2 KB (2194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1210917658a99e151617ddf0dded555475f0ec8ce36cd98daa699c042519fe8`  
		Last Modified: Tue, 16 Oct 2018 12:48:34 GMT  
		Size: 906.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e406cec386b4c449c6428e2ae5dc6f7677d1f5d173fb2b536a3d71ae16dfc121`  
		Last Modified: Tue, 16 Oct 2018 20:18:11 GMT  
		Size: 56.6 MB (56596313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f43efb949dce69d5327e901bc97faa44c380d96012f814fa33740e666bc1ab3`  
		Last Modified: Tue, 16 Oct 2018 20:17:52 GMT  
		Size: 1.5 MB (1530906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b93074650452c34e4a3bd7d8d9fe167cf458ae6688dc190a14f7ca5eedf8083`  
		Last Modified: Tue, 16 Oct 2018 20:17:52 GMT  
		Size: 400.4 KB (400382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c082530349e505f3093d4c9bec2ed7622e3f8f82f27cb4b700eeb6c1a1423130`  
		Last Modified: Tue, 16 Oct 2018 20:17:51 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69ee635cd230017d2bc1b368f6d42edd24f93f85202d8d24950baef9bfbd0001`  
		Last Modified: Tue, 16 Oct 2018 20:17:51 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65882f587f0e22183aa5dc102c5201529a1306d81e0cdd8b6359dd681854d123`  
		Last Modified: Tue, 16 Oct 2018 20:18:05 GMT  
		Size: 31.9 MB (31934083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mediawiki:1.30`

```console
$ docker pull mediawiki@sha256:2867f5673c59b6b8501e539c32974e2920b99707ed5cf6c3c7f2199c43a3e75b
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
$ docker pull mediawiki@sha256:d64bd7679700e65a82a633cb818ceab4fc6f14c888b6141fa527754ca0159519
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.1 MB (235055754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6a89448ee0b8fb2960e1fee6d77f1899f51f1f66d4b5c7e5cbcf65f04ffa833`
-	Entrypoint: `["docker-php-entrypoint"]`
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
# Tue, 16 Oct 2018 01:00:38 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Tue, 16 Oct 2018 01:00:38 GMT
ENV PHP_VERSION=7.1.23
# Tue, 16 Oct 2018 01:00:38 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.23.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.23.tar.xz.asc/from/this/mirror
# Tue, 16 Oct 2018 01:00:39 GMT
ENV PHP_SHA256=227a3c76133c3dc1cec937989456cbd89ed00e68e7260c651900dbe1f5b798bc PHP_MD5=
# Tue, 16 Oct 2018 01:00:47 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 16 Oct 2018 01:00:48 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 16 Oct 2018 01:04:08 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 16 Oct 2018 01:04:09 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Tue, 16 Oct 2018 01:04:09 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 16 Oct 2018 01:04:09 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 16 Oct 2018 01:04:10 GMT
WORKDIR /var/www/html
# Tue, 16 Oct 2018 01:04:10 GMT
EXPOSE 80/tcp
# Tue, 16 Oct 2018 01:04:10 GMT
CMD ["apache2-foreground"]
# Tue, 16 Oct 2018 12:53:26 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:57:04 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Tue, 16 Oct 2018 12:57:25 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Tue, 16 Oct 2018 12:57:26 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 16 Oct 2018 12:57:27 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Tue, 16 Oct 2018 12:57:28 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.30
# Tue, 16 Oct 2018 12:57:28 GMT
ENV MEDIAWIKI_BRANCH=REL1_30
# Tue, 16 Oct 2018 12:57:28 GMT
ENV MEDIAWIKI_VERSION=1.30.1
# Tue, 16 Oct 2018 12:57:28 GMT
ENV MEDIAWIKI_SHA512=bda37c7b1be4e1532ee8357843140e666ed550c4f54b53873d163d4b53ed87a80c0ad8a11d189577d32e554488aed517fb9477f2da04d7e7d87014049a2eabbe
# Tue, 16 Oct 2018 12:57:40 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
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
	-	`sha256:9e7291f0ec69803cea76096836df0e34bbeaf66dfd616a7ec83818b1636909d1`  
		Last Modified: Tue, 16 Oct 2018 03:40:22 GMT  
		Size: 12.6 MB (12577011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53696e01fd9f1436098c80acadfb15492dd1f9792582e2ae4e3097b9ce1e8ba6`  
		Last Modified: Tue, 16 Oct 2018 03:40:20 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73f81b83e9cfd3da5533fa50364008bb4719174d46078acd2e627315cc24e1c0`  
		Last Modified: Tue, 16 Oct 2018 03:40:24 GMT  
		Size: 14.2 MB (14231655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c24b68640e1f94606e9221f7877c52d432092a0b4f73ef130c902f9ebf158bc`  
		Last Modified: Tue, 16 Oct 2018 03:40:21 GMT  
		Size: 2.2 KB (2192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ab8dcc24d5bb6d730451ed098a12a58a7e2035eb236e4a85b05eb317a8fa144`  
		Last Modified: Tue, 16 Oct 2018 03:40:20 GMT  
		Size: 903.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6374dd5915ece75256dd98f030ca0e18076f22e035907132ba85c48a9dba68d8`  
		Last Modified: Tue, 16 Oct 2018 13:04:46 GMT  
		Size: 56.3 MB (56343950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bf439f9c2e8abf34d2797f5f3d10e11e326d54e0c5014b3efd786cad7ba2fdf`  
		Last Modified: Tue, 16 Oct 2018 13:04:17 GMT  
		Size: 1.7 MB (1663096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06639a9992684650b9e5db9e1d2632d9846d444f9d66a35c97203e56e25b8ed3`  
		Last Modified: Tue, 16 Oct 2018 13:04:16 GMT  
		Size: 408.6 KB (408587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcb287a11f2105184483d0c32732d9a02a3bb4104f4162117d05222825543ae2`  
		Last Modified: Tue, 16 Oct 2018 13:04:16 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:685278fcca1baf526197a707dc2f2fb0bad4a94cb960408fb4d4241dc396aaf9`  
		Last Modified: Tue, 16 Oct 2018 13:04:16 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08d6fd948824d182fa60816fdef73b2585fff6efd4daa5108cfd4e9ef5fac172`  
		Last Modified: Tue, 16 Oct 2018 13:04:57 GMT  
		Size: 42.8 MB (42782321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.30` - linux; arm variant v5

```console
$ docker pull mediawiki@sha256:ff4db9d69f13e3d1d56d61b8d29fe13d2c4fbd6989e0768aeaf9aef43ee5f362
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.2 MB (220165795 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d21ec688788d89a20a2adc9bf309c53f53cf147fbd2ddb34b37012712fe5294`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 16 Oct 2018 08:55:22 GMT
ADD file:8f2148adabc29587e17b50138f305f39e94e0e2bd9211a9f913fef56013ac35a in / 
# Tue, 16 Oct 2018 08:55:23 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 08:59:24 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 16 Oct 2018 08:59:25 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 16 Oct 2018 09:00:38 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 16 Oct 2018 09:00:40 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 16 Oct 2018 09:00:41 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 16 Oct 2018 09:01:03 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 09:01:04 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 16 Oct 2018 09:01:04 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 16 Oct 2018 09:01:05 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 16 Oct 2018 09:01:06 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 16 Oct 2018 09:01:08 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 16 Oct 2018 09:01:09 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 16 Oct 2018 09:01:09 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 16 Oct 2018 09:01:09 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Tue, 16 Oct 2018 09:01:10 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 16 Oct 2018 09:01:10 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 16 Oct 2018 09:01:10 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 16 Oct 2018 09:17:41 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Tue, 16 Oct 2018 09:17:41 GMT
ENV PHP_VERSION=7.1.23
# Tue, 16 Oct 2018 09:17:42 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.23.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.23.tar.xz.asc/from/this/mirror
# Tue, 16 Oct 2018 09:17:42 GMT
ENV PHP_SHA256=227a3c76133c3dc1cec937989456cbd89ed00e68e7260c651900dbe1f5b798bc PHP_MD5=
# Tue, 16 Oct 2018 09:18:00 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 16 Oct 2018 09:18:01 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 16 Oct 2018 09:20:49 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 16 Oct 2018 09:20:51 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Tue, 16 Oct 2018 09:20:51 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 16 Oct 2018 09:20:52 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 16 Oct 2018 09:20:52 GMT
WORKDIR /var/www/html
# Tue, 16 Oct 2018 09:20:53 GMT
EXPOSE 80/tcp
# Tue, 16 Oct 2018 09:20:53 GMT
CMD ["apache2-foreground"]
# Tue, 16 Oct 2018 15:41:12 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 16 Oct 2018 15:44:23 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Tue, 16 Oct 2018 15:44:40 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Tue, 16 Oct 2018 15:44:41 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 16 Oct 2018 15:44:43 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Tue, 16 Oct 2018 15:44:43 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.30
# Tue, 16 Oct 2018 15:44:43 GMT
ENV MEDIAWIKI_BRANCH=REL1_30
# Tue, 16 Oct 2018 15:44:44 GMT
ENV MEDIAWIKI_VERSION=1.30.1
# Tue, 16 Oct 2018 15:44:44 GMT
ENV MEDIAWIKI_SHA512=bda37c7b1be4e1532ee8357843140e666ed550c4f54b53873d163d4b53ed87a80c0ad8a11d189577d32e554488aed517fb9477f2da04d7e7d87014049a2eabbe
# Tue, 16 Oct 2018 15:45:04 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:4b7ffdf9817f718c84be550e8edf757070396d69165fa729c6ddd4e775428eb2`  
		Last Modified: Tue, 16 Oct 2018 09:04:44 GMT  
		Size: 21.2 MB (21162965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20460378a8f38aacfeb9a0bcf3a38abbaebb8845cf0f7ca8c5f8ccb51f3ba5d8`  
		Last Modified: Tue, 16 Oct 2018 10:20:49 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecb7e6fb4c6270cb10f9b8f7aa93b2d05eca8e4ca542ae6b884f3d507b3f2c06`  
		Last Modified: Tue, 16 Oct 2018 10:21:09 GMT  
		Size: 57.4 MB (57447518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ad837638c5f551ce2ed0722f0aa0206be6b2503befb732461de20785c38ed13`  
		Last Modified: Tue, 16 Oct 2018 10:20:48 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02b8207a3bfbe878b8a8d846a774c3ce482e349d482e7084559f88b12618ffb1`  
		Last Modified: Tue, 16 Oct 2018 10:20:52 GMT  
		Size: 16.7 MB (16650918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7198acceff99d48ae548b76f8e9eb26d52d8a63521d95d7db38554594b5d1223`  
		Last Modified: Tue, 16 Oct 2018 10:20:47 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e62a81208df875e54460875df6afbac9065b4afc56282d9fb756acffa5656a7`  
		Last Modified: Tue, 16 Oct 2018 10:20:46 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5a783b15fb65ce49afc889cc25e5744af9318920f2c2b5419dc1d6209f71d6a`  
		Last Modified: Tue, 16 Oct 2018 10:20:46 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b8615ebbc988042c7c4db62198beea70acc923ccc2b3f98aba803a3947a68fa`  
		Last Modified: Tue, 16 Oct 2018 10:20:46 GMT  
		Size: 510.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50dd48b7ddccec1ec18079845b9ce2caf8c6838680716199ba639163efb7c56b`  
		Last Modified: Tue, 16 Oct 2018 10:24:14 GMT  
		Size: 12.6 MB (12575087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adbc270ef31f010f95cb2cfee104d8c3c03fdc710ea87351b16d25430423d362`  
		Last Modified: Tue, 16 Oct 2018 10:24:12 GMT  
		Size: 502.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08923d9903627631fc1c8ff531f939577a842a9d500b16921ff37d73b31a0ab3`  
		Last Modified: Tue, 16 Oct 2018 10:24:17 GMT  
		Size: 13.6 MB (13566480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a430757c5b117496251da803088467ac9f77213ce086dc2a4b8bc7b507f5af10`  
		Last Modified: Tue, 16 Oct 2018 10:24:12 GMT  
		Size: 2.2 KB (2193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5deba410f5d388d0d57bd5939f8a1578b3116ccaa209b9b8d9427d15b16b655a`  
		Last Modified: Tue, 16 Oct 2018 10:24:12 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cdaab48cb863ad55ee24a28af44b3f4fe6d328d51836622ef1e585cdf937830`  
		Last Modified: Tue, 16 Oct 2018 15:52:43 GMT  
		Size: 54.0 MB (53981785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e94ff8209078121e755ebbdc64c8cf46843b9c611ac7530fde1f00ff16b4026`  
		Last Modified: Tue, 16 Oct 2018 15:52:25 GMT  
		Size: 1.6 MB (1593758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54e77b46632abac562bc9abd81b4e7e576ba786a9f1921883b78caaeeaf3f018`  
		Last Modified: Tue, 16 Oct 2018 15:52:24 GMT  
		Size: 397.7 KB (397737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5174768ffcd2e02f68c2d3820e29e517f84c3b7937681bfa826a56b92de8f93`  
		Last Modified: Tue, 16 Oct 2018 15:52:24 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcf806a5fb6014d6a135039c1d5d38080491786e3e4147e215c34058fa4e2ce8`  
		Last Modified: Tue, 16 Oct 2018 15:52:25 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67cd0e80dc83843f4e9c66e689351ac102c7600d675b21efeaa7dc31735ca1cc`  
		Last Modified: Tue, 16 Oct 2018 15:52:52 GMT  
		Size: 42.8 MB (42782502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.30` - linux; arm variant v7

```console
$ docker pull mediawiki@sha256:4341065a9b2cd689acb6ae9f6ec68dbb5657bb45def883fe98e207a1abdc322d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.0 MB (211010947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c7fad4fcd261ed78b41d2a8eb16cb5fb4709f4a848a8415880f352399aa2a0a`
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
# Tue, 16 Oct 2018 12:48:06 GMT
ENV PHP_VERSION=7.1.23
# Tue, 16 Oct 2018 12:48:06 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.23.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.23.tar.xz.asc/from/this/mirror
# Tue, 16 Oct 2018 12:48:07 GMT
ENV PHP_SHA256=227a3c76133c3dc1cec937989456cbd89ed00e68e7260c651900dbe1f5b798bc PHP_MD5=
# Tue, 16 Oct 2018 12:48:23 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 16 Oct 2018 12:48:28 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 16 Oct 2018 12:51:09 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 16 Oct 2018 12:51:10 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Tue, 16 Oct 2018 12:51:11 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 16 Oct 2018 12:51:11 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 16 Oct 2018 12:51:12 GMT
WORKDIR /var/www/html
# Tue, 16 Oct 2018 12:51:12 GMT
EXPOSE 80/tcp
# Tue, 16 Oct 2018 12:51:13 GMT
CMD ["apache2-foreground"]
# Tue, 16 Oct 2018 15:46:25 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 16 Oct 2018 15:50:26 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Tue, 16 Oct 2018 15:50:42 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Tue, 16 Oct 2018 15:50:43 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 16 Oct 2018 15:50:44 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Tue, 16 Oct 2018 15:50:45 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.30
# Tue, 16 Oct 2018 15:50:45 GMT
ENV MEDIAWIKI_BRANCH=REL1_30
# Tue, 16 Oct 2018 15:50:46 GMT
ENV MEDIAWIKI_VERSION=1.30.1
# Tue, 16 Oct 2018 15:50:46 GMT
ENV MEDIAWIKI_SHA512=bda37c7b1be4e1532ee8357843140e666ed550c4f54b53873d163d4b53ed87a80c0ad8a11d189577d32e554488aed517fb9477f2da04d7e7d87014049a2eabbe
# Tue, 16 Oct 2018 15:51:03 GMT
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
	-	`sha256:c69abec5f1aa3c6fa125b88e96288e5529ef50fea2e5bd95855faf4303bd985a`  
		Last Modified: Tue, 16 Oct 2018 13:30:09 GMT  
		Size: 12.6 MB (12575068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:781c40d49c732d45cc4865fcb301531f83d41c1ea97119586152bb08e9fb67c4`  
		Last Modified: Tue, 16 Oct 2018 13:30:07 GMT  
		Size: 504.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97efaae01b0f68ed032d9a3983d8bf2ff4a5f265355f2eb403dcaa52d0912a24`  
		Last Modified: Tue, 16 Oct 2018 13:30:13 GMT  
		Size: 13.1 MB (13101414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b2ad687c6f0a760fa678838711094ef352d30c3e3770cd342faa28ad6e5f9a`  
		Last Modified: Tue, 16 Oct 2018 13:30:07 GMT  
		Size: 2.2 KB (2194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9b12afc207450a5527138259a9bceaf9d6b535bcc521769475faa07f8e830da`  
		Last Modified: Tue, 16 Oct 2018 13:30:08 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44833e1033721cfa78ab7cd1fb3405cd08be703bbad7eb99a4bb09b565e4cae7`  
		Last Modified: Tue, 16 Oct 2018 15:52:34 GMT  
		Size: 51.6 MB (51607343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f3597a99181dc49741d3c0cb5b09fe86cdc21789bb7a0787149d91413ece509`  
		Last Modified: Tue, 16 Oct 2018 15:52:17 GMT  
		Size: 1.5 MB (1549596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:121b090f3217d8ee49f6cbe82ecff02a8ad7ec7fc53f43555bab3eaa5fd44a3d`  
		Last Modified: Tue, 16 Oct 2018 15:52:16 GMT  
		Size: 392.8 KB (392799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39045022a5cb2a615f338464ea5eabd440959523ebfd1179a1162a4530c57117`  
		Last Modified: Tue, 16 Oct 2018 15:52:16 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ae07b68d71cdbd7473a51db65b2c9a295c1cc632d4682947473fa500fa56df6`  
		Last Modified: Tue, 16 Oct 2018 15:52:16 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1cacdafda304c8656d1fdc87e5d40430a19766cb45d27e4d4d85e6c842e37d3`  
		Last Modified: Tue, 16 Oct 2018 15:52:43 GMT  
		Size: 42.8 MB (42782497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.30` - linux; arm64 variant v8

```console
$ docker pull mediawiki@sha256:151a152ed0d4446e36de4b424a46d268f255c715490f0331b249a4031a4fc31f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.5 MB (219524508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:229dfebe28c0e39a87d4e9b34ae3a61b9184bb6af6439ced296ba13ce71fc2c0`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 16 Oct 2018 08:43:45 GMT
ADD file:e83c09a5cfc1cecaeba6b736737d551fe0f5d3f204ec3fc984fe768003774f81 in / 
# Tue, 16 Oct 2018 08:43:46 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 09:37:09 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 16 Oct 2018 09:37:10 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 16 Oct 2018 09:38:24 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 16 Oct 2018 09:38:25 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 16 Oct 2018 09:38:27 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 16 Oct 2018 09:49:43 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 09:49:44 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 16 Oct 2018 09:49:44 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 16 Oct 2018 09:49:46 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 16 Oct 2018 09:49:47 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 16 Oct 2018 09:49:49 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 16 Oct 2018 09:49:51 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 16 Oct 2018 09:49:51 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 16 Oct 2018 09:49:52 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Tue, 16 Oct 2018 09:49:53 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 16 Oct 2018 09:49:53 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 16 Oct 2018 09:49:54 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 16 Oct 2018 12:27:05 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Tue, 16 Oct 2018 12:27:06 GMT
ENV PHP_VERSION=7.1.23
# Tue, 16 Oct 2018 12:27:06 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.23.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.23.tar.xz.asc/from/this/mirror
# Tue, 16 Oct 2018 12:27:07 GMT
ENV PHP_SHA256=227a3c76133c3dc1cec937989456cbd89ed00e68e7260c651900dbe1f5b798bc PHP_MD5=
# Tue, 16 Oct 2018 12:27:41 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 16 Oct 2018 12:27:42 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 16 Oct 2018 12:33:31 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 16 Oct 2018 12:33:33 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Tue, 16 Oct 2018 12:33:34 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 16 Oct 2018 12:33:35 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 16 Oct 2018 12:33:36 GMT
WORKDIR /var/www/html
# Tue, 16 Oct 2018 12:33:37 GMT
EXPOSE 80/tcp
# Tue, 16 Oct 2018 12:33:39 GMT
CMD ["apache2-foreground"]
# Wed, 17 Oct 2018 05:58:39 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 17 Oct 2018 06:02:18 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Wed, 17 Oct 2018 06:02:39 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Wed, 17 Oct 2018 06:02:49 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 17 Oct 2018 06:02:51 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Wed, 17 Oct 2018 06:02:58 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.30
# Wed, 17 Oct 2018 06:02:59 GMT
ENV MEDIAWIKI_BRANCH=REL1_30
# Wed, 17 Oct 2018 06:03:00 GMT
ENV MEDIAWIKI_VERSION=1.30.1
# Wed, 17 Oct 2018 06:03:00 GMT
ENV MEDIAWIKI_SHA512=bda37c7b1be4e1532ee8357843140e666ed550c4f54b53873d163d4b53ed87a80c0ad8a11d189577d32e554488aed517fb9477f2da04d7e7d87014049a2eabbe
# Wed, 17 Oct 2018 06:03:17 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:141796bfcf0d5a5edb072138e517bf85deef4f47f40afb51ba8705bec3b921dd`  
		Last Modified: Tue, 16 Oct 2018 08:50:53 GMT  
		Size: 20.3 MB (20331585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa887e40ae8a2b78a8eba6e16f2902853327c922f0110c4bd2e4728fb79b305b`  
		Last Modified: Tue, 16 Oct 2018 15:06:53 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99271cba459dd39a663363166e510f7cc1ebf18b221d33bb6c4e26d54774a5d7`  
		Last Modified: Tue, 16 Oct 2018 15:08:26 GMT  
		Size: 57.6 MB (57596184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:440b75b2132ae75a804754d6dd4f874b688e2f6a1d034fd0d2de6e496b8f1f0b`  
		Last Modified: Tue, 16 Oct 2018 15:06:52 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9716126acdb685c5ea84948fb47306c1b2d74752160d8de98d14cac45c1734a`  
		Last Modified: Tue, 16 Oct 2018 15:10:47 GMT  
		Size: 16.7 MB (16709722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92cd9f340623c79febab023e7bed21713ff7c5a54222f6e864d484df51e5eb5e`  
		Last Modified: Tue, 16 Oct 2018 15:10:15 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f4aca00aec726971992cfa7cb081238ab6d32d57c69cf024ee2690cef29374d`  
		Last Modified: Tue, 16 Oct 2018 15:10:14 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef70a607bae65cff09c6a3fd4add05727d00f023e83540e9823c8c73ce65afba`  
		Last Modified: Tue, 16 Oct 2018 15:10:14 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3482f362267a35679e02d84771ac1e78594ccb8598b70cfdb652909f558ae451`  
		Last Modified: Tue, 16 Oct 2018 15:10:13 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7395a19cfebc94b90fa17817559bea3273ad3224e6542ea3df5bca3c07456dac`  
		Last Modified: Tue, 16 Oct 2018 15:35:16 GMT  
		Size: 12.6 MB (12575343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54e377f28947ac8b0c1c720f9c87e540fe71cbb33b27d44d0805ee8dfce2e206`  
		Last Modified: Tue, 16 Oct 2018 15:35:14 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adac35db4e9a81dfd9bee971b498878e1211b7d4f16525ad82b2290a81a458c4`  
		Last Modified: Tue, 16 Oct 2018 15:35:19 GMT  
		Size: 13.4 MB (13377906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d79b997313231c584f5e897f0f0aa7a08c8086210d54bf5290db948901bd5eed`  
		Last Modified: Tue, 16 Oct 2018 15:35:14 GMT  
		Size: 2.2 KB (2195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89ecb2541cc6b3b7773265e832f8bcc132c1dd1da857da9a773535113b90bd32`  
		Last Modified: Tue, 16 Oct 2018 15:35:14 GMT  
		Size: 905.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee89398e21abc980032d4f6d35cdfc915e4dc9e34370ada0a0e6e042eb82192`  
		Last Modified: Wed, 17 Oct 2018 06:11:07 GMT  
		Size: 54.1 MB (54149594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a80c4614fa7fa76137c617cb982051243045810525aadb4eca118ac23506f59`  
		Last Modified: Wed, 17 Oct 2018 06:10:44 GMT  
		Size: 1.6 MB (1594565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0a76501e81f14e6e9d0f9d06170fd06851d862776a6bb7cf248318f5051e0ef`  
		Last Modified: Wed, 17 Oct 2018 06:10:43 GMT  
		Size: 400.4 KB (400415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6623491314232fef5f2840e5893ccf893d7c73d6ea33810a40a17fd4f476e5f2`  
		Last Modified: Wed, 17 Oct 2018 06:10:43 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96dc24e8a0de3b708687587ffc3ca10375707239f7b54b9410680ca5f0dbc8c7`  
		Last Modified: Wed, 17 Oct 2018 06:10:43 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:071ea85cf24bb9ef42292baaa4902a9011c08dd2f3c92504a50f38ea673670c0`  
		Last Modified: Wed, 17 Oct 2018 06:11:12 GMT  
		Size: 42.8 MB (42782292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.30` - linux; 386

```console
$ docker pull mediawiki@sha256:5647b03514c59e2db0ccb3992e58f2c8e7af1701f98e1dcab794435ff9b840c5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.8 MB (240816677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9250a4b98e8b8523e0b7ab76ae10ace12286e7c4d6d34c42c82991d4de8ce984`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 16 Oct 2018 10:49:05 GMT
ADD file:a71ef0e9adb528ae2dc5ca3395654522c23762d8936a4902378c6749bb357582 in / 
# Tue, 16 Oct 2018 10:49:05 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 11:59:35 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 16 Oct 2018 11:59:36 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 16 Oct 2018 12:00:22 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:00:23 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 16 Oct 2018 12:00:24 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 16 Oct 2018 12:11:59 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:11:59 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 16 Oct 2018 12:12:00 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 16 Oct 2018 12:12:01 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 16 Oct 2018 12:12:02 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 16 Oct 2018 12:12:03 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 16 Oct 2018 12:12:04 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 16 Oct 2018 12:12:04 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 16 Oct 2018 12:12:05 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Tue, 16 Oct 2018 12:12:05 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 16 Oct 2018 12:12:05 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 16 Oct 2018 12:12:05 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 16 Oct 2018 15:12:00 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Tue, 16 Oct 2018 15:12:00 GMT
ENV PHP_VERSION=7.1.23
# Tue, 16 Oct 2018 15:12:01 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.23.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.23.tar.xz.asc/from/this/mirror
# Tue, 16 Oct 2018 15:12:01 GMT
ENV PHP_SHA256=227a3c76133c3dc1cec937989456cbd89ed00e68e7260c651900dbe1f5b798bc PHP_MD5=
# Tue, 16 Oct 2018 15:12:17 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 16 Oct 2018 15:12:17 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 16 Oct 2018 15:18:29 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 16 Oct 2018 15:18:30 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Tue, 16 Oct 2018 15:18:30 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 16 Oct 2018 15:18:30 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 16 Oct 2018 15:18:31 GMT
WORKDIR /var/www/html
# Tue, 16 Oct 2018 15:18:31 GMT
EXPOSE 80/tcp
# Tue, 16 Oct 2018 15:18:31 GMT
CMD ["apache2-foreground"]
# Wed, 17 Oct 2018 07:56:10 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 17 Oct 2018 07:57:42 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Wed, 17 Oct 2018 07:57:51 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Wed, 17 Oct 2018 07:57:51 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 17 Oct 2018 07:57:52 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Wed, 17 Oct 2018 07:57:52 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.30
# Wed, 17 Oct 2018 07:57:53 GMT
ENV MEDIAWIKI_BRANCH=REL1_30
# Wed, 17 Oct 2018 07:57:53 GMT
ENV MEDIAWIKI_VERSION=1.30.1
# Wed, 17 Oct 2018 07:57:53 GMT
ENV MEDIAWIKI_SHA512=bda37c7b1be4e1532ee8357843140e666ed550c4f54b53873d163d4b53ed87a80c0ad8a11d189577d32e554488aed517fb9477f2da04d7e7d87014049a2eabbe
# Wed, 17 Oct 2018 07:58:03 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:2b7bcb618c4033f37486fd700e6d0debf2260935f888a192119c41eaddd29978`  
		Last Modified: Tue, 16 Oct 2018 11:06:15 GMT  
		Size: 23.1 MB (23126605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ac9f5e161441372e549d094f25b4640689548d53bb47c34a8ced01a74b8ad6f`  
		Last Modified: Tue, 16 Oct 2018 19:08:04 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cac64c78cd80e7e59f4a0fd49c7632e4799f427a439c1339df81ad969a7aed3`  
		Last Modified: Tue, 16 Oct 2018 19:08:39 GMT  
		Size: 71.5 MB (71484645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a7cfe59c8cc409c1eb116e2905e9a239f1f1a26128b6fd15cf1217563b373e4`  
		Last Modified: Tue, 16 Oct 2018 19:08:04 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99051976b849498ac53e2ffcd090cb770169576c8fe2ba03b72ec38559319cff`  
		Last Modified: Tue, 16 Oct 2018 19:10:57 GMT  
		Size: 17.6 MB (17562598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8baa008090db722001228a8b24993ff76cc41b4f3c5ee668b4ba3a9a91a8beb`  
		Last Modified: Tue, 16 Oct 2018 19:10:51 GMT  
		Size: 1.2 KB (1243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8f645450e0e3cf05fbcd8a2ca3ca89deb3a97661b07a8e11130055680df3138`  
		Last Modified: Tue, 16 Oct 2018 19:11:16 GMT  
		Size: 429.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a636e140725a9abf6bfca67dce52d8d0729b612493c86addf510f88cd41ff73`  
		Last Modified: Tue, 16 Oct 2018 19:10:50 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c899e0d2536fbfcfaa4ef00f9497a5891261cfb1fca3e776a428e461db7ee410`  
		Last Modified: Tue, 16 Oct 2018 19:10:50 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d04296a9b5f0197a38a16b450e8d81e6f6f6825f808c8efd4676de2e67c71ff`  
		Last Modified: Tue, 16 Oct 2018 19:37:48 GMT  
		Size: 12.6 MB (12576481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c3b7bb527f4a1e96c2b2211dcd0796ff2a6cd3e59b859cbafb8c53502cf1021`  
		Last Modified: Tue, 16 Oct 2018 19:37:46 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c307439b82a49cf5b811d35d2f4eef83c44ba9a100aba8e2c8e72db9e1deb48`  
		Last Modified: Tue, 16 Oct 2018 19:37:51 GMT  
		Size: 14.7 MB (14717979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80d63db8fe2c98c933bd37d7d7eda32b896ee9325a2e50383d08b674dbdf57f1`  
		Last Modified: Tue, 16 Oct 2018 19:37:46 GMT  
		Size: 2.2 KB (2196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66de29bf951459d02781e52f8556b2eda6c4d510c214d00ab92f3647c9d8c8b9`  
		Last Modified: Tue, 16 Oct 2018 19:37:46 GMT  
		Size: 906.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f25362d03f05e080ad3383a97a59b11740ff48e4d605ead1baf3568d8c112c8`  
		Last Modified: Wed, 17 Oct 2018 08:01:50 GMT  
		Size: 56.5 MB (56499424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2967b651ab6f054c2ba5aa40e8feb3427f8690c98b12b4c873a8c9edfcb8ac8e`  
		Last Modified: Wed, 17 Oct 2018 08:01:33 GMT  
		Size: 1.7 MB (1664710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9159c9aef62b691f4bd77592ef7d46c09685a3d042f66b914e5b86a41d4dca7`  
		Last Modified: Wed, 17 Oct 2018 08:01:33 GMT  
		Size: 395.0 KB (395024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8558fd272b2cd3310a249c8e82b2d8fd62145aca4083cd7d101c8dfca3050110`  
		Last Modified: Wed, 17 Oct 2018 08:01:33 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b76356abb4b148c1807b80ca59c6ca11530dc2f9c2ad963dac32e4ba76811a09`  
		Last Modified: Wed, 17 Oct 2018 08:01:33 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dd7a0540c9679489cf693405993adbe614ddab346f96defa90ae912d5900e4b`  
		Last Modified: Wed, 17 Oct 2018 08:01:55 GMT  
		Size: 42.8 MB (42782318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.30` - linux; ppc64le

```console
$ docker pull mediawiki@sha256:f0716820db47ea961b87fc449f21c45f0f16031554c49f71940c5a489783a40e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.9 MB (229918641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9baca72332e43fd96401d57f2c26f51b9774eef7df7a81032b20f3bfd12f0f03`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 16 Oct 2018 08:22:25 GMT
ADD file:b1fa1d0ffa2b206311dfd95642d74c3312565a1ec2e6e3a2197bfd2a4b3de6c6 in / 
# Tue, 16 Oct 2018 08:22:30 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 08:36:20 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 16 Oct 2018 08:36:20 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 16 Oct 2018 08:38:14 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 16 Oct 2018 08:38:16 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 16 Oct 2018 08:38:19 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 16 Oct 2018 08:47:02 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 08:47:04 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 16 Oct 2018 08:47:06 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 16 Oct 2018 08:47:12 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 16 Oct 2018 08:47:15 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 16 Oct 2018 08:47:21 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 16 Oct 2018 08:47:25 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 16 Oct 2018 08:47:26 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 16 Oct 2018 08:47:27 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Tue, 16 Oct 2018 08:47:28 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 16 Oct 2018 08:47:30 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 16 Oct 2018 08:47:33 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 16 Oct 2018 10:37:30 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Tue, 16 Oct 2018 10:37:31 GMT
ENV PHP_VERSION=7.1.23
# Tue, 16 Oct 2018 10:37:32 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.23.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.23.tar.xz.asc/from/this/mirror
# Tue, 16 Oct 2018 10:37:34 GMT
ENV PHP_SHA256=227a3c76133c3dc1cec937989456cbd89ed00e68e7260c651900dbe1f5b798bc PHP_MD5=
# Tue, 16 Oct 2018 10:39:49 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 16 Oct 2018 10:39:50 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 16 Oct 2018 10:45:59 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 16 Oct 2018 10:46:00 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Tue, 16 Oct 2018 10:46:02 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 16 Oct 2018 10:46:04 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 16 Oct 2018 10:46:05 GMT
WORKDIR /var/www/html
# Tue, 16 Oct 2018 10:46:06 GMT
EXPOSE 80/tcp
# Tue, 16 Oct 2018 10:46:08 GMT
CMD ["apache2-foreground"]
# Tue, 16 Oct 2018 20:08:31 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 16 Oct 2018 20:10:37 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Tue, 16 Oct 2018 20:10:52 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Tue, 16 Oct 2018 20:10:56 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 16 Oct 2018 20:11:00 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Tue, 16 Oct 2018 20:11:03 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.30
# Tue, 16 Oct 2018 20:11:04 GMT
ENV MEDIAWIKI_BRANCH=REL1_30
# Tue, 16 Oct 2018 20:11:05 GMT
ENV MEDIAWIKI_VERSION=1.30.1
# Tue, 16 Oct 2018 20:11:07 GMT
ENV MEDIAWIKI_SHA512=bda37c7b1be4e1532ee8357843140e666ed550c4f54b53873d163d4b53ed87a80c0ad8a11d189577d32e554488aed517fb9477f2da04d7e7d87014049a2eabbe
# Tue, 16 Oct 2018 20:11:32 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:202f659db3e53c01ac947538d8b37251e9fa16c4a6a699dc6c2a8910afcdfed4`  
		Last Modified: Tue, 16 Oct 2018 08:30:59 GMT  
		Size: 22.7 MB (22740583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba0f6d499d48eb19dc9d2e6453db815f1d64074f2775cbd9cac4928c0461cdbc`  
		Last Modified: Tue, 16 Oct 2018 12:20:25 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f354790bdfa97d0b204ca9cf4402d437e713049020362b7ad4af49ef47efb984`  
		Last Modified: Tue, 16 Oct 2018 12:21:25 GMT  
		Size: 61.8 MB (61809966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:745377e23f5d138b115edff3b4ebf7c90114d7d658bff2cd8453aaffc66a04db`  
		Last Modified: Tue, 16 Oct 2018 12:20:28 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6ca68ed7b31a0303cdb6d7669c24c6dedb55ddece4d992172fb000dc3f93eeb`  
		Last Modified: Tue, 16 Oct 2018 12:23:21 GMT  
		Size: 17.3 MB (17348500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba60179e94e0e6514a8bd50455affa30a26a572b16013a2b01ea060c2aaa60d3`  
		Last Modified: Tue, 16 Oct 2018 12:23:07 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9292d4db20fce2c69be0ea52392b7616f1846e01f9b70e0aadff84c1084bf254`  
		Last Modified: Tue, 16 Oct 2018 12:23:01 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a20d33fb196e2e93548afbb4d63cb3d16c02b0d6d342e94e77c6beca290525`  
		Last Modified: Tue, 16 Oct 2018 12:22:59 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c4ea029b99fcbbd8bfbfd74bd42ca81a84fbee060a87904f570a192fc958db5`  
		Last Modified: Tue, 16 Oct 2018 12:22:57 GMT  
		Size: 517.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7999262f52e4222d2e2f7ab8d4b1fd69bad897a086126e58f6bd678bc2c81d01`  
		Last Modified: Tue, 16 Oct 2018 12:41:37 GMT  
		Size: 12.6 MB (12575819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aef8979e0836f91120237b001474a970d3a95238da3860d20f5bbd48373ece4`  
		Last Modified: Tue, 16 Oct 2018 12:41:35 GMT  
		Size: 503.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e92d4e87c1f14afa8177ee699e280f21252abe6f7266dd41eb1a59969937be98`  
		Last Modified: Tue, 16 Oct 2018 12:41:41 GMT  
		Size: 14.0 MB (14009163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed9bfe4555485a48b153bfcbfd69e588ad83d65392c64d0d4eaf90d947052271`  
		Last Modified: Tue, 16 Oct 2018 12:41:34 GMT  
		Size: 2.2 KB (2195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f080dd465e3fb2cad79f7467c0cdb25db4870728401db3392225c13487ba252b`  
		Last Modified: Tue, 16 Oct 2018 12:41:34 GMT  
		Size: 905.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87b2bf3cfec3621621d43dfc6c761c8562438f0d9358823eb3b933b92f40c34e`  
		Last Modified: Tue, 16 Oct 2018 20:17:17 GMT  
		Size: 56.6 MB (56596492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f27b307754f896522303e9755465bd01b9331a1f221d07c92dd40eceecd2816a`  
		Last Modified: Tue, 16 Oct 2018 20:16:57 GMT  
		Size: 1.6 MB (1643704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aea0bbe9837bef22f74b509b9c63aaf10dc1c5dc5d5bd93529888c5468ecfba9`  
		Last Modified: Tue, 16 Oct 2018 20:16:57 GMT  
		Size: 404.8 KB (404818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09b43d590bd633009cf014d452eaa458948ff11e38996db2970948ff2c2624d8`  
		Last Modified: Tue, 16 Oct 2018 20:16:57 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eedfcee246c4a76acb0e97ccfd7d62d5d5c52fad3c16c2315a69116cf5a4e9da`  
		Last Modified: Tue, 16 Oct 2018 20:16:57 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ed5e95bd1c913a3f5463a660457acf952607d40e648a4d77d4c5b86b6a56444`  
		Last Modified: Tue, 16 Oct 2018 20:17:16 GMT  
		Size: 42.8 MB (42782530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mediawiki:1.30.1`

```console
$ docker pull mediawiki@sha256:2867f5673c59b6b8501e539c32974e2920b99707ed5cf6c3c7f2199c43a3e75b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `mediawiki:1.30.1` - linux; amd64

```console
$ docker pull mediawiki@sha256:d64bd7679700e65a82a633cb818ceab4fc6f14c888b6141fa527754ca0159519
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.1 MB (235055754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6a89448ee0b8fb2960e1fee6d77f1899f51f1f66d4b5c7e5cbcf65f04ffa833`
-	Entrypoint: `["docker-php-entrypoint"]`
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
# Tue, 16 Oct 2018 01:00:38 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Tue, 16 Oct 2018 01:00:38 GMT
ENV PHP_VERSION=7.1.23
# Tue, 16 Oct 2018 01:00:38 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.23.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.23.tar.xz.asc/from/this/mirror
# Tue, 16 Oct 2018 01:00:39 GMT
ENV PHP_SHA256=227a3c76133c3dc1cec937989456cbd89ed00e68e7260c651900dbe1f5b798bc PHP_MD5=
# Tue, 16 Oct 2018 01:00:47 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 16 Oct 2018 01:00:48 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 16 Oct 2018 01:04:08 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 16 Oct 2018 01:04:09 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Tue, 16 Oct 2018 01:04:09 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 16 Oct 2018 01:04:09 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 16 Oct 2018 01:04:10 GMT
WORKDIR /var/www/html
# Tue, 16 Oct 2018 01:04:10 GMT
EXPOSE 80/tcp
# Tue, 16 Oct 2018 01:04:10 GMT
CMD ["apache2-foreground"]
# Tue, 16 Oct 2018 12:53:26 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:57:04 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Tue, 16 Oct 2018 12:57:25 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Tue, 16 Oct 2018 12:57:26 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 16 Oct 2018 12:57:27 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Tue, 16 Oct 2018 12:57:28 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.30
# Tue, 16 Oct 2018 12:57:28 GMT
ENV MEDIAWIKI_BRANCH=REL1_30
# Tue, 16 Oct 2018 12:57:28 GMT
ENV MEDIAWIKI_VERSION=1.30.1
# Tue, 16 Oct 2018 12:57:28 GMT
ENV MEDIAWIKI_SHA512=bda37c7b1be4e1532ee8357843140e666ed550c4f54b53873d163d4b53ed87a80c0ad8a11d189577d32e554488aed517fb9477f2da04d7e7d87014049a2eabbe
# Tue, 16 Oct 2018 12:57:40 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
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
	-	`sha256:9e7291f0ec69803cea76096836df0e34bbeaf66dfd616a7ec83818b1636909d1`  
		Last Modified: Tue, 16 Oct 2018 03:40:22 GMT  
		Size: 12.6 MB (12577011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53696e01fd9f1436098c80acadfb15492dd1f9792582e2ae4e3097b9ce1e8ba6`  
		Last Modified: Tue, 16 Oct 2018 03:40:20 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73f81b83e9cfd3da5533fa50364008bb4719174d46078acd2e627315cc24e1c0`  
		Last Modified: Tue, 16 Oct 2018 03:40:24 GMT  
		Size: 14.2 MB (14231655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c24b68640e1f94606e9221f7877c52d432092a0b4f73ef130c902f9ebf158bc`  
		Last Modified: Tue, 16 Oct 2018 03:40:21 GMT  
		Size: 2.2 KB (2192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ab8dcc24d5bb6d730451ed098a12a58a7e2035eb236e4a85b05eb317a8fa144`  
		Last Modified: Tue, 16 Oct 2018 03:40:20 GMT  
		Size: 903.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6374dd5915ece75256dd98f030ca0e18076f22e035907132ba85c48a9dba68d8`  
		Last Modified: Tue, 16 Oct 2018 13:04:46 GMT  
		Size: 56.3 MB (56343950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bf439f9c2e8abf34d2797f5f3d10e11e326d54e0c5014b3efd786cad7ba2fdf`  
		Last Modified: Tue, 16 Oct 2018 13:04:17 GMT  
		Size: 1.7 MB (1663096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06639a9992684650b9e5db9e1d2632d9846d444f9d66a35c97203e56e25b8ed3`  
		Last Modified: Tue, 16 Oct 2018 13:04:16 GMT  
		Size: 408.6 KB (408587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcb287a11f2105184483d0c32732d9a02a3bb4104f4162117d05222825543ae2`  
		Last Modified: Tue, 16 Oct 2018 13:04:16 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:685278fcca1baf526197a707dc2f2fb0bad4a94cb960408fb4d4241dc396aaf9`  
		Last Modified: Tue, 16 Oct 2018 13:04:16 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08d6fd948824d182fa60816fdef73b2585fff6efd4daa5108cfd4e9ef5fac172`  
		Last Modified: Tue, 16 Oct 2018 13:04:57 GMT  
		Size: 42.8 MB (42782321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.30.1` - linux; arm variant v5

```console
$ docker pull mediawiki@sha256:ff4db9d69f13e3d1d56d61b8d29fe13d2c4fbd6989e0768aeaf9aef43ee5f362
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.2 MB (220165795 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d21ec688788d89a20a2adc9bf309c53f53cf147fbd2ddb34b37012712fe5294`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 16 Oct 2018 08:55:22 GMT
ADD file:8f2148adabc29587e17b50138f305f39e94e0e2bd9211a9f913fef56013ac35a in / 
# Tue, 16 Oct 2018 08:55:23 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 08:59:24 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 16 Oct 2018 08:59:25 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 16 Oct 2018 09:00:38 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 16 Oct 2018 09:00:40 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 16 Oct 2018 09:00:41 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 16 Oct 2018 09:01:03 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 09:01:04 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 16 Oct 2018 09:01:04 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 16 Oct 2018 09:01:05 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 16 Oct 2018 09:01:06 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 16 Oct 2018 09:01:08 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 16 Oct 2018 09:01:09 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 16 Oct 2018 09:01:09 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 16 Oct 2018 09:01:09 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Tue, 16 Oct 2018 09:01:10 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 16 Oct 2018 09:01:10 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 16 Oct 2018 09:01:10 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 16 Oct 2018 09:17:41 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Tue, 16 Oct 2018 09:17:41 GMT
ENV PHP_VERSION=7.1.23
# Tue, 16 Oct 2018 09:17:42 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.23.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.23.tar.xz.asc/from/this/mirror
# Tue, 16 Oct 2018 09:17:42 GMT
ENV PHP_SHA256=227a3c76133c3dc1cec937989456cbd89ed00e68e7260c651900dbe1f5b798bc PHP_MD5=
# Tue, 16 Oct 2018 09:18:00 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 16 Oct 2018 09:18:01 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 16 Oct 2018 09:20:49 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 16 Oct 2018 09:20:51 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Tue, 16 Oct 2018 09:20:51 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 16 Oct 2018 09:20:52 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 16 Oct 2018 09:20:52 GMT
WORKDIR /var/www/html
# Tue, 16 Oct 2018 09:20:53 GMT
EXPOSE 80/tcp
# Tue, 16 Oct 2018 09:20:53 GMT
CMD ["apache2-foreground"]
# Tue, 16 Oct 2018 15:41:12 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 16 Oct 2018 15:44:23 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Tue, 16 Oct 2018 15:44:40 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Tue, 16 Oct 2018 15:44:41 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 16 Oct 2018 15:44:43 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Tue, 16 Oct 2018 15:44:43 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.30
# Tue, 16 Oct 2018 15:44:43 GMT
ENV MEDIAWIKI_BRANCH=REL1_30
# Tue, 16 Oct 2018 15:44:44 GMT
ENV MEDIAWIKI_VERSION=1.30.1
# Tue, 16 Oct 2018 15:44:44 GMT
ENV MEDIAWIKI_SHA512=bda37c7b1be4e1532ee8357843140e666ed550c4f54b53873d163d4b53ed87a80c0ad8a11d189577d32e554488aed517fb9477f2da04d7e7d87014049a2eabbe
# Tue, 16 Oct 2018 15:45:04 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:4b7ffdf9817f718c84be550e8edf757070396d69165fa729c6ddd4e775428eb2`  
		Last Modified: Tue, 16 Oct 2018 09:04:44 GMT  
		Size: 21.2 MB (21162965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20460378a8f38aacfeb9a0bcf3a38abbaebb8845cf0f7ca8c5f8ccb51f3ba5d8`  
		Last Modified: Tue, 16 Oct 2018 10:20:49 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecb7e6fb4c6270cb10f9b8f7aa93b2d05eca8e4ca542ae6b884f3d507b3f2c06`  
		Last Modified: Tue, 16 Oct 2018 10:21:09 GMT  
		Size: 57.4 MB (57447518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ad837638c5f551ce2ed0722f0aa0206be6b2503befb732461de20785c38ed13`  
		Last Modified: Tue, 16 Oct 2018 10:20:48 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02b8207a3bfbe878b8a8d846a774c3ce482e349d482e7084559f88b12618ffb1`  
		Last Modified: Tue, 16 Oct 2018 10:20:52 GMT  
		Size: 16.7 MB (16650918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7198acceff99d48ae548b76f8e9eb26d52d8a63521d95d7db38554594b5d1223`  
		Last Modified: Tue, 16 Oct 2018 10:20:47 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e62a81208df875e54460875df6afbac9065b4afc56282d9fb756acffa5656a7`  
		Last Modified: Tue, 16 Oct 2018 10:20:46 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5a783b15fb65ce49afc889cc25e5744af9318920f2c2b5419dc1d6209f71d6a`  
		Last Modified: Tue, 16 Oct 2018 10:20:46 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b8615ebbc988042c7c4db62198beea70acc923ccc2b3f98aba803a3947a68fa`  
		Last Modified: Tue, 16 Oct 2018 10:20:46 GMT  
		Size: 510.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50dd48b7ddccec1ec18079845b9ce2caf8c6838680716199ba639163efb7c56b`  
		Last Modified: Tue, 16 Oct 2018 10:24:14 GMT  
		Size: 12.6 MB (12575087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adbc270ef31f010f95cb2cfee104d8c3c03fdc710ea87351b16d25430423d362`  
		Last Modified: Tue, 16 Oct 2018 10:24:12 GMT  
		Size: 502.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08923d9903627631fc1c8ff531f939577a842a9d500b16921ff37d73b31a0ab3`  
		Last Modified: Tue, 16 Oct 2018 10:24:17 GMT  
		Size: 13.6 MB (13566480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a430757c5b117496251da803088467ac9f77213ce086dc2a4b8bc7b507f5af10`  
		Last Modified: Tue, 16 Oct 2018 10:24:12 GMT  
		Size: 2.2 KB (2193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5deba410f5d388d0d57bd5939f8a1578b3116ccaa209b9b8d9427d15b16b655a`  
		Last Modified: Tue, 16 Oct 2018 10:24:12 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cdaab48cb863ad55ee24a28af44b3f4fe6d328d51836622ef1e585cdf937830`  
		Last Modified: Tue, 16 Oct 2018 15:52:43 GMT  
		Size: 54.0 MB (53981785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e94ff8209078121e755ebbdc64c8cf46843b9c611ac7530fde1f00ff16b4026`  
		Last Modified: Tue, 16 Oct 2018 15:52:25 GMT  
		Size: 1.6 MB (1593758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54e77b46632abac562bc9abd81b4e7e576ba786a9f1921883b78caaeeaf3f018`  
		Last Modified: Tue, 16 Oct 2018 15:52:24 GMT  
		Size: 397.7 KB (397737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5174768ffcd2e02f68c2d3820e29e517f84c3b7937681bfa826a56b92de8f93`  
		Last Modified: Tue, 16 Oct 2018 15:52:24 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcf806a5fb6014d6a135039c1d5d38080491786e3e4147e215c34058fa4e2ce8`  
		Last Modified: Tue, 16 Oct 2018 15:52:25 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67cd0e80dc83843f4e9c66e689351ac102c7600d675b21efeaa7dc31735ca1cc`  
		Last Modified: Tue, 16 Oct 2018 15:52:52 GMT  
		Size: 42.8 MB (42782502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.30.1` - linux; arm variant v7

```console
$ docker pull mediawiki@sha256:4341065a9b2cd689acb6ae9f6ec68dbb5657bb45def883fe98e207a1abdc322d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.0 MB (211010947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c7fad4fcd261ed78b41d2a8eb16cb5fb4709f4a848a8415880f352399aa2a0a`
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
# Tue, 16 Oct 2018 12:48:06 GMT
ENV PHP_VERSION=7.1.23
# Tue, 16 Oct 2018 12:48:06 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.23.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.23.tar.xz.asc/from/this/mirror
# Tue, 16 Oct 2018 12:48:07 GMT
ENV PHP_SHA256=227a3c76133c3dc1cec937989456cbd89ed00e68e7260c651900dbe1f5b798bc PHP_MD5=
# Tue, 16 Oct 2018 12:48:23 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 16 Oct 2018 12:48:28 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 16 Oct 2018 12:51:09 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 16 Oct 2018 12:51:10 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Tue, 16 Oct 2018 12:51:11 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 16 Oct 2018 12:51:11 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 16 Oct 2018 12:51:12 GMT
WORKDIR /var/www/html
# Tue, 16 Oct 2018 12:51:12 GMT
EXPOSE 80/tcp
# Tue, 16 Oct 2018 12:51:13 GMT
CMD ["apache2-foreground"]
# Tue, 16 Oct 2018 15:46:25 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 16 Oct 2018 15:50:26 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Tue, 16 Oct 2018 15:50:42 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Tue, 16 Oct 2018 15:50:43 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 16 Oct 2018 15:50:44 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Tue, 16 Oct 2018 15:50:45 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.30
# Tue, 16 Oct 2018 15:50:45 GMT
ENV MEDIAWIKI_BRANCH=REL1_30
# Tue, 16 Oct 2018 15:50:46 GMT
ENV MEDIAWIKI_VERSION=1.30.1
# Tue, 16 Oct 2018 15:50:46 GMT
ENV MEDIAWIKI_SHA512=bda37c7b1be4e1532ee8357843140e666ed550c4f54b53873d163d4b53ed87a80c0ad8a11d189577d32e554488aed517fb9477f2da04d7e7d87014049a2eabbe
# Tue, 16 Oct 2018 15:51:03 GMT
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
	-	`sha256:c69abec5f1aa3c6fa125b88e96288e5529ef50fea2e5bd95855faf4303bd985a`  
		Last Modified: Tue, 16 Oct 2018 13:30:09 GMT  
		Size: 12.6 MB (12575068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:781c40d49c732d45cc4865fcb301531f83d41c1ea97119586152bb08e9fb67c4`  
		Last Modified: Tue, 16 Oct 2018 13:30:07 GMT  
		Size: 504.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97efaae01b0f68ed032d9a3983d8bf2ff4a5f265355f2eb403dcaa52d0912a24`  
		Last Modified: Tue, 16 Oct 2018 13:30:13 GMT  
		Size: 13.1 MB (13101414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b2ad687c6f0a760fa678838711094ef352d30c3e3770cd342faa28ad6e5f9a`  
		Last Modified: Tue, 16 Oct 2018 13:30:07 GMT  
		Size: 2.2 KB (2194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9b12afc207450a5527138259a9bceaf9d6b535bcc521769475faa07f8e830da`  
		Last Modified: Tue, 16 Oct 2018 13:30:08 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44833e1033721cfa78ab7cd1fb3405cd08be703bbad7eb99a4bb09b565e4cae7`  
		Last Modified: Tue, 16 Oct 2018 15:52:34 GMT  
		Size: 51.6 MB (51607343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f3597a99181dc49741d3c0cb5b09fe86cdc21789bb7a0787149d91413ece509`  
		Last Modified: Tue, 16 Oct 2018 15:52:17 GMT  
		Size: 1.5 MB (1549596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:121b090f3217d8ee49f6cbe82ecff02a8ad7ec7fc53f43555bab3eaa5fd44a3d`  
		Last Modified: Tue, 16 Oct 2018 15:52:16 GMT  
		Size: 392.8 KB (392799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39045022a5cb2a615f338464ea5eabd440959523ebfd1179a1162a4530c57117`  
		Last Modified: Tue, 16 Oct 2018 15:52:16 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ae07b68d71cdbd7473a51db65b2c9a295c1cc632d4682947473fa500fa56df6`  
		Last Modified: Tue, 16 Oct 2018 15:52:16 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1cacdafda304c8656d1fdc87e5d40430a19766cb45d27e4d4d85e6c842e37d3`  
		Last Modified: Tue, 16 Oct 2018 15:52:43 GMT  
		Size: 42.8 MB (42782497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.30.1` - linux; arm64 variant v8

```console
$ docker pull mediawiki@sha256:151a152ed0d4446e36de4b424a46d268f255c715490f0331b249a4031a4fc31f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.5 MB (219524508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:229dfebe28c0e39a87d4e9b34ae3a61b9184bb6af6439ced296ba13ce71fc2c0`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 16 Oct 2018 08:43:45 GMT
ADD file:e83c09a5cfc1cecaeba6b736737d551fe0f5d3f204ec3fc984fe768003774f81 in / 
# Tue, 16 Oct 2018 08:43:46 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 09:37:09 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 16 Oct 2018 09:37:10 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 16 Oct 2018 09:38:24 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 16 Oct 2018 09:38:25 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 16 Oct 2018 09:38:27 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 16 Oct 2018 09:49:43 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 09:49:44 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 16 Oct 2018 09:49:44 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 16 Oct 2018 09:49:46 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 16 Oct 2018 09:49:47 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 16 Oct 2018 09:49:49 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 16 Oct 2018 09:49:51 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 16 Oct 2018 09:49:51 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 16 Oct 2018 09:49:52 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Tue, 16 Oct 2018 09:49:53 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 16 Oct 2018 09:49:53 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 16 Oct 2018 09:49:54 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 16 Oct 2018 12:27:05 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Tue, 16 Oct 2018 12:27:06 GMT
ENV PHP_VERSION=7.1.23
# Tue, 16 Oct 2018 12:27:06 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.23.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.23.tar.xz.asc/from/this/mirror
# Tue, 16 Oct 2018 12:27:07 GMT
ENV PHP_SHA256=227a3c76133c3dc1cec937989456cbd89ed00e68e7260c651900dbe1f5b798bc PHP_MD5=
# Tue, 16 Oct 2018 12:27:41 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 16 Oct 2018 12:27:42 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 16 Oct 2018 12:33:31 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 16 Oct 2018 12:33:33 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Tue, 16 Oct 2018 12:33:34 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 16 Oct 2018 12:33:35 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 16 Oct 2018 12:33:36 GMT
WORKDIR /var/www/html
# Tue, 16 Oct 2018 12:33:37 GMT
EXPOSE 80/tcp
# Tue, 16 Oct 2018 12:33:39 GMT
CMD ["apache2-foreground"]
# Wed, 17 Oct 2018 05:58:39 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 17 Oct 2018 06:02:18 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Wed, 17 Oct 2018 06:02:39 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Wed, 17 Oct 2018 06:02:49 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 17 Oct 2018 06:02:51 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Wed, 17 Oct 2018 06:02:58 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.30
# Wed, 17 Oct 2018 06:02:59 GMT
ENV MEDIAWIKI_BRANCH=REL1_30
# Wed, 17 Oct 2018 06:03:00 GMT
ENV MEDIAWIKI_VERSION=1.30.1
# Wed, 17 Oct 2018 06:03:00 GMT
ENV MEDIAWIKI_SHA512=bda37c7b1be4e1532ee8357843140e666ed550c4f54b53873d163d4b53ed87a80c0ad8a11d189577d32e554488aed517fb9477f2da04d7e7d87014049a2eabbe
# Wed, 17 Oct 2018 06:03:17 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:141796bfcf0d5a5edb072138e517bf85deef4f47f40afb51ba8705bec3b921dd`  
		Last Modified: Tue, 16 Oct 2018 08:50:53 GMT  
		Size: 20.3 MB (20331585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa887e40ae8a2b78a8eba6e16f2902853327c922f0110c4bd2e4728fb79b305b`  
		Last Modified: Tue, 16 Oct 2018 15:06:53 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99271cba459dd39a663363166e510f7cc1ebf18b221d33bb6c4e26d54774a5d7`  
		Last Modified: Tue, 16 Oct 2018 15:08:26 GMT  
		Size: 57.6 MB (57596184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:440b75b2132ae75a804754d6dd4f874b688e2f6a1d034fd0d2de6e496b8f1f0b`  
		Last Modified: Tue, 16 Oct 2018 15:06:52 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9716126acdb685c5ea84948fb47306c1b2d74752160d8de98d14cac45c1734a`  
		Last Modified: Tue, 16 Oct 2018 15:10:47 GMT  
		Size: 16.7 MB (16709722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92cd9f340623c79febab023e7bed21713ff7c5a54222f6e864d484df51e5eb5e`  
		Last Modified: Tue, 16 Oct 2018 15:10:15 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f4aca00aec726971992cfa7cb081238ab6d32d57c69cf024ee2690cef29374d`  
		Last Modified: Tue, 16 Oct 2018 15:10:14 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef70a607bae65cff09c6a3fd4add05727d00f023e83540e9823c8c73ce65afba`  
		Last Modified: Tue, 16 Oct 2018 15:10:14 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3482f362267a35679e02d84771ac1e78594ccb8598b70cfdb652909f558ae451`  
		Last Modified: Tue, 16 Oct 2018 15:10:13 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7395a19cfebc94b90fa17817559bea3273ad3224e6542ea3df5bca3c07456dac`  
		Last Modified: Tue, 16 Oct 2018 15:35:16 GMT  
		Size: 12.6 MB (12575343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54e377f28947ac8b0c1c720f9c87e540fe71cbb33b27d44d0805ee8dfce2e206`  
		Last Modified: Tue, 16 Oct 2018 15:35:14 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adac35db4e9a81dfd9bee971b498878e1211b7d4f16525ad82b2290a81a458c4`  
		Last Modified: Tue, 16 Oct 2018 15:35:19 GMT  
		Size: 13.4 MB (13377906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d79b997313231c584f5e897f0f0aa7a08c8086210d54bf5290db948901bd5eed`  
		Last Modified: Tue, 16 Oct 2018 15:35:14 GMT  
		Size: 2.2 KB (2195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89ecb2541cc6b3b7773265e832f8bcc132c1dd1da857da9a773535113b90bd32`  
		Last Modified: Tue, 16 Oct 2018 15:35:14 GMT  
		Size: 905.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee89398e21abc980032d4f6d35cdfc915e4dc9e34370ada0a0e6e042eb82192`  
		Last Modified: Wed, 17 Oct 2018 06:11:07 GMT  
		Size: 54.1 MB (54149594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a80c4614fa7fa76137c617cb982051243045810525aadb4eca118ac23506f59`  
		Last Modified: Wed, 17 Oct 2018 06:10:44 GMT  
		Size: 1.6 MB (1594565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0a76501e81f14e6e9d0f9d06170fd06851d862776a6bb7cf248318f5051e0ef`  
		Last Modified: Wed, 17 Oct 2018 06:10:43 GMT  
		Size: 400.4 KB (400415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6623491314232fef5f2840e5893ccf893d7c73d6ea33810a40a17fd4f476e5f2`  
		Last Modified: Wed, 17 Oct 2018 06:10:43 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96dc24e8a0de3b708687587ffc3ca10375707239f7b54b9410680ca5f0dbc8c7`  
		Last Modified: Wed, 17 Oct 2018 06:10:43 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:071ea85cf24bb9ef42292baaa4902a9011c08dd2f3c92504a50f38ea673670c0`  
		Last Modified: Wed, 17 Oct 2018 06:11:12 GMT  
		Size: 42.8 MB (42782292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.30.1` - linux; 386

```console
$ docker pull mediawiki@sha256:5647b03514c59e2db0ccb3992e58f2c8e7af1701f98e1dcab794435ff9b840c5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.8 MB (240816677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9250a4b98e8b8523e0b7ab76ae10ace12286e7c4d6d34c42c82991d4de8ce984`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 16 Oct 2018 10:49:05 GMT
ADD file:a71ef0e9adb528ae2dc5ca3395654522c23762d8936a4902378c6749bb357582 in / 
# Tue, 16 Oct 2018 10:49:05 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 11:59:35 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 16 Oct 2018 11:59:36 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 16 Oct 2018 12:00:22 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:00:23 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 16 Oct 2018 12:00:24 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 16 Oct 2018 12:11:59 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:11:59 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 16 Oct 2018 12:12:00 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 16 Oct 2018 12:12:01 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 16 Oct 2018 12:12:02 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 16 Oct 2018 12:12:03 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 16 Oct 2018 12:12:04 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 16 Oct 2018 12:12:04 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 16 Oct 2018 12:12:05 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Tue, 16 Oct 2018 12:12:05 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 16 Oct 2018 12:12:05 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 16 Oct 2018 12:12:05 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 16 Oct 2018 15:12:00 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Tue, 16 Oct 2018 15:12:00 GMT
ENV PHP_VERSION=7.1.23
# Tue, 16 Oct 2018 15:12:01 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.23.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.23.tar.xz.asc/from/this/mirror
# Tue, 16 Oct 2018 15:12:01 GMT
ENV PHP_SHA256=227a3c76133c3dc1cec937989456cbd89ed00e68e7260c651900dbe1f5b798bc PHP_MD5=
# Tue, 16 Oct 2018 15:12:17 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 16 Oct 2018 15:12:17 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 16 Oct 2018 15:18:29 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 16 Oct 2018 15:18:30 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Tue, 16 Oct 2018 15:18:30 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 16 Oct 2018 15:18:30 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 16 Oct 2018 15:18:31 GMT
WORKDIR /var/www/html
# Tue, 16 Oct 2018 15:18:31 GMT
EXPOSE 80/tcp
# Tue, 16 Oct 2018 15:18:31 GMT
CMD ["apache2-foreground"]
# Wed, 17 Oct 2018 07:56:10 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 17 Oct 2018 07:57:42 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Wed, 17 Oct 2018 07:57:51 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Wed, 17 Oct 2018 07:57:51 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 17 Oct 2018 07:57:52 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Wed, 17 Oct 2018 07:57:52 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.30
# Wed, 17 Oct 2018 07:57:53 GMT
ENV MEDIAWIKI_BRANCH=REL1_30
# Wed, 17 Oct 2018 07:57:53 GMT
ENV MEDIAWIKI_VERSION=1.30.1
# Wed, 17 Oct 2018 07:57:53 GMT
ENV MEDIAWIKI_SHA512=bda37c7b1be4e1532ee8357843140e666ed550c4f54b53873d163d4b53ed87a80c0ad8a11d189577d32e554488aed517fb9477f2da04d7e7d87014049a2eabbe
# Wed, 17 Oct 2018 07:58:03 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:2b7bcb618c4033f37486fd700e6d0debf2260935f888a192119c41eaddd29978`  
		Last Modified: Tue, 16 Oct 2018 11:06:15 GMT  
		Size: 23.1 MB (23126605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ac9f5e161441372e549d094f25b4640689548d53bb47c34a8ced01a74b8ad6f`  
		Last Modified: Tue, 16 Oct 2018 19:08:04 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cac64c78cd80e7e59f4a0fd49c7632e4799f427a439c1339df81ad969a7aed3`  
		Last Modified: Tue, 16 Oct 2018 19:08:39 GMT  
		Size: 71.5 MB (71484645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a7cfe59c8cc409c1eb116e2905e9a239f1f1a26128b6fd15cf1217563b373e4`  
		Last Modified: Tue, 16 Oct 2018 19:08:04 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99051976b849498ac53e2ffcd090cb770169576c8fe2ba03b72ec38559319cff`  
		Last Modified: Tue, 16 Oct 2018 19:10:57 GMT  
		Size: 17.6 MB (17562598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8baa008090db722001228a8b24993ff76cc41b4f3c5ee668b4ba3a9a91a8beb`  
		Last Modified: Tue, 16 Oct 2018 19:10:51 GMT  
		Size: 1.2 KB (1243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8f645450e0e3cf05fbcd8a2ca3ca89deb3a97661b07a8e11130055680df3138`  
		Last Modified: Tue, 16 Oct 2018 19:11:16 GMT  
		Size: 429.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a636e140725a9abf6bfca67dce52d8d0729b612493c86addf510f88cd41ff73`  
		Last Modified: Tue, 16 Oct 2018 19:10:50 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c899e0d2536fbfcfaa4ef00f9497a5891261cfb1fca3e776a428e461db7ee410`  
		Last Modified: Tue, 16 Oct 2018 19:10:50 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d04296a9b5f0197a38a16b450e8d81e6f6f6825f808c8efd4676de2e67c71ff`  
		Last Modified: Tue, 16 Oct 2018 19:37:48 GMT  
		Size: 12.6 MB (12576481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c3b7bb527f4a1e96c2b2211dcd0796ff2a6cd3e59b859cbafb8c53502cf1021`  
		Last Modified: Tue, 16 Oct 2018 19:37:46 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c307439b82a49cf5b811d35d2f4eef83c44ba9a100aba8e2c8e72db9e1deb48`  
		Last Modified: Tue, 16 Oct 2018 19:37:51 GMT  
		Size: 14.7 MB (14717979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80d63db8fe2c98c933bd37d7d7eda32b896ee9325a2e50383d08b674dbdf57f1`  
		Last Modified: Tue, 16 Oct 2018 19:37:46 GMT  
		Size: 2.2 KB (2196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66de29bf951459d02781e52f8556b2eda6c4d510c214d00ab92f3647c9d8c8b9`  
		Last Modified: Tue, 16 Oct 2018 19:37:46 GMT  
		Size: 906.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f25362d03f05e080ad3383a97a59b11740ff48e4d605ead1baf3568d8c112c8`  
		Last Modified: Wed, 17 Oct 2018 08:01:50 GMT  
		Size: 56.5 MB (56499424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2967b651ab6f054c2ba5aa40e8feb3427f8690c98b12b4c873a8c9edfcb8ac8e`  
		Last Modified: Wed, 17 Oct 2018 08:01:33 GMT  
		Size: 1.7 MB (1664710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9159c9aef62b691f4bd77592ef7d46c09685a3d042f66b914e5b86a41d4dca7`  
		Last Modified: Wed, 17 Oct 2018 08:01:33 GMT  
		Size: 395.0 KB (395024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8558fd272b2cd3310a249c8e82b2d8fd62145aca4083cd7d101c8dfca3050110`  
		Last Modified: Wed, 17 Oct 2018 08:01:33 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b76356abb4b148c1807b80ca59c6ca11530dc2f9c2ad963dac32e4ba76811a09`  
		Last Modified: Wed, 17 Oct 2018 08:01:33 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dd7a0540c9679489cf693405993adbe614ddab346f96defa90ae912d5900e4b`  
		Last Modified: Wed, 17 Oct 2018 08:01:55 GMT  
		Size: 42.8 MB (42782318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.30.1` - linux; ppc64le

```console
$ docker pull mediawiki@sha256:f0716820db47ea961b87fc449f21c45f0f16031554c49f71940c5a489783a40e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.9 MB (229918641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9baca72332e43fd96401d57f2c26f51b9774eef7df7a81032b20f3bfd12f0f03`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 16 Oct 2018 08:22:25 GMT
ADD file:b1fa1d0ffa2b206311dfd95642d74c3312565a1ec2e6e3a2197bfd2a4b3de6c6 in / 
# Tue, 16 Oct 2018 08:22:30 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 08:36:20 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 16 Oct 2018 08:36:20 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 16 Oct 2018 08:38:14 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 16 Oct 2018 08:38:16 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 16 Oct 2018 08:38:19 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 16 Oct 2018 08:47:02 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 08:47:04 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 16 Oct 2018 08:47:06 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 16 Oct 2018 08:47:12 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 16 Oct 2018 08:47:15 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 16 Oct 2018 08:47:21 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 16 Oct 2018 08:47:25 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 16 Oct 2018 08:47:26 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 16 Oct 2018 08:47:27 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Tue, 16 Oct 2018 08:47:28 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 16 Oct 2018 08:47:30 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 16 Oct 2018 08:47:33 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 16 Oct 2018 10:37:30 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Tue, 16 Oct 2018 10:37:31 GMT
ENV PHP_VERSION=7.1.23
# Tue, 16 Oct 2018 10:37:32 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.23.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.23.tar.xz.asc/from/this/mirror
# Tue, 16 Oct 2018 10:37:34 GMT
ENV PHP_SHA256=227a3c76133c3dc1cec937989456cbd89ed00e68e7260c651900dbe1f5b798bc PHP_MD5=
# Tue, 16 Oct 2018 10:39:49 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 16 Oct 2018 10:39:50 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 16 Oct 2018 10:45:59 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 16 Oct 2018 10:46:00 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Tue, 16 Oct 2018 10:46:02 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 16 Oct 2018 10:46:04 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 16 Oct 2018 10:46:05 GMT
WORKDIR /var/www/html
# Tue, 16 Oct 2018 10:46:06 GMT
EXPOSE 80/tcp
# Tue, 16 Oct 2018 10:46:08 GMT
CMD ["apache2-foreground"]
# Tue, 16 Oct 2018 20:08:31 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 16 Oct 2018 20:10:37 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Tue, 16 Oct 2018 20:10:52 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Tue, 16 Oct 2018 20:10:56 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 16 Oct 2018 20:11:00 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Tue, 16 Oct 2018 20:11:03 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.30
# Tue, 16 Oct 2018 20:11:04 GMT
ENV MEDIAWIKI_BRANCH=REL1_30
# Tue, 16 Oct 2018 20:11:05 GMT
ENV MEDIAWIKI_VERSION=1.30.1
# Tue, 16 Oct 2018 20:11:07 GMT
ENV MEDIAWIKI_SHA512=bda37c7b1be4e1532ee8357843140e666ed550c4f54b53873d163d4b53ed87a80c0ad8a11d189577d32e554488aed517fb9477f2da04d7e7d87014049a2eabbe
# Tue, 16 Oct 2018 20:11:32 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:202f659db3e53c01ac947538d8b37251e9fa16c4a6a699dc6c2a8910afcdfed4`  
		Last Modified: Tue, 16 Oct 2018 08:30:59 GMT  
		Size: 22.7 MB (22740583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba0f6d499d48eb19dc9d2e6453db815f1d64074f2775cbd9cac4928c0461cdbc`  
		Last Modified: Tue, 16 Oct 2018 12:20:25 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f354790bdfa97d0b204ca9cf4402d437e713049020362b7ad4af49ef47efb984`  
		Last Modified: Tue, 16 Oct 2018 12:21:25 GMT  
		Size: 61.8 MB (61809966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:745377e23f5d138b115edff3b4ebf7c90114d7d658bff2cd8453aaffc66a04db`  
		Last Modified: Tue, 16 Oct 2018 12:20:28 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6ca68ed7b31a0303cdb6d7669c24c6dedb55ddece4d992172fb000dc3f93eeb`  
		Last Modified: Tue, 16 Oct 2018 12:23:21 GMT  
		Size: 17.3 MB (17348500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba60179e94e0e6514a8bd50455affa30a26a572b16013a2b01ea060c2aaa60d3`  
		Last Modified: Tue, 16 Oct 2018 12:23:07 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9292d4db20fce2c69be0ea52392b7616f1846e01f9b70e0aadff84c1084bf254`  
		Last Modified: Tue, 16 Oct 2018 12:23:01 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a20d33fb196e2e93548afbb4d63cb3d16c02b0d6d342e94e77c6beca290525`  
		Last Modified: Tue, 16 Oct 2018 12:22:59 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c4ea029b99fcbbd8bfbfd74bd42ca81a84fbee060a87904f570a192fc958db5`  
		Last Modified: Tue, 16 Oct 2018 12:22:57 GMT  
		Size: 517.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7999262f52e4222d2e2f7ab8d4b1fd69bad897a086126e58f6bd678bc2c81d01`  
		Last Modified: Tue, 16 Oct 2018 12:41:37 GMT  
		Size: 12.6 MB (12575819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aef8979e0836f91120237b001474a970d3a95238da3860d20f5bbd48373ece4`  
		Last Modified: Tue, 16 Oct 2018 12:41:35 GMT  
		Size: 503.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e92d4e87c1f14afa8177ee699e280f21252abe6f7266dd41eb1a59969937be98`  
		Last Modified: Tue, 16 Oct 2018 12:41:41 GMT  
		Size: 14.0 MB (14009163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed9bfe4555485a48b153bfcbfd69e588ad83d65392c64d0d4eaf90d947052271`  
		Last Modified: Tue, 16 Oct 2018 12:41:34 GMT  
		Size: 2.2 KB (2195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f080dd465e3fb2cad79f7467c0cdb25db4870728401db3392225c13487ba252b`  
		Last Modified: Tue, 16 Oct 2018 12:41:34 GMT  
		Size: 905.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87b2bf3cfec3621621d43dfc6c761c8562438f0d9358823eb3b933b92f40c34e`  
		Last Modified: Tue, 16 Oct 2018 20:17:17 GMT  
		Size: 56.6 MB (56596492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f27b307754f896522303e9755465bd01b9331a1f221d07c92dd40eceecd2816a`  
		Last Modified: Tue, 16 Oct 2018 20:16:57 GMT  
		Size: 1.6 MB (1643704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aea0bbe9837bef22f74b509b9c63aaf10dc1c5dc5d5bd93529888c5468ecfba9`  
		Last Modified: Tue, 16 Oct 2018 20:16:57 GMT  
		Size: 404.8 KB (404818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09b43d590bd633009cf014d452eaa458948ff11e38996db2970948ff2c2624d8`  
		Last Modified: Tue, 16 Oct 2018 20:16:57 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eedfcee246c4a76acb0e97ccfd7d62d5d5c52fad3c16c2315a69116cf5a4e9da`  
		Last Modified: Tue, 16 Oct 2018 20:16:57 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ed5e95bd1c913a3f5463a660457acf952607d40e648a4d77d4c5b86b6a56444`  
		Last Modified: Tue, 16 Oct 2018 20:17:16 GMT  
		Size: 42.8 MB (42782530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mediawiki:1.31`

```console
$ docker pull mediawiki@sha256:584e1f1992cb749c4725a967211b1453013980d63636f2985fc35cc3ff908893
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
$ docker pull mediawiki@sha256:520c140b39c77d15958d07ac034ccbc26f0a9e7a31f2584c1a4d14c0db4aaf79
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.4 MB (231405854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c5644999f6f3211e1b9c4eeda99ed614abd064fdd01f65923578921982b80b9`
-	Entrypoint: `["docker-php-entrypoint"]`
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
# Fri, 09 Nov 2018 23:42:44 GMT
ENV PHP_VERSION=7.2.12
# Fri, 09 Nov 2018 23:42:44 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.12.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.12.tar.xz.asc/from/this/mirror
# Fri, 09 Nov 2018 23:42:44 GMT
ENV PHP_SHA256=989c04cc879ee71a5e1131db867f3c5102f1f7565f805e2bb8bde33f93147fe1 PHP_MD5=
# Fri, 09 Nov 2018 23:42:53 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 09 Nov 2018 23:42:54 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 09 Nov 2018 23:46:43 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 09 Nov 2018 23:46:54 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Fri, 09 Nov 2018 23:47:06 GMT
RUN docker-php-ext-enable sodium
# Fri, 09 Nov 2018 23:47:07 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 09 Nov 2018 23:47:07 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 09 Nov 2018 23:47:07 GMT
WORKDIR /var/www/html
# Fri, 09 Nov 2018 23:47:08 GMT
EXPOSE 80/tcp
# Fri, 09 Nov 2018 23:47:08 GMT
CMD ["apache2-foreground"]
# Sat, 10 Nov 2018 01:46:14 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python3 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 10 Nov 2018 01:47:56 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Sat, 10 Nov 2018 01:48:05 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu 	&& docker-php-ext-enable apcu
# Sat, 10 Nov 2018 01:48:06 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 10 Nov 2018 01:48:07 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 10 Nov 2018 01:48:07 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.31
# Sat, 10 Nov 2018 01:48:07 GMT
ENV MEDIAWIKI_BRANCH=REL1_31
# Sat, 10 Nov 2018 01:48:08 GMT
ENV MEDIAWIKI_VERSION=1.31.1
# Sat, 10 Nov 2018 01:48:08 GMT
ENV MEDIAWIKI_SHA512=ee49649cc37d0a7d45a7c6d90c822c2a595df290be2b5bf085affbec3318768700a458a6e5b5b7e437651400b9641424429d6d304f870c22ec63fae86ffc5152
# Sat, 10 Nov 2018 01:48:14 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
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
	-	`sha256:c03bc06afbf117528a1f87ef7f70e9a98afa6fb409e87a525b77f3b24d282d42`  
		Last Modified: Sat, 10 Nov 2018 00:46:49 GMT  
		Size: 12.5 MB (12491693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4be3d516ef4a0873ef1e58afda67228eaeeade4213602bf2325dc2645aab8de3`  
		Last Modified: Sat, 10 Nov 2018 00:46:47 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25253f4c7678aed8e63c2c9b67d2fdf3b0284a56569287e3bd8744c0c41aeb0e`  
		Last Modified: Sat, 10 Nov 2018 00:46:50 GMT  
		Size: 15.6 MB (15616443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f4ee332f37f73fbfb8fa1a1557157aa166c8d5cc3813ca2108b3978fae6f56e`  
		Last Modified: Sat, 10 Nov 2018 00:46:47 GMT  
		Size: 2.2 KB (2192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc5cc2e81ed4b8c66a7ea178d4bfabb76e0a85cd124fcde6998d42d26f505345`  
		Last Modified: Sat, 10 Nov 2018 00:46:47 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2d05c20f6c8331a04994018516d98b4d90b108ed67bde9e2413e61da41658d6`  
		Last Modified: Sat, 10 Nov 2018 00:46:47 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec34cdc7398f11d10bb7e4084a0353edf0f31787850015af8280d1927e2aeb52`  
		Last Modified: Sat, 10 Nov 2018 01:48:56 GMT  
		Size: 58.3 MB (58336776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46522a5722d487553df531bac72657a3b86e65b9bedba4a3262ab8c3f0dff926`  
		Last Modified: Sat, 10 Nov 2018 01:48:42 GMT  
		Size: 1.8 MB (1757313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49b5c23f571029ec2ed24005b6f0da402ba766e28d891ad252e6469ffb04446d`  
		Last Modified: Sat, 10 Nov 2018 01:48:42 GMT  
		Size: 400.9 KB (400902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:878de1a45e3ed16e43daee7de41bb76cc49fe834afd92f47df98f4ad4af346ed`  
		Last Modified: Sat, 10 Nov 2018 01:48:41 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22a09c6484c7eb1556ef0aec00f953655a79642965f448701d36d8a8a67fe91a`  
		Last Modified: Sat, 10 Nov 2018 01:48:41 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:596be3eb986c4b273c3643d3f74ca105793fd77184b0c151e12a1b2b0505c6da`  
		Last Modified: Sat, 10 Nov 2018 01:48:54 GMT  
		Size: 35.8 MB (35753338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.31` - linux; arm variant v5

```console
$ docker pull mediawiki@sha256:0cca2d25f8d7f2d6f98cb8fbce4ba6f1bf4059f50cd8cadc4848c1595cfdd917
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.3 MB (216277736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37f4c17afd3aa650145183c8fd63d9335eca7ac2cb6db50713e11dfef20b727e`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 16 Oct 2018 08:55:22 GMT
ADD file:8f2148adabc29587e17b50138f305f39e94e0e2bd9211a9f913fef56013ac35a in / 
# Tue, 16 Oct 2018 08:55:23 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 08:59:24 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 16 Oct 2018 08:59:25 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 16 Oct 2018 09:00:38 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 16 Oct 2018 09:00:40 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 16 Oct 2018 09:00:41 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 16 Oct 2018 09:01:03 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 09:01:04 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 16 Oct 2018 09:01:04 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 16 Oct 2018 09:01:05 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 16 Oct 2018 09:01:06 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 16 Oct 2018 09:01:08 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 16 Oct 2018 09:01:09 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 16 Oct 2018 09:01:09 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 16 Oct 2018 09:01:09 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Tue, 16 Oct 2018 09:01:10 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 16 Oct 2018 09:01:10 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 16 Oct 2018 09:01:10 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 16 Oct 2018 09:01:11 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Sat, 10 Nov 2018 10:21:06 GMT
ENV PHP_VERSION=7.2.12
# Sat, 10 Nov 2018 10:21:07 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.12.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.12.tar.xz.asc/from/this/mirror
# Sat, 10 Nov 2018 10:21:07 GMT
ENV PHP_SHA256=989c04cc879ee71a5e1131db867f3c5102f1f7565f805e2bb8bde33f93147fe1 PHP_MD5=
# Sat, 10 Nov 2018 10:21:23 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 10 Nov 2018 10:21:23 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 10 Nov 2018 10:24:22 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 10 Nov 2018 10:24:24 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Sat, 10 Nov 2018 10:24:25 GMT
RUN docker-php-ext-enable sodium
# Sat, 10 Nov 2018 10:24:25 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 10 Nov 2018 10:24:26 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 10 Nov 2018 10:24:26 GMT
WORKDIR /var/www/html
# Sat, 10 Nov 2018 10:24:26 GMT
EXPOSE 80/tcp
# Sat, 10 Nov 2018 10:24:27 GMT
CMD ["apache2-foreground"]
# Sat, 10 Nov 2018 12:27:29 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python3 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 10 Nov 2018 12:30:39 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Sat, 10 Nov 2018 12:30:59 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu 	&& docker-php-ext-enable apcu
# Sat, 10 Nov 2018 12:31:04 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 10 Nov 2018 12:31:05 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 10 Nov 2018 12:31:13 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.31
# Sat, 10 Nov 2018 12:31:13 GMT
ENV MEDIAWIKI_BRANCH=REL1_31
# Sat, 10 Nov 2018 12:31:14 GMT
ENV MEDIAWIKI_VERSION=1.31.1
# Sat, 10 Nov 2018 12:31:14 GMT
ENV MEDIAWIKI_SHA512=ee49649cc37d0a7d45a7c6d90c822c2a595df290be2b5bf085affbec3318768700a458a6e5b5b7e437651400b9641424429d6d304f870c22ec63fae86ffc5152
# Sat, 10 Nov 2018 12:31:33 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:4b7ffdf9817f718c84be550e8edf757070396d69165fa729c6ddd4e775428eb2`  
		Last Modified: Tue, 16 Oct 2018 09:04:44 GMT  
		Size: 21.2 MB (21162965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20460378a8f38aacfeb9a0bcf3a38abbaebb8845cf0f7ca8c5f8ccb51f3ba5d8`  
		Last Modified: Tue, 16 Oct 2018 10:20:49 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecb7e6fb4c6270cb10f9b8f7aa93b2d05eca8e4ca542ae6b884f3d507b3f2c06`  
		Last Modified: Tue, 16 Oct 2018 10:21:09 GMT  
		Size: 57.4 MB (57447518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ad837638c5f551ce2ed0722f0aa0206be6b2503befb732461de20785c38ed13`  
		Last Modified: Tue, 16 Oct 2018 10:20:48 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02b8207a3bfbe878b8a8d846a774c3ce482e349d482e7084559f88b12618ffb1`  
		Last Modified: Tue, 16 Oct 2018 10:20:52 GMT  
		Size: 16.7 MB (16650918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7198acceff99d48ae548b76f8e9eb26d52d8a63521d95d7db38554594b5d1223`  
		Last Modified: Tue, 16 Oct 2018 10:20:47 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e62a81208df875e54460875df6afbac9065b4afc56282d9fb756acffa5656a7`  
		Last Modified: Tue, 16 Oct 2018 10:20:46 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5a783b15fb65ce49afc889cc25e5744af9318920f2c2b5419dc1d6209f71d6a`  
		Last Modified: Tue, 16 Oct 2018 10:20:46 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b8615ebbc988042c7c4db62198beea70acc923ccc2b3f98aba803a3947a68fa`  
		Last Modified: Tue, 16 Oct 2018 10:20:46 GMT  
		Size: 510.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6d2a8b451c69a9153a5a2299fa76a6f68795ea547934e6343606c83d31f3f9f`  
		Last Modified: Sat, 10 Nov 2018 10:42:43 GMT  
		Size: 12.5 MB (12489686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:628ae252af1a36dcb9335d209a069607c24ef3e721befd4f715b3481f543185f`  
		Last Modified: Sat, 10 Nov 2018 10:42:40 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7696a1ee3939f9bbbc0d5313ae63a81fdc28b6e3dd30fde3ce3e36de4651126`  
		Last Modified: Sat, 10 Nov 2018 10:42:45 GMT  
		Size: 14.8 MB (14789407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a210ca29558bd9fd22ea689556a1fa9d481d405e32a8fbc91b26a30566348ff`  
		Last Modified: Sat, 10 Nov 2018 10:42:40 GMT  
		Size: 2.2 KB (2192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f871e2386bb1b24ecac0b1f2bd1258f889c8bfdbf7bf9c64e2b6f6e3031973b`  
		Last Modified: Sat, 10 Nov 2018 10:42:40 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8e6c8197ba9f797dc43c28fa42eef615b88c75dd631b3cfa9c32fdd339be8e6`  
		Last Modified: Sat, 10 Nov 2018 10:42:40 GMT  
		Size: 903.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6c7c18b0416cf551bfc55cdf8bcf8958c4b64680babbb075301c00ee1f515e7`  
		Last Modified: Sat, 10 Nov 2018 12:32:24 GMT  
		Size: 55.9 MB (55895178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96b394aaa5ba59d916cd1fa2f75ace3f7eb82340428613d77ef33bc9711a93b7`  
		Last Modified: Sat, 10 Nov 2018 12:32:05 GMT  
		Size: 1.7 MB (1687916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10e2a4b7b22851cbb4ea86f35bc077512912b65fb1007e6a35d1bfad9c1d335f`  
		Last Modified: Sat, 10 Nov 2018 12:32:05 GMT  
		Size: 393.0 KB (393010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8f2101ffac770c11f14c7e1d8878c97ed70b040f91b01c2b25f14023a3c8bee`  
		Last Modified: Sat, 10 Nov 2018 12:32:05 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34bc760a22f9124017bb1ff861f37905528b0ef06413082b8a4ca101f270e512`  
		Last Modified: Sat, 10 Nov 2018 12:32:05 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:704c7cbd7eff3dd946315fbea52417012b1864d0e7fbaad1d1063578730b0bdf`  
		Last Modified: Sat, 10 Nov 2018 12:32:24 GMT  
		Size: 35.8 MB (35753834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.31` - linux; arm variant v7

```console
$ docker pull mediawiki@sha256:f85a6008eb59054e7af130a286a8e14fa0e133862f082ae21ffac4c10e93cad1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.7 MB (206676783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb4d374b8dc475c09f0003ebce3a4c221294069b92edf6122a29351522ca2434`
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
# Tue, 16 Oct 2018 12:31:35 GMT
ENV PHP_VERSION=7.2.11
# Tue, 16 Oct 2018 12:31:36 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.11.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.11.tar.xz.asc/from/this/mirror
# Tue, 16 Oct 2018 12:31:36 GMT
ENV PHP_SHA256=da1a705c0bc46410e330fc6baa967666c8cd2985378fb9707c01a8e33b01d985 PHP_MD5=
# Tue, 16 Oct 2018 12:31:50 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 16 Oct 2018 12:31:51 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 16 Oct 2018 12:34:37 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 16 Oct 2018 12:34:39 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Tue, 16 Oct 2018 12:34:40 GMT
RUN docker-php-ext-enable sodium
# Tue, 16 Oct 2018 12:34:41 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 16 Oct 2018 12:34:41 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 16 Oct 2018 12:34:42 GMT
WORKDIR /var/www/html
# Tue, 16 Oct 2018 12:34:42 GMT
EXPOSE 80/tcp
# Tue, 16 Oct 2018 12:34:43 GMT
CMD ["apache2-foreground"]
# Tue, 16 Oct 2018 15:42:05 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python3 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 16 Oct 2018 15:44:59 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Tue, 16 Oct 2018 15:45:15 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu 	&& docker-php-ext-enable apcu
# Tue, 16 Oct 2018 15:45:16 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 16 Oct 2018 15:45:18 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Tue, 16 Oct 2018 15:45:18 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.31
# Tue, 16 Oct 2018 15:45:19 GMT
ENV MEDIAWIKI_BRANCH=REL1_31
# Tue, 16 Oct 2018 15:45:19 GMT
ENV MEDIAWIKI_VERSION=1.31.1
# Tue, 16 Oct 2018 15:45:19 GMT
ENV MEDIAWIKI_SHA512=ee49649cc37d0a7d45a7c6d90c822c2a595df290be2b5bf085affbec3318768700a458a6e5b5b7e437651400b9641424429d6d304f870c22ec63fae86ffc5152
# Tue, 16 Oct 2018 15:45:37 GMT
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
	-	`sha256:d03f74c911913f4aa68e96a8cb2444d85dc33d3b2d8ba5e1b0f12f94e5286121`  
		Last Modified: Tue, 16 Oct 2018 13:26:46 GMT  
		Size: 12.5 MB (12479383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a04cdad87bc3b7a5026c880b6e397465d27c0f0294938b69fcf7e58070babfcd`  
		Last Modified: Tue, 16 Oct 2018 13:26:43 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:428c54d2010e5274ed09c896eea424977cd5493fbc8a20ad5e71adfa868a539d`  
		Last Modified: Tue, 16 Oct 2018 13:26:48 GMT  
		Size: 13.9 MB (13927117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2edf7092f52263f330a951d3ef9051c580cb63b6712333b8080fd2350a8d622a`  
		Last Modified: Tue, 16 Oct 2018 13:26:43 GMT  
		Size: 2.2 KB (2191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4237cc7586b0378fd2144bc20a38b562c77bb762546581cef2753f0b678de164`  
		Last Modified: Tue, 16 Oct 2018 13:26:43 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6e1301067258438305c74d9ed9d845734d183bab1c6a053f25c175ab2dcce1b`  
		Last Modified: Tue, 16 Oct 2018 13:26:44 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:033abcf4a2df14f959cbaa1cb907bf95890e8eb48f635713da2981a922130643`  
		Last Modified: Tue, 16 Oct 2018 15:51:48 GMT  
		Size: 53.5 MB (53489566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3899cc11fca9fd65a23516801e6d483ff4e8a8ace0c3bbad6d1bf773923103b`  
		Last Modified: Tue, 16 Oct 2018 15:51:23 GMT  
		Size: 1.6 MB (1636865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed43eef1f4cd79e0d447d0f83b309ae8353fd132816f0450445fa66601158125`  
		Last Modified: Tue, 16 Oct 2018 15:51:25 GMT  
		Size: 387.4 KB (387429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64055abfad5888369e1ed8689f72a6f3c4940d50bc7d21ce0d8caa92690c078c`  
		Last Modified: Tue, 16 Oct 2018 15:51:23 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9e088e420efc3d714c4e46498213e17a1efc6e4082b58f92b63d3d73ad955f`  
		Last Modified: Tue, 16 Oct 2018 15:51:23 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2a8bccaf4444ec3affebbc4001e61c118f727488386655736235f1f2d671954`  
		Last Modified: Tue, 16 Oct 2018 15:51:42 GMT  
		Size: 35.8 MB (35753944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.31` - linux; arm64 variant v8

```console
$ docker pull mediawiki@sha256:44ffe8d4078d33a6ca1a4799cfdf44a2c0025c9cd21d043a4f38d90257633929
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.1 MB (208080243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b208e944cb7e755680b7263bb4f7054d90055588f8cf8f9085f55ccd5fa0c900`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 16 Oct 2018 08:43:45 GMT
ADD file:e83c09a5cfc1cecaeba6b736737d551fe0f5d3f204ec3fc984fe768003774f81 in / 
# Tue, 16 Oct 2018 08:43:46 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 09:37:09 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 16 Oct 2018 09:37:10 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 16 Oct 2018 09:38:24 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 16 Oct 2018 09:38:25 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 16 Oct 2018 09:38:27 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 16 Oct 2018 09:49:43 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 09:49:44 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 16 Oct 2018 09:49:44 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 16 Oct 2018 09:49:46 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 16 Oct 2018 09:49:47 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 16 Oct 2018 09:49:49 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 16 Oct 2018 09:49:51 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 16 Oct 2018 09:49:51 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 16 Oct 2018 09:49:52 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Tue, 16 Oct 2018 09:49:53 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 16 Oct 2018 09:49:53 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 16 Oct 2018 09:49:54 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 16 Oct 2018 13:56:08 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 16 Oct 2018 13:56:09 GMT
ENV PHP_VERSION=7.0.32
# Tue, 16 Oct 2018 13:56:10 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.32.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.32.tar.xz.asc/from/this/mirror
# Tue, 16 Oct 2018 13:56:10 GMT
ENV PHP_SHA256=ff6f62afeb32c71b3b89ecbd42950ef6c5e0c329cc6e1c58ffac47e6f1f883c4 PHP_MD5=
# Tue, 16 Oct 2018 13:56:54 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 16 Oct 2018 13:56:55 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 16 Oct 2018 14:04:23 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 16 Oct 2018 14:04:25 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Tue, 16 Oct 2018 14:04:26 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 16 Oct 2018 14:04:27 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 16 Oct 2018 14:04:28 GMT
WORKDIR /var/www/html
# Tue, 16 Oct 2018 14:04:33 GMT
EXPOSE 80/tcp
# Tue, 16 Oct 2018 14:04:34 GMT
CMD ["apache2-foreground"]
# Wed, 17 Oct 2018 06:04:36 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 17 Oct 2018 06:07:58 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Wed, 17 Oct 2018 06:08:19 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Wed, 17 Oct 2018 06:08:22 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 17 Oct 2018 06:08:24 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Wed, 17 Oct 2018 06:08:32 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.27
# Wed, 17 Oct 2018 06:08:32 GMT
ENV MEDIAWIKI_BRANCH=REL1_27
# Wed, 17 Oct 2018 06:08:33 GMT
ENV MEDIAWIKI_VERSION=1.27.5
# Wed, 17 Oct 2018 06:08:34 GMT
ENV MEDIAWIKI_SHA512=2f341ed5afab24b81c315db6bcc58dd617f95231f71408c08bb2a8b974c95b7edd93d0f3c857f24058111c3228b9919a0f1c2fd2f85be940dc571e390225027a
# Wed, 17 Oct 2018 06:08:45 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:141796bfcf0d5a5edb072138e517bf85deef4f47f40afb51ba8705bec3b921dd`  
		Last Modified: Tue, 16 Oct 2018 08:50:53 GMT  
		Size: 20.3 MB (20331585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa887e40ae8a2b78a8eba6e16f2902853327c922f0110c4bd2e4728fb79b305b`  
		Last Modified: Tue, 16 Oct 2018 15:06:53 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99271cba459dd39a663363166e510f7cc1ebf18b221d33bb6c4e26d54774a5d7`  
		Last Modified: Tue, 16 Oct 2018 15:08:26 GMT  
		Size: 57.6 MB (57596184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:440b75b2132ae75a804754d6dd4f874b688e2f6a1d034fd0d2de6e496b8f1f0b`  
		Last Modified: Tue, 16 Oct 2018 15:06:52 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9716126acdb685c5ea84948fb47306c1b2d74752160d8de98d14cac45c1734a`  
		Last Modified: Tue, 16 Oct 2018 15:10:47 GMT  
		Size: 16.7 MB (16709722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92cd9f340623c79febab023e7bed21713ff7c5a54222f6e864d484df51e5eb5e`  
		Last Modified: Tue, 16 Oct 2018 15:10:15 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f4aca00aec726971992cfa7cb081238ab6d32d57c69cf024ee2690cef29374d`  
		Last Modified: Tue, 16 Oct 2018 15:10:14 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef70a607bae65cff09c6a3fd4add05727d00f023e83540e9823c8c73ce65afba`  
		Last Modified: Tue, 16 Oct 2018 15:10:14 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3482f362267a35679e02d84771ac1e78594ccb8598b70cfdb652909f558ae451`  
		Last Modified: Tue, 16 Oct 2018 15:10:13 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50624813ae71a53d58d6982af86920e9fdbaec7b06c8329e4ea88181ea682607`  
		Last Modified: Tue, 16 Oct 2018 15:43:35 GMT  
		Size: 12.4 MB (12378440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:154f5759e9b16e9a04f92afd14a7b5d5c2a92f781638c704f740986d5232caca`  
		Last Modified: Tue, 16 Oct 2018 15:43:33 GMT  
		Size: 502.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:116563a0376986b0dffd04b739a472b46be9e087b0e1aff085c5ee17cf08e287`  
		Last Modified: Tue, 16 Oct 2018 15:43:39 GMT  
		Size: 13.1 MB (13092238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:204e51532312e737fb45fedfafbff35b2381bbd51ed63b8bedadd5b79c86a8fc`  
		Last Modified: Tue, 16 Oct 2018 15:43:33 GMT  
		Size: 2.2 KB (2193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6520db0429b6facca4c9fed9a535ab187a6755dde45ba303c81da97db840095f`  
		Last Modified: Tue, 16 Oct 2018 15:43:33 GMT  
		Size: 905.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa8e3dce0d2b00c07b8b1d81365aba40a107ee790a3196a44c6e91de872d741b`  
		Last Modified: Wed, 17 Oct 2018 06:12:26 GMT  
		Size: 54.1 MB (54149817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad93e1fe64d7067a9db1021e3c4e3eaab44558105ebde6a50ac0f9ba3a5645e2`  
		Last Modified: Wed, 17 Oct 2018 06:12:05 GMT  
		Size: 1.5 MB (1486658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ac1f5aa91252d9dafcc4e5ba74eef3f7c3fa65cb1931cbe39ab155c07031f73`  
		Last Modified: Wed, 17 Oct 2018 06:12:02 GMT  
		Size: 395.0 KB (394970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56946bf185cff149538ad11ea4912945b25b68e8a7cab8f2457efd2701cef4d9`  
		Last Modified: Wed, 17 Oct 2018 06:12:02 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85b5171d7d075f37055f4a31e64767d5854ad0057627cd4b2564dd3790d838d2`  
		Last Modified: Wed, 17 Oct 2018 06:12:02 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f7948973641c4f1ad24c42af64c7125499a4f05252ec0d0507b6567ebef26f8`  
		Last Modified: Wed, 17 Oct 2018 06:12:24 GMT  
		Size: 31.9 MB (31933727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.31` - linux; 386

```console
$ docker pull mediawiki@sha256:b21d1d70242702efdbb70168a3c286b30076caec26c6628394dc286be4ef5da1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.3 MB (229329317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e869b7784bacd85cc3b9f01934da9edaa4e408bd1d1e3e46f97553d3dc015024`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 16 Oct 2018 10:49:05 GMT
ADD file:a71ef0e9adb528ae2dc5ca3395654522c23762d8936a4902378c6749bb357582 in / 
# Tue, 16 Oct 2018 10:49:05 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 11:59:35 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 16 Oct 2018 11:59:36 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 16 Oct 2018 12:00:22 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:00:23 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 16 Oct 2018 12:00:24 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 16 Oct 2018 12:11:59 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:11:59 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 16 Oct 2018 12:12:00 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 16 Oct 2018 12:12:01 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 16 Oct 2018 12:12:02 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 16 Oct 2018 12:12:03 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 16 Oct 2018 12:12:04 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 16 Oct 2018 12:12:04 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 16 Oct 2018 12:12:05 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Tue, 16 Oct 2018 12:12:05 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 16 Oct 2018 12:12:05 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 16 Oct 2018 12:12:05 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 16 Oct 2018 17:29:54 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 16 Oct 2018 17:29:54 GMT
ENV PHP_VERSION=7.0.32
# Tue, 16 Oct 2018 17:29:55 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.32.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.32.tar.xz.asc/from/this/mirror
# Tue, 16 Oct 2018 17:29:55 GMT
ENV PHP_SHA256=ff6f62afeb32c71b3b89ecbd42950ef6c5e0c329cc6e1c58ffac47e6f1f883c4 PHP_MD5=
# Tue, 16 Oct 2018 17:30:07 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 16 Oct 2018 17:30:07 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 16 Oct 2018 17:34:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 16 Oct 2018 17:34:07 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Tue, 16 Oct 2018 17:34:07 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 16 Oct 2018 17:34:08 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 16 Oct 2018 17:34:08 GMT
WORKDIR /var/www/html
# Tue, 16 Oct 2018 17:34:08 GMT
EXPOSE 80/tcp
# Tue, 16 Oct 2018 17:34:08 GMT
CMD ["apache2-foreground"]
# Wed, 17 Oct 2018 07:58:33 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 17 Oct 2018 07:59:59 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Wed, 17 Oct 2018 08:00:08 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Wed, 17 Oct 2018 08:00:09 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 17 Oct 2018 08:00:09 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Wed, 17 Oct 2018 08:00:10 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.27
# Wed, 17 Oct 2018 08:00:10 GMT
ENV MEDIAWIKI_BRANCH=REL1_27
# Wed, 17 Oct 2018 08:00:10 GMT
ENV MEDIAWIKI_VERSION=1.27.5
# Wed, 17 Oct 2018 08:00:10 GMT
ENV MEDIAWIKI_SHA512=2f341ed5afab24b81c315db6bcc58dd617f95231f71408c08bb2a8b974c95b7edd93d0f3c857f24058111c3228b9919a0f1c2fd2f85be940dc571e390225027a
# Wed, 17 Oct 2018 08:00:18 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:2b7bcb618c4033f37486fd700e6d0debf2260935f888a192119c41eaddd29978`  
		Last Modified: Tue, 16 Oct 2018 11:06:15 GMT  
		Size: 23.1 MB (23126605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ac9f5e161441372e549d094f25b4640689548d53bb47c34a8ced01a74b8ad6f`  
		Last Modified: Tue, 16 Oct 2018 19:08:04 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cac64c78cd80e7e59f4a0fd49c7632e4799f427a439c1339df81ad969a7aed3`  
		Last Modified: Tue, 16 Oct 2018 19:08:39 GMT  
		Size: 71.5 MB (71484645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a7cfe59c8cc409c1eb116e2905e9a239f1f1a26128b6fd15cf1217563b373e4`  
		Last Modified: Tue, 16 Oct 2018 19:08:04 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99051976b849498ac53e2ffcd090cb770169576c8fe2ba03b72ec38559319cff`  
		Last Modified: Tue, 16 Oct 2018 19:10:57 GMT  
		Size: 17.6 MB (17562598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8baa008090db722001228a8b24993ff76cc41b4f3c5ee668b4ba3a9a91a8beb`  
		Last Modified: Tue, 16 Oct 2018 19:10:51 GMT  
		Size: 1.2 KB (1243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8f645450e0e3cf05fbcd8a2ca3ca89deb3a97661b07a8e11130055680df3138`  
		Last Modified: Tue, 16 Oct 2018 19:11:16 GMT  
		Size: 429.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a636e140725a9abf6bfca67dce52d8d0729b612493c86addf510f88cd41ff73`  
		Last Modified: Tue, 16 Oct 2018 19:10:50 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c899e0d2536fbfcfaa4ef00f9497a5891261cfb1fca3e776a428e461db7ee410`  
		Last Modified: Tue, 16 Oct 2018 19:10:50 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0cba1ef0564202ac1445408ed856bfc567867695100138b6278c4a50680cf7a`  
		Last Modified: Tue, 16 Oct 2018 19:49:33 GMT  
		Size: 12.4 MB (12379305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ca96ddbed1b213bc6b7cdd27cc821791a1a1594630bd9afbae4b648ee450255`  
		Last Modified: Tue, 16 Oct 2018 19:49:31 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b970950633084b70af418e3cf114d23a70f27e9e8fa032a907328f795aef1b81`  
		Last Modified: Tue, 16 Oct 2018 19:49:36 GMT  
		Size: 14.4 MB (14393946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add8f03f18325d56159cd2f3fcad9119a2bab20fd859fde0738145f82e5c6b8f`  
		Last Modified: Tue, 16 Oct 2018 19:49:31 GMT  
		Size: 2.2 KB (2193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c7c94c298264615aa9da4abf6b9e47f4b11d3c699c9d6a624e04f84679855ad`  
		Last Modified: Tue, 16 Oct 2018 19:49:31 GMT  
		Size: 903.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05cdbec925eca59dd43b5ffcb57c08abbae8d13d76179431dbc03b1041018770`  
		Last Modified: Wed, 17 Oct 2018 08:03:13 GMT  
		Size: 56.5 MB (56499573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb6e8e69dc478801be87de36f35f63ac515bae458b89124dbce6b3699a00296`  
		Last Modified: Wed, 17 Oct 2018 08:02:35 GMT  
		Size: 1.6 MB (1552701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d0ff586df7ffffb2c50c9cd9c0ed992526ca2ef675a027011984d3e2e63ae83`  
		Last Modified: Wed, 17 Oct 2018 08:02:34 GMT  
		Size: 389.4 KB (389353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28fc31eb8ac64e77e115c05b989b5f57b1a9f7f20cb66d1f997c54aa74fca7dc`  
		Last Modified: Wed, 17 Oct 2018 08:02:34 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b257eceaa8885e119f77ac04ebf8473d4e820244c945abefb769c9abe444a6e`  
		Last Modified: Wed, 17 Oct 2018 08:02:34 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79cb8aad099aaa347b0c7f6b94c0cadcd8f36533710f7a793b86a4660ca59184`  
		Last Modified: Wed, 17 Oct 2018 08:02:51 GMT  
		Size: 31.9 MB (31933705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.31` - linux; ppc64le

```console
$ docker pull mediawiki@sha256:e76eacfa4ae216c9b7f4e6165ad7fa554f544f47ee5ae4d8b0d46e602777552f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.4 MB (218449205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:814f618dcdcccb99814687061d3b8b49e32ef553c89429c2a0a130c4577e6570`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 16 Oct 2018 08:22:25 GMT
ADD file:b1fa1d0ffa2b206311dfd95642d74c3312565a1ec2e6e3a2197bfd2a4b3de6c6 in / 
# Tue, 16 Oct 2018 08:22:30 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 08:36:20 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 16 Oct 2018 08:36:20 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 16 Oct 2018 08:38:14 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 16 Oct 2018 08:38:16 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 16 Oct 2018 08:38:19 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 16 Oct 2018 08:47:02 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 08:47:04 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 16 Oct 2018 08:47:06 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 16 Oct 2018 08:47:12 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 16 Oct 2018 08:47:15 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 16 Oct 2018 08:47:21 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 16 Oct 2018 08:47:25 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 16 Oct 2018 08:47:26 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 16 Oct 2018 08:47:27 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Tue, 16 Oct 2018 08:47:28 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 16 Oct 2018 08:47:30 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 16 Oct 2018 08:47:33 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 16 Oct 2018 11:37:55 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 16 Oct 2018 11:37:56 GMT
ENV PHP_VERSION=7.0.32
# Tue, 16 Oct 2018 11:37:57 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.32.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.32.tar.xz.asc/from/this/mirror
# Tue, 16 Oct 2018 11:37:58 GMT
ENV PHP_SHA256=ff6f62afeb32c71b3b89ecbd42950ef6c5e0c329cc6e1c58ffac47e6f1f883c4 PHP_MD5=
# Tue, 16 Oct 2018 11:38:37 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 16 Oct 2018 11:38:41 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 16 Oct 2018 11:42:36 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 16 Oct 2018 11:42:38 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Tue, 16 Oct 2018 11:42:39 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 16 Oct 2018 11:42:42 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 16 Oct 2018 11:42:43 GMT
WORKDIR /var/www/html
# Tue, 16 Oct 2018 11:42:44 GMT
EXPOSE 80/tcp
# Tue, 16 Oct 2018 11:42:44 GMT
CMD ["apache2-foreground"]
# Tue, 16 Oct 2018 20:12:30 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 16 Oct 2018 20:14:29 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Tue, 16 Oct 2018 20:14:47 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Tue, 16 Oct 2018 20:14:54 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 16 Oct 2018 20:14:59 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Tue, 16 Oct 2018 20:15:00 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.27
# Tue, 16 Oct 2018 20:15:01 GMT
ENV MEDIAWIKI_BRANCH=REL1_27
# Tue, 16 Oct 2018 20:15:03 GMT
ENV MEDIAWIKI_VERSION=1.27.5
# Tue, 16 Oct 2018 20:15:04 GMT
ENV MEDIAWIKI_SHA512=2f341ed5afab24b81c315db6bcc58dd617f95231f71408c08bb2a8b974c95b7edd93d0f3c857f24058111c3228b9919a0f1c2fd2f85be940dc571e390225027a
# Tue, 16 Oct 2018 20:15:27 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:202f659db3e53c01ac947538d8b37251e9fa16c4a6a699dc6c2a8910afcdfed4`  
		Last Modified: Tue, 16 Oct 2018 08:30:59 GMT  
		Size: 22.7 MB (22740583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba0f6d499d48eb19dc9d2e6453db815f1d64074f2775cbd9cac4928c0461cdbc`  
		Last Modified: Tue, 16 Oct 2018 12:20:25 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f354790bdfa97d0b204ca9cf4402d437e713049020362b7ad4af49ef47efb984`  
		Last Modified: Tue, 16 Oct 2018 12:21:25 GMT  
		Size: 61.8 MB (61809966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:745377e23f5d138b115edff3b4ebf7c90114d7d658bff2cd8453aaffc66a04db`  
		Last Modified: Tue, 16 Oct 2018 12:20:28 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6ca68ed7b31a0303cdb6d7669c24c6dedb55ddece4d992172fb000dc3f93eeb`  
		Last Modified: Tue, 16 Oct 2018 12:23:21 GMT  
		Size: 17.3 MB (17348500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba60179e94e0e6514a8bd50455affa30a26a572b16013a2b01ea060c2aaa60d3`  
		Last Modified: Tue, 16 Oct 2018 12:23:07 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9292d4db20fce2c69be0ea52392b7616f1846e01f9b70e0aadff84c1084bf254`  
		Last Modified: Tue, 16 Oct 2018 12:23:01 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a20d33fb196e2e93548afbb4d63cb3d16c02b0d6d342e94e77c6beca290525`  
		Last Modified: Tue, 16 Oct 2018 12:22:59 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c4ea029b99fcbbd8bfbfd74bd42ca81a84fbee060a87904f570a192fc958db5`  
		Last Modified: Tue, 16 Oct 2018 12:22:57 GMT  
		Size: 517.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c9720eb00827218a025ca83a1200da8fe81ff06a7addc7bb5bbe67a7135ce16`  
		Last Modified: Tue, 16 Oct 2018 12:48:36 GMT  
		Size: 12.4 MB (12378819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5df700c2238de8679c6dbb08bf02760e4e40bccf6ccaf35af683095dc66198ea`  
		Last Modified: Tue, 16 Oct 2018 12:48:33 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22b62e69dd460d061013a0b345cbdcfeb9adedbb59d021732cfca2a21eaf10de`  
		Last Modified: Tue, 16 Oct 2018 12:48:40 GMT  
		Size: 13.7 MB (13702592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc8b0e1276d18fb2703450c458d281a06a6bf5f57d56bfafa78804c108cfa33c`  
		Last Modified: Tue, 16 Oct 2018 12:48:33 GMT  
		Size: 2.2 KB (2194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1210917658a99e151617ddf0dded555475f0ec8ce36cd98daa699c042519fe8`  
		Last Modified: Tue, 16 Oct 2018 12:48:34 GMT  
		Size: 906.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e406cec386b4c449c6428e2ae5dc6f7677d1f5d173fb2b536a3d71ae16dfc121`  
		Last Modified: Tue, 16 Oct 2018 20:18:11 GMT  
		Size: 56.6 MB (56596313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f43efb949dce69d5327e901bc97faa44c380d96012f814fa33740e666bc1ab3`  
		Last Modified: Tue, 16 Oct 2018 20:17:52 GMT  
		Size: 1.5 MB (1530906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b93074650452c34e4a3bd7d8d9fe167cf458ae6688dc190a14f7ca5eedf8083`  
		Last Modified: Tue, 16 Oct 2018 20:17:52 GMT  
		Size: 400.4 KB (400382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c082530349e505f3093d4c9bec2ed7622e3f8f82f27cb4b700eeb6c1a1423130`  
		Last Modified: Tue, 16 Oct 2018 20:17:51 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69ee635cd230017d2bc1b368f6d42edd24f93f85202d8d24950baef9bfbd0001`  
		Last Modified: Tue, 16 Oct 2018 20:17:51 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65882f587f0e22183aa5dc102c5201529a1306d81e0cdd8b6359dd681854d123`  
		Last Modified: Tue, 16 Oct 2018 20:18:05 GMT  
		Size: 31.9 MB (31934083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mediawiki:1.31.1`

```console
$ docker pull mediawiki@sha256:584e1f1992cb749c4725a967211b1453013980d63636f2985fc35cc3ff908893
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
$ docker pull mediawiki@sha256:520c140b39c77d15958d07ac034ccbc26f0a9e7a31f2584c1a4d14c0db4aaf79
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.4 MB (231405854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c5644999f6f3211e1b9c4eeda99ed614abd064fdd01f65923578921982b80b9`
-	Entrypoint: `["docker-php-entrypoint"]`
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
# Fri, 09 Nov 2018 23:42:44 GMT
ENV PHP_VERSION=7.2.12
# Fri, 09 Nov 2018 23:42:44 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.12.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.12.tar.xz.asc/from/this/mirror
# Fri, 09 Nov 2018 23:42:44 GMT
ENV PHP_SHA256=989c04cc879ee71a5e1131db867f3c5102f1f7565f805e2bb8bde33f93147fe1 PHP_MD5=
# Fri, 09 Nov 2018 23:42:53 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 09 Nov 2018 23:42:54 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 09 Nov 2018 23:46:43 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 09 Nov 2018 23:46:54 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Fri, 09 Nov 2018 23:47:06 GMT
RUN docker-php-ext-enable sodium
# Fri, 09 Nov 2018 23:47:07 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 09 Nov 2018 23:47:07 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 09 Nov 2018 23:47:07 GMT
WORKDIR /var/www/html
# Fri, 09 Nov 2018 23:47:08 GMT
EXPOSE 80/tcp
# Fri, 09 Nov 2018 23:47:08 GMT
CMD ["apache2-foreground"]
# Sat, 10 Nov 2018 01:46:14 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python3 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 10 Nov 2018 01:47:56 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Sat, 10 Nov 2018 01:48:05 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu 	&& docker-php-ext-enable apcu
# Sat, 10 Nov 2018 01:48:06 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 10 Nov 2018 01:48:07 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 10 Nov 2018 01:48:07 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.31
# Sat, 10 Nov 2018 01:48:07 GMT
ENV MEDIAWIKI_BRANCH=REL1_31
# Sat, 10 Nov 2018 01:48:08 GMT
ENV MEDIAWIKI_VERSION=1.31.1
# Sat, 10 Nov 2018 01:48:08 GMT
ENV MEDIAWIKI_SHA512=ee49649cc37d0a7d45a7c6d90c822c2a595df290be2b5bf085affbec3318768700a458a6e5b5b7e437651400b9641424429d6d304f870c22ec63fae86ffc5152
# Sat, 10 Nov 2018 01:48:14 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
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
	-	`sha256:c03bc06afbf117528a1f87ef7f70e9a98afa6fb409e87a525b77f3b24d282d42`  
		Last Modified: Sat, 10 Nov 2018 00:46:49 GMT  
		Size: 12.5 MB (12491693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4be3d516ef4a0873ef1e58afda67228eaeeade4213602bf2325dc2645aab8de3`  
		Last Modified: Sat, 10 Nov 2018 00:46:47 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25253f4c7678aed8e63c2c9b67d2fdf3b0284a56569287e3bd8744c0c41aeb0e`  
		Last Modified: Sat, 10 Nov 2018 00:46:50 GMT  
		Size: 15.6 MB (15616443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f4ee332f37f73fbfb8fa1a1557157aa166c8d5cc3813ca2108b3978fae6f56e`  
		Last Modified: Sat, 10 Nov 2018 00:46:47 GMT  
		Size: 2.2 KB (2192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc5cc2e81ed4b8c66a7ea178d4bfabb76e0a85cd124fcde6998d42d26f505345`  
		Last Modified: Sat, 10 Nov 2018 00:46:47 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2d05c20f6c8331a04994018516d98b4d90b108ed67bde9e2413e61da41658d6`  
		Last Modified: Sat, 10 Nov 2018 00:46:47 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec34cdc7398f11d10bb7e4084a0353edf0f31787850015af8280d1927e2aeb52`  
		Last Modified: Sat, 10 Nov 2018 01:48:56 GMT  
		Size: 58.3 MB (58336776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46522a5722d487553df531bac72657a3b86e65b9bedba4a3262ab8c3f0dff926`  
		Last Modified: Sat, 10 Nov 2018 01:48:42 GMT  
		Size: 1.8 MB (1757313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49b5c23f571029ec2ed24005b6f0da402ba766e28d891ad252e6469ffb04446d`  
		Last Modified: Sat, 10 Nov 2018 01:48:42 GMT  
		Size: 400.9 KB (400902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:878de1a45e3ed16e43daee7de41bb76cc49fe834afd92f47df98f4ad4af346ed`  
		Last Modified: Sat, 10 Nov 2018 01:48:41 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22a09c6484c7eb1556ef0aec00f953655a79642965f448701d36d8a8a67fe91a`  
		Last Modified: Sat, 10 Nov 2018 01:48:41 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:596be3eb986c4b273c3643d3f74ca105793fd77184b0c151e12a1b2b0505c6da`  
		Last Modified: Sat, 10 Nov 2018 01:48:54 GMT  
		Size: 35.8 MB (35753338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.31.1` - linux; arm variant v5

```console
$ docker pull mediawiki@sha256:0cca2d25f8d7f2d6f98cb8fbce4ba6f1bf4059f50cd8cadc4848c1595cfdd917
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.3 MB (216277736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37f4c17afd3aa650145183c8fd63d9335eca7ac2cb6db50713e11dfef20b727e`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 16 Oct 2018 08:55:22 GMT
ADD file:8f2148adabc29587e17b50138f305f39e94e0e2bd9211a9f913fef56013ac35a in / 
# Tue, 16 Oct 2018 08:55:23 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 08:59:24 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 16 Oct 2018 08:59:25 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 16 Oct 2018 09:00:38 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 16 Oct 2018 09:00:40 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 16 Oct 2018 09:00:41 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 16 Oct 2018 09:01:03 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 09:01:04 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 16 Oct 2018 09:01:04 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 16 Oct 2018 09:01:05 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 16 Oct 2018 09:01:06 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 16 Oct 2018 09:01:08 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 16 Oct 2018 09:01:09 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 16 Oct 2018 09:01:09 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 16 Oct 2018 09:01:09 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Tue, 16 Oct 2018 09:01:10 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 16 Oct 2018 09:01:10 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 16 Oct 2018 09:01:10 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 16 Oct 2018 09:01:11 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Sat, 10 Nov 2018 10:21:06 GMT
ENV PHP_VERSION=7.2.12
# Sat, 10 Nov 2018 10:21:07 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.12.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.12.tar.xz.asc/from/this/mirror
# Sat, 10 Nov 2018 10:21:07 GMT
ENV PHP_SHA256=989c04cc879ee71a5e1131db867f3c5102f1f7565f805e2bb8bde33f93147fe1 PHP_MD5=
# Sat, 10 Nov 2018 10:21:23 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 10 Nov 2018 10:21:23 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 10 Nov 2018 10:24:22 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 10 Nov 2018 10:24:24 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Sat, 10 Nov 2018 10:24:25 GMT
RUN docker-php-ext-enable sodium
# Sat, 10 Nov 2018 10:24:25 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 10 Nov 2018 10:24:26 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 10 Nov 2018 10:24:26 GMT
WORKDIR /var/www/html
# Sat, 10 Nov 2018 10:24:26 GMT
EXPOSE 80/tcp
# Sat, 10 Nov 2018 10:24:27 GMT
CMD ["apache2-foreground"]
# Sat, 10 Nov 2018 12:27:29 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python3 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 10 Nov 2018 12:30:39 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Sat, 10 Nov 2018 12:30:59 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu 	&& docker-php-ext-enable apcu
# Sat, 10 Nov 2018 12:31:04 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 10 Nov 2018 12:31:05 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 10 Nov 2018 12:31:13 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.31
# Sat, 10 Nov 2018 12:31:13 GMT
ENV MEDIAWIKI_BRANCH=REL1_31
# Sat, 10 Nov 2018 12:31:14 GMT
ENV MEDIAWIKI_VERSION=1.31.1
# Sat, 10 Nov 2018 12:31:14 GMT
ENV MEDIAWIKI_SHA512=ee49649cc37d0a7d45a7c6d90c822c2a595df290be2b5bf085affbec3318768700a458a6e5b5b7e437651400b9641424429d6d304f870c22ec63fae86ffc5152
# Sat, 10 Nov 2018 12:31:33 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:4b7ffdf9817f718c84be550e8edf757070396d69165fa729c6ddd4e775428eb2`  
		Last Modified: Tue, 16 Oct 2018 09:04:44 GMT  
		Size: 21.2 MB (21162965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20460378a8f38aacfeb9a0bcf3a38abbaebb8845cf0f7ca8c5f8ccb51f3ba5d8`  
		Last Modified: Tue, 16 Oct 2018 10:20:49 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecb7e6fb4c6270cb10f9b8f7aa93b2d05eca8e4ca542ae6b884f3d507b3f2c06`  
		Last Modified: Tue, 16 Oct 2018 10:21:09 GMT  
		Size: 57.4 MB (57447518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ad837638c5f551ce2ed0722f0aa0206be6b2503befb732461de20785c38ed13`  
		Last Modified: Tue, 16 Oct 2018 10:20:48 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02b8207a3bfbe878b8a8d846a774c3ce482e349d482e7084559f88b12618ffb1`  
		Last Modified: Tue, 16 Oct 2018 10:20:52 GMT  
		Size: 16.7 MB (16650918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7198acceff99d48ae548b76f8e9eb26d52d8a63521d95d7db38554594b5d1223`  
		Last Modified: Tue, 16 Oct 2018 10:20:47 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e62a81208df875e54460875df6afbac9065b4afc56282d9fb756acffa5656a7`  
		Last Modified: Tue, 16 Oct 2018 10:20:46 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5a783b15fb65ce49afc889cc25e5744af9318920f2c2b5419dc1d6209f71d6a`  
		Last Modified: Tue, 16 Oct 2018 10:20:46 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b8615ebbc988042c7c4db62198beea70acc923ccc2b3f98aba803a3947a68fa`  
		Last Modified: Tue, 16 Oct 2018 10:20:46 GMT  
		Size: 510.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6d2a8b451c69a9153a5a2299fa76a6f68795ea547934e6343606c83d31f3f9f`  
		Last Modified: Sat, 10 Nov 2018 10:42:43 GMT  
		Size: 12.5 MB (12489686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:628ae252af1a36dcb9335d209a069607c24ef3e721befd4f715b3481f543185f`  
		Last Modified: Sat, 10 Nov 2018 10:42:40 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7696a1ee3939f9bbbc0d5313ae63a81fdc28b6e3dd30fde3ce3e36de4651126`  
		Last Modified: Sat, 10 Nov 2018 10:42:45 GMT  
		Size: 14.8 MB (14789407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a210ca29558bd9fd22ea689556a1fa9d481d405e32a8fbc91b26a30566348ff`  
		Last Modified: Sat, 10 Nov 2018 10:42:40 GMT  
		Size: 2.2 KB (2192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f871e2386bb1b24ecac0b1f2bd1258f889c8bfdbf7bf9c64e2b6f6e3031973b`  
		Last Modified: Sat, 10 Nov 2018 10:42:40 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8e6c8197ba9f797dc43c28fa42eef615b88c75dd631b3cfa9c32fdd339be8e6`  
		Last Modified: Sat, 10 Nov 2018 10:42:40 GMT  
		Size: 903.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6c7c18b0416cf551bfc55cdf8bcf8958c4b64680babbb075301c00ee1f515e7`  
		Last Modified: Sat, 10 Nov 2018 12:32:24 GMT  
		Size: 55.9 MB (55895178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96b394aaa5ba59d916cd1fa2f75ace3f7eb82340428613d77ef33bc9711a93b7`  
		Last Modified: Sat, 10 Nov 2018 12:32:05 GMT  
		Size: 1.7 MB (1687916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10e2a4b7b22851cbb4ea86f35bc077512912b65fb1007e6a35d1bfad9c1d335f`  
		Last Modified: Sat, 10 Nov 2018 12:32:05 GMT  
		Size: 393.0 KB (393010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8f2101ffac770c11f14c7e1d8878c97ed70b040f91b01c2b25f14023a3c8bee`  
		Last Modified: Sat, 10 Nov 2018 12:32:05 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34bc760a22f9124017bb1ff861f37905528b0ef06413082b8a4ca101f270e512`  
		Last Modified: Sat, 10 Nov 2018 12:32:05 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:704c7cbd7eff3dd946315fbea52417012b1864d0e7fbaad1d1063578730b0bdf`  
		Last Modified: Sat, 10 Nov 2018 12:32:24 GMT  
		Size: 35.8 MB (35753834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.31.1` - linux; arm variant v7

```console
$ docker pull mediawiki@sha256:f85a6008eb59054e7af130a286a8e14fa0e133862f082ae21ffac4c10e93cad1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.7 MB (206676783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb4d374b8dc475c09f0003ebce3a4c221294069b92edf6122a29351522ca2434`
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
# Tue, 16 Oct 2018 12:31:35 GMT
ENV PHP_VERSION=7.2.11
# Tue, 16 Oct 2018 12:31:36 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.11.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.11.tar.xz.asc/from/this/mirror
# Tue, 16 Oct 2018 12:31:36 GMT
ENV PHP_SHA256=da1a705c0bc46410e330fc6baa967666c8cd2985378fb9707c01a8e33b01d985 PHP_MD5=
# Tue, 16 Oct 2018 12:31:50 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 16 Oct 2018 12:31:51 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 16 Oct 2018 12:34:37 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 16 Oct 2018 12:34:39 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Tue, 16 Oct 2018 12:34:40 GMT
RUN docker-php-ext-enable sodium
# Tue, 16 Oct 2018 12:34:41 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 16 Oct 2018 12:34:41 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 16 Oct 2018 12:34:42 GMT
WORKDIR /var/www/html
# Tue, 16 Oct 2018 12:34:42 GMT
EXPOSE 80/tcp
# Tue, 16 Oct 2018 12:34:43 GMT
CMD ["apache2-foreground"]
# Tue, 16 Oct 2018 15:42:05 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python3 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 16 Oct 2018 15:44:59 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Tue, 16 Oct 2018 15:45:15 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu 	&& docker-php-ext-enable apcu
# Tue, 16 Oct 2018 15:45:16 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 16 Oct 2018 15:45:18 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Tue, 16 Oct 2018 15:45:18 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.31
# Tue, 16 Oct 2018 15:45:19 GMT
ENV MEDIAWIKI_BRANCH=REL1_31
# Tue, 16 Oct 2018 15:45:19 GMT
ENV MEDIAWIKI_VERSION=1.31.1
# Tue, 16 Oct 2018 15:45:19 GMT
ENV MEDIAWIKI_SHA512=ee49649cc37d0a7d45a7c6d90c822c2a595df290be2b5bf085affbec3318768700a458a6e5b5b7e437651400b9641424429d6d304f870c22ec63fae86ffc5152
# Tue, 16 Oct 2018 15:45:37 GMT
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
	-	`sha256:d03f74c911913f4aa68e96a8cb2444d85dc33d3b2d8ba5e1b0f12f94e5286121`  
		Last Modified: Tue, 16 Oct 2018 13:26:46 GMT  
		Size: 12.5 MB (12479383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a04cdad87bc3b7a5026c880b6e397465d27c0f0294938b69fcf7e58070babfcd`  
		Last Modified: Tue, 16 Oct 2018 13:26:43 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:428c54d2010e5274ed09c896eea424977cd5493fbc8a20ad5e71adfa868a539d`  
		Last Modified: Tue, 16 Oct 2018 13:26:48 GMT  
		Size: 13.9 MB (13927117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2edf7092f52263f330a951d3ef9051c580cb63b6712333b8080fd2350a8d622a`  
		Last Modified: Tue, 16 Oct 2018 13:26:43 GMT  
		Size: 2.2 KB (2191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4237cc7586b0378fd2144bc20a38b562c77bb762546581cef2753f0b678de164`  
		Last Modified: Tue, 16 Oct 2018 13:26:43 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6e1301067258438305c74d9ed9d845734d183bab1c6a053f25c175ab2dcce1b`  
		Last Modified: Tue, 16 Oct 2018 13:26:44 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:033abcf4a2df14f959cbaa1cb907bf95890e8eb48f635713da2981a922130643`  
		Last Modified: Tue, 16 Oct 2018 15:51:48 GMT  
		Size: 53.5 MB (53489566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3899cc11fca9fd65a23516801e6d483ff4e8a8ace0c3bbad6d1bf773923103b`  
		Last Modified: Tue, 16 Oct 2018 15:51:23 GMT  
		Size: 1.6 MB (1636865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed43eef1f4cd79e0d447d0f83b309ae8353fd132816f0450445fa66601158125`  
		Last Modified: Tue, 16 Oct 2018 15:51:25 GMT  
		Size: 387.4 KB (387429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64055abfad5888369e1ed8689f72a6f3c4940d50bc7d21ce0d8caa92690c078c`  
		Last Modified: Tue, 16 Oct 2018 15:51:23 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9e088e420efc3d714c4e46498213e17a1efc6e4082b58f92b63d3d73ad955f`  
		Last Modified: Tue, 16 Oct 2018 15:51:23 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2a8bccaf4444ec3affebbc4001e61c118f727488386655736235f1f2d671954`  
		Last Modified: Tue, 16 Oct 2018 15:51:42 GMT  
		Size: 35.8 MB (35753944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.31.1` - linux; arm64 variant v8

```console
$ docker pull mediawiki@sha256:44ffe8d4078d33a6ca1a4799cfdf44a2c0025c9cd21d043a4f38d90257633929
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.1 MB (208080243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b208e944cb7e755680b7263bb4f7054d90055588f8cf8f9085f55ccd5fa0c900`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 16 Oct 2018 08:43:45 GMT
ADD file:e83c09a5cfc1cecaeba6b736737d551fe0f5d3f204ec3fc984fe768003774f81 in / 
# Tue, 16 Oct 2018 08:43:46 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 09:37:09 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 16 Oct 2018 09:37:10 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 16 Oct 2018 09:38:24 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 16 Oct 2018 09:38:25 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 16 Oct 2018 09:38:27 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 16 Oct 2018 09:49:43 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 09:49:44 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 16 Oct 2018 09:49:44 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 16 Oct 2018 09:49:46 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 16 Oct 2018 09:49:47 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 16 Oct 2018 09:49:49 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 16 Oct 2018 09:49:51 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 16 Oct 2018 09:49:51 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 16 Oct 2018 09:49:52 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Tue, 16 Oct 2018 09:49:53 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 16 Oct 2018 09:49:53 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 16 Oct 2018 09:49:54 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 16 Oct 2018 13:56:08 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 16 Oct 2018 13:56:09 GMT
ENV PHP_VERSION=7.0.32
# Tue, 16 Oct 2018 13:56:10 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.32.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.32.tar.xz.asc/from/this/mirror
# Tue, 16 Oct 2018 13:56:10 GMT
ENV PHP_SHA256=ff6f62afeb32c71b3b89ecbd42950ef6c5e0c329cc6e1c58ffac47e6f1f883c4 PHP_MD5=
# Tue, 16 Oct 2018 13:56:54 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 16 Oct 2018 13:56:55 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 16 Oct 2018 14:04:23 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 16 Oct 2018 14:04:25 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Tue, 16 Oct 2018 14:04:26 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 16 Oct 2018 14:04:27 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 16 Oct 2018 14:04:28 GMT
WORKDIR /var/www/html
# Tue, 16 Oct 2018 14:04:33 GMT
EXPOSE 80/tcp
# Tue, 16 Oct 2018 14:04:34 GMT
CMD ["apache2-foreground"]
# Wed, 17 Oct 2018 06:04:36 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 17 Oct 2018 06:07:58 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Wed, 17 Oct 2018 06:08:19 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Wed, 17 Oct 2018 06:08:22 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 17 Oct 2018 06:08:24 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Wed, 17 Oct 2018 06:08:32 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.27
# Wed, 17 Oct 2018 06:08:32 GMT
ENV MEDIAWIKI_BRANCH=REL1_27
# Wed, 17 Oct 2018 06:08:33 GMT
ENV MEDIAWIKI_VERSION=1.27.5
# Wed, 17 Oct 2018 06:08:34 GMT
ENV MEDIAWIKI_SHA512=2f341ed5afab24b81c315db6bcc58dd617f95231f71408c08bb2a8b974c95b7edd93d0f3c857f24058111c3228b9919a0f1c2fd2f85be940dc571e390225027a
# Wed, 17 Oct 2018 06:08:45 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:141796bfcf0d5a5edb072138e517bf85deef4f47f40afb51ba8705bec3b921dd`  
		Last Modified: Tue, 16 Oct 2018 08:50:53 GMT  
		Size: 20.3 MB (20331585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa887e40ae8a2b78a8eba6e16f2902853327c922f0110c4bd2e4728fb79b305b`  
		Last Modified: Tue, 16 Oct 2018 15:06:53 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99271cba459dd39a663363166e510f7cc1ebf18b221d33bb6c4e26d54774a5d7`  
		Last Modified: Tue, 16 Oct 2018 15:08:26 GMT  
		Size: 57.6 MB (57596184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:440b75b2132ae75a804754d6dd4f874b688e2f6a1d034fd0d2de6e496b8f1f0b`  
		Last Modified: Tue, 16 Oct 2018 15:06:52 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9716126acdb685c5ea84948fb47306c1b2d74752160d8de98d14cac45c1734a`  
		Last Modified: Tue, 16 Oct 2018 15:10:47 GMT  
		Size: 16.7 MB (16709722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92cd9f340623c79febab023e7bed21713ff7c5a54222f6e864d484df51e5eb5e`  
		Last Modified: Tue, 16 Oct 2018 15:10:15 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f4aca00aec726971992cfa7cb081238ab6d32d57c69cf024ee2690cef29374d`  
		Last Modified: Tue, 16 Oct 2018 15:10:14 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef70a607bae65cff09c6a3fd4add05727d00f023e83540e9823c8c73ce65afba`  
		Last Modified: Tue, 16 Oct 2018 15:10:14 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3482f362267a35679e02d84771ac1e78594ccb8598b70cfdb652909f558ae451`  
		Last Modified: Tue, 16 Oct 2018 15:10:13 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50624813ae71a53d58d6982af86920e9fdbaec7b06c8329e4ea88181ea682607`  
		Last Modified: Tue, 16 Oct 2018 15:43:35 GMT  
		Size: 12.4 MB (12378440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:154f5759e9b16e9a04f92afd14a7b5d5c2a92f781638c704f740986d5232caca`  
		Last Modified: Tue, 16 Oct 2018 15:43:33 GMT  
		Size: 502.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:116563a0376986b0dffd04b739a472b46be9e087b0e1aff085c5ee17cf08e287`  
		Last Modified: Tue, 16 Oct 2018 15:43:39 GMT  
		Size: 13.1 MB (13092238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:204e51532312e737fb45fedfafbff35b2381bbd51ed63b8bedadd5b79c86a8fc`  
		Last Modified: Tue, 16 Oct 2018 15:43:33 GMT  
		Size: 2.2 KB (2193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6520db0429b6facca4c9fed9a535ab187a6755dde45ba303c81da97db840095f`  
		Last Modified: Tue, 16 Oct 2018 15:43:33 GMT  
		Size: 905.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa8e3dce0d2b00c07b8b1d81365aba40a107ee790a3196a44c6e91de872d741b`  
		Last Modified: Wed, 17 Oct 2018 06:12:26 GMT  
		Size: 54.1 MB (54149817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad93e1fe64d7067a9db1021e3c4e3eaab44558105ebde6a50ac0f9ba3a5645e2`  
		Last Modified: Wed, 17 Oct 2018 06:12:05 GMT  
		Size: 1.5 MB (1486658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ac1f5aa91252d9dafcc4e5ba74eef3f7c3fa65cb1931cbe39ab155c07031f73`  
		Last Modified: Wed, 17 Oct 2018 06:12:02 GMT  
		Size: 395.0 KB (394970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56946bf185cff149538ad11ea4912945b25b68e8a7cab8f2457efd2701cef4d9`  
		Last Modified: Wed, 17 Oct 2018 06:12:02 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85b5171d7d075f37055f4a31e64767d5854ad0057627cd4b2564dd3790d838d2`  
		Last Modified: Wed, 17 Oct 2018 06:12:02 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f7948973641c4f1ad24c42af64c7125499a4f05252ec0d0507b6567ebef26f8`  
		Last Modified: Wed, 17 Oct 2018 06:12:24 GMT  
		Size: 31.9 MB (31933727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.31.1` - linux; 386

```console
$ docker pull mediawiki@sha256:b21d1d70242702efdbb70168a3c286b30076caec26c6628394dc286be4ef5da1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.3 MB (229329317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e869b7784bacd85cc3b9f01934da9edaa4e408bd1d1e3e46f97553d3dc015024`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 16 Oct 2018 10:49:05 GMT
ADD file:a71ef0e9adb528ae2dc5ca3395654522c23762d8936a4902378c6749bb357582 in / 
# Tue, 16 Oct 2018 10:49:05 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 11:59:35 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 16 Oct 2018 11:59:36 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 16 Oct 2018 12:00:22 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:00:23 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 16 Oct 2018 12:00:24 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 16 Oct 2018 12:11:59 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:11:59 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 16 Oct 2018 12:12:00 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 16 Oct 2018 12:12:01 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 16 Oct 2018 12:12:02 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 16 Oct 2018 12:12:03 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 16 Oct 2018 12:12:04 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 16 Oct 2018 12:12:04 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 16 Oct 2018 12:12:05 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Tue, 16 Oct 2018 12:12:05 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 16 Oct 2018 12:12:05 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 16 Oct 2018 12:12:05 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 16 Oct 2018 17:29:54 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 16 Oct 2018 17:29:54 GMT
ENV PHP_VERSION=7.0.32
# Tue, 16 Oct 2018 17:29:55 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.32.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.32.tar.xz.asc/from/this/mirror
# Tue, 16 Oct 2018 17:29:55 GMT
ENV PHP_SHA256=ff6f62afeb32c71b3b89ecbd42950ef6c5e0c329cc6e1c58ffac47e6f1f883c4 PHP_MD5=
# Tue, 16 Oct 2018 17:30:07 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 16 Oct 2018 17:30:07 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 16 Oct 2018 17:34:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 16 Oct 2018 17:34:07 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Tue, 16 Oct 2018 17:34:07 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 16 Oct 2018 17:34:08 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 16 Oct 2018 17:34:08 GMT
WORKDIR /var/www/html
# Tue, 16 Oct 2018 17:34:08 GMT
EXPOSE 80/tcp
# Tue, 16 Oct 2018 17:34:08 GMT
CMD ["apache2-foreground"]
# Wed, 17 Oct 2018 07:58:33 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 17 Oct 2018 07:59:59 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Wed, 17 Oct 2018 08:00:08 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Wed, 17 Oct 2018 08:00:09 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 17 Oct 2018 08:00:09 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Wed, 17 Oct 2018 08:00:10 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.27
# Wed, 17 Oct 2018 08:00:10 GMT
ENV MEDIAWIKI_BRANCH=REL1_27
# Wed, 17 Oct 2018 08:00:10 GMT
ENV MEDIAWIKI_VERSION=1.27.5
# Wed, 17 Oct 2018 08:00:10 GMT
ENV MEDIAWIKI_SHA512=2f341ed5afab24b81c315db6bcc58dd617f95231f71408c08bb2a8b974c95b7edd93d0f3c857f24058111c3228b9919a0f1c2fd2f85be940dc571e390225027a
# Wed, 17 Oct 2018 08:00:18 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:2b7bcb618c4033f37486fd700e6d0debf2260935f888a192119c41eaddd29978`  
		Last Modified: Tue, 16 Oct 2018 11:06:15 GMT  
		Size: 23.1 MB (23126605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ac9f5e161441372e549d094f25b4640689548d53bb47c34a8ced01a74b8ad6f`  
		Last Modified: Tue, 16 Oct 2018 19:08:04 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cac64c78cd80e7e59f4a0fd49c7632e4799f427a439c1339df81ad969a7aed3`  
		Last Modified: Tue, 16 Oct 2018 19:08:39 GMT  
		Size: 71.5 MB (71484645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a7cfe59c8cc409c1eb116e2905e9a239f1f1a26128b6fd15cf1217563b373e4`  
		Last Modified: Tue, 16 Oct 2018 19:08:04 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99051976b849498ac53e2ffcd090cb770169576c8fe2ba03b72ec38559319cff`  
		Last Modified: Tue, 16 Oct 2018 19:10:57 GMT  
		Size: 17.6 MB (17562598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8baa008090db722001228a8b24993ff76cc41b4f3c5ee668b4ba3a9a91a8beb`  
		Last Modified: Tue, 16 Oct 2018 19:10:51 GMT  
		Size: 1.2 KB (1243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8f645450e0e3cf05fbcd8a2ca3ca89deb3a97661b07a8e11130055680df3138`  
		Last Modified: Tue, 16 Oct 2018 19:11:16 GMT  
		Size: 429.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a636e140725a9abf6bfca67dce52d8d0729b612493c86addf510f88cd41ff73`  
		Last Modified: Tue, 16 Oct 2018 19:10:50 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c899e0d2536fbfcfaa4ef00f9497a5891261cfb1fca3e776a428e461db7ee410`  
		Last Modified: Tue, 16 Oct 2018 19:10:50 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0cba1ef0564202ac1445408ed856bfc567867695100138b6278c4a50680cf7a`  
		Last Modified: Tue, 16 Oct 2018 19:49:33 GMT  
		Size: 12.4 MB (12379305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ca96ddbed1b213bc6b7cdd27cc821791a1a1594630bd9afbae4b648ee450255`  
		Last Modified: Tue, 16 Oct 2018 19:49:31 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b970950633084b70af418e3cf114d23a70f27e9e8fa032a907328f795aef1b81`  
		Last Modified: Tue, 16 Oct 2018 19:49:36 GMT  
		Size: 14.4 MB (14393946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add8f03f18325d56159cd2f3fcad9119a2bab20fd859fde0738145f82e5c6b8f`  
		Last Modified: Tue, 16 Oct 2018 19:49:31 GMT  
		Size: 2.2 KB (2193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c7c94c298264615aa9da4abf6b9e47f4b11d3c699c9d6a624e04f84679855ad`  
		Last Modified: Tue, 16 Oct 2018 19:49:31 GMT  
		Size: 903.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05cdbec925eca59dd43b5ffcb57c08abbae8d13d76179431dbc03b1041018770`  
		Last Modified: Wed, 17 Oct 2018 08:03:13 GMT  
		Size: 56.5 MB (56499573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb6e8e69dc478801be87de36f35f63ac515bae458b89124dbce6b3699a00296`  
		Last Modified: Wed, 17 Oct 2018 08:02:35 GMT  
		Size: 1.6 MB (1552701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d0ff586df7ffffb2c50c9cd9c0ed992526ca2ef675a027011984d3e2e63ae83`  
		Last Modified: Wed, 17 Oct 2018 08:02:34 GMT  
		Size: 389.4 KB (389353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28fc31eb8ac64e77e115c05b989b5f57b1a9f7f20cb66d1f997c54aa74fca7dc`  
		Last Modified: Wed, 17 Oct 2018 08:02:34 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b257eceaa8885e119f77ac04ebf8473d4e820244c945abefb769c9abe444a6e`  
		Last Modified: Wed, 17 Oct 2018 08:02:34 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79cb8aad099aaa347b0c7f6b94c0cadcd8f36533710f7a793b86a4660ca59184`  
		Last Modified: Wed, 17 Oct 2018 08:02:51 GMT  
		Size: 31.9 MB (31933705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.31.1` - linux; ppc64le

```console
$ docker pull mediawiki@sha256:e76eacfa4ae216c9b7f4e6165ad7fa554f544f47ee5ae4d8b0d46e602777552f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.4 MB (218449205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:814f618dcdcccb99814687061d3b8b49e32ef553c89429c2a0a130c4577e6570`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 16 Oct 2018 08:22:25 GMT
ADD file:b1fa1d0ffa2b206311dfd95642d74c3312565a1ec2e6e3a2197bfd2a4b3de6c6 in / 
# Tue, 16 Oct 2018 08:22:30 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 08:36:20 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 16 Oct 2018 08:36:20 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 16 Oct 2018 08:38:14 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 16 Oct 2018 08:38:16 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 16 Oct 2018 08:38:19 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 16 Oct 2018 08:47:02 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 08:47:04 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 16 Oct 2018 08:47:06 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 16 Oct 2018 08:47:12 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 16 Oct 2018 08:47:15 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 16 Oct 2018 08:47:21 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 16 Oct 2018 08:47:25 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 16 Oct 2018 08:47:26 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 16 Oct 2018 08:47:27 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Tue, 16 Oct 2018 08:47:28 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 16 Oct 2018 08:47:30 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 16 Oct 2018 08:47:33 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 16 Oct 2018 11:37:55 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 16 Oct 2018 11:37:56 GMT
ENV PHP_VERSION=7.0.32
# Tue, 16 Oct 2018 11:37:57 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.32.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.32.tar.xz.asc/from/this/mirror
# Tue, 16 Oct 2018 11:37:58 GMT
ENV PHP_SHA256=ff6f62afeb32c71b3b89ecbd42950ef6c5e0c329cc6e1c58ffac47e6f1f883c4 PHP_MD5=
# Tue, 16 Oct 2018 11:38:37 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 16 Oct 2018 11:38:41 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 16 Oct 2018 11:42:36 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 16 Oct 2018 11:42:38 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Tue, 16 Oct 2018 11:42:39 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 16 Oct 2018 11:42:42 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 16 Oct 2018 11:42:43 GMT
WORKDIR /var/www/html
# Tue, 16 Oct 2018 11:42:44 GMT
EXPOSE 80/tcp
# Tue, 16 Oct 2018 11:42:44 GMT
CMD ["apache2-foreground"]
# Tue, 16 Oct 2018 20:12:30 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 16 Oct 2018 20:14:29 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Tue, 16 Oct 2018 20:14:47 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Tue, 16 Oct 2018 20:14:54 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 16 Oct 2018 20:14:59 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Tue, 16 Oct 2018 20:15:00 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.27
# Tue, 16 Oct 2018 20:15:01 GMT
ENV MEDIAWIKI_BRANCH=REL1_27
# Tue, 16 Oct 2018 20:15:03 GMT
ENV MEDIAWIKI_VERSION=1.27.5
# Tue, 16 Oct 2018 20:15:04 GMT
ENV MEDIAWIKI_SHA512=2f341ed5afab24b81c315db6bcc58dd617f95231f71408c08bb2a8b974c95b7edd93d0f3c857f24058111c3228b9919a0f1c2fd2f85be940dc571e390225027a
# Tue, 16 Oct 2018 20:15:27 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:202f659db3e53c01ac947538d8b37251e9fa16c4a6a699dc6c2a8910afcdfed4`  
		Last Modified: Tue, 16 Oct 2018 08:30:59 GMT  
		Size: 22.7 MB (22740583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba0f6d499d48eb19dc9d2e6453db815f1d64074f2775cbd9cac4928c0461cdbc`  
		Last Modified: Tue, 16 Oct 2018 12:20:25 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f354790bdfa97d0b204ca9cf4402d437e713049020362b7ad4af49ef47efb984`  
		Last Modified: Tue, 16 Oct 2018 12:21:25 GMT  
		Size: 61.8 MB (61809966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:745377e23f5d138b115edff3b4ebf7c90114d7d658bff2cd8453aaffc66a04db`  
		Last Modified: Tue, 16 Oct 2018 12:20:28 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6ca68ed7b31a0303cdb6d7669c24c6dedb55ddece4d992172fb000dc3f93eeb`  
		Last Modified: Tue, 16 Oct 2018 12:23:21 GMT  
		Size: 17.3 MB (17348500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba60179e94e0e6514a8bd50455affa30a26a572b16013a2b01ea060c2aaa60d3`  
		Last Modified: Tue, 16 Oct 2018 12:23:07 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9292d4db20fce2c69be0ea52392b7616f1846e01f9b70e0aadff84c1084bf254`  
		Last Modified: Tue, 16 Oct 2018 12:23:01 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a20d33fb196e2e93548afbb4d63cb3d16c02b0d6d342e94e77c6beca290525`  
		Last Modified: Tue, 16 Oct 2018 12:22:59 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c4ea029b99fcbbd8bfbfd74bd42ca81a84fbee060a87904f570a192fc958db5`  
		Last Modified: Tue, 16 Oct 2018 12:22:57 GMT  
		Size: 517.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c9720eb00827218a025ca83a1200da8fe81ff06a7addc7bb5bbe67a7135ce16`  
		Last Modified: Tue, 16 Oct 2018 12:48:36 GMT  
		Size: 12.4 MB (12378819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5df700c2238de8679c6dbb08bf02760e4e40bccf6ccaf35af683095dc66198ea`  
		Last Modified: Tue, 16 Oct 2018 12:48:33 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22b62e69dd460d061013a0b345cbdcfeb9adedbb59d021732cfca2a21eaf10de`  
		Last Modified: Tue, 16 Oct 2018 12:48:40 GMT  
		Size: 13.7 MB (13702592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc8b0e1276d18fb2703450c458d281a06a6bf5f57d56bfafa78804c108cfa33c`  
		Last Modified: Tue, 16 Oct 2018 12:48:33 GMT  
		Size: 2.2 KB (2194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1210917658a99e151617ddf0dded555475f0ec8ce36cd98daa699c042519fe8`  
		Last Modified: Tue, 16 Oct 2018 12:48:34 GMT  
		Size: 906.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e406cec386b4c449c6428e2ae5dc6f7677d1f5d173fb2b536a3d71ae16dfc121`  
		Last Modified: Tue, 16 Oct 2018 20:18:11 GMT  
		Size: 56.6 MB (56596313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f43efb949dce69d5327e901bc97faa44c380d96012f814fa33740e666bc1ab3`  
		Last Modified: Tue, 16 Oct 2018 20:17:52 GMT  
		Size: 1.5 MB (1530906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b93074650452c34e4a3bd7d8d9fe167cf458ae6688dc190a14f7ca5eedf8083`  
		Last Modified: Tue, 16 Oct 2018 20:17:52 GMT  
		Size: 400.4 KB (400382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c082530349e505f3093d4c9bec2ed7622e3f8f82f27cb4b700eeb6c1a1423130`  
		Last Modified: Tue, 16 Oct 2018 20:17:51 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69ee635cd230017d2bc1b368f6d42edd24f93f85202d8d24950baef9bfbd0001`  
		Last Modified: Tue, 16 Oct 2018 20:17:51 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65882f587f0e22183aa5dc102c5201529a1306d81e0cdd8b6359dd681854d123`  
		Last Modified: Tue, 16 Oct 2018 20:18:05 GMT  
		Size: 31.9 MB (31934083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mediawiki:latest`

```console
$ docker pull mediawiki@sha256:c83cf293ab4b05bcecc4ad4499c93ba30ff7517408e4def457785653b7d8a14e
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
$ docker pull mediawiki@sha256:520c140b39c77d15958d07ac034ccbc26f0a9e7a31f2584c1a4d14c0db4aaf79
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.4 MB (231405854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c5644999f6f3211e1b9c4eeda99ed614abd064fdd01f65923578921982b80b9`
-	Entrypoint: `["docker-php-entrypoint"]`
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
# Fri, 09 Nov 2018 23:42:44 GMT
ENV PHP_VERSION=7.2.12
# Fri, 09 Nov 2018 23:42:44 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.12.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.12.tar.xz.asc/from/this/mirror
# Fri, 09 Nov 2018 23:42:44 GMT
ENV PHP_SHA256=989c04cc879ee71a5e1131db867f3c5102f1f7565f805e2bb8bde33f93147fe1 PHP_MD5=
# Fri, 09 Nov 2018 23:42:53 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 09 Nov 2018 23:42:54 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 09 Nov 2018 23:46:43 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 09 Nov 2018 23:46:54 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Fri, 09 Nov 2018 23:47:06 GMT
RUN docker-php-ext-enable sodium
# Fri, 09 Nov 2018 23:47:07 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 09 Nov 2018 23:47:07 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 09 Nov 2018 23:47:07 GMT
WORKDIR /var/www/html
# Fri, 09 Nov 2018 23:47:08 GMT
EXPOSE 80/tcp
# Fri, 09 Nov 2018 23:47:08 GMT
CMD ["apache2-foreground"]
# Sat, 10 Nov 2018 01:46:14 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python3 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 10 Nov 2018 01:47:56 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Sat, 10 Nov 2018 01:48:05 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu 	&& docker-php-ext-enable apcu
# Sat, 10 Nov 2018 01:48:06 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 10 Nov 2018 01:48:07 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 10 Nov 2018 01:48:07 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.31
# Sat, 10 Nov 2018 01:48:07 GMT
ENV MEDIAWIKI_BRANCH=REL1_31
# Sat, 10 Nov 2018 01:48:08 GMT
ENV MEDIAWIKI_VERSION=1.31.1
# Sat, 10 Nov 2018 01:48:08 GMT
ENV MEDIAWIKI_SHA512=ee49649cc37d0a7d45a7c6d90c822c2a595df290be2b5bf085affbec3318768700a458a6e5b5b7e437651400b9641424429d6d304f870c22ec63fae86ffc5152
# Sat, 10 Nov 2018 01:48:14 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
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
	-	`sha256:c03bc06afbf117528a1f87ef7f70e9a98afa6fb409e87a525b77f3b24d282d42`  
		Last Modified: Sat, 10 Nov 2018 00:46:49 GMT  
		Size: 12.5 MB (12491693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4be3d516ef4a0873ef1e58afda67228eaeeade4213602bf2325dc2645aab8de3`  
		Last Modified: Sat, 10 Nov 2018 00:46:47 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25253f4c7678aed8e63c2c9b67d2fdf3b0284a56569287e3bd8744c0c41aeb0e`  
		Last Modified: Sat, 10 Nov 2018 00:46:50 GMT  
		Size: 15.6 MB (15616443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f4ee332f37f73fbfb8fa1a1557157aa166c8d5cc3813ca2108b3978fae6f56e`  
		Last Modified: Sat, 10 Nov 2018 00:46:47 GMT  
		Size: 2.2 KB (2192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc5cc2e81ed4b8c66a7ea178d4bfabb76e0a85cd124fcde6998d42d26f505345`  
		Last Modified: Sat, 10 Nov 2018 00:46:47 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2d05c20f6c8331a04994018516d98b4d90b108ed67bde9e2413e61da41658d6`  
		Last Modified: Sat, 10 Nov 2018 00:46:47 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec34cdc7398f11d10bb7e4084a0353edf0f31787850015af8280d1927e2aeb52`  
		Last Modified: Sat, 10 Nov 2018 01:48:56 GMT  
		Size: 58.3 MB (58336776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46522a5722d487553df531bac72657a3b86e65b9bedba4a3262ab8c3f0dff926`  
		Last Modified: Sat, 10 Nov 2018 01:48:42 GMT  
		Size: 1.8 MB (1757313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49b5c23f571029ec2ed24005b6f0da402ba766e28d891ad252e6469ffb04446d`  
		Last Modified: Sat, 10 Nov 2018 01:48:42 GMT  
		Size: 400.9 KB (400902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:878de1a45e3ed16e43daee7de41bb76cc49fe834afd92f47df98f4ad4af346ed`  
		Last Modified: Sat, 10 Nov 2018 01:48:41 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22a09c6484c7eb1556ef0aec00f953655a79642965f448701d36d8a8a67fe91a`  
		Last Modified: Sat, 10 Nov 2018 01:48:41 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:596be3eb986c4b273c3643d3f74ca105793fd77184b0c151e12a1b2b0505c6da`  
		Last Modified: Sat, 10 Nov 2018 01:48:54 GMT  
		Size: 35.8 MB (35753338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:latest` - linux; arm variant v5

```console
$ docker pull mediawiki@sha256:aa4f49c48775e3c93828b1dcdbc8521fc58378305065177e6e6b7cc52dd75024
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.7 MB (208735644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9396d4c18d945890c8d6a8d1736fcdc0b1a3e378f142f2f5aad80f514cf90b3`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 16 Oct 2018 08:55:22 GMT
ADD file:8f2148adabc29587e17b50138f305f39e94e0e2bd9211a9f913fef56013ac35a in / 
# Tue, 16 Oct 2018 08:55:23 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 08:59:24 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 16 Oct 2018 08:59:25 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 16 Oct 2018 09:00:38 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 16 Oct 2018 09:00:40 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 16 Oct 2018 09:00:41 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 16 Oct 2018 09:01:03 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 09:01:04 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 16 Oct 2018 09:01:04 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 16 Oct 2018 09:01:05 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 16 Oct 2018 09:01:06 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 16 Oct 2018 09:01:08 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 16 Oct 2018 09:01:09 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 16 Oct 2018 09:01:09 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 16 Oct 2018 09:01:09 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Tue, 16 Oct 2018 09:01:10 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 16 Oct 2018 09:01:10 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 16 Oct 2018 09:01:10 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 16 Oct 2018 09:53:06 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 16 Oct 2018 09:53:06 GMT
ENV PHP_VERSION=7.0.32
# Tue, 16 Oct 2018 09:53:06 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.32.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.32.tar.xz.asc/from/this/mirror
# Tue, 16 Oct 2018 09:53:07 GMT
ENV PHP_SHA256=ff6f62afeb32c71b3b89ecbd42950ef6c5e0c329cc6e1c58ffac47e6f1f883c4 PHP_MD5=
# Tue, 16 Oct 2018 09:53:22 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 16 Oct 2018 09:53:23 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 16 Oct 2018 09:56:09 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 16 Oct 2018 09:56:11 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Tue, 16 Oct 2018 09:56:11 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 16 Oct 2018 09:56:12 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 16 Oct 2018 09:56:13 GMT
WORKDIR /var/www/html
# Tue, 16 Oct 2018 09:56:13 GMT
EXPOSE 80/tcp
# Tue, 16 Oct 2018 09:56:14 GMT
CMD ["apache2-foreground"]
# Tue, 16 Oct 2018 15:46:06 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 16 Oct 2018 15:50:26 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Tue, 16 Oct 2018 15:50:43 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Tue, 16 Oct 2018 15:50:45 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 16 Oct 2018 15:50:46 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Tue, 16 Oct 2018 15:50:51 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.27
# Tue, 16 Oct 2018 15:50:51 GMT
ENV MEDIAWIKI_BRANCH=REL1_27
# Tue, 16 Oct 2018 15:50:52 GMT
ENV MEDIAWIKI_VERSION=1.27.5
# Tue, 16 Oct 2018 15:50:53 GMT
ENV MEDIAWIKI_SHA512=2f341ed5afab24b81c315db6bcc58dd617f95231f71408c08bb2a8b974c95b7edd93d0f3c857f24058111c3228b9919a0f1c2fd2f85be940dc571e390225027a
# Tue, 16 Oct 2018 15:51:10 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:4b7ffdf9817f718c84be550e8edf757070396d69165fa729c6ddd4e775428eb2`  
		Last Modified: Tue, 16 Oct 2018 09:04:44 GMT  
		Size: 21.2 MB (21162965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20460378a8f38aacfeb9a0bcf3a38abbaebb8845cf0f7ca8c5f8ccb51f3ba5d8`  
		Last Modified: Tue, 16 Oct 2018 10:20:49 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecb7e6fb4c6270cb10f9b8f7aa93b2d05eca8e4ca542ae6b884f3d507b3f2c06`  
		Last Modified: Tue, 16 Oct 2018 10:21:09 GMT  
		Size: 57.4 MB (57447518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ad837638c5f551ce2ed0722f0aa0206be6b2503befb732461de20785c38ed13`  
		Last Modified: Tue, 16 Oct 2018 10:20:48 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02b8207a3bfbe878b8a8d846a774c3ce482e349d482e7084559f88b12618ffb1`  
		Last Modified: Tue, 16 Oct 2018 10:20:52 GMT  
		Size: 16.7 MB (16650918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7198acceff99d48ae548b76f8e9eb26d52d8a63521d95d7db38554594b5d1223`  
		Last Modified: Tue, 16 Oct 2018 10:20:47 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e62a81208df875e54460875df6afbac9065b4afc56282d9fb756acffa5656a7`  
		Last Modified: Tue, 16 Oct 2018 10:20:46 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5a783b15fb65ce49afc889cc25e5744af9318920f2c2b5419dc1d6209f71d6a`  
		Last Modified: Tue, 16 Oct 2018 10:20:46 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b8615ebbc988042c7c4db62198beea70acc923ccc2b3f98aba803a3947a68fa`  
		Last Modified: Tue, 16 Oct 2018 10:20:46 GMT  
		Size: 510.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ece25366f010e684b086e074dd441893c18b0869f29bb35473d29cff7a90ec0`  
		Last Modified: Tue, 16 Oct 2018 10:27:34 GMT  
		Size: 12.4 MB (12378176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acac26b0a955b93606c1bda892dde9998d0d2fdb2596d3aff3584aef5710399f`  
		Last Modified: Tue, 16 Oct 2018 10:27:33 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec478cc93f457864ca960a4b547e77a9fe3fca360a8d149dd38bfce21870e81a`  
		Last Modified: Tue, 16 Oct 2018 10:27:37 GMT  
		Size: 13.3 MB (13295450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4caa3f53725c324c788b8fb4f7ceadb7b2207091076e9bfc31c3778eb4a7774f`  
		Last Modified: Tue, 16 Oct 2018 10:27:33 GMT  
		Size: 2.2 KB (2193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4418bf006c01b1197d0e31adb36ac7ecce3c0a72df177cd80624df5fdc809644`  
		Last Modified: Tue, 16 Oct 2018 10:27:33 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9693bbf3add9170f48816064ebdd75b28a486a6a87e97177b68837772e2e804a`  
		Last Modified: Tue, 16 Oct 2018 15:53:34 GMT  
		Size: 54.0 MB (53981869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faa9c6ccfdd7d68fe0a0212b0bef24e21fce6a6056f3dd70d3dd5804a037e92d`  
		Last Modified: Tue, 16 Oct 2018 15:53:15 GMT  
		Size: 1.5 MB (1485553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6403912d93cc9e02cc0a3b9532cccb22c4adad55e010e33656f8268dc446fa5c`  
		Last Modified: Tue, 16 Oct 2018 15:53:15 GMT  
		Size: 392.2 KB (392163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae5bf14fcd40fa5b3501e9b7cecb9ba815ce2a3478cb5bb93620857b842cd15f`  
		Last Modified: Tue, 16 Oct 2018 15:53:15 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce74c7219f519d3e5a570c95a74a92e1580e36ef64e88bcc59a52f1030bab137`  
		Last Modified: Tue, 16 Oct 2018 15:53:15 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a56d2d132436a61038533dedeab0dd5a374705b25852a2a34647f91f6afd5b7`  
		Last Modified: Tue, 16 Oct 2018 15:53:33 GMT  
		Size: 31.9 MB (31933987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:latest` - linux; arm variant v7

```console
$ docker pull mediawiki@sha256:f85a6008eb59054e7af130a286a8e14fa0e133862f082ae21ffac4c10e93cad1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.7 MB (206676783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb4d374b8dc475c09f0003ebce3a4c221294069b92edf6122a29351522ca2434`
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
# Tue, 16 Oct 2018 12:31:35 GMT
ENV PHP_VERSION=7.2.11
# Tue, 16 Oct 2018 12:31:36 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.11.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.11.tar.xz.asc/from/this/mirror
# Tue, 16 Oct 2018 12:31:36 GMT
ENV PHP_SHA256=da1a705c0bc46410e330fc6baa967666c8cd2985378fb9707c01a8e33b01d985 PHP_MD5=
# Tue, 16 Oct 2018 12:31:50 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 16 Oct 2018 12:31:51 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 16 Oct 2018 12:34:37 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 16 Oct 2018 12:34:39 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Tue, 16 Oct 2018 12:34:40 GMT
RUN docker-php-ext-enable sodium
# Tue, 16 Oct 2018 12:34:41 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 16 Oct 2018 12:34:41 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 16 Oct 2018 12:34:42 GMT
WORKDIR /var/www/html
# Tue, 16 Oct 2018 12:34:42 GMT
EXPOSE 80/tcp
# Tue, 16 Oct 2018 12:34:43 GMT
CMD ["apache2-foreground"]
# Tue, 16 Oct 2018 15:42:05 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python3 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 16 Oct 2018 15:44:59 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Tue, 16 Oct 2018 15:45:15 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu 	&& docker-php-ext-enable apcu
# Tue, 16 Oct 2018 15:45:16 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 16 Oct 2018 15:45:18 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Tue, 16 Oct 2018 15:45:18 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.31
# Tue, 16 Oct 2018 15:45:19 GMT
ENV MEDIAWIKI_BRANCH=REL1_31
# Tue, 16 Oct 2018 15:45:19 GMT
ENV MEDIAWIKI_VERSION=1.31.1
# Tue, 16 Oct 2018 15:45:19 GMT
ENV MEDIAWIKI_SHA512=ee49649cc37d0a7d45a7c6d90c822c2a595df290be2b5bf085affbec3318768700a458a6e5b5b7e437651400b9641424429d6d304f870c22ec63fae86ffc5152
# Tue, 16 Oct 2018 15:45:37 GMT
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
	-	`sha256:d03f74c911913f4aa68e96a8cb2444d85dc33d3b2d8ba5e1b0f12f94e5286121`  
		Last Modified: Tue, 16 Oct 2018 13:26:46 GMT  
		Size: 12.5 MB (12479383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a04cdad87bc3b7a5026c880b6e397465d27c0f0294938b69fcf7e58070babfcd`  
		Last Modified: Tue, 16 Oct 2018 13:26:43 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:428c54d2010e5274ed09c896eea424977cd5493fbc8a20ad5e71adfa868a539d`  
		Last Modified: Tue, 16 Oct 2018 13:26:48 GMT  
		Size: 13.9 MB (13927117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2edf7092f52263f330a951d3ef9051c580cb63b6712333b8080fd2350a8d622a`  
		Last Modified: Tue, 16 Oct 2018 13:26:43 GMT  
		Size: 2.2 KB (2191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4237cc7586b0378fd2144bc20a38b562c77bb762546581cef2753f0b678de164`  
		Last Modified: Tue, 16 Oct 2018 13:26:43 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6e1301067258438305c74d9ed9d845734d183bab1c6a053f25c175ab2dcce1b`  
		Last Modified: Tue, 16 Oct 2018 13:26:44 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:033abcf4a2df14f959cbaa1cb907bf95890e8eb48f635713da2981a922130643`  
		Last Modified: Tue, 16 Oct 2018 15:51:48 GMT  
		Size: 53.5 MB (53489566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3899cc11fca9fd65a23516801e6d483ff4e8a8ace0c3bbad6d1bf773923103b`  
		Last Modified: Tue, 16 Oct 2018 15:51:23 GMT  
		Size: 1.6 MB (1636865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed43eef1f4cd79e0d447d0f83b309ae8353fd132816f0450445fa66601158125`  
		Last Modified: Tue, 16 Oct 2018 15:51:25 GMT  
		Size: 387.4 KB (387429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64055abfad5888369e1ed8689f72a6f3c4940d50bc7d21ce0d8caa92690c078c`  
		Last Modified: Tue, 16 Oct 2018 15:51:23 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9e088e420efc3d714c4e46498213e17a1efc6e4082b58f92b63d3d73ad955f`  
		Last Modified: Tue, 16 Oct 2018 15:51:23 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2a8bccaf4444ec3affebbc4001e61c118f727488386655736235f1f2d671954`  
		Last Modified: Tue, 16 Oct 2018 15:51:42 GMT  
		Size: 35.8 MB (35753944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:latest` - linux; arm64 variant v8

```console
$ docker pull mediawiki@sha256:44ffe8d4078d33a6ca1a4799cfdf44a2c0025c9cd21d043a4f38d90257633929
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.1 MB (208080243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b208e944cb7e755680b7263bb4f7054d90055588f8cf8f9085f55ccd5fa0c900`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 16 Oct 2018 08:43:45 GMT
ADD file:e83c09a5cfc1cecaeba6b736737d551fe0f5d3f204ec3fc984fe768003774f81 in / 
# Tue, 16 Oct 2018 08:43:46 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 09:37:09 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 16 Oct 2018 09:37:10 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 16 Oct 2018 09:38:24 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 16 Oct 2018 09:38:25 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 16 Oct 2018 09:38:27 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 16 Oct 2018 09:49:43 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 09:49:44 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 16 Oct 2018 09:49:44 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 16 Oct 2018 09:49:46 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 16 Oct 2018 09:49:47 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 16 Oct 2018 09:49:49 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 16 Oct 2018 09:49:51 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 16 Oct 2018 09:49:51 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 16 Oct 2018 09:49:52 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Tue, 16 Oct 2018 09:49:53 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 16 Oct 2018 09:49:53 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 16 Oct 2018 09:49:54 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 16 Oct 2018 13:56:08 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 16 Oct 2018 13:56:09 GMT
ENV PHP_VERSION=7.0.32
# Tue, 16 Oct 2018 13:56:10 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.32.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.32.tar.xz.asc/from/this/mirror
# Tue, 16 Oct 2018 13:56:10 GMT
ENV PHP_SHA256=ff6f62afeb32c71b3b89ecbd42950ef6c5e0c329cc6e1c58ffac47e6f1f883c4 PHP_MD5=
# Tue, 16 Oct 2018 13:56:54 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 16 Oct 2018 13:56:55 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 16 Oct 2018 14:04:23 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 16 Oct 2018 14:04:25 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Tue, 16 Oct 2018 14:04:26 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 16 Oct 2018 14:04:27 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 16 Oct 2018 14:04:28 GMT
WORKDIR /var/www/html
# Tue, 16 Oct 2018 14:04:33 GMT
EXPOSE 80/tcp
# Tue, 16 Oct 2018 14:04:34 GMT
CMD ["apache2-foreground"]
# Wed, 17 Oct 2018 06:04:36 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 17 Oct 2018 06:07:58 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Wed, 17 Oct 2018 06:08:19 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Wed, 17 Oct 2018 06:08:22 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 17 Oct 2018 06:08:24 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Wed, 17 Oct 2018 06:08:32 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.27
# Wed, 17 Oct 2018 06:08:32 GMT
ENV MEDIAWIKI_BRANCH=REL1_27
# Wed, 17 Oct 2018 06:08:33 GMT
ENV MEDIAWIKI_VERSION=1.27.5
# Wed, 17 Oct 2018 06:08:34 GMT
ENV MEDIAWIKI_SHA512=2f341ed5afab24b81c315db6bcc58dd617f95231f71408c08bb2a8b974c95b7edd93d0f3c857f24058111c3228b9919a0f1c2fd2f85be940dc571e390225027a
# Wed, 17 Oct 2018 06:08:45 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:141796bfcf0d5a5edb072138e517bf85deef4f47f40afb51ba8705bec3b921dd`  
		Last Modified: Tue, 16 Oct 2018 08:50:53 GMT  
		Size: 20.3 MB (20331585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa887e40ae8a2b78a8eba6e16f2902853327c922f0110c4bd2e4728fb79b305b`  
		Last Modified: Tue, 16 Oct 2018 15:06:53 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99271cba459dd39a663363166e510f7cc1ebf18b221d33bb6c4e26d54774a5d7`  
		Last Modified: Tue, 16 Oct 2018 15:08:26 GMT  
		Size: 57.6 MB (57596184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:440b75b2132ae75a804754d6dd4f874b688e2f6a1d034fd0d2de6e496b8f1f0b`  
		Last Modified: Tue, 16 Oct 2018 15:06:52 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9716126acdb685c5ea84948fb47306c1b2d74752160d8de98d14cac45c1734a`  
		Last Modified: Tue, 16 Oct 2018 15:10:47 GMT  
		Size: 16.7 MB (16709722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92cd9f340623c79febab023e7bed21713ff7c5a54222f6e864d484df51e5eb5e`  
		Last Modified: Tue, 16 Oct 2018 15:10:15 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f4aca00aec726971992cfa7cb081238ab6d32d57c69cf024ee2690cef29374d`  
		Last Modified: Tue, 16 Oct 2018 15:10:14 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef70a607bae65cff09c6a3fd4add05727d00f023e83540e9823c8c73ce65afba`  
		Last Modified: Tue, 16 Oct 2018 15:10:14 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3482f362267a35679e02d84771ac1e78594ccb8598b70cfdb652909f558ae451`  
		Last Modified: Tue, 16 Oct 2018 15:10:13 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50624813ae71a53d58d6982af86920e9fdbaec7b06c8329e4ea88181ea682607`  
		Last Modified: Tue, 16 Oct 2018 15:43:35 GMT  
		Size: 12.4 MB (12378440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:154f5759e9b16e9a04f92afd14a7b5d5c2a92f781638c704f740986d5232caca`  
		Last Modified: Tue, 16 Oct 2018 15:43:33 GMT  
		Size: 502.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:116563a0376986b0dffd04b739a472b46be9e087b0e1aff085c5ee17cf08e287`  
		Last Modified: Tue, 16 Oct 2018 15:43:39 GMT  
		Size: 13.1 MB (13092238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:204e51532312e737fb45fedfafbff35b2381bbd51ed63b8bedadd5b79c86a8fc`  
		Last Modified: Tue, 16 Oct 2018 15:43:33 GMT  
		Size: 2.2 KB (2193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6520db0429b6facca4c9fed9a535ab187a6755dde45ba303c81da97db840095f`  
		Last Modified: Tue, 16 Oct 2018 15:43:33 GMT  
		Size: 905.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa8e3dce0d2b00c07b8b1d81365aba40a107ee790a3196a44c6e91de872d741b`  
		Last Modified: Wed, 17 Oct 2018 06:12:26 GMT  
		Size: 54.1 MB (54149817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad93e1fe64d7067a9db1021e3c4e3eaab44558105ebde6a50ac0f9ba3a5645e2`  
		Last Modified: Wed, 17 Oct 2018 06:12:05 GMT  
		Size: 1.5 MB (1486658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ac1f5aa91252d9dafcc4e5ba74eef3f7c3fa65cb1931cbe39ab155c07031f73`  
		Last Modified: Wed, 17 Oct 2018 06:12:02 GMT  
		Size: 395.0 KB (394970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56946bf185cff149538ad11ea4912945b25b68e8a7cab8f2457efd2701cef4d9`  
		Last Modified: Wed, 17 Oct 2018 06:12:02 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85b5171d7d075f37055f4a31e64767d5854ad0057627cd4b2564dd3790d838d2`  
		Last Modified: Wed, 17 Oct 2018 06:12:02 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f7948973641c4f1ad24c42af64c7125499a4f05252ec0d0507b6567ebef26f8`  
		Last Modified: Wed, 17 Oct 2018 06:12:24 GMT  
		Size: 31.9 MB (31933727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:latest` - linux; 386

```console
$ docker pull mediawiki@sha256:b21d1d70242702efdbb70168a3c286b30076caec26c6628394dc286be4ef5da1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.3 MB (229329317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e869b7784bacd85cc3b9f01934da9edaa4e408bd1d1e3e46f97553d3dc015024`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 16 Oct 2018 10:49:05 GMT
ADD file:a71ef0e9adb528ae2dc5ca3395654522c23762d8936a4902378c6749bb357582 in / 
# Tue, 16 Oct 2018 10:49:05 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 11:59:35 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 16 Oct 2018 11:59:36 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 16 Oct 2018 12:00:22 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:00:23 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 16 Oct 2018 12:00:24 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 16 Oct 2018 12:11:59 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:11:59 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 16 Oct 2018 12:12:00 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 16 Oct 2018 12:12:01 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 16 Oct 2018 12:12:02 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 16 Oct 2018 12:12:03 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 16 Oct 2018 12:12:04 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 16 Oct 2018 12:12:04 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 16 Oct 2018 12:12:05 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Tue, 16 Oct 2018 12:12:05 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 16 Oct 2018 12:12:05 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 16 Oct 2018 12:12:05 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 16 Oct 2018 17:29:54 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 16 Oct 2018 17:29:54 GMT
ENV PHP_VERSION=7.0.32
# Tue, 16 Oct 2018 17:29:55 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.32.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.32.tar.xz.asc/from/this/mirror
# Tue, 16 Oct 2018 17:29:55 GMT
ENV PHP_SHA256=ff6f62afeb32c71b3b89ecbd42950ef6c5e0c329cc6e1c58ffac47e6f1f883c4 PHP_MD5=
# Tue, 16 Oct 2018 17:30:07 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 16 Oct 2018 17:30:07 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 16 Oct 2018 17:34:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 16 Oct 2018 17:34:07 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Tue, 16 Oct 2018 17:34:07 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 16 Oct 2018 17:34:08 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 16 Oct 2018 17:34:08 GMT
WORKDIR /var/www/html
# Tue, 16 Oct 2018 17:34:08 GMT
EXPOSE 80/tcp
# Tue, 16 Oct 2018 17:34:08 GMT
CMD ["apache2-foreground"]
# Wed, 17 Oct 2018 07:58:33 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 17 Oct 2018 07:59:59 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Wed, 17 Oct 2018 08:00:08 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Wed, 17 Oct 2018 08:00:09 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 17 Oct 2018 08:00:09 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Wed, 17 Oct 2018 08:00:10 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.27
# Wed, 17 Oct 2018 08:00:10 GMT
ENV MEDIAWIKI_BRANCH=REL1_27
# Wed, 17 Oct 2018 08:00:10 GMT
ENV MEDIAWIKI_VERSION=1.27.5
# Wed, 17 Oct 2018 08:00:10 GMT
ENV MEDIAWIKI_SHA512=2f341ed5afab24b81c315db6bcc58dd617f95231f71408c08bb2a8b974c95b7edd93d0f3c857f24058111c3228b9919a0f1c2fd2f85be940dc571e390225027a
# Wed, 17 Oct 2018 08:00:18 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:2b7bcb618c4033f37486fd700e6d0debf2260935f888a192119c41eaddd29978`  
		Last Modified: Tue, 16 Oct 2018 11:06:15 GMT  
		Size: 23.1 MB (23126605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ac9f5e161441372e549d094f25b4640689548d53bb47c34a8ced01a74b8ad6f`  
		Last Modified: Tue, 16 Oct 2018 19:08:04 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cac64c78cd80e7e59f4a0fd49c7632e4799f427a439c1339df81ad969a7aed3`  
		Last Modified: Tue, 16 Oct 2018 19:08:39 GMT  
		Size: 71.5 MB (71484645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a7cfe59c8cc409c1eb116e2905e9a239f1f1a26128b6fd15cf1217563b373e4`  
		Last Modified: Tue, 16 Oct 2018 19:08:04 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99051976b849498ac53e2ffcd090cb770169576c8fe2ba03b72ec38559319cff`  
		Last Modified: Tue, 16 Oct 2018 19:10:57 GMT  
		Size: 17.6 MB (17562598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8baa008090db722001228a8b24993ff76cc41b4f3c5ee668b4ba3a9a91a8beb`  
		Last Modified: Tue, 16 Oct 2018 19:10:51 GMT  
		Size: 1.2 KB (1243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8f645450e0e3cf05fbcd8a2ca3ca89deb3a97661b07a8e11130055680df3138`  
		Last Modified: Tue, 16 Oct 2018 19:11:16 GMT  
		Size: 429.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a636e140725a9abf6bfca67dce52d8d0729b612493c86addf510f88cd41ff73`  
		Last Modified: Tue, 16 Oct 2018 19:10:50 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c899e0d2536fbfcfaa4ef00f9497a5891261cfb1fca3e776a428e461db7ee410`  
		Last Modified: Tue, 16 Oct 2018 19:10:50 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0cba1ef0564202ac1445408ed856bfc567867695100138b6278c4a50680cf7a`  
		Last Modified: Tue, 16 Oct 2018 19:49:33 GMT  
		Size: 12.4 MB (12379305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ca96ddbed1b213bc6b7cdd27cc821791a1a1594630bd9afbae4b648ee450255`  
		Last Modified: Tue, 16 Oct 2018 19:49:31 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b970950633084b70af418e3cf114d23a70f27e9e8fa032a907328f795aef1b81`  
		Last Modified: Tue, 16 Oct 2018 19:49:36 GMT  
		Size: 14.4 MB (14393946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add8f03f18325d56159cd2f3fcad9119a2bab20fd859fde0738145f82e5c6b8f`  
		Last Modified: Tue, 16 Oct 2018 19:49:31 GMT  
		Size: 2.2 KB (2193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c7c94c298264615aa9da4abf6b9e47f4b11d3c699c9d6a624e04f84679855ad`  
		Last Modified: Tue, 16 Oct 2018 19:49:31 GMT  
		Size: 903.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05cdbec925eca59dd43b5ffcb57c08abbae8d13d76179431dbc03b1041018770`  
		Last Modified: Wed, 17 Oct 2018 08:03:13 GMT  
		Size: 56.5 MB (56499573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb6e8e69dc478801be87de36f35f63ac515bae458b89124dbce6b3699a00296`  
		Last Modified: Wed, 17 Oct 2018 08:02:35 GMT  
		Size: 1.6 MB (1552701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d0ff586df7ffffb2c50c9cd9c0ed992526ca2ef675a027011984d3e2e63ae83`  
		Last Modified: Wed, 17 Oct 2018 08:02:34 GMT  
		Size: 389.4 KB (389353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28fc31eb8ac64e77e115c05b989b5f57b1a9f7f20cb66d1f997c54aa74fca7dc`  
		Last Modified: Wed, 17 Oct 2018 08:02:34 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b257eceaa8885e119f77ac04ebf8473d4e820244c945abefb769c9abe444a6e`  
		Last Modified: Wed, 17 Oct 2018 08:02:34 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79cb8aad099aaa347b0c7f6b94c0cadcd8f36533710f7a793b86a4660ca59184`  
		Last Modified: Wed, 17 Oct 2018 08:02:51 GMT  
		Size: 31.9 MB (31933705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:latest` - linux; ppc64le

```console
$ docker pull mediawiki@sha256:e76eacfa4ae216c9b7f4e6165ad7fa554f544f47ee5ae4d8b0d46e602777552f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.4 MB (218449205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:814f618dcdcccb99814687061d3b8b49e32ef553c89429c2a0a130c4577e6570`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 16 Oct 2018 08:22:25 GMT
ADD file:b1fa1d0ffa2b206311dfd95642d74c3312565a1ec2e6e3a2197bfd2a4b3de6c6 in / 
# Tue, 16 Oct 2018 08:22:30 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 08:36:20 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 16 Oct 2018 08:36:20 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 16 Oct 2018 08:38:14 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 16 Oct 2018 08:38:16 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 16 Oct 2018 08:38:19 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 16 Oct 2018 08:47:02 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 08:47:04 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 16 Oct 2018 08:47:06 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 16 Oct 2018 08:47:12 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 16 Oct 2018 08:47:15 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 16 Oct 2018 08:47:21 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 16 Oct 2018 08:47:25 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 16 Oct 2018 08:47:26 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 16 Oct 2018 08:47:27 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Tue, 16 Oct 2018 08:47:28 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 16 Oct 2018 08:47:30 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 16 Oct 2018 08:47:33 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 16 Oct 2018 11:37:55 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 16 Oct 2018 11:37:56 GMT
ENV PHP_VERSION=7.0.32
# Tue, 16 Oct 2018 11:37:57 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.32.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.32.tar.xz.asc/from/this/mirror
# Tue, 16 Oct 2018 11:37:58 GMT
ENV PHP_SHA256=ff6f62afeb32c71b3b89ecbd42950ef6c5e0c329cc6e1c58ffac47e6f1f883c4 PHP_MD5=
# Tue, 16 Oct 2018 11:38:37 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 16 Oct 2018 11:38:41 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 16 Oct 2018 11:42:36 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 16 Oct 2018 11:42:38 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Tue, 16 Oct 2018 11:42:39 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 16 Oct 2018 11:42:42 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 16 Oct 2018 11:42:43 GMT
WORKDIR /var/www/html
# Tue, 16 Oct 2018 11:42:44 GMT
EXPOSE 80/tcp
# Tue, 16 Oct 2018 11:42:44 GMT
CMD ["apache2-foreground"]
# Tue, 16 Oct 2018 20:12:30 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 16 Oct 2018 20:14:29 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Tue, 16 Oct 2018 20:14:47 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Tue, 16 Oct 2018 20:14:54 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 16 Oct 2018 20:14:59 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Tue, 16 Oct 2018 20:15:00 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.27
# Tue, 16 Oct 2018 20:15:01 GMT
ENV MEDIAWIKI_BRANCH=REL1_27
# Tue, 16 Oct 2018 20:15:03 GMT
ENV MEDIAWIKI_VERSION=1.27.5
# Tue, 16 Oct 2018 20:15:04 GMT
ENV MEDIAWIKI_SHA512=2f341ed5afab24b81c315db6bcc58dd617f95231f71408c08bb2a8b974c95b7edd93d0f3c857f24058111c3228b9919a0f1c2fd2f85be940dc571e390225027a
# Tue, 16 Oct 2018 20:15:27 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:202f659db3e53c01ac947538d8b37251e9fa16c4a6a699dc6c2a8910afcdfed4`  
		Last Modified: Tue, 16 Oct 2018 08:30:59 GMT  
		Size: 22.7 MB (22740583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba0f6d499d48eb19dc9d2e6453db815f1d64074f2775cbd9cac4928c0461cdbc`  
		Last Modified: Tue, 16 Oct 2018 12:20:25 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f354790bdfa97d0b204ca9cf4402d437e713049020362b7ad4af49ef47efb984`  
		Last Modified: Tue, 16 Oct 2018 12:21:25 GMT  
		Size: 61.8 MB (61809966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:745377e23f5d138b115edff3b4ebf7c90114d7d658bff2cd8453aaffc66a04db`  
		Last Modified: Tue, 16 Oct 2018 12:20:28 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6ca68ed7b31a0303cdb6d7669c24c6dedb55ddece4d992172fb000dc3f93eeb`  
		Last Modified: Tue, 16 Oct 2018 12:23:21 GMT  
		Size: 17.3 MB (17348500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba60179e94e0e6514a8bd50455affa30a26a572b16013a2b01ea060c2aaa60d3`  
		Last Modified: Tue, 16 Oct 2018 12:23:07 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9292d4db20fce2c69be0ea52392b7616f1846e01f9b70e0aadff84c1084bf254`  
		Last Modified: Tue, 16 Oct 2018 12:23:01 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a20d33fb196e2e93548afbb4d63cb3d16c02b0d6d342e94e77c6beca290525`  
		Last Modified: Tue, 16 Oct 2018 12:22:59 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c4ea029b99fcbbd8bfbfd74bd42ca81a84fbee060a87904f570a192fc958db5`  
		Last Modified: Tue, 16 Oct 2018 12:22:57 GMT  
		Size: 517.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c9720eb00827218a025ca83a1200da8fe81ff06a7addc7bb5bbe67a7135ce16`  
		Last Modified: Tue, 16 Oct 2018 12:48:36 GMT  
		Size: 12.4 MB (12378819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5df700c2238de8679c6dbb08bf02760e4e40bccf6ccaf35af683095dc66198ea`  
		Last Modified: Tue, 16 Oct 2018 12:48:33 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22b62e69dd460d061013a0b345cbdcfeb9adedbb59d021732cfca2a21eaf10de`  
		Last Modified: Tue, 16 Oct 2018 12:48:40 GMT  
		Size: 13.7 MB (13702592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc8b0e1276d18fb2703450c458d281a06a6bf5f57d56bfafa78804c108cfa33c`  
		Last Modified: Tue, 16 Oct 2018 12:48:33 GMT  
		Size: 2.2 KB (2194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1210917658a99e151617ddf0dded555475f0ec8ce36cd98daa699c042519fe8`  
		Last Modified: Tue, 16 Oct 2018 12:48:34 GMT  
		Size: 906.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e406cec386b4c449c6428e2ae5dc6f7677d1f5d173fb2b536a3d71ae16dfc121`  
		Last Modified: Tue, 16 Oct 2018 20:18:11 GMT  
		Size: 56.6 MB (56596313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f43efb949dce69d5327e901bc97faa44c380d96012f814fa33740e666bc1ab3`  
		Last Modified: Tue, 16 Oct 2018 20:17:52 GMT  
		Size: 1.5 MB (1530906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b93074650452c34e4a3bd7d8d9fe167cf458ae6688dc190a14f7ca5eedf8083`  
		Last Modified: Tue, 16 Oct 2018 20:17:52 GMT  
		Size: 400.4 KB (400382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c082530349e505f3093d4c9bec2ed7622e3f8f82f27cb4b700eeb6c1a1423130`  
		Last Modified: Tue, 16 Oct 2018 20:17:51 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69ee635cd230017d2bc1b368f6d42edd24f93f85202d8d24950baef9bfbd0001`  
		Last Modified: Tue, 16 Oct 2018 20:17:51 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65882f587f0e22183aa5dc102c5201529a1306d81e0cdd8b6359dd681854d123`  
		Last Modified: Tue, 16 Oct 2018 20:18:05 GMT  
		Size: 31.9 MB (31934083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mediawiki:legacy`

```console
$ docker pull mediawiki@sha256:2867f5673c59b6b8501e539c32974e2920b99707ed5cf6c3c7f2199c43a3e75b
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
$ docker pull mediawiki@sha256:d64bd7679700e65a82a633cb818ceab4fc6f14c888b6141fa527754ca0159519
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.1 MB (235055754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6a89448ee0b8fb2960e1fee6d77f1899f51f1f66d4b5c7e5cbcf65f04ffa833`
-	Entrypoint: `["docker-php-entrypoint"]`
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
# Tue, 16 Oct 2018 01:00:38 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Tue, 16 Oct 2018 01:00:38 GMT
ENV PHP_VERSION=7.1.23
# Tue, 16 Oct 2018 01:00:38 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.23.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.23.tar.xz.asc/from/this/mirror
# Tue, 16 Oct 2018 01:00:39 GMT
ENV PHP_SHA256=227a3c76133c3dc1cec937989456cbd89ed00e68e7260c651900dbe1f5b798bc PHP_MD5=
# Tue, 16 Oct 2018 01:00:47 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 16 Oct 2018 01:00:48 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 16 Oct 2018 01:04:08 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 16 Oct 2018 01:04:09 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Tue, 16 Oct 2018 01:04:09 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 16 Oct 2018 01:04:09 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 16 Oct 2018 01:04:10 GMT
WORKDIR /var/www/html
# Tue, 16 Oct 2018 01:04:10 GMT
EXPOSE 80/tcp
# Tue, 16 Oct 2018 01:04:10 GMT
CMD ["apache2-foreground"]
# Tue, 16 Oct 2018 12:53:26 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:57:04 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Tue, 16 Oct 2018 12:57:25 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Tue, 16 Oct 2018 12:57:26 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 16 Oct 2018 12:57:27 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Tue, 16 Oct 2018 12:57:28 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.30
# Tue, 16 Oct 2018 12:57:28 GMT
ENV MEDIAWIKI_BRANCH=REL1_30
# Tue, 16 Oct 2018 12:57:28 GMT
ENV MEDIAWIKI_VERSION=1.30.1
# Tue, 16 Oct 2018 12:57:28 GMT
ENV MEDIAWIKI_SHA512=bda37c7b1be4e1532ee8357843140e666ed550c4f54b53873d163d4b53ed87a80c0ad8a11d189577d32e554488aed517fb9477f2da04d7e7d87014049a2eabbe
# Tue, 16 Oct 2018 12:57:40 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
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
	-	`sha256:9e7291f0ec69803cea76096836df0e34bbeaf66dfd616a7ec83818b1636909d1`  
		Last Modified: Tue, 16 Oct 2018 03:40:22 GMT  
		Size: 12.6 MB (12577011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53696e01fd9f1436098c80acadfb15492dd1f9792582e2ae4e3097b9ce1e8ba6`  
		Last Modified: Tue, 16 Oct 2018 03:40:20 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73f81b83e9cfd3da5533fa50364008bb4719174d46078acd2e627315cc24e1c0`  
		Last Modified: Tue, 16 Oct 2018 03:40:24 GMT  
		Size: 14.2 MB (14231655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c24b68640e1f94606e9221f7877c52d432092a0b4f73ef130c902f9ebf158bc`  
		Last Modified: Tue, 16 Oct 2018 03:40:21 GMT  
		Size: 2.2 KB (2192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ab8dcc24d5bb6d730451ed098a12a58a7e2035eb236e4a85b05eb317a8fa144`  
		Last Modified: Tue, 16 Oct 2018 03:40:20 GMT  
		Size: 903.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6374dd5915ece75256dd98f030ca0e18076f22e035907132ba85c48a9dba68d8`  
		Last Modified: Tue, 16 Oct 2018 13:04:46 GMT  
		Size: 56.3 MB (56343950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bf439f9c2e8abf34d2797f5f3d10e11e326d54e0c5014b3efd786cad7ba2fdf`  
		Last Modified: Tue, 16 Oct 2018 13:04:17 GMT  
		Size: 1.7 MB (1663096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06639a9992684650b9e5db9e1d2632d9846d444f9d66a35c97203e56e25b8ed3`  
		Last Modified: Tue, 16 Oct 2018 13:04:16 GMT  
		Size: 408.6 KB (408587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcb287a11f2105184483d0c32732d9a02a3bb4104f4162117d05222825543ae2`  
		Last Modified: Tue, 16 Oct 2018 13:04:16 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:685278fcca1baf526197a707dc2f2fb0bad4a94cb960408fb4d4241dc396aaf9`  
		Last Modified: Tue, 16 Oct 2018 13:04:16 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08d6fd948824d182fa60816fdef73b2585fff6efd4daa5108cfd4e9ef5fac172`  
		Last Modified: Tue, 16 Oct 2018 13:04:57 GMT  
		Size: 42.8 MB (42782321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:legacy` - linux; arm variant v5

```console
$ docker pull mediawiki@sha256:ff4db9d69f13e3d1d56d61b8d29fe13d2c4fbd6989e0768aeaf9aef43ee5f362
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.2 MB (220165795 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d21ec688788d89a20a2adc9bf309c53f53cf147fbd2ddb34b37012712fe5294`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 16 Oct 2018 08:55:22 GMT
ADD file:8f2148adabc29587e17b50138f305f39e94e0e2bd9211a9f913fef56013ac35a in / 
# Tue, 16 Oct 2018 08:55:23 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 08:59:24 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 16 Oct 2018 08:59:25 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 16 Oct 2018 09:00:38 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 16 Oct 2018 09:00:40 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 16 Oct 2018 09:00:41 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 16 Oct 2018 09:01:03 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 09:01:04 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 16 Oct 2018 09:01:04 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 16 Oct 2018 09:01:05 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 16 Oct 2018 09:01:06 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 16 Oct 2018 09:01:08 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 16 Oct 2018 09:01:09 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 16 Oct 2018 09:01:09 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 16 Oct 2018 09:01:09 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Tue, 16 Oct 2018 09:01:10 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 16 Oct 2018 09:01:10 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 16 Oct 2018 09:01:10 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 16 Oct 2018 09:17:41 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Tue, 16 Oct 2018 09:17:41 GMT
ENV PHP_VERSION=7.1.23
# Tue, 16 Oct 2018 09:17:42 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.23.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.23.tar.xz.asc/from/this/mirror
# Tue, 16 Oct 2018 09:17:42 GMT
ENV PHP_SHA256=227a3c76133c3dc1cec937989456cbd89ed00e68e7260c651900dbe1f5b798bc PHP_MD5=
# Tue, 16 Oct 2018 09:18:00 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 16 Oct 2018 09:18:01 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 16 Oct 2018 09:20:49 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 16 Oct 2018 09:20:51 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Tue, 16 Oct 2018 09:20:51 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 16 Oct 2018 09:20:52 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 16 Oct 2018 09:20:52 GMT
WORKDIR /var/www/html
# Tue, 16 Oct 2018 09:20:53 GMT
EXPOSE 80/tcp
# Tue, 16 Oct 2018 09:20:53 GMT
CMD ["apache2-foreground"]
# Tue, 16 Oct 2018 15:41:12 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 16 Oct 2018 15:44:23 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Tue, 16 Oct 2018 15:44:40 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Tue, 16 Oct 2018 15:44:41 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 16 Oct 2018 15:44:43 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Tue, 16 Oct 2018 15:44:43 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.30
# Tue, 16 Oct 2018 15:44:43 GMT
ENV MEDIAWIKI_BRANCH=REL1_30
# Tue, 16 Oct 2018 15:44:44 GMT
ENV MEDIAWIKI_VERSION=1.30.1
# Tue, 16 Oct 2018 15:44:44 GMT
ENV MEDIAWIKI_SHA512=bda37c7b1be4e1532ee8357843140e666ed550c4f54b53873d163d4b53ed87a80c0ad8a11d189577d32e554488aed517fb9477f2da04d7e7d87014049a2eabbe
# Tue, 16 Oct 2018 15:45:04 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:4b7ffdf9817f718c84be550e8edf757070396d69165fa729c6ddd4e775428eb2`  
		Last Modified: Tue, 16 Oct 2018 09:04:44 GMT  
		Size: 21.2 MB (21162965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20460378a8f38aacfeb9a0bcf3a38abbaebb8845cf0f7ca8c5f8ccb51f3ba5d8`  
		Last Modified: Tue, 16 Oct 2018 10:20:49 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecb7e6fb4c6270cb10f9b8f7aa93b2d05eca8e4ca542ae6b884f3d507b3f2c06`  
		Last Modified: Tue, 16 Oct 2018 10:21:09 GMT  
		Size: 57.4 MB (57447518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ad837638c5f551ce2ed0722f0aa0206be6b2503befb732461de20785c38ed13`  
		Last Modified: Tue, 16 Oct 2018 10:20:48 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02b8207a3bfbe878b8a8d846a774c3ce482e349d482e7084559f88b12618ffb1`  
		Last Modified: Tue, 16 Oct 2018 10:20:52 GMT  
		Size: 16.7 MB (16650918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7198acceff99d48ae548b76f8e9eb26d52d8a63521d95d7db38554594b5d1223`  
		Last Modified: Tue, 16 Oct 2018 10:20:47 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e62a81208df875e54460875df6afbac9065b4afc56282d9fb756acffa5656a7`  
		Last Modified: Tue, 16 Oct 2018 10:20:46 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5a783b15fb65ce49afc889cc25e5744af9318920f2c2b5419dc1d6209f71d6a`  
		Last Modified: Tue, 16 Oct 2018 10:20:46 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b8615ebbc988042c7c4db62198beea70acc923ccc2b3f98aba803a3947a68fa`  
		Last Modified: Tue, 16 Oct 2018 10:20:46 GMT  
		Size: 510.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50dd48b7ddccec1ec18079845b9ce2caf8c6838680716199ba639163efb7c56b`  
		Last Modified: Tue, 16 Oct 2018 10:24:14 GMT  
		Size: 12.6 MB (12575087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adbc270ef31f010f95cb2cfee104d8c3c03fdc710ea87351b16d25430423d362`  
		Last Modified: Tue, 16 Oct 2018 10:24:12 GMT  
		Size: 502.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08923d9903627631fc1c8ff531f939577a842a9d500b16921ff37d73b31a0ab3`  
		Last Modified: Tue, 16 Oct 2018 10:24:17 GMT  
		Size: 13.6 MB (13566480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a430757c5b117496251da803088467ac9f77213ce086dc2a4b8bc7b507f5af10`  
		Last Modified: Tue, 16 Oct 2018 10:24:12 GMT  
		Size: 2.2 KB (2193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5deba410f5d388d0d57bd5939f8a1578b3116ccaa209b9b8d9427d15b16b655a`  
		Last Modified: Tue, 16 Oct 2018 10:24:12 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cdaab48cb863ad55ee24a28af44b3f4fe6d328d51836622ef1e585cdf937830`  
		Last Modified: Tue, 16 Oct 2018 15:52:43 GMT  
		Size: 54.0 MB (53981785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e94ff8209078121e755ebbdc64c8cf46843b9c611ac7530fde1f00ff16b4026`  
		Last Modified: Tue, 16 Oct 2018 15:52:25 GMT  
		Size: 1.6 MB (1593758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54e77b46632abac562bc9abd81b4e7e576ba786a9f1921883b78caaeeaf3f018`  
		Last Modified: Tue, 16 Oct 2018 15:52:24 GMT  
		Size: 397.7 KB (397737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5174768ffcd2e02f68c2d3820e29e517f84c3b7937681bfa826a56b92de8f93`  
		Last Modified: Tue, 16 Oct 2018 15:52:24 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcf806a5fb6014d6a135039c1d5d38080491786e3e4147e215c34058fa4e2ce8`  
		Last Modified: Tue, 16 Oct 2018 15:52:25 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67cd0e80dc83843f4e9c66e689351ac102c7600d675b21efeaa7dc31735ca1cc`  
		Last Modified: Tue, 16 Oct 2018 15:52:52 GMT  
		Size: 42.8 MB (42782502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:legacy` - linux; arm variant v7

```console
$ docker pull mediawiki@sha256:4341065a9b2cd689acb6ae9f6ec68dbb5657bb45def883fe98e207a1abdc322d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.0 MB (211010947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c7fad4fcd261ed78b41d2a8eb16cb5fb4709f4a848a8415880f352399aa2a0a`
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
# Tue, 16 Oct 2018 12:48:06 GMT
ENV PHP_VERSION=7.1.23
# Tue, 16 Oct 2018 12:48:06 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.23.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.23.tar.xz.asc/from/this/mirror
# Tue, 16 Oct 2018 12:48:07 GMT
ENV PHP_SHA256=227a3c76133c3dc1cec937989456cbd89ed00e68e7260c651900dbe1f5b798bc PHP_MD5=
# Tue, 16 Oct 2018 12:48:23 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 16 Oct 2018 12:48:28 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 16 Oct 2018 12:51:09 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 16 Oct 2018 12:51:10 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Tue, 16 Oct 2018 12:51:11 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 16 Oct 2018 12:51:11 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 16 Oct 2018 12:51:12 GMT
WORKDIR /var/www/html
# Tue, 16 Oct 2018 12:51:12 GMT
EXPOSE 80/tcp
# Tue, 16 Oct 2018 12:51:13 GMT
CMD ["apache2-foreground"]
# Tue, 16 Oct 2018 15:46:25 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 16 Oct 2018 15:50:26 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Tue, 16 Oct 2018 15:50:42 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Tue, 16 Oct 2018 15:50:43 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 16 Oct 2018 15:50:44 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Tue, 16 Oct 2018 15:50:45 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.30
# Tue, 16 Oct 2018 15:50:45 GMT
ENV MEDIAWIKI_BRANCH=REL1_30
# Tue, 16 Oct 2018 15:50:46 GMT
ENV MEDIAWIKI_VERSION=1.30.1
# Tue, 16 Oct 2018 15:50:46 GMT
ENV MEDIAWIKI_SHA512=bda37c7b1be4e1532ee8357843140e666ed550c4f54b53873d163d4b53ed87a80c0ad8a11d189577d32e554488aed517fb9477f2da04d7e7d87014049a2eabbe
# Tue, 16 Oct 2018 15:51:03 GMT
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
	-	`sha256:c69abec5f1aa3c6fa125b88e96288e5529ef50fea2e5bd95855faf4303bd985a`  
		Last Modified: Tue, 16 Oct 2018 13:30:09 GMT  
		Size: 12.6 MB (12575068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:781c40d49c732d45cc4865fcb301531f83d41c1ea97119586152bb08e9fb67c4`  
		Last Modified: Tue, 16 Oct 2018 13:30:07 GMT  
		Size: 504.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97efaae01b0f68ed032d9a3983d8bf2ff4a5f265355f2eb403dcaa52d0912a24`  
		Last Modified: Tue, 16 Oct 2018 13:30:13 GMT  
		Size: 13.1 MB (13101414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b2ad687c6f0a760fa678838711094ef352d30c3e3770cd342faa28ad6e5f9a`  
		Last Modified: Tue, 16 Oct 2018 13:30:07 GMT  
		Size: 2.2 KB (2194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9b12afc207450a5527138259a9bceaf9d6b535bcc521769475faa07f8e830da`  
		Last Modified: Tue, 16 Oct 2018 13:30:08 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44833e1033721cfa78ab7cd1fb3405cd08be703bbad7eb99a4bb09b565e4cae7`  
		Last Modified: Tue, 16 Oct 2018 15:52:34 GMT  
		Size: 51.6 MB (51607343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f3597a99181dc49741d3c0cb5b09fe86cdc21789bb7a0787149d91413ece509`  
		Last Modified: Tue, 16 Oct 2018 15:52:17 GMT  
		Size: 1.5 MB (1549596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:121b090f3217d8ee49f6cbe82ecff02a8ad7ec7fc53f43555bab3eaa5fd44a3d`  
		Last Modified: Tue, 16 Oct 2018 15:52:16 GMT  
		Size: 392.8 KB (392799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39045022a5cb2a615f338464ea5eabd440959523ebfd1179a1162a4530c57117`  
		Last Modified: Tue, 16 Oct 2018 15:52:16 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ae07b68d71cdbd7473a51db65b2c9a295c1cc632d4682947473fa500fa56df6`  
		Last Modified: Tue, 16 Oct 2018 15:52:16 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1cacdafda304c8656d1fdc87e5d40430a19766cb45d27e4d4d85e6c842e37d3`  
		Last Modified: Tue, 16 Oct 2018 15:52:43 GMT  
		Size: 42.8 MB (42782497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:legacy` - linux; arm64 variant v8

```console
$ docker pull mediawiki@sha256:151a152ed0d4446e36de4b424a46d268f255c715490f0331b249a4031a4fc31f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.5 MB (219524508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:229dfebe28c0e39a87d4e9b34ae3a61b9184bb6af6439ced296ba13ce71fc2c0`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 16 Oct 2018 08:43:45 GMT
ADD file:e83c09a5cfc1cecaeba6b736737d551fe0f5d3f204ec3fc984fe768003774f81 in / 
# Tue, 16 Oct 2018 08:43:46 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 09:37:09 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 16 Oct 2018 09:37:10 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 16 Oct 2018 09:38:24 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 16 Oct 2018 09:38:25 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 16 Oct 2018 09:38:27 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 16 Oct 2018 09:49:43 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 09:49:44 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 16 Oct 2018 09:49:44 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 16 Oct 2018 09:49:46 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 16 Oct 2018 09:49:47 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 16 Oct 2018 09:49:49 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 16 Oct 2018 09:49:51 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 16 Oct 2018 09:49:51 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 16 Oct 2018 09:49:52 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Tue, 16 Oct 2018 09:49:53 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 16 Oct 2018 09:49:53 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 16 Oct 2018 09:49:54 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 16 Oct 2018 12:27:05 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Tue, 16 Oct 2018 12:27:06 GMT
ENV PHP_VERSION=7.1.23
# Tue, 16 Oct 2018 12:27:06 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.23.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.23.tar.xz.asc/from/this/mirror
# Tue, 16 Oct 2018 12:27:07 GMT
ENV PHP_SHA256=227a3c76133c3dc1cec937989456cbd89ed00e68e7260c651900dbe1f5b798bc PHP_MD5=
# Tue, 16 Oct 2018 12:27:41 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 16 Oct 2018 12:27:42 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 16 Oct 2018 12:33:31 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 16 Oct 2018 12:33:33 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Tue, 16 Oct 2018 12:33:34 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 16 Oct 2018 12:33:35 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 16 Oct 2018 12:33:36 GMT
WORKDIR /var/www/html
# Tue, 16 Oct 2018 12:33:37 GMT
EXPOSE 80/tcp
# Tue, 16 Oct 2018 12:33:39 GMT
CMD ["apache2-foreground"]
# Wed, 17 Oct 2018 05:58:39 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 17 Oct 2018 06:02:18 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Wed, 17 Oct 2018 06:02:39 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Wed, 17 Oct 2018 06:02:49 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 17 Oct 2018 06:02:51 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Wed, 17 Oct 2018 06:02:58 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.30
# Wed, 17 Oct 2018 06:02:59 GMT
ENV MEDIAWIKI_BRANCH=REL1_30
# Wed, 17 Oct 2018 06:03:00 GMT
ENV MEDIAWIKI_VERSION=1.30.1
# Wed, 17 Oct 2018 06:03:00 GMT
ENV MEDIAWIKI_SHA512=bda37c7b1be4e1532ee8357843140e666ed550c4f54b53873d163d4b53ed87a80c0ad8a11d189577d32e554488aed517fb9477f2da04d7e7d87014049a2eabbe
# Wed, 17 Oct 2018 06:03:17 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:141796bfcf0d5a5edb072138e517bf85deef4f47f40afb51ba8705bec3b921dd`  
		Last Modified: Tue, 16 Oct 2018 08:50:53 GMT  
		Size: 20.3 MB (20331585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa887e40ae8a2b78a8eba6e16f2902853327c922f0110c4bd2e4728fb79b305b`  
		Last Modified: Tue, 16 Oct 2018 15:06:53 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99271cba459dd39a663363166e510f7cc1ebf18b221d33bb6c4e26d54774a5d7`  
		Last Modified: Tue, 16 Oct 2018 15:08:26 GMT  
		Size: 57.6 MB (57596184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:440b75b2132ae75a804754d6dd4f874b688e2f6a1d034fd0d2de6e496b8f1f0b`  
		Last Modified: Tue, 16 Oct 2018 15:06:52 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9716126acdb685c5ea84948fb47306c1b2d74752160d8de98d14cac45c1734a`  
		Last Modified: Tue, 16 Oct 2018 15:10:47 GMT  
		Size: 16.7 MB (16709722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92cd9f340623c79febab023e7bed21713ff7c5a54222f6e864d484df51e5eb5e`  
		Last Modified: Tue, 16 Oct 2018 15:10:15 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f4aca00aec726971992cfa7cb081238ab6d32d57c69cf024ee2690cef29374d`  
		Last Modified: Tue, 16 Oct 2018 15:10:14 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef70a607bae65cff09c6a3fd4add05727d00f023e83540e9823c8c73ce65afba`  
		Last Modified: Tue, 16 Oct 2018 15:10:14 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3482f362267a35679e02d84771ac1e78594ccb8598b70cfdb652909f558ae451`  
		Last Modified: Tue, 16 Oct 2018 15:10:13 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7395a19cfebc94b90fa17817559bea3273ad3224e6542ea3df5bca3c07456dac`  
		Last Modified: Tue, 16 Oct 2018 15:35:16 GMT  
		Size: 12.6 MB (12575343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54e377f28947ac8b0c1c720f9c87e540fe71cbb33b27d44d0805ee8dfce2e206`  
		Last Modified: Tue, 16 Oct 2018 15:35:14 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adac35db4e9a81dfd9bee971b498878e1211b7d4f16525ad82b2290a81a458c4`  
		Last Modified: Tue, 16 Oct 2018 15:35:19 GMT  
		Size: 13.4 MB (13377906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d79b997313231c584f5e897f0f0aa7a08c8086210d54bf5290db948901bd5eed`  
		Last Modified: Tue, 16 Oct 2018 15:35:14 GMT  
		Size: 2.2 KB (2195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89ecb2541cc6b3b7773265e832f8bcc132c1dd1da857da9a773535113b90bd32`  
		Last Modified: Tue, 16 Oct 2018 15:35:14 GMT  
		Size: 905.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee89398e21abc980032d4f6d35cdfc915e4dc9e34370ada0a0e6e042eb82192`  
		Last Modified: Wed, 17 Oct 2018 06:11:07 GMT  
		Size: 54.1 MB (54149594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a80c4614fa7fa76137c617cb982051243045810525aadb4eca118ac23506f59`  
		Last Modified: Wed, 17 Oct 2018 06:10:44 GMT  
		Size: 1.6 MB (1594565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0a76501e81f14e6e9d0f9d06170fd06851d862776a6bb7cf248318f5051e0ef`  
		Last Modified: Wed, 17 Oct 2018 06:10:43 GMT  
		Size: 400.4 KB (400415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6623491314232fef5f2840e5893ccf893d7c73d6ea33810a40a17fd4f476e5f2`  
		Last Modified: Wed, 17 Oct 2018 06:10:43 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96dc24e8a0de3b708687587ffc3ca10375707239f7b54b9410680ca5f0dbc8c7`  
		Last Modified: Wed, 17 Oct 2018 06:10:43 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:071ea85cf24bb9ef42292baaa4902a9011c08dd2f3c92504a50f38ea673670c0`  
		Last Modified: Wed, 17 Oct 2018 06:11:12 GMT  
		Size: 42.8 MB (42782292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:legacy` - linux; 386

```console
$ docker pull mediawiki@sha256:5647b03514c59e2db0ccb3992e58f2c8e7af1701f98e1dcab794435ff9b840c5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.8 MB (240816677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9250a4b98e8b8523e0b7ab76ae10ace12286e7c4d6d34c42c82991d4de8ce984`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 16 Oct 2018 10:49:05 GMT
ADD file:a71ef0e9adb528ae2dc5ca3395654522c23762d8936a4902378c6749bb357582 in / 
# Tue, 16 Oct 2018 10:49:05 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 11:59:35 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 16 Oct 2018 11:59:36 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 16 Oct 2018 12:00:22 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:00:23 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 16 Oct 2018 12:00:24 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 16 Oct 2018 12:11:59 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:11:59 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 16 Oct 2018 12:12:00 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 16 Oct 2018 12:12:01 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 16 Oct 2018 12:12:02 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 16 Oct 2018 12:12:03 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 16 Oct 2018 12:12:04 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 16 Oct 2018 12:12:04 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 16 Oct 2018 12:12:05 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Tue, 16 Oct 2018 12:12:05 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 16 Oct 2018 12:12:05 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 16 Oct 2018 12:12:05 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 16 Oct 2018 15:12:00 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Tue, 16 Oct 2018 15:12:00 GMT
ENV PHP_VERSION=7.1.23
# Tue, 16 Oct 2018 15:12:01 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.23.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.23.tar.xz.asc/from/this/mirror
# Tue, 16 Oct 2018 15:12:01 GMT
ENV PHP_SHA256=227a3c76133c3dc1cec937989456cbd89ed00e68e7260c651900dbe1f5b798bc PHP_MD5=
# Tue, 16 Oct 2018 15:12:17 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 16 Oct 2018 15:12:17 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 16 Oct 2018 15:18:29 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 16 Oct 2018 15:18:30 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Tue, 16 Oct 2018 15:18:30 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 16 Oct 2018 15:18:30 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 16 Oct 2018 15:18:31 GMT
WORKDIR /var/www/html
# Tue, 16 Oct 2018 15:18:31 GMT
EXPOSE 80/tcp
# Tue, 16 Oct 2018 15:18:31 GMT
CMD ["apache2-foreground"]
# Wed, 17 Oct 2018 07:56:10 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 17 Oct 2018 07:57:42 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Wed, 17 Oct 2018 07:57:51 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Wed, 17 Oct 2018 07:57:51 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 17 Oct 2018 07:57:52 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Wed, 17 Oct 2018 07:57:52 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.30
# Wed, 17 Oct 2018 07:57:53 GMT
ENV MEDIAWIKI_BRANCH=REL1_30
# Wed, 17 Oct 2018 07:57:53 GMT
ENV MEDIAWIKI_VERSION=1.30.1
# Wed, 17 Oct 2018 07:57:53 GMT
ENV MEDIAWIKI_SHA512=bda37c7b1be4e1532ee8357843140e666ed550c4f54b53873d163d4b53ed87a80c0ad8a11d189577d32e554488aed517fb9477f2da04d7e7d87014049a2eabbe
# Wed, 17 Oct 2018 07:58:03 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:2b7bcb618c4033f37486fd700e6d0debf2260935f888a192119c41eaddd29978`  
		Last Modified: Tue, 16 Oct 2018 11:06:15 GMT  
		Size: 23.1 MB (23126605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ac9f5e161441372e549d094f25b4640689548d53bb47c34a8ced01a74b8ad6f`  
		Last Modified: Tue, 16 Oct 2018 19:08:04 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cac64c78cd80e7e59f4a0fd49c7632e4799f427a439c1339df81ad969a7aed3`  
		Last Modified: Tue, 16 Oct 2018 19:08:39 GMT  
		Size: 71.5 MB (71484645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a7cfe59c8cc409c1eb116e2905e9a239f1f1a26128b6fd15cf1217563b373e4`  
		Last Modified: Tue, 16 Oct 2018 19:08:04 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99051976b849498ac53e2ffcd090cb770169576c8fe2ba03b72ec38559319cff`  
		Last Modified: Tue, 16 Oct 2018 19:10:57 GMT  
		Size: 17.6 MB (17562598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8baa008090db722001228a8b24993ff76cc41b4f3c5ee668b4ba3a9a91a8beb`  
		Last Modified: Tue, 16 Oct 2018 19:10:51 GMT  
		Size: 1.2 KB (1243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8f645450e0e3cf05fbcd8a2ca3ca89deb3a97661b07a8e11130055680df3138`  
		Last Modified: Tue, 16 Oct 2018 19:11:16 GMT  
		Size: 429.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a636e140725a9abf6bfca67dce52d8d0729b612493c86addf510f88cd41ff73`  
		Last Modified: Tue, 16 Oct 2018 19:10:50 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c899e0d2536fbfcfaa4ef00f9497a5891261cfb1fca3e776a428e461db7ee410`  
		Last Modified: Tue, 16 Oct 2018 19:10:50 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d04296a9b5f0197a38a16b450e8d81e6f6f6825f808c8efd4676de2e67c71ff`  
		Last Modified: Tue, 16 Oct 2018 19:37:48 GMT  
		Size: 12.6 MB (12576481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c3b7bb527f4a1e96c2b2211dcd0796ff2a6cd3e59b859cbafb8c53502cf1021`  
		Last Modified: Tue, 16 Oct 2018 19:37:46 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c307439b82a49cf5b811d35d2f4eef83c44ba9a100aba8e2c8e72db9e1deb48`  
		Last Modified: Tue, 16 Oct 2018 19:37:51 GMT  
		Size: 14.7 MB (14717979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80d63db8fe2c98c933bd37d7d7eda32b896ee9325a2e50383d08b674dbdf57f1`  
		Last Modified: Tue, 16 Oct 2018 19:37:46 GMT  
		Size: 2.2 KB (2196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66de29bf951459d02781e52f8556b2eda6c4d510c214d00ab92f3647c9d8c8b9`  
		Last Modified: Tue, 16 Oct 2018 19:37:46 GMT  
		Size: 906.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f25362d03f05e080ad3383a97a59b11740ff48e4d605ead1baf3568d8c112c8`  
		Last Modified: Wed, 17 Oct 2018 08:01:50 GMT  
		Size: 56.5 MB (56499424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2967b651ab6f054c2ba5aa40e8feb3427f8690c98b12b4c873a8c9edfcb8ac8e`  
		Last Modified: Wed, 17 Oct 2018 08:01:33 GMT  
		Size: 1.7 MB (1664710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9159c9aef62b691f4bd77592ef7d46c09685a3d042f66b914e5b86a41d4dca7`  
		Last Modified: Wed, 17 Oct 2018 08:01:33 GMT  
		Size: 395.0 KB (395024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8558fd272b2cd3310a249c8e82b2d8fd62145aca4083cd7d101c8dfca3050110`  
		Last Modified: Wed, 17 Oct 2018 08:01:33 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b76356abb4b148c1807b80ca59c6ca11530dc2f9c2ad963dac32e4ba76811a09`  
		Last Modified: Wed, 17 Oct 2018 08:01:33 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dd7a0540c9679489cf693405993adbe614ddab346f96defa90ae912d5900e4b`  
		Last Modified: Wed, 17 Oct 2018 08:01:55 GMT  
		Size: 42.8 MB (42782318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:legacy` - linux; ppc64le

```console
$ docker pull mediawiki@sha256:f0716820db47ea961b87fc449f21c45f0f16031554c49f71940c5a489783a40e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.9 MB (229918641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9baca72332e43fd96401d57f2c26f51b9774eef7df7a81032b20f3bfd12f0f03`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 16 Oct 2018 08:22:25 GMT
ADD file:b1fa1d0ffa2b206311dfd95642d74c3312565a1ec2e6e3a2197bfd2a4b3de6c6 in / 
# Tue, 16 Oct 2018 08:22:30 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 08:36:20 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 16 Oct 2018 08:36:20 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 16 Oct 2018 08:38:14 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 16 Oct 2018 08:38:16 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 16 Oct 2018 08:38:19 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 16 Oct 2018 08:47:02 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 08:47:04 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 16 Oct 2018 08:47:06 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 16 Oct 2018 08:47:12 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 16 Oct 2018 08:47:15 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 16 Oct 2018 08:47:21 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 16 Oct 2018 08:47:25 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 16 Oct 2018 08:47:26 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 16 Oct 2018 08:47:27 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Tue, 16 Oct 2018 08:47:28 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 16 Oct 2018 08:47:30 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 16 Oct 2018 08:47:33 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 16 Oct 2018 10:37:30 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Tue, 16 Oct 2018 10:37:31 GMT
ENV PHP_VERSION=7.1.23
# Tue, 16 Oct 2018 10:37:32 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.23.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.23.tar.xz.asc/from/this/mirror
# Tue, 16 Oct 2018 10:37:34 GMT
ENV PHP_SHA256=227a3c76133c3dc1cec937989456cbd89ed00e68e7260c651900dbe1f5b798bc PHP_MD5=
# Tue, 16 Oct 2018 10:39:49 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 16 Oct 2018 10:39:50 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 16 Oct 2018 10:45:59 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 16 Oct 2018 10:46:00 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Tue, 16 Oct 2018 10:46:02 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 16 Oct 2018 10:46:04 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 16 Oct 2018 10:46:05 GMT
WORKDIR /var/www/html
# Tue, 16 Oct 2018 10:46:06 GMT
EXPOSE 80/tcp
# Tue, 16 Oct 2018 10:46:08 GMT
CMD ["apache2-foreground"]
# Tue, 16 Oct 2018 20:08:31 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 16 Oct 2018 20:10:37 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Tue, 16 Oct 2018 20:10:52 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Tue, 16 Oct 2018 20:10:56 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 16 Oct 2018 20:11:00 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Tue, 16 Oct 2018 20:11:03 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.30
# Tue, 16 Oct 2018 20:11:04 GMT
ENV MEDIAWIKI_BRANCH=REL1_30
# Tue, 16 Oct 2018 20:11:05 GMT
ENV MEDIAWIKI_VERSION=1.30.1
# Tue, 16 Oct 2018 20:11:07 GMT
ENV MEDIAWIKI_SHA512=bda37c7b1be4e1532ee8357843140e666ed550c4f54b53873d163d4b53ed87a80c0ad8a11d189577d32e554488aed517fb9477f2da04d7e7d87014049a2eabbe
# Tue, 16 Oct 2018 20:11:32 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:202f659db3e53c01ac947538d8b37251e9fa16c4a6a699dc6c2a8910afcdfed4`  
		Last Modified: Tue, 16 Oct 2018 08:30:59 GMT  
		Size: 22.7 MB (22740583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba0f6d499d48eb19dc9d2e6453db815f1d64074f2775cbd9cac4928c0461cdbc`  
		Last Modified: Tue, 16 Oct 2018 12:20:25 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f354790bdfa97d0b204ca9cf4402d437e713049020362b7ad4af49ef47efb984`  
		Last Modified: Tue, 16 Oct 2018 12:21:25 GMT  
		Size: 61.8 MB (61809966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:745377e23f5d138b115edff3b4ebf7c90114d7d658bff2cd8453aaffc66a04db`  
		Last Modified: Tue, 16 Oct 2018 12:20:28 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6ca68ed7b31a0303cdb6d7669c24c6dedb55ddece4d992172fb000dc3f93eeb`  
		Last Modified: Tue, 16 Oct 2018 12:23:21 GMT  
		Size: 17.3 MB (17348500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba60179e94e0e6514a8bd50455affa30a26a572b16013a2b01ea060c2aaa60d3`  
		Last Modified: Tue, 16 Oct 2018 12:23:07 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9292d4db20fce2c69be0ea52392b7616f1846e01f9b70e0aadff84c1084bf254`  
		Last Modified: Tue, 16 Oct 2018 12:23:01 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a20d33fb196e2e93548afbb4d63cb3d16c02b0d6d342e94e77c6beca290525`  
		Last Modified: Tue, 16 Oct 2018 12:22:59 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c4ea029b99fcbbd8bfbfd74bd42ca81a84fbee060a87904f570a192fc958db5`  
		Last Modified: Tue, 16 Oct 2018 12:22:57 GMT  
		Size: 517.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7999262f52e4222d2e2f7ab8d4b1fd69bad897a086126e58f6bd678bc2c81d01`  
		Last Modified: Tue, 16 Oct 2018 12:41:37 GMT  
		Size: 12.6 MB (12575819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aef8979e0836f91120237b001474a970d3a95238da3860d20f5bbd48373ece4`  
		Last Modified: Tue, 16 Oct 2018 12:41:35 GMT  
		Size: 503.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e92d4e87c1f14afa8177ee699e280f21252abe6f7266dd41eb1a59969937be98`  
		Last Modified: Tue, 16 Oct 2018 12:41:41 GMT  
		Size: 14.0 MB (14009163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed9bfe4555485a48b153bfcbfd69e588ad83d65392c64d0d4eaf90d947052271`  
		Last Modified: Tue, 16 Oct 2018 12:41:34 GMT  
		Size: 2.2 KB (2195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f080dd465e3fb2cad79f7467c0cdb25db4870728401db3392225c13487ba252b`  
		Last Modified: Tue, 16 Oct 2018 12:41:34 GMT  
		Size: 905.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87b2bf3cfec3621621d43dfc6c761c8562438f0d9358823eb3b933b92f40c34e`  
		Last Modified: Tue, 16 Oct 2018 20:17:17 GMT  
		Size: 56.6 MB (56596492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f27b307754f896522303e9755465bd01b9331a1f221d07c92dd40eceecd2816a`  
		Last Modified: Tue, 16 Oct 2018 20:16:57 GMT  
		Size: 1.6 MB (1643704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aea0bbe9837bef22f74b509b9c63aaf10dc1c5dc5d5bd93529888c5468ecfba9`  
		Last Modified: Tue, 16 Oct 2018 20:16:57 GMT  
		Size: 404.8 KB (404818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09b43d590bd633009cf014d452eaa458948ff11e38996db2970948ff2c2624d8`  
		Last Modified: Tue, 16 Oct 2018 20:16:57 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eedfcee246c4a76acb0e97ccfd7d62d5d5c52fad3c16c2315a69116cf5a4e9da`  
		Last Modified: Tue, 16 Oct 2018 20:16:57 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ed5e95bd1c913a3f5463a660457acf952607d40e648a4d77d4c5b86b6a56444`  
		Last Modified: Tue, 16 Oct 2018 20:17:16 GMT  
		Size: 42.8 MB (42782530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mediawiki:legacylts`

```console
$ docker pull mediawiki@sha256:aabdb5194354f49a987bcbb30d583a73102d4ef35067bff1329a37ce474d9b21
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
$ docker pull mediawiki@sha256:bd7a2b1abdf8c8abffd686c8986897e7bd6ee9210be6d83cf9d7870c734f35df
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.6 MB (223559873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8832e1c4afd5c4a6aeaeb41731900aa11b2a3256459cecf17a441898dc73e126`
-	Entrypoint: `["docker-php-entrypoint"]`
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
# Tue, 16 Oct 2018 01:46:19 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 16 Oct 2018 01:46:19 GMT
ENV PHP_VERSION=7.0.32
# Tue, 16 Oct 2018 01:46:19 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.32.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.32.tar.xz.asc/from/this/mirror
# Tue, 16 Oct 2018 01:46:20 GMT
ENV PHP_SHA256=ff6f62afeb32c71b3b89ecbd42950ef6c5e0c329cc6e1c58ffac47e6f1f883c4 PHP_MD5=
# Tue, 16 Oct 2018 01:46:28 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 16 Oct 2018 01:46:31 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 16 Oct 2018 01:49:43 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 16 Oct 2018 01:49:43 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Tue, 16 Oct 2018 01:49:43 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 16 Oct 2018 01:49:44 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 16 Oct 2018 01:49:44 GMT
WORKDIR /var/www/html
# Tue, 16 Oct 2018 01:49:44 GMT
EXPOSE 80/tcp
# Tue, 16 Oct 2018 01:49:44 GMT
CMD ["apache2-foreground"]
# Tue, 16 Oct 2018 12:58:53 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 16 Oct 2018 13:01:23 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Tue, 16 Oct 2018 13:01:44 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Tue, 16 Oct 2018 13:01:45 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 16 Oct 2018 13:01:46 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Tue, 16 Oct 2018 13:01:47 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.27
# Tue, 16 Oct 2018 13:01:47 GMT
ENV MEDIAWIKI_BRANCH=REL1_27
# Tue, 16 Oct 2018 13:01:47 GMT
ENV MEDIAWIKI_VERSION=1.27.5
# Tue, 16 Oct 2018 13:01:48 GMT
ENV MEDIAWIKI_SHA512=2f341ed5afab24b81c315db6bcc58dd617f95231f71408c08bb2a8b974c95b7edd93d0f3c857f24058111c3228b9919a0f1c2fd2f85be940dc571e390225027a
# Tue, 16 Oct 2018 13:01:59 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
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
	-	`sha256:4299e0bacf8fbcc69dfb0d6acba3f45697ceaf5c29c977ee706281283523d885`  
		Last Modified: Tue, 16 Oct 2018 03:47:38 GMT  
		Size: 12.4 MB (12379835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9263f9577aad0f8ef48adc205d5f182f109289e8a555326b593b1c25360fe557`  
		Last Modified: Tue, 16 Oct 2018 03:47:37 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ca842beb74556b475d94bbd9cac21d02bdb319480beed4b8f42d832be6e77d7`  
		Last Modified: Tue, 16 Oct 2018 03:47:41 GMT  
		Size: 13.9 MB (13904473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:087c6240046d169882f5e9b62019496b3d25b288f0f56b7dae962af273f704e7`  
		Last Modified: Tue, 16 Oct 2018 03:47:37 GMT  
		Size: 2.2 KB (2193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d31af3632f760e46acb44058658b8db7162eff13890dc8f4e9443d6749cfa8db`  
		Last Modified: Tue, 16 Oct 2018 03:47:37 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8928fd73d2525bf27216fe983a1297fa1c1655db7909e055c9d4f33c5790196f`  
		Last Modified: Tue, 16 Oct 2018 13:06:36 GMT  
		Size: 56.3 MB (56343305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b089431ea3f41c7da814b07d89301e8061ba645eb3355afade58aa49ee1026c6`  
		Last Modified: Tue, 16 Oct 2018 13:06:11 GMT  
		Size: 1.5 MB (1549030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b4c5b4f7f5727dc409515e6373dae57fb7e93b46fc3603f96cb09587bfe05af`  
		Last Modified: Tue, 16 Oct 2018 13:06:10 GMT  
		Size: 400.3 KB (400325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b1adac96a5ca85b6667438d5fb23d8641669d423ff22278e6d8275d12e6953d`  
		Last Modified: Tue, 16 Oct 2018 13:06:09 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b631ea5aef3e47965335a4357e5e7c51162bfbeb627f5927cc632d2ec914f27d`  
		Last Modified: Tue, 16 Oct 2018 13:06:09 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acc040b08360839d015c45757d6fcff6e3fc728f735065317d6d6134534d6f5d`  
		Last Modified: Tue, 16 Oct 2018 13:06:40 GMT  
		Size: 31.9 MB (31933768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:legacylts` - linux; arm variant v5

```console
$ docker pull mediawiki@sha256:aa4f49c48775e3c93828b1dcdbc8521fc58378305065177e6e6b7cc52dd75024
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.7 MB (208735644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9396d4c18d945890c8d6a8d1736fcdc0b1a3e378f142f2f5aad80f514cf90b3`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 16 Oct 2018 08:55:22 GMT
ADD file:8f2148adabc29587e17b50138f305f39e94e0e2bd9211a9f913fef56013ac35a in / 
# Tue, 16 Oct 2018 08:55:23 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 08:59:24 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 16 Oct 2018 08:59:25 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 16 Oct 2018 09:00:38 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 16 Oct 2018 09:00:40 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 16 Oct 2018 09:00:41 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 16 Oct 2018 09:01:03 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 09:01:04 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 16 Oct 2018 09:01:04 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 16 Oct 2018 09:01:05 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 16 Oct 2018 09:01:06 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 16 Oct 2018 09:01:08 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 16 Oct 2018 09:01:09 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 16 Oct 2018 09:01:09 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 16 Oct 2018 09:01:09 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Tue, 16 Oct 2018 09:01:10 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 16 Oct 2018 09:01:10 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 16 Oct 2018 09:01:10 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 16 Oct 2018 09:53:06 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 16 Oct 2018 09:53:06 GMT
ENV PHP_VERSION=7.0.32
# Tue, 16 Oct 2018 09:53:06 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.32.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.32.tar.xz.asc/from/this/mirror
# Tue, 16 Oct 2018 09:53:07 GMT
ENV PHP_SHA256=ff6f62afeb32c71b3b89ecbd42950ef6c5e0c329cc6e1c58ffac47e6f1f883c4 PHP_MD5=
# Tue, 16 Oct 2018 09:53:22 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 16 Oct 2018 09:53:23 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 16 Oct 2018 09:56:09 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 16 Oct 2018 09:56:11 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Tue, 16 Oct 2018 09:56:11 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 16 Oct 2018 09:56:12 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 16 Oct 2018 09:56:13 GMT
WORKDIR /var/www/html
# Tue, 16 Oct 2018 09:56:13 GMT
EXPOSE 80/tcp
# Tue, 16 Oct 2018 09:56:14 GMT
CMD ["apache2-foreground"]
# Tue, 16 Oct 2018 15:46:06 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 16 Oct 2018 15:50:26 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Tue, 16 Oct 2018 15:50:43 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Tue, 16 Oct 2018 15:50:45 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 16 Oct 2018 15:50:46 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Tue, 16 Oct 2018 15:50:51 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.27
# Tue, 16 Oct 2018 15:50:51 GMT
ENV MEDIAWIKI_BRANCH=REL1_27
# Tue, 16 Oct 2018 15:50:52 GMT
ENV MEDIAWIKI_VERSION=1.27.5
# Tue, 16 Oct 2018 15:50:53 GMT
ENV MEDIAWIKI_SHA512=2f341ed5afab24b81c315db6bcc58dd617f95231f71408c08bb2a8b974c95b7edd93d0f3c857f24058111c3228b9919a0f1c2fd2f85be940dc571e390225027a
# Tue, 16 Oct 2018 15:51:10 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:4b7ffdf9817f718c84be550e8edf757070396d69165fa729c6ddd4e775428eb2`  
		Last Modified: Tue, 16 Oct 2018 09:04:44 GMT  
		Size: 21.2 MB (21162965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20460378a8f38aacfeb9a0bcf3a38abbaebb8845cf0f7ca8c5f8ccb51f3ba5d8`  
		Last Modified: Tue, 16 Oct 2018 10:20:49 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecb7e6fb4c6270cb10f9b8f7aa93b2d05eca8e4ca542ae6b884f3d507b3f2c06`  
		Last Modified: Tue, 16 Oct 2018 10:21:09 GMT  
		Size: 57.4 MB (57447518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ad837638c5f551ce2ed0722f0aa0206be6b2503befb732461de20785c38ed13`  
		Last Modified: Tue, 16 Oct 2018 10:20:48 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02b8207a3bfbe878b8a8d846a774c3ce482e349d482e7084559f88b12618ffb1`  
		Last Modified: Tue, 16 Oct 2018 10:20:52 GMT  
		Size: 16.7 MB (16650918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7198acceff99d48ae548b76f8e9eb26d52d8a63521d95d7db38554594b5d1223`  
		Last Modified: Tue, 16 Oct 2018 10:20:47 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e62a81208df875e54460875df6afbac9065b4afc56282d9fb756acffa5656a7`  
		Last Modified: Tue, 16 Oct 2018 10:20:46 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5a783b15fb65ce49afc889cc25e5744af9318920f2c2b5419dc1d6209f71d6a`  
		Last Modified: Tue, 16 Oct 2018 10:20:46 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b8615ebbc988042c7c4db62198beea70acc923ccc2b3f98aba803a3947a68fa`  
		Last Modified: Tue, 16 Oct 2018 10:20:46 GMT  
		Size: 510.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ece25366f010e684b086e074dd441893c18b0869f29bb35473d29cff7a90ec0`  
		Last Modified: Tue, 16 Oct 2018 10:27:34 GMT  
		Size: 12.4 MB (12378176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acac26b0a955b93606c1bda892dde9998d0d2fdb2596d3aff3584aef5710399f`  
		Last Modified: Tue, 16 Oct 2018 10:27:33 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec478cc93f457864ca960a4b547e77a9fe3fca360a8d149dd38bfce21870e81a`  
		Last Modified: Tue, 16 Oct 2018 10:27:37 GMT  
		Size: 13.3 MB (13295450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4caa3f53725c324c788b8fb4f7ceadb7b2207091076e9bfc31c3778eb4a7774f`  
		Last Modified: Tue, 16 Oct 2018 10:27:33 GMT  
		Size: 2.2 KB (2193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4418bf006c01b1197d0e31adb36ac7ecce3c0a72df177cd80624df5fdc809644`  
		Last Modified: Tue, 16 Oct 2018 10:27:33 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9693bbf3add9170f48816064ebdd75b28a486a6a87e97177b68837772e2e804a`  
		Last Modified: Tue, 16 Oct 2018 15:53:34 GMT  
		Size: 54.0 MB (53981869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faa9c6ccfdd7d68fe0a0212b0bef24e21fce6a6056f3dd70d3dd5804a037e92d`  
		Last Modified: Tue, 16 Oct 2018 15:53:15 GMT  
		Size: 1.5 MB (1485553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6403912d93cc9e02cc0a3b9532cccb22c4adad55e010e33656f8268dc446fa5c`  
		Last Modified: Tue, 16 Oct 2018 15:53:15 GMT  
		Size: 392.2 KB (392163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae5bf14fcd40fa5b3501e9b7cecb9ba815ce2a3478cb5bb93620857b842cd15f`  
		Last Modified: Tue, 16 Oct 2018 15:53:15 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce74c7219f519d3e5a570c95a74a92e1580e36ef64e88bcc59a52f1030bab137`  
		Last Modified: Tue, 16 Oct 2018 15:53:15 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a56d2d132436a61038533dedeab0dd5a374705b25852a2a34647f91f6afd5b7`  
		Last Modified: Tue, 16 Oct 2018 15:53:33 GMT  
		Size: 31.9 MB (31933987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:legacylts` - linux; arm variant v7

```console
$ docker pull mediawiki@sha256:bc6e1555842b1e60c541bc386dbbc597535373a20d2f40f9efee555864c8e8b2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.6 MB (199603270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a1b06ea56a5f825c7de472382d99de6aab98b0872ce67f572f79ddbb5b6d1d0`
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
# Sat, 15 Sep 2018 13:08:05 GMT
ENV PHP_VERSION=7.0.32
# Sat, 15 Sep 2018 13:08:05 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.32.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.32.tar.xz.asc/from/this/mirror
# Sat, 15 Sep 2018 13:08:06 GMT
ENV PHP_SHA256=ff6f62afeb32c71b3b89ecbd42950ef6c5e0c329cc6e1c58ffac47e6f1f883c4 PHP_MD5=
# Sat, 15 Sep 2018 13:08:20 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 15 Sep 2018 13:08:20 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 15 Sep 2018 13:10:53 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 15 Sep 2018 13:10:55 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Sat, 15 Sep 2018 13:10:55 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 15 Sep 2018 13:10:56 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 15 Sep 2018 13:10:56 GMT
WORKDIR /var/www/html
# Sat, 15 Sep 2018 13:10:56 GMT
EXPOSE 80/tcp
# Sat, 15 Sep 2018 13:10:57 GMT
CMD ["apache2-foreground"]
# Sat, 22 Sep 2018 12:06:56 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 22 Sep 2018 12:09:25 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Sat, 22 Sep 2018 12:09:44 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Sat, 22 Sep 2018 12:09:45 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 22 Sep 2018 12:09:46 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 22 Sep 2018 12:09:47 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.27
# Sat, 22 Sep 2018 12:09:47 GMT
ENV MEDIAWIKI_BRANCH=REL1_27
# Sat, 22 Sep 2018 12:09:47 GMT
ENV MEDIAWIKI_VERSION=1.27.5
# Sat, 22 Sep 2018 12:09:48 GMT
ENV MEDIAWIKI_SHA512=2f341ed5afab24b81c315db6bcc58dd617f95231f71408c08bb2a8b974c95b7edd93d0f3c857f24058111c3228b9919a0f1c2fd2f85be940dc571e390225027a
# Sat, 22 Sep 2018 12:10:08 GMT
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
	-	`sha256:87bebdb4556d13b60bacbb7cbc2c7da5ed6d3e3ee21ceb2437b2dba702839c1f`  
		Last Modified: Sat, 15 Sep 2018 14:30:37 GMT  
		Size: 12.4 MB (12378100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d21992453bb47eea1f83a09445075e4cc8479e430e279a92ae01044e07cc0ac`  
		Last Modified: Sat, 15 Sep 2018 14:30:35 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19858538a4d434e6373ef34a90d1c959cebed30530a35c753365e4252ad5e766`  
		Last Modified: Sat, 15 Sep 2018 14:30:41 GMT  
		Size: 12.8 MB (12849254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5fa0b8a1718349d25f758c9f7849d91259f9491eccdfe1a07d12558d067d35a`  
		Last Modified: Sat, 15 Sep 2018 14:30:35 GMT  
		Size: 2.2 KB (2193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ed7f14c11dff33d5c94f3865527899170283ac29a92446c87502e160ff81437`  
		Last Modified: Sat, 15 Sep 2018 14:30:35 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98a394db97f6eecb3d32ec3eef6eb108215d2f87cf48708872b2db2c0bc71a15`  
		Last Modified: Sat, 22 Sep 2018 12:12:53 GMT  
		Size: 51.6 MB (51605391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:754e942d693955d858205e82c822e341f1e6ee3e18637eecc97c025baa5b74d1`  
		Last Modified: Sat, 22 Sep 2018 12:12:38 GMT  
		Size: 1.4 MB (1447265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dff22164ea6cb5a89d4b638dbc9441c343684df2376401360eae56e5acf8ff8d`  
		Last Modified: Sat, 22 Sep 2018 12:12:38 GMT  
		Size: 387.3 KB (387272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae107497a1fa2ac5ea091720eef99b3d49a35e76389baa226ec13035563619cb`  
		Last Modified: Sat, 22 Sep 2018 12:12:38 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f954dd1fe08fbc2a6e66923f4def0a0cbaab9764ec10f048ac59f228c4b4587`  
		Last Modified: Sat, 22 Sep 2018 12:12:38 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f463abd2ba9f62fe791e2fa3cec5c788d48a2130f08ad99a87c50da52c7fdba2`  
		Last Modified: Sat, 22 Sep 2018 12:12:56 GMT  
		Size: 31.9 MB (31933764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:legacylts` - linux; arm64 variant v8

```console
$ docker pull mediawiki@sha256:44ffe8d4078d33a6ca1a4799cfdf44a2c0025c9cd21d043a4f38d90257633929
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.1 MB (208080243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b208e944cb7e755680b7263bb4f7054d90055588f8cf8f9085f55ccd5fa0c900`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 16 Oct 2018 08:43:45 GMT
ADD file:e83c09a5cfc1cecaeba6b736737d551fe0f5d3f204ec3fc984fe768003774f81 in / 
# Tue, 16 Oct 2018 08:43:46 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 09:37:09 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 16 Oct 2018 09:37:10 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 16 Oct 2018 09:38:24 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 16 Oct 2018 09:38:25 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 16 Oct 2018 09:38:27 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 16 Oct 2018 09:49:43 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 09:49:44 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 16 Oct 2018 09:49:44 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 16 Oct 2018 09:49:46 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 16 Oct 2018 09:49:47 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 16 Oct 2018 09:49:49 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 16 Oct 2018 09:49:51 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 16 Oct 2018 09:49:51 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 16 Oct 2018 09:49:52 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Tue, 16 Oct 2018 09:49:53 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 16 Oct 2018 09:49:53 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 16 Oct 2018 09:49:54 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 16 Oct 2018 13:56:08 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 16 Oct 2018 13:56:09 GMT
ENV PHP_VERSION=7.0.32
# Tue, 16 Oct 2018 13:56:10 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.32.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.32.tar.xz.asc/from/this/mirror
# Tue, 16 Oct 2018 13:56:10 GMT
ENV PHP_SHA256=ff6f62afeb32c71b3b89ecbd42950ef6c5e0c329cc6e1c58ffac47e6f1f883c4 PHP_MD5=
# Tue, 16 Oct 2018 13:56:54 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 16 Oct 2018 13:56:55 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 16 Oct 2018 14:04:23 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 16 Oct 2018 14:04:25 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Tue, 16 Oct 2018 14:04:26 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 16 Oct 2018 14:04:27 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 16 Oct 2018 14:04:28 GMT
WORKDIR /var/www/html
# Tue, 16 Oct 2018 14:04:33 GMT
EXPOSE 80/tcp
# Tue, 16 Oct 2018 14:04:34 GMT
CMD ["apache2-foreground"]
# Wed, 17 Oct 2018 06:04:36 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 17 Oct 2018 06:07:58 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Wed, 17 Oct 2018 06:08:19 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Wed, 17 Oct 2018 06:08:22 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 17 Oct 2018 06:08:24 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Wed, 17 Oct 2018 06:08:32 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.27
# Wed, 17 Oct 2018 06:08:32 GMT
ENV MEDIAWIKI_BRANCH=REL1_27
# Wed, 17 Oct 2018 06:08:33 GMT
ENV MEDIAWIKI_VERSION=1.27.5
# Wed, 17 Oct 2018 06:08:34 GMT
ENV MEDIAWIKI_SHA512=2f341ed5afab24b81c315db6bcc58dd617f95231f71408c08bb2a8b974c95b7edd93d0f3c857f24058111c3228b9919a0f1c2fd2f85be940dc571e390225027a
# Wed, 17 Oct 2018 06:08:45 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:141796bfcf0d5a5edb072138e517bf85deef4f47f40afb51ba8705bec3b921dd`  
		Last Modified: Tue, 16 Oct 2018 08:50:53 GMT  
		Size: 20.3 MB (20331585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa887e40ae8a2b78a8eba6e16f2902853327c922f0110c4bd2e4728fb79b305b`  
		Last Modified: Tue, 16 Oct 2018 15:06:53 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99271cba459dd39a663363166e510f7cc1ebf18b221d33bb6c4e26d54774a5d7`  
		Last Modified: Tue, 16 Oct 2018 15:08:26 GMT  
		Size: 57.6 MB (57596184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:440b75b2132ae75a804754d6dd4f874b688e2f6a1d034fd0d2de6e496b8f1f0b`  
		Last Modified: Tue, 16 Oct 2018 15:06:52 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9716126acdb685c5ea84948fb47306c1b2d74752160d8de98d14cac45c1734a`  
		Last Modified: Tue, 16 Oct 2018 15:10:47 GMT  
		Size: 16.7 MB (16709722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92cd9f340623c79febab023e7bed21713ff7c5a54222f6e864d484df51e5eb5e`  
		Last Modified: Tue, 16 Oct 2018 15:10:15 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f4aca00aec726971992cfa7cb081238ab6d32d57c69cf024ee2690cef29374d`  
		Last Modified: Tue, 16 Oct 2018 15:10:14 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef70a607bae65cff09c6a3fd4add05727d00f023e83540e9823c8c73ce65afba`  
		Last Modified: Tue, 16 Oct 2018 15:10:14 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3482f362267a35679e02d84771ac1e78594ccb8598b70cfdb652909f558ae451`  
		Last Modified: Tue, 16 Oct 2018 15:10:13 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50624813ae71a53d58d6982af86920e9fdbaec7b06c8329e4ea88181ea682607`  
		Last Modified: Tue, 16 Oct 2018 15:43:35 GMT  
		Size: 12.4 MB (12378440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:154f5759e9b16e9a04f92afd14a7b5d5c2a92f781638c704f740986d5232caca`  
		Last Modified: Tue, 16 Oct 2018 15:43:33 GMT  
		Size: 502.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:116563a0376986b0dffd04b739a472b46be9e087b0e1aff085c5ee17cf08e287`  
		Last Modified: Tue, 16 Oct 2018 15:43:39 GMT  
		Size: 13.1 MB (13092238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:204e51532312e737fb45fedfafbff35b2381bbd51ed63b8bedadd5b79c86a8fc`  
		Last Modified: Tue, 16 Oct 2018 15:43:33 GMT  
		Size: 2.2 KB (2193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6520db0429b6facca4c9fed9a535ab187a6755dde45ba303c81da97db840095f`  
		Last Modified: Tue, 16 Oct 2018 15:43:33 GMT  
		Size: 905.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa8e3dce0d2b00c07b8b1d81365aba40a107ee790a3196a44c6e91de872d741b`  
		Last Modified: Wed, 17 Oct 2018 06:12:26 GMT  
		Size: 54.1 MB (54149817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad93e1fe64d7067a9db1021e3c4e3eaab44558105ebde6a50ac0f9ba3a5645e2`  
		Last Modified: Wed, 17 Oct 2018 06:12:05 GMT  
		Size: 1.5 MB (1486658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ac1f5aa91252d9dafcc4e5ba74eef3f7c3fa65cb1931cbe39ab155c07031f73`  
		Last Modified: Wed, 17 Oct 2018 06:12:02 GMT  
		Size: 395.0 KB (394970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56946bf185cff149538ad11ea4912945b25b68e8a7cab8f2457efd2701cef4d9`  
		Last Modified: Wed, 17 Oct 2018 06:12:02 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85b5171d7d075f37055f4a31e64767d5854ad0057627cd4b2564dd3790d838d2`  
		Last Modified: Wed, 17 Oct 2018 06:12:02 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f7948973641c4f1ad24c42af64c7125499a4f05252ec0d0507b6567ebef26f8`  
		Last Modified: Wed, 17 Oct 2018 06:12:24 GMT  
		Size: 31.9 MB (31933727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:legacylts` - linux; 386

```console
$ docker pull mediawiki@sha256:b21d1d70242702efdbb70168a3c286b30076caec26c6628394dc286be4ef5da1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.3 MB (229329317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e869b7784bacd85cc3b9f01934da9edaa4e408bd1d1e3e46f97553d3dc015024`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 16 Oct 2018 10:49:05 GMT
ADD file:a71ef0e9adb528ae2dc5ca3395654522c23762d8936a4902378c6749bb357582 in / 
# Tue, 16 Oct 2018 10:49:05 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 11:59:35 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 16 Oct 2018 11:59:36 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 16 Oct 2018 12:00:22 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:00:23 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 16 Oct 2018 12:00:24 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 16 Oct 2018 12:11:59 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:11:59 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 16 Oct 2018 12:12:00 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 16 Oct 2018 12:12:01 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 16 Oct 2018 12:12:02 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 16 Oct 2018 12:12:03 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 16 Oct 2018 12:12:04 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 16 Oct 2018 12:12:04 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 16 Oct 2018 12:12:05 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Tue, 16 Oct 2018 12:12:05 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 16 Oct 2018 12:12:05 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 16 Oct 2018 12:12:05 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 16 Oct 2018 17:29:54 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 16 Oct 2018 17:29:54 GMT
ENV PHP_VERSION=7.0.32
# Tue, 16 Oct 2018 17:29:55 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.32.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.32.tar.xz.asc/from/this/mirror
# Tue, 16 Oct 2018 17:29:55 GMT
ENV PHP_SHA256=ff6f62afeb32c71b3b89ecbd42950ef6c5e0c329cc6e1c58ffac47e6f1f883c4 PHP_MD5=
# Tue, 16 Oct 2018 17:30:07 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 16 Oct 2018 17:30:07 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 16 Oct 2018 17:34:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 16 Oct 2018 17:34:07 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Tue, 16 Oct 2018 17:34:07 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 16 Oct 2018 17:34:08 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 16 Oct 2018 17:34:08 GMT
WORKDIR /var/www/html
# Tue, 16 Oct 2018 17:34:08 GMT
EXPOSE 80/tcp
# Tue, 16 Oct 2018 17:34:08 GMT
CMD ["apache2-foreground"]
# Wed, 17 Oct 2018 07:58:33 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 17 Oct 2018 07:59:59 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Wed, 17 Oct 2018 08:00:08 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Wed, 17 Oct 2018 08:00:09 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 17 Oct 2018 08:00:09 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Wed, 17 Oct 2018 08:00:10 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.27
# Wed, 17 Oct 2018 08:00:10 GMT
ENV MEDIAWIKI_BRANCH=REL1_27
# Wed, 17 Oct 2018 08:00:10 GMT
ENV MEDIAWIKI_VERSION=1.27.5
# Wed, 17 Oct 2018 08:00:10 GMT
ENV MEDIAWIKI_SHA512=2f341ed5afab24b81c315db6bcc58dd617f95231f71408c08bb2a8b974c95b7edd93d0f3c857f24058111c3228b9919a0f1c2fd2f85be940dc571e390225027a
# Wed, 17 Oct 2018 08:00:18 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:2b7bcb618c4033f37486fd700e6d0debf2260935f888a192119c41eaddd29978`  
		Last Modified: Tue, 16 Oct 2018 11:06:15 GMT  
		Size: 23.1 MB (23126605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ac9f5e161441372e549d094f25b4640689548d53bb47c34a8ced01a74b8ad6f`  
		Last Modified: Tue, 16 Oct 2018 19:08:04 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cac64c78cd80e7e59f4a0fd49c7632e4799f427a439c1339df81ad969a7aed3`  
		Last Modified: Tue, 16 Oct 2018 19:08:39 GMT  
		Size: 71.5 MB (71484645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a7cfe59c8cc409c1eb116e2905e9a239f1f1a26128b6fd15cf1217563b373e4`  
		Last Modified: Tue, 16 Oct 2018 19:08:04 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99051976b849498ac53e2ffcd090cb770169576c8fe2ba03b72ec38559319cff`  
		Last Modified: Tue, 16 Oct 2018 19:10:57 GMT  
		Size: 17.6 MB (17562598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8baa008090db722001228a8b24993ff76cc41b4f3c5ee668b4ba3a9a91a8beb`  
		Last Modified: Tue, 16 Oct 2018 19:10:51 GMT  
		Size: 1.2 KB (1243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8f645450e0e3cf05fbcd8a2ca3ca89deb3a97661b07a8e11130055680df3138`  
		Last Modified: Tue, 16 Oct 2018 19:11:16 GMT  
		Size: 429.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a636e140725a9abf6bfca67dce52d8d0729b612493c86addf510f88cd41ff73`  
		Last Modified: Tue, 16 Oct 2018 19:10:50 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c899e0d2536fbfcfaa4ef00f9497a5891261cfb1fca3e776a428e461db7ee410`  
		Last Modified: Tue, 16 Oct 2018 19:10:50 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0cba1ef0564202ac1445408ed856bfc567867695100138b6278c4a50680cf7a`  
		Last Modified: Tue, 16 Oct 2018 19:49:33 GMT  
		Size: 12.4 MB (12379305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ca96ddbed1b213bc6b7cdd27cc821791a1a1594630bd9afbae4b648ee450255`  
		Last Modified: Tue, 16 Oct 2018 19:49:31 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b970950633084b70af418e3cf114d23a70f27e9e8fa032a907328f795aef1b81`  
		Last Modified: Tue, 16 Oct 2018 19:49:36 GMT  
		Size: 14.4 MB (14393946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add8f03f18325d56159cd2f3fcad9119a2bab20fd859fde0738145f82e5c6b8f`  
		Last Modified: Tue, 16 Oct 2018 19:49:31 GMT  
		Size: 2.2 KB (2193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c7c94c298264615aa9da4abf6b9e47f4b11d3c699c9d6a624e04f84679855ad`  
		Last Modified: Tue, 16 Oct 2018 19:49:31 GMT  
		Size: 903.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05cdbec925eca59dd43b5ffcb57c08abbae8d13d76179431dbc03b1041018770`  
		Last Modified: Wed, 17 Oct 2018 08:03:13 GMT  
		Size: 56.5 MB (56499573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb6e8e69dc478801be87de36f35f63ac515bae458b89124dbce6b3699a00296`  
		Last Modified: Wed, 17 Oct 2018 08:02:35 GMT  
		Size: 1.6 MB (1552701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d0ff586df7ffffb2c50c9cd9c0ed992526ca2ef675a027011984d3e2e63ae83`  
		Last Modified: Wed, 17 Oct 2018 08:02:34 GMT  
		Size: 389.4 KB (389353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28fc31eb8ac64e77e115c05b989b5f57b1a9f7f20cb66d1f997c54aa74fca7dc`  
		Last Modified: Wed, 17 Oct 2018 08:02:34 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b257eceaa8885e119f77ac04ebf8473d4e820244c945abefb769c9abe444a6e`  
		Last Modified: Wed, 17 Oct 2018 08:02:34 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79cb8aad099aaa347b0c7f6b94c0cadcd8f36533710f7a793b86a4660ca59184`  
		Last Modified: Wed, 17 Oct 2018 08:02:51 GMT  
		Size: 31.9 MB (31933705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:legacylts` - linux; ppc64le

```console
$ docker pull mediawiki@sha256:e76eacfa4ae216c9b7f4e6165ad7fa554f544f47ee5ae4d8b0d46e602777552f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.4 MB (218449205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:814f618dcdcccb99814687061d3b8b49e32ef553c89429c2a0a130c4577e6570`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 16 Oct 2018 08:22:25 GMT
ADD file:b1fa1d0ffa2b206311dfd95642d74c3312565a1ec2e6e3a2197bfd2a4b3de6c6 in / 
# Tue, 16 Oct 2018 08:22:30 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 08:36:20 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 16 Oct 2018 08:36:20 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 16 Oct 2018 08:38:14 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 16 Oct 2018 08:38:16 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 16 Oct 2018 08:38:19 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 16 Oct 2018 08:47:02 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 08:47:04 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 16 Oct 2018 08:47:06 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 16 Oct 2018 08:47:12 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 16 Oct 2018 08:47:15 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 16 Oct 2018 08:47:21 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 16 Oct 2018 08:47:25 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 16 Oct 2018 08:47:26 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 16 Oct 2018 08:47:27 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Tue, 16 Oct 2018 08:47:28 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 16 Oct 2018 08:47:30 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 16 Oct 2018 08:47:33 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 16 Oct 2018 11:37:55 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 16 Oct 2018 11:37:56 GMT
ENV PHP_VERSION=7.0.32
# Tue, 16 Oct 2018 11:37:57 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.32.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.32.tar.xz.asc/from/this/mirror
# Tue, 16 Oct 2018 11:37:58 GMT
ENV PHP_SHA256=ff6f62afeb32c71b3b89ecbd42950ef6c5e0c329cc6e1c58ffac47e6f1f883c4 PHP_MD5=
# Tue, 16 Oct 2018 11:38:37 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 16 Oct 2018 11:38:41 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 16 Oct 2018 11:42:36 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 16 Oct 2018 11:42:38 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Tue, 16 Oct 2018 11:42:39 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 16 Oct 2018 11:42:42 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 16 Oct 2018 11:42:43 GMT
WORKDIR /var/www/html
# Tue, 16 Oct 2018 11:42:44 GMT
EXPOSE 80/tcp
# Tue, 16 Oct 2018 11:42:44 GMT
CMD ["apache2-foreground"]
# Tue, 16 Oct 2018 20:12:30 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 16 Oct 2018 20:14:29 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Tue, 16 Oct 2018 20:14:47 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Tue, 16 Oct 2018 20:14:54 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 16 Oct 2018 20:14:59 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Tue, 16 Oct 2018 20:15:00 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.27
# Tue, 16 Oct 2018 20:15:01 GMT
ENV MEDIAWIKI_BRANCH=REL1_27
# Tue, 16 Oct 2018 20:15:03 GMT
ENV MEDIAWIKI_VERSION=1.27.5
# Tue, 16 Oct 2018 20:15:04 GMT
ENV MEDIAWIKI_SHA512=2f341ed5afab24b81c315db6bcc58dd617f95231f71408c08bb2a8b974c95b7edd93d0f3c857f24058111c3228b9919a0f1c2fd2f85be940dc571e390225027a
# Tue, 16 Oct 2018 20:15:27 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:202f659db3e53c01ac947538d8b37251e9fa16c4a6a699dc6c2a8910afcdfed4`  
		Last Modified: Tue, 16 Oct 2018 08:30:59 GMT  
		Size: 22.7 MB (22740583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba0f6d499d48eb19dc9d2e6453db815f1d64074f2775cbd9cac4928c0461cdbc`  
		Last Modified: Tue, 16 Oct 2018 12:20:25 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f354790bdfa97d0b204ca9cf4402d437e713049020362b7ad4af49ef47efb984`  
		Last Modified: Tue, 16 Oct 2018 12:21:25 GMT  
		Size: 61.8 MB (61809966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:745377e23f5d138b115edff3b4ebf7c90114d7d658bff2cd8453aaffc66a04db`  
		Last Modified: Tue, 16 Oct 2018 12:20:28 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6ca68ed7b31a0303cdb6d7669c24c6dedb55ddece4d992172fb000dc3f93eeb`  
		Last Modified: Tue, 16 Oct 2018 12:23:21 GMT  
		Size: 17.3 MB (17348500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba60179e94e0e6514a8bd50455affa30a26a572b16013a2b01ea060c2aaa60d3`  
		Last Modified: Tue, 16 Oct 2018 12:23:07 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9292d4db20fce2c69be0ea52392b7616f1846e01f9b70e0aadff84c1084bf254`  
		Last Modified: Tue, 16 Oct 2018 12:23:01 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a20d33fb196e2e93548afbb4d63cb3d16c02b0d6d342e94e77c6beca290525`  
		Last Modified: Tue, 16 Oct 2018 12:22:59 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c4ea029b99fcbbd8bfbfd74bd42ca81a84fbee060a87904f570a192fc958db5`  
		Last Modified: Tue, 16 Oct 2018 12:22:57 GMT  
		Size: 517.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c9720eb00827218a025ca83a1200da8fe81ff06a7addc7bb5bbe67a7135ce16`  
		Last Modified: Tue, 16 Oct 2018 12:48:36 GMT  
		Size: 12.4 MB (12378819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5df700c2238de8679c6dbb08bf02760e4e40bccf6ccaf35af683095dc66198ea`  
		Last Modified: Tue, 16 Oct 2018 12:48:33 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22b62e69dd460d061013a0b345cbdcfeb9adedbb59d021732cfca2a21eaf10de`  
		Last Modified: Tue, 16 Oct 2018 12:48:40 GMT  
		Size: 13.7 MB (13702592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc8b0e1276d18fb2703450c458d281a06a6bf5f57d56bfafa78804c108cfa33c`  
		Last Modified: Tue, 16 Oct 2018 12:48:33 GMT  
		Size: 2.2 KB (2194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1210917658a99e151617ddf0dded555475f0ec8ce36cd98daa699c042519fe8`  
		Last Modified: Tue, 16 Oct 2018 12:48:34 GMT  
		Size: 906.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e406cec386b4c449c6428e2ae5dc6f7677d1f5d173fb2b536a3d71ae16dfc121`  
		Last Modified: Tue, 16 Oct 2018 20:18:11 GMT  
		Size: 56.6 MB (56596313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f43efb949dce69d5327e901bc97faa44c380d96012f814fa33740e666bc1ab3`  
		Last Modified: Tue, 16 Oct 2018 20:17:52 GMT  
		Size: 1.5 MB (1530906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b93074650452c34e4a3bd7d8d9fe167cf458ae6688dc190a14f7ca5eedf8083`  
		Last Modified: Tue, 16 Oct 2018 20:17:52 GMT  
		Size: 400.4 KB (400382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c082530349e505f3093d4c9bec2ed7622e3f8f82f27cb4b700eeb6c1a1423130`  
		Last Modified: Tue, 16 Oct 2018 20:17:51 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69ee635cd230017d2bc1b368f6d42edd24f93f85202d8d24950baef9bfbd0001`  
		Last Modified: Tue, 16 Oct 2018 20:17:51 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65882f587f0e22183aa5dc102c5201529a1306d81e0cdd8b6359dd681854d123`  
		Last Modified: Tue, 16 Oct 2018 20:18:05 GMT  
		Size: 31.9 MB (31934083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mediawiki:lts`

```console
$ docker pull mediawiki@sha256:584e1f1992cb749c4725a967211b1453013980d63636f2985fc35cc3ff908893
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
$ docker pull mediawiki@sha256:520c140b39c77d15958d07ac034ccbc26f0a9e7a31f2584c1a4d14c0db4aaf79
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.4 MB (231405854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c5644999f6f3211e1b9c4eeda99ed614abd064fdd01f65923578921982b80b9`
-	Entrypoint: `["docker-php-entrypoint"]`
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
# Fri, 09 Nov 2018 23:42:44 GMT
ENV PHP_VERSION=7.2.12
# Fri, 09 Nov 2018 23:42:44 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.12.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.12.tar.xz.asc/from/this/mirror
# Fri, 09 Nov 2018 23:42:44 GMT
ENV PHP_SHA256=989c04cc879ee71a5e1131db867f3c5102f1f7565f805e2bb8bde33f93147fe1 PHP_MD5=
# Fri, 09 Nov 2018 23:42:53 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 09 Nov 2018 23:42:54 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 09 Nov 2018 23:46:43 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 09 Nov 2018 23:46:54 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Fri, 09 Nov 2018 23:47:06 GMT
RUN docker-php-ext-enable sodium
# Fri, 09 Nov 2018 23:47:07 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 09 Nov 2018 23:47:07 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 09 Nov 2018 23:47:07 GMT
WORKDIR /var/www/html
# Fri, 09 Nov 2018 23:47:08 GMT
EXPOSE 80/tcp
# Fri, 09 Nov 2018 23:47:08 GMT
CMD ["apache2-foreground"]
# Sat, 10 Nov 2018 01:46:14 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python3 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 10 Nov 2018 01:47:56 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Sat, 10 Nov 2018 01:48:05 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu 	&& docker-php-ext-enable apcu
# Sat, 10 Nov 2018 01:48:06 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 10 Nov 2018 01:48:07 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 10 Nov 2018 01:48:07 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.31
# Sat, 10 Nov 2018 01:48:07 GMT
ENV MEDIAWIKI_BRANCH=REL1_31
# Sat, 10 Nov 2018 01:48:08 GMT
ENV MEDIAWIKI_VERSION=1.31.1
# Sat, 10 Nov 2018 01:48:08 GMT
ENV MEDIAWIKI_SHA512=ee49649cc37d0a7d45a7c6d90c822c2a595df290be2b5bf085affbec3318768700a458a6e5b5b7e437651400b9641424429d6d304f870c22ec63fae86ffc5152
# Sat, 10 Nov 2018 01:48:14 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
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
	-	`sha256:c03bc06afbf117528a1f87ef7f70e9a98afa6fb409e87a525b77f3b24d282d42`  
		Last Modified: Sat, 10 Nov 2018 00:46:49 GMT  
		Size: 12.5 MB (12491693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4be3d516ef4a0873ef1e58afda67228eaeeade4213602bf2325dc2645aab8de3`  
		Last Modified: Sat, 10 Nov 2018 00:46:47 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25253f4c7678aed8e63c2c9b67d2fdf3b0284a56569287e3bd8744c0c41aeb0e`  
		Last Modified: Sat, 10 Nov 2018 00:46:50 GMT  
		Size: 15.6 MB (15616443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f4ee332f37f73fbfb8fa1a1557157aa166c8d5cc3813ca2108b3978fae6f56e`  
		Last Modified: Sat, 10 Nov 2018 00:46:47 GMT  
		Size: 2.2 KB (2192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc5cc2e81ed4b8c66a7ea178d4bfabb76e0a85cd124fcde6998d42d26f505345`  
		Last Modified: Sat, 10 Nov 2018 00:46:47 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2d05c20f6c8331a04994018516d98b4d90b108ed67bde9e2413e61da41658d6`  
		Last Modified: Sat, 10 Nov 2018 00:46:47 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec34cdc7398f11d10bb7e4084a0353edf0f31787850015af8280d1927e2aeb52`  
		Last Modified: Sat, 10 Nov 2018 01:48:56 GMT  
		Size: 58.3 MB (58336776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46522a5722d487553df531bac72657a3b86e65b9bedba4a3262ab8c3f0dff926`  
		Last Modified: Sat, 10 Nov 2018 01:48:42 GMT  
		Size: 1.8 MB (1757313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49b5c23f571029ec2ed24005b6f0da402ba766e28d891ad252e6469ffb04446d`  
		Last Modified: Sat, 10 Nov 2018 01:48:42 GMT  
		Size: 400.9 KB (400902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:878de1a45e3ed16e43daee7de41bb76cc49fe834afd92f47df98f4ad4af346ed`  
		Last Modified: Sat, 10 Nov 2018 01:48:41 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22a09c6484c7eb1556ef0aec00f953655a79642965f448701d36d8a8a67fe91a`  
		Last Modified: Sat, 10 Nov 2018 01:48:41 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:596be3eb986c4b273c3643d3f74ca105793fd77184b0c151e12a1b2b0505c6da`  
		Last Modified: Sat, 10 Nov 2018 01:48:54 GMT  
		Size: 35.8 MB (35753338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:lts` - linux; arm variant v5

```console
$ docker pull mediawiki@sha256:0cca2d25f8d7f2d6f98cb8fbce4ba6f1bf4059f50cd8cadc4848c1595cfdd917
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.3 MB (216277736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37f4c17afd3aa650145183c8fd63d9335eca7ac2cb6db50713e11dfef20b727e`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 16 Oct 2018 08:55:22 GMT
ADD file:8f2148adabc29587e17b50138f305f39e94e0e2bd9211a9f913fef56013ac35a in / 
# Tue, 16 Oct 2018 08:55:23 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 08:59:24 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 16 Oct 2018 08:59:25 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 16 Oct 2018 09:00:38 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 16 Oct 2018 09:00:40 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 16 Oct 2018 09:00:41 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 16 Oct 2018 09:01:03 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 09:01:04 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 16 Oct 2018 09:01:04 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 16 Oct 2018 09:01:05 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 16 Oct 2018 09:01:06 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 16 Oct 2018 09:01:08 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 16 Oct 2018 09:01:09 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 16 Oct 2018 09:01:09 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 16 Oct 2018 09:01:09 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Tue, 16 Oct 2018 09:01:10 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 16 Oct 2018 09:01:10 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 16 Oct 2018 09:01:10 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 16 Oct 2018 09:01:11 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Sat, 10 Nov 2018 10:21:06 GMT
ENV PHP_VERSION=7.2.12
# Sat, 10 Nov 2018 10:21:07 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.12.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.12.tar.xz.asc/from/this/mirror
# Sat, 10 Nov 2018 10:21:07 GMT
ENV PHP_SHA256=989c04cc879ee71a5e1131db867f3c5102f1f7565f805e2bb8bde33f93147fe1 PHP_MD5=
# Sat, 10 Nov 2018 10:21:23 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 10 Nov 2018 10:21:23 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 10 Nov 2018 10:24:22 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 10 Nov 2018 10:24:24 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Sat, 10 Nov 2018 10:24:25 GMT
RUN docker-php-ext-enable sodium
# Sat, 10 Nov 2018 10:24:25 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 10 Nov 2018 10:24:26 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 10 Nov 2018 10:24:26 GMT
WORKDIR /var/www/html
# Sat, 10 Nov 2018 10:24:26 GMT
EXPOSE 80/tcp
# Sat, 10 Nov 2018 10:24:27 GMT
CMD ["apache2-foreground"]
# Sat, 10 Nov 2018 12:27:29 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python3 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 10 Nov 2018 12:30:39 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Sat, 10 Nov 2018 12:30:59 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu 	&& docker-php-ext-enable apcu
# Sat, 10 Nov 2018 12:31:04 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 10 Nov 2018 12:31:05 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 10 Nov 2018 12:31:13 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.31
# Sat, 10 Nov 2018 12:31:13 GMT
ENV MEDIAWIKI_BRANCH=REL1_31
# Sat, 10 Nov 2018 12:31:14 GMT
ENV MEDIAWIKI_VERSION=1.31.1
# Sat, 10 Nov 2018 12:31:14 GMT
ENV MEDIAWIKI_SHA512=ee49649cc37d0a7d45a7c6d90c822c2a595df290be2b5bf085affbec3318768700a458a6e5b5b7e437651400b9641424429d6d304f870c22ec63fae86ffc5152
# Sat, 10 Nov 2018 12:31:33 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:4b7ffdf9817f718c84be550e8edf757070396d69165fa729c6ddd4e775428eb2`  
		Last Modified: Tue, 16 Oct 2018 09:04:44 GMT  
		Size: 21.2 MB (21162965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20460378a8f38aacfeb9a0bcf3a38abbaebb8845cf0f7ca8c5f8ccb51f3ba5d8`  
		Last Modified: Tue, 16 Oct 2018 10:20:49 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecb7e6fb4c6270cb10f9b8f7aa93b2d05eca8e4ca542ae6b884f3d507b3f2c06`  
		Last Modified: Tue, 16 Oct 2018 10:21:09 GMT  
		Size: 57.4 MB (57447518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ad837638c5f551ce2ed0722f0aa0206be6b2503befb732461de20785c38ed13`  
		Last Modified: Tue, 16 Oct 2018 10:20:48 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02b8207a3bfbe878b8a8d846a774c3ce482e349d482e7084559f88b12618ffb1`  
		Last Modified: Tue, 16 Oct 2018 10:20:52 GMT  
		Size: 16.7 MB (16650918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7198acceff99d48ae548b76f8e9eb26d52d8a63521d95d7db38554594b5d1223`  
		Last Modified: Tue, 16 Oct 2018 10:20:47 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e62a81208df875e54460875df6afbac9065b4afc56282d9fb756acffa5656a7`  
		Last Modified: Tue, 16 Oct 2018 10:20:46 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5a783b15fb65ce49afc889cc25e5744af9318920f2c2b5419dc1d6209f71d6a`  
		Last Modified: Tue, 16 Oct 2018 10:20:46 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b8615ebbc988042c7c4db62198beea70acc923ccc2b3f98aba803a3947a68fa`  
		Last Modified: Tue, 16 Oct 2018 10:20:46 GMT  
		Size: 510.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6d2a8b451c69a9153a5a2299fa76a6f68795ea547934e6343606c83d31f3f9f`  
		Last Modified: Sat, 10 Nov 2018 10:42:43 GMT  
		Size: 12.5 MB (12489686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:628ae252af1a36dcb9335d209a069607c24ef3e721befd4f715b3481f543185f`  
		Last Modified: Sat, 10 Nov 2018 10:42:40 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7696a1ee3939f9bbbc0d5313ae63a81fdc28b6e3dd30fde3ce3e36de4651126`  
		Last Modified: Sat, 10 Nov 2018 10:42:45 GMT  
		Size: 14.8 MB (14789407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a210ca29558bd9fd22ea689556a1fa9d481d405e32a8fbc91b26a30566348ff`  
		Last Modified: Sat, 10 Nov 2018 10:42:40 GMT  
		Size: 2.2 KB (2192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f871e2386bb1b24ecac0b1f2bd1258f889c8bfdbf7bf9c64e2b6f6e3031973b`  
		Last Modified: Sat, 10 Nov 2018 10:42:40 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8e6c8197ba9f797dc43c28fa42eef615b88c75dd631b3cfa9c32fdd339be8e6`  
		Last Modified: Sat, 10 Nov 2018 10:42:40 GMT  
		Size: 903.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6c7c18b0416cf551bfc55cdf8bcf8958c4b64680babbb075301c00ee1f515e7`  
		Last Modified: Sat, 10 Nov 2018 12:32:24 GMT  
		Size: 55.9 MB (55895178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96b394aaa5ba59d916cd1fa2f75ace3f7eb82340428613d77ef33bc9711a93b7`  
		Last Modified: Sat, 10 Nov 2018 12:32:05 GMT  
		Size: 1.7 MB (1687916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10e2a4b7b22851cbb4ea86f35bc077512912b65fb1007e6a35d1bfad9c1d335f`  
		Last Modified: Sat, 10 Nov 2018 12:32:05 GMT  
		Size: 393.0 KB (393010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8f2101ffac770c11f14c7e1d8878c97ed70b040f91b01c2b25f14023a3c8bee`  
		Last Modified: Sat, 10 Nov 2018 12:32:05 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34bc760a22f9124017bb1ff861f37905528b0ef06413082b8a4ca101f270e512`  
		Last Modified: Sat, 10 Nov 2018 12:32:05 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:704c7cbd7eff3dd946315fbea52417012b1864d0e7fbaad1d1063578730b0bdf`  
		Last Modified: Sat, 10 Nov 2018 12:32:24 GMT  
		Size: 35.8 MB (35753834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:lts` - linux; arm variant v7

```console
$ docker pull mediawiki@sha256:f85a6008eb59054e7af130a286a8e14fa0e133862f082ae21ffac4c10e93cad1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.7 MB (206676783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb4d374b8dc475c09f0003ebce3a4c221294069b92edf6122a29351522ca2434`
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
# Tue, 16 Oct 2018 12:31:35 GMT
ENV PHP_VERSION=7.2.11
# Tue, 16 Oct 2018 12:31:36 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.11.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.11.tar.xz.asc/from/this/mirror
# Tue, 16 Oct 2018 12:31:36 GMT
ENV PHP_SHA256=da1a705c0bc46410e330fc6baa967666c8cd2985378fb9707c01a8e33b01d985 PHP_MD5=
# Tue, 16 Oct 2018 12:31:50 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 16 Oct 2018 12:31:51 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 16 Oct 2018 12:34:37 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 16 Oct 2018 12:34:39 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Tue, 16 Oct 2018 12:34:40 GMT
RUN docker-php-ext-enable sodium
# Tue, 16 Oct 2018 12:34:41 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 16 Oct 2018 12:34:41 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 16 Oct 2018 12:34:42 GMT
WORKDIR /var/www/html
# Tue, 16 Oct 2018 12:34:42 GMT
EXPOSE 80/tcp
# Tue, 16 Oct 2018 12:34:43 GMT
CMD ["apache2-foreground"]
# Tue, 16 Oct 2018 15:42:05 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python3 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 16 Oct 2018 15:44:59 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Tue, 16 Oct 2018 15:45:15 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu 	&& docker-php-ext-enable apcu
# Tue, 16 Oct 2018 15:45:16 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 16 Oct 2018 15:45:18 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Tue, 16 Oct 2018 15:45:18 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.31
# Tue, 16 Oct 2018 15:45:19 GMT
ENV MEDIAWIKI_BRANCH=REL1_31
# Tue, 16 Oct 2018 15:45:19 GMT
ENV MEDIAWIKI_VERSION=1.31.1
# Tue, 16 Oct 2018 15:45:19 GMT
ENV MEDIAWIKI_SHA512=ee49649cc37d0a7d45a7c6d90c822c2a595df290be2b5bf085affbec3318768700a458a6e5b5b7e437651400b9641424429d6d304f870c22ec63fae86ffc5152
# Tue, 16 Oct 2018 15:45:37 GMT
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
	-	`sha256:d03f74c911913f4aa68e96a8cb2444d85dc33d3b2d8ba5e1b0f12f94e5286121`  
		Last Modified: Tue, 16 Oct 2018 13:26:46 GMT  
		Size: 12.5 MB (12479383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a04cdad87bc3b7a5026c880b6e397465d27c0f0294938b69fcf7e58070babfcd`  
		Last Modified: Tue, 16 Oct 2018 13:26:43 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:428c54d2010e5274ed09c896eea424977cd5493fbc8a20ad5e71adfa868a539d`  
		Last Modified: Tue, 16 Oct 2018 13:26:48 GMT  
		Size: 13.9 MB (13927117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2edf7092f52263f330a951d3ef9051c580cb63b6712333b8080fd2350a8d622a`  
		Last Modified: Tue, 16 Oct 2018 13:26:43 GMT  
		Size: 2.2 KB (2191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4237cc7586b0378fd2144bc20a38b562c77bb762546581cef2753f0b678de164`  
		Last Modified: Tue, 16 Oct 2018 13:26:43 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6e1301067258438305c74d9ed9d845734d183bab1c6a053f25c175ab2dcce1b`  
		Last Modified: Tue, 16 Oct 2018 13:26:44 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:033abcf4a2df14f959cbaa1cb907bf95890e8eb48f635713da2981a922130643`  
		Last Modified: Tue, 16 Oct 2018 15:51:48 GMT  
		Size: 53.5 MB (53489566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3899cc11fca9fd65a23516801e6d483ff4e8a8ace0c3bbad6d1bf773923103b`  
		Last Modified: Tue, 16 Oct 2018 15:51:23 GMT  
		Size: 1.6 MB (1636865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed43eef1f4cd79e0d447d0f83b309ae8353fd132816f0450445fa66601158125`  
		Last Modified: Tue, 16 Oct 2018 15:51:25 GMT  
		Size: 387.4 KB (387429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64055abfad5888369e1ed8689f72a6f3c4940d50bc7d21ce0d8caa92690c078c`  
		Last Modified: Tue, 16 Oct 2018 15:51:23 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9e088e420efc3d714c4e46498213e17a1efc6e4082b58f92b63d3d73ad955f`  
		Last Modified: Tue, 16 Oct 2018 15:51:23 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2a8bccaf4444ec3affebbc4001e61c118f727488386655736235f1f2d671954`  
		Last Modified: Tue, 16 Oct 2018 15:51:42 GMT  
		Size: 35.8 MB (35753944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:lts` - linux; arm64 variant v8

```console
$ docker pull mediawiki@sha256:44ffe8d4078d33a6ca1a4799cfdf44a2c0025c9cd21d043a4f38d90257633929
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.1 MB (208080243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b208e944cb7e755680b7263bb4f7054d90055588f8cf8f9085f55ccd5fa0c900`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 16 Oct 2018 08:43:45 GMT
ADD file:e83c09a5cfc1cecaeba6b736737d551fe0f5d3f204ec3fc984fe768003774f81 in / 
# Tue, 16 Oct 2018 08:43:46 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 09:37:09 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 16 Oct 2018 09:37:10 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 16 Oct 2018 09:38:24 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 16 Oct 2018 09:38:25 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 16 Oct 2018 09:38:27 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 16 Oct 2018 09:49:43 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 09:49:44 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 16 Oct 2018 09:49:44 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 16 Oct 2018 09:49:46 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 16 Oct 2018 09:49:47 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 16 Oct 2018 09:49:49 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 16 Oct 2018 09:49:51 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 16 Oct 2018 09:49:51 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 16 Oct 2018 09:49:52 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Tue, 16 Oct 2018 09:49:53 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 16 Oct 2018 09:49:53 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 16 Oct 2018 09:49:54 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 16 Oct 2018 13:56:08 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 16 Oct 2018 13:56:09 GMT
ENV PHP_VERSION=7.0.32
# Tue, 16 Oct 2018 13:56:10 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.32.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.32.tar.xz.asc/from/this/mirror
# Tue, 16 Oct 2018 13:56:10 GMT
ENV PHP_SHA256=ff6f62afeb32c71b3b89ecbd42950ef6c5e0c329cc6e1c58ffac47e6f1f883c4 PHP_MD5=
# Tue, 16 Oct 2018 13:56:54 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 16 Oct 2018 13:56:55 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 16 Oct 2018 14:04:23 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 16 Oct 2018 14:04:25 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Tue, 16 Oct 2018 14:04:26 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 16 Oct 2018 14:04:27 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 16 Oct 2018 14:04:28 GMT
WORKDIR /var/www/html
# Tue, 16 Oct 2018 14:04:33 GMT
EXPOSE 80/tcp
# Tue, 16 Oct 2018 14:04:34 GMT
CMD ["apache2-foreground"]
# Wed, 17 Oct 2018 06:04:36 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 17 Oct 2018 06:07:58 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Wed, 17 Oct 2018 06:08:19 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Wed, 17 Oct 2018 06:08:22 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 17 Oct 2018 06:08:24 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Wed, 17 Oct 2018 06:08:32 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.27
# Wed, 17 Oct 2018 06:08:32 GMT
ENV MEDIAWIKI_BRANCH=REL1_27
# Wed, 17 Oct 2018 06:08:33 GMT
ENV MEDIAWIKI_VERSION=1.27.5
# Wed, 17 Oct 2018 06:08:34 GMT
ENV MEDIAWIKI_SHA512=2f341ed5afab24b81c315db6bcc58dd617f95231f71408c08bb2a8b974c95b7edd93d0f3c857f24058111c3228b9919a0f1c2fd2f85be940dc571e390225027a
# Wed, 17 Oct 2018 06:08:45 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:141796bfcf0d5a5edb072138e517bf85deef4f47f40afb51ba8705bec3b921dd`  
		Last Modified: Tue, 16 Oct 2018 08:50:53 GMT  
		Size: 20.3 MB (20331585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa887e40ae8a2b78a8eba6e16f2902853327c922f0110c4bd2e4728fb79b305b`  
		Last Modified: Tue, 16 Oct 2018 15:06:53 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99271cba459dd39a663363166e510f7cc1ebf18b221d33bb6c4e26d54774a5d7`  
		Last Modified: Tue, 16 Oct 2018 15:08:26 GMT  
		Size: 57.6 MB (57596184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:440b75b2132ae75a804754d6dd4f874b688e2f6a1d034fd0d2de6e496b8f1f0b`  
		Last Modified: Tue, 16 Oct 2018 15:06:52 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9716126acdb685c5ea84948fb47306c1b2d74752160d8de98d14cac45c1734a`  
		Last Modified: Tue, 16 Oct 2018 15:10:47 GMT  
		Size: 16.7 MB (16709722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92cd9f340623c79febab023e7bed21713ff7c5a54222f6e864d484df51e5eb5e`  
		Last Modified: Tue, 16 Oct 2018 15:10:15 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f4aca00aec726971992cfa7cb081238ab6d32d57c69cf024ee2690cef29374d`  
		Last Modified: Tue, 16 Oct 2018 15:10:14 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef70a607bae65cff09c6a3fd4add05727d00f023e83540e9823c8c73ce65afba`  
		Last Modified: Tue, 16 Oct 2018 15:10:14 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3482f362267a35679e02d84771ac1e78594ccb8598b70cfdb652909f558ae451`  
		Last Modified: Tue, 16 Oct 2018 15:10:13 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50624813ae71a53d58d6982af86920e9fdbaec7b06c8329e4ea88181ea682607`  
		Last Modified: Tue, 16 Oct 2018 15:43:35 GMT  
		Size: 12.4 MB (12378440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:154f5759e9b16e9a04f92afd14a7b5d5c2a92f781638c704f740986d5232caca`  
		Last Modified: Tue, 16 Oct 2018 15:43:33 GMT  
		Size: 502.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:116563a0376986b0dffd04b739a472b46be9e087b0e1aff085c5ee17cf08e287`  
		Last Modified: Tue, 16 Oct 2018 15:43:39 GMT  
		Size: 13.1 MB (13092238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:204e51532312e737fb45fedfafbff35b2381bbd51ed63b8bedadd5b79c86a8fc`  
		Last Modified: Tue, 16 Oct 2018 15:43:33 GMT  
		Size: 2.2 KB (2193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6520db0429b6facca4c9fed9a535ab187a6755dde45ba303c81da97db840095f`  
		Last Modified: Tue, 16 Oct 2018 15:43:33 GMT  
		Size: 905.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa8e3dce0d2b00c07b8b1d81365aba40a107ee790a3196a44c6e91de872d741b`  
		Last Modified: Wed, 17 Oct 2018 06:12:26 GMT  
		Size: 54.1 MB (54149817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad93e1fe64d7067a9db1021e3c4e3eaab44558105ebde6a50ac0f9ba3a5645e2`  
		Last Modified: Wed, 17 Oct 2018 06:12:05 GMT  
		Size: 1.5 MB (1486658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ac1f5aa91252d9dafcc4e5ba74eef3f7c3fa65cb1931cbe39ab155c07031f73`  
		Last Modified: Wed, 17 Oct 2018 06:12:02 GMT  
		Size: 395.0 KB (394970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56946bf185cff149538ad11ea4912945b25b68e8a7cab8f2457efd2701cef4d9`  
		Last Modified: Wed, 17 Oct 2018 06:12:02 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85b5171d7d075f37055f4a31e64767d5854ad0057627cd4b2564dd3790d838d2`  
		Last Modified: Wed, 17 Oct 2018 06:12:02 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f7948973641c4f1ad24c42af64c7125499a4f05252ec0d0507b6567ebef26f8`  
		Last Modified: Wed, 17 Oct 2018 06:12:24 GMT  
		Size: 31.9 MB (31933727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:lts` - linux; 386

```console
$ docker pull mediawiki@sha256:b21d1d70242702efdbb70168a3c286b30076caec26c6628394dc286be4ef5da1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.3 MB (229329317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e869b7784bacd85cc3b9f01934da9edaa4e408bd1d1e3e46f97553d3dc015024`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 16 Oct 2018 10:49:05 GMT
ADD file:a71ef0e9adb528ae2dc5ca3395654522c23762d8936a4902378c6749bb357582 in / 
# Tue, 16 Oct 2018 10:49:05 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 11:59:35 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 16 Oct 2018 11:59:36 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 16 Oct 2018 12:00:22 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:00:23 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 16 Oct 2018 12:00:24 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 16 Oct 2018 12:11:59 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:11:59 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 16 Oct 2018 12:12:00 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 16 Oct 2018 12:12:01 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 16 Oct 2018 12:12:02 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 16 Oct 2018 12:12:03 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 16 Oct 2018 12:12:04 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 16 Oct 2018 12:12:04 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 16 Oct 2018 12:12:05 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Tue, 16 Oct 2018 12:12:05 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 16 Oct 2018 12:12:05 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 16 Oct 2018 12:12:05 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 16 Oct 2018 17:29:54 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 16 Oct 2018 17:29:54 GMT
ENV PHP_VERSION=7.0.32
# Tue, 16 Oct 2018 17:29:55 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.32.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.32.tar.xz.asc/from/this/mirror
# Tue, 16 Oct 2018 17:29:55 GMT
ENV PHP_SHA256=ff6f62afeb32c71b3b89ecbd42950ef6c5e0c329cc6e1c58ffac47e6f1f883c4 PHP_MD5=
# Tue, 16 Oct 2018 17:30:07 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 16 Oct 2018 17:30:07 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 16 Oct 2018 17:34:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 16 Oct 2018 17:34:07 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Tue, 16 Oct 2018 17:34:07 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 16 Oct 2018 17:34:08 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 16 Oct 2018 17:34:08 GMT
WORKDIR /var/www/html
# Tue, 16 Oct 2018 17:34:08 GMT
EXPOSE 80/tcp
# Tue, 16 Oct 2018 17:34:08 GMT
CMD ["apache2-foreground"]
# Wed, 17 Oct 2018 07:58:33 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 17 Oct 2018 07:59:59 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Wed, 17 Oct 2018 08:00:08 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Wed, 17 Oct 2018 08:00:09 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 17 Oct 2018 08:00:09 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Wed, 17 Oct 2018 08:00:10 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.27
# Wed, 17 Oct 2018 08:00:10 GMT
ENV MEDIAWIKI_BRANCH=REL1_27
# Wed, 17 Oct 2018 08:00:10 GMT
ENV MEDIAWIKI_VERSION=1.27.5
# Wed, 17 Oct 2018 08:00:10 GMT
ENV MEDIAWIKI_SHA512=2f341ed5afab24b81c315db6bcc58dd617f95231f71408c08bb2a8b974c95b7edd93d0f3c857f24058111c3228b9919a0f1c2fd2f85be940dc571e390225027a
# Wed, 17 Oct 2018 08:00:18 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:2b7bcb618c4033f37486fd700e6d0debf2260935f888a192119c41eaddd29978`  
		Last Modified: Tue, 16 Oct 2018 11:06:15 GMT  
		Size: 23.1 MB (23126605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ac9f5e161441372e549d094f25b4640689548d53bb47c34a8ced01a74b8ad6f`  
		Last Modified: Tue, 16 Oct 2018 19:08:04 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cac64c78cd80e7e59f4a0fd49c7632e4799f427a439c1339df81ad969a7aed3`  
		Last Modified: Tue, 16 Oct 2018 19:08:39 GMT  
		Size: 71.5 MB (71484645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a7cfe59c8cc409c1eb116e2905e9a239f1f1a26128b6fd15cf1217563b373e4`  
		Last Modified: Tue, 16 Oct 2018 19:08:04 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99051976b849498ac53e2ffcd090cb770169576c8fe2ba03b72ec38559319cff`  
		Last Modified: Tue, 16 Oct 2018 19:10:57 GMT  
		Size: 17.6 MB (17562598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8baa008090db722001228a8b24993ff76cc41b4f3c5ee668b4ba3a9a91a8beb`  
		Last Modified: Tue, 16 Oct 2018 19:10:51 GMT  
		Size: 1.2 KB (1243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8f645450e0e3cf05fbcd8a2ca3ca89deb3a97661b07a8e11130055680df3138`  
		Last Modified: Tue, 16 Oct 2018 19:11:16 GMT  
		Size: 429.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a636e140725a9abf6bfca67dce52d8d0729b612493c86addf510f88cd41ff73`  
		Last Modified: Tue, 16 Oct 2018 19:10:50 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c899e0d2536fbfcfaa4ef00f9497a5891261cfb1fca3e776a428e461db7ee410`  
		Last Modified: Tue, 16 Oct 2018 19:10:50 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0cba1ef0564202ac1445408ed856bfc567867695100138b6278c4a50680cf7a`  
		Last Modified: Tue, 16 Oct 2018 19:49:33 GMT  
		Size: 12.4 MB (12379305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ca96ddbed1b213bc6b7cdd27cc821791a1a1594630bd9afbae4b648ee450255`  
		Last Modified: Tue, 16 Oct 2018 19:49:31 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b970950633084b70af418e3cf114d23a70f27e9e8fa032a907328f795aef1b81`  
		Last Modified: Tue, 16 Oct 2018 19:49:36 GMT  
		Size: 14.4 MB (14393946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add8f03f18325d56159cd2f3fcad9119a2bab20fd859fde0738145f82e5c6b8f`  
		Last Modified: Tue, 16 Oct 2018 19:49:31 GMT  
		Size: 2.2 KB (2193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c7c94c298264615aa9da4abf6b9e47f4b11d3c699c9d6a624e04f84679855ad`  
		Last Modified: Tue, 16 Oct 2018 19:49:31 GMT  
		Size: 903.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05cdbec925eca59dd43b5ffcb57c08abbae8d13d76179431dbc03b1041018770`  
		Last Modified: Wed, 17 Oct 2018 08:03:13 GMT  
		Size: 56.5 MB (56499573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb6e8e69dc478801be87de36f35f63ac515bae458b89124dbce6b3699a00296`  
		Last Modified: Wed, 17 Oct 2018 08:02:35 GMT  
		Size: 1.6 MB (1552701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d0ff586df7ffffb2c50c9cd9c0ed992526ca2ef675a027011984d3e2e63ae83`  
		Last Modified: Wed, 17 Oct 2018 08:02:34 GMT  
		Size: 389.4 KB (389353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28fc31eb8ac64e77e115c05b989b5f57b1a9f7f20cb66d1f997c54aa74fca7dc`  
		Last Modified: Wed, 17 Oct 2018 08:02:34 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b257eceaa8885e119f77ac04ebf8473d4e820244c945abefb769c9abe444a6e`  
		Last Modified: Wed, 17 Oct 2018 08:02:34 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79cb8aad099aaa347b0c7f6b94c0cadcd8f36533710f7a793b86a4660ca59184`  
		Last Modified: Wed, 17 Oct 2018 08:02:51 GMT  
		Size: 31.9 MB (31933705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:lts` - linux; ppc64le

```console
$ docker pull mediawiki@sha256:e76eacfa4ae216c9b7f4e6165ad7fa554f544f47ee5ae4d8b0d46e602777552f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.4 MB (218449205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:814f618dcdcccb99814687061d3b8b49e32ef553c89429c2a0a130c4577e6570`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 16 Oct 2018 08:22:25 GMT
ADD file:b1fa1d0ffa2b206311dfd95642d74c3312565a1ec2e6e3a2197bfd2a4b3de6c6 in / 
# Tue, 16 Oct 2018 08:22:30 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 08:36:20 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 16 Oct 2018 08:36:20 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 16 Oct 2018 08:38:14 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 16 Oct 2018 08:38:16 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 16 Oct 2018 08:38:19 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 16 Oct 2018 08:47:02 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 08:47:04 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 16 Oct 2018 08:47:06 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 16 Oct 2018 08:47:12 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 16 Oct 2018 08:47:15 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 16 Oct 2018 08:47:21 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 16 Oct 2018 08:47:25 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 16 Oct 2018 08:47:26 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 16 Oct 2018 08:47:27 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Tue, 16 Oct 2018 08:47:28 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 16 Oct 2018 08:47:30 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 16 Oct 2018 08:47:33 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 16 Oct 2018 11:37:55 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 16 Oct 2018 11:37:56 GMT
ENV PHP_VERSION=7.0.32
# Tue, 16 Oct 2018 11:37:57 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.32.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.32.tar.xz.asc/from/this/mirror
# Tue, 16 Oct 2018 11:37:58 GMT
ENV PHP_SHA256=ff6f62afeb32c71b3b89ecbd42950ef6c5e0c329cc6e1c58ffac47e6f1f883c4 PHP_MD5=
# Tue, 16 Oct 2018 11:38:37 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 16 Oct 2018 11:38:41 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 16 Oct 2018 11:42:36 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 16 Oct 2018 11:42:38 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Tue, 16 Oct 2018 11:42:39 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 16 Oct 2018 11:42:42 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 16 Oct 2018 11:42:43 GMT
WORKDIR /var/www/html
# Tue, 16 Oct 2018 11:42:44 GMT
EXPOSE 80/tcp
# Tue, 16 Oct 2018 11:42:44 GMT
CMD ["apache2-foreground"]
# Tue, 16 Oct 2018 20:12:30 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 16 Oct 2018 20:14:29 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Tue, 16 Oct 2018 20:14:47 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Tue, 16 Oct 2018 20:14:54 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 16 Oct 2018 20:14:59 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Tue, 16 Oct 2018 20:15:00 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.27
# Tue, 16 Oct 2018 20:15:01 GMT
ENV MEDIAWIKI_BRANCH=REL1_27
# Tue, 16 Oct 2018 20:15:03 GMT
ENV MEDIAWIKI_VERSION=1.27.5
# Tue, 16 Oct 2018 20:15:04 GMT
ENV MEDIAWIKI_SHA512=2f341ed5afab24b81c315db6bcc58dd617f95231f71408c08bb2a8b974c95b7edd93d0f3c857f24058111c3228b9919a0f1c2fd2f85be940dc571e390225027a
# Tue, 16 Oct 2018 20:15:27 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:202f659db3e53c01ac947538d8b37251e9fa16c4a6a699dc6c2a8910afcdfed4`  
		Last Modified: Tue, 16 Oct 2018 08:30:59 GMT  
		Size: 22.7 MB (22740583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba0f6d499d48eb19dc9d2e6453db815f1d64074f2775cbd9cac4928c0461cdbc`  
		Last Modified: Tue, 16 Oct 2018 12:20:25 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f354790bdfa97d0b204ca9cf4402d437e713049020362b7ad4af49ef47efb984`  
		Last Modified: Tue, 16 Oct 2018 12:21:25 GMT  
		Size: 61.8 MB (61809966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:745377e23f5d138b115edff3b4ebf7c90114d7d658bff2cd8453aaffc66a04db`  
		Last Modified: Tue, 16 Oct 2018 12:20:28 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6ca68ed7b31a0303cdb6d7669c24c6dedb55ddece4d992172fb000dc3f93eeb`  
		Last Modified: Tue, 16 Oct 2018 12:23:21 GMT  
		Size: 17.3 MB (17348500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba60179e94e0e6514a8bd50455affa30a26a572b16013a2b01ea060c2aaa60d3`  
		Last Modified: Tue, 16 Oct 2018 12:23:07 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9292d4db20fce2c69be0ea52392b7616f1846e01f9b70e0aadff84c1084bf254`  
		Last Modified: Tue, 16 Oct 2018 12:23:01 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a20d33fb196e2e93548afbb4d63cb3d16c02b0d6d342e94e77c6beca290525`  
		Last Modified: Tue, 16 Oct 2018 12:22:59 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c4ea029b99fcbbd8bfbfd74bd42ca81a84fbee060a87904f570a192fc958db5`  
		Last Modified: Tue, 16 Oct 2018 12:22:57 GMT  
		Size: 517.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c9720eb00827218a025ca83a1200da8fe81ff06a7addc7bb5bbe67a7135ce16`  
		Last Modified: Tue, 16 Oct 2018 12:48:36 GMT  
		Size: 12.4 MB (12378819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5df700c2238de8679c6dbb08bf02760e4e40bccf6ccaf35af683095dc66198ea`  
		Last Modified: Tue, 16 Oct 2018 12:48:33 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22b62e69dd460d061013a0b345cbdcfeb9adedbb59d021732cfca2a21eaf10de`  
		Last Modified: Tue, 16 Oct 2018 12:48:40 GMT  
		Size: 13.7 MB (13702592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc8b0e1276d18fb2703450c458d281a06a6bf5f57d56bfafa78804c108cfa33c`  
		Last Modified: Tue, 16 Oct 2018 12:48:33 GMT  
		Size: 2.2 KB (2194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1210917658a99e151617ddf0dded555475f0ec8ce36cd98daa699c042519fe8`  
		Last Modified: Tue, 16 Oct 2018 12:48:34 GMT  
		Size: 906.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e406cec386b4c449c6428e2ae5dc6f7677d1f5d173fb2b536a3d71ae16dfc121`  
		Last Modified: Tue, 16 Oct 2018 20:18:11 GMT  
		Size: 56.6 MB (56596313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f43efb949dce69d5327e901bc97faa44c380d96012f814fa33740e666bc1ab3`  
		Last Modified: Tue, 16 Oct 2018 20:17:52 GMT  
		Size: 1.5 MB (1530906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b93074650452c34e4a3bd7d8d9fe167cf458ae6688dc190a14f7ca5eedf8083`  
		Last Modified: Tue, 16 Oct 2018 20:17:52 GMT  
		Size: 400.4 KB (400382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c082530349e505f3093d4c9bec2ed7622e3f8f82f27cb4b700eeb6c1a1423130`  
		Last Modified: Tue, 16 Oct 2018 20:17:51 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69ee635cd230017d2bc1b368f6d42edd24f93f85202d8d24950baef9bfbd0001`  
		Last Modified: Tue, 16 Oct 2018 20:17:51 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65882f587f0e22183aa5dc102c5201529a1306d81e0cdd8b6359dd681854d123`  
		Last Modified: Tue, 16 Oct 2018 20:18:05 GMT  
		Size: 31.9 MB (31934083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mediawiki:stable`

```console
$ docker pull mediawiki@sha256:584e1f1992cb749c4725a967211b1453013980d63636f2985fc35cc3ff908893
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
$ docker pull mediawiki@sha256:520c140b39c77d15958d07ac034ccbc26f0a9e7a31f2584c1a4d14c0db4aaf79
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.4 MB (231405854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c5644999f6f3211e1b9c4eeda99ed614abd064fdd01f65923578921982b80b9`
-	Entrypoint: `["docker-php-entrypoint"]`
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
# Fri, 09 Nov 2018 23:42:44 GMT
ENV PHP_VERSION=7.2.12
# Fri, 09 Nov 2018 23:42:44 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.12.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.12.tar.xz.asc/from/this/mirror
# Fri, 09 Nov 2018 23:42:44 GMT
ENV PHP_SHA256=989c04cc879ee71a5e1131db867f3c5102f1f7565f805e2bb8bde33f93147fe1 PHP_MD5=
# Fri, 09 Nov 2018 23:42:53 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 09 Nov 2018 23:42:54 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 09 Nov 2018 23:46:43 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 09 Nov 2018 23:46:54 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Fri, 09 Nov 2018 23:47:06 GMT
RUN docker-php-ext-enable sodium
# Fri, 09 Nov 2018 23:47:07 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 09 Nov 2018 23:47:07 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Fri, 09 Nov 2018 23:47:07 GMT
WORKDIR /var/www/html
# Fri, 09 Nov 2018 23:47:08 GMT
EXPOSE 80/tcp
# Fri, 09 Nov 2018 23:47:08 GMT
CMD ["apache2-foreground"]
# Sat, 10 Nov 2018 01:46:14 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python3 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 10 Nov 2018 01:47:56 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Sat, 10 Nov 2018 01:48:05 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu 	&& docker-php-ext-enable apcu
# Sat, 10 Nov 2018 01:48:06 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 10 Nov 2018 01:48:07 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 10 Nov 2018 01:48:07 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.31
# Sat, 10 Nov 2018 01:48:07 GMT
ENV MEDIAWIKI_BRANCH=REL1_31
# Sat, 10 Nov 2018 01:48:08 GMT
ENV MEDIAWIKI_VERSION=1.31.1
# Sat, 10 Nov 2018 01:48:08 GMT
ENV MEDIAWIKI_SHA512=ee49649cc37d0a7d45a7c6d90c822c2a595df290be2b5bf085affbec3318768700a458a6e5b5b7e437651400b9641424429d6d304f870c22ec63fae86ffc5152
# Sat, 10 Nov 2018 01:48:14 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
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
	-	`sha256:c03bc06afbf117528a1f87ef7f70e9a98afa6fb409e87a525b77f3b24d282d42`  
		Last Modified: Sat, 10 Nov 2018 00:46:49 GMT  
		Size: 12.5 MB (12491693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4be3d516ef4a0873ef1e58afda67228eaeeade4213602bf2325dc2645aab8de3`  
		Last Modified: Sat, 10 Nov 2018 00:46:47 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25253f4c7678aed8e63c2c9b67d2fdf3b0284a56569287e3bd8744c0c41aeb0e`  
		Last Modified: Sat, 10 Nov 2018 00:46:50 GMT  
		Size: 15.6 MB (15616443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f4ee332f37f73fbfb8fa1a1557157aa166c8d5cc3813ca2108b3978fae6f56e`  
		Last Modified: Sat, 10 Nov 2018 00:46:47 GMT  
		Size: 2.2 KB (2192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc5cc2e81ed4b8c66a7ea178d4bfabb76e0a85cd124fcde6998d42d26f505345`  
		Last Modified: Sat, 10 Nov 2018 00:46:47 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2d05c20f6c8331a04994018516d98b4d90b108ed67bde9e2413e61da41658d6`  
		Last Modified: Sat, 10 Nov 2018 00:46:47 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec34cdc7398f11d10bb7e4084a0353edf0f31787850015af8280d1927e2aeb52`  
		Last Modified: Sat, 10 Nov 2018 01:48:56 GMT  
		Size: 58.3 MB (58336776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46522a5722d487553df531bac72657a3b86e65b9bedba4a3262ab8c3f0dff926`  
		Last Modified: Sat, 10 Nov 2018 01:48:42 GMT  
		Size: 1.8 MB (1757313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49b5c23f571029ec2ed24005b6f0da402ba766e28d891ad252e6469ffb04446d`  
		Last Modified: Sat, 10 Nov 2018 01:48:42 GMT  
		Size: 400.9 KB (400902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:878de1a45e3ed16e43daee7de41bb76cc49fe834afd92f47df98f4ad4af346ed`  
		Last Modified: Sat, 10 Nov 2018 01:48:41 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22a09c6484c7eb1556ef0aec00f953655a79642965f448701d36d8a8a67fe91a`  
		Last Modified: Sat, 10 Nov 2018 01:48:41 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:596be3eb986c4b273c3643d3f74ca105793fd77184b0c151e12a1b2b0505c6da`  
		Last Modified: Sat, 10 Nov 2018 01:48:54 GMT  
		Size: 35.8 MB (35753338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:stable` - linux; arm variant v5

```console
$ docker pull mediawiki@sha256:0cca2d25f8d7f2d6f98cb8fbce4ba6f1bf4059f50cd8cadc4848c1595cfdd917
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.3 MB (216277736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37f4c17afd3aa650145183c8fd63d9335eca7ac2cb6db50713e11dfef20b727e`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 16 Oct 2018 08:55:22 GMT
ADD file:8f2148adabc29587e17b50138f305f39e94e0e2bd9211a9f913fef56013ac35a in / 
# Tue, 16 Oct 2018 08:55:23 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 08:59:24 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 16 Oct 2018 08:59:25 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 16 Oct 2018 09:00:38 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 16 Oct 2018 09:00:40 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 16 Oct 2018 09:00:41 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 16 Oct 2018 09:01:03 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 09:01:04 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 16 Oct 2018 09:01:04 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 16 Oct 2018 09:01:05 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 16 Oct 2018 09:01:06 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 16 Oct 2018 09:01:08 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 16 Oct 2018 09:01:09 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 16 Oct 2018 09:01:09 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 16 Oct 2018 09:01:09 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Tue, 16 Oct 2018 09:01:10 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 16 Oct 2018 09:01:10 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 16 Oct 2018 09:01:10 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 16 Oct 2018 09:01:11 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Sat, 10 Nov 2018 10:21:06 GMT
ENV PHP_VERSION=7.2.12
# Sat, 10 Nov 2018 10:21:07 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.12.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.12.tar.xz.asc/from/this/mirror
# Sat, 10 Nov 2018 10:21:07 GMT
ENV PHP_SHA256=989c04cc879ee71a5e1131db867f3c5102f1f7565f805e2bb8bde33f93147fe1 PHP_MD5=
# Sat, 10 Nov 2018 10:21:23 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 10 Nov 2018 10:21:23 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 10 Nov 2018 10:24:22 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 10 Nov 2018 10:24:24 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Sat, 10 Nov 2018 10:24:25 GMT
RUN docker-php-ext-enable sodium
# Sat, 10 Nov 2018 10:24:25 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 10 Nov 2018 10:24:26 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 10 Nov 2018 10:24:26 GMT
WORKDIR /var/www/html
# Sat, 10 Nov 2018 10:24:26 GMT
EXPOSE 80/tcp
# Sat, 10 Nov 2018 10:24:27 GMT
CMD ["apache2-foreground"]
# Sat, 10 Nov 2018 12:27:29 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python3 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 10 Nov 2018 12:30:39 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Sat, 10 Nov 2018 12:30:59 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu 	&& docker-php-ext-enable apcu
# Sat, 10 Nov 2018 12:31:04 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 10 Nov 2018 12:31:05 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 10 Nov 2018 12:31:13 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.31
# Sat, 10 Nov 2018 12:31:13 GMT
ENV MEDIAWIKI_BRANCH=REL1_31
# Sat, 10 Nov 2018 12:31:14 GMT
ENV MEDIAWIKI_VERSION=1.31.1
# Sat, 10 Nov 2018 12:31:14 GMT
ENV MEDIAWIKI_SHA512=ee49649cc37d0a7d45a7c6d90c822c2a595df290be2b5bf085affbec3318768700a458a6e5b5b7e437651400b9641424429d6d304f870c22ec63fae86ffc5152
# Sat, 10 Nov 2018 12:31:33 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:4b7ffdf9817f718c84be550e8edf757070396d69165fa729c6ddd4e775428eb2`  
		Last Modified: Tue, 16 Oct 2018 09:04:44 GMT  
		Size: 21.2 MB (21162965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20460378a8f38aacfeb9a0bcf3a38abbaebb8845cf0f7ca8c5f8ccb51f3ba5d8`  
		Last Modified: Tue, 16 Oct 2018 10:20:49 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecb7e6fb4c6270cb10f9b8f7aa93b2d05eca8e4ca542ae6b884f3d507b3f2c06`  
		Last Modified: Tue, 16 Oct 2018 10:21:09 GMT  
		Size: 57.4 MB (57447518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ad837638c5f551ce2ed0722f0aa0206be6b2503befb732461de20785c38ed13`  
		Last Modified: Tue, 16 Oct 2018 10:20:48 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02b8207a3bfbe878b8a8d846a774c3ce482e349d482e7084559f88b12618ffb1`  
		Last Modified: Tue, 16 Oct 2018 10:20:52 GMT  
		Size: 16.7 MB (16650918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7198acceff99d48ae548b76f8e9eb26d52d8a63521d95d7db38554594b5d1223`  
		Last Modified: Tue, 16 Oct 2018 10:20:47 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e62a81208df875e54460875df6afbac9065b4afc56282d9fb756acffa5656a7`  
		Last Modified: Tue, 16 Oct 2018 10:20:46 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5a783b15fb65ce49afc889cc25e5744af9318920f2c2b5419dc1d6209f71d6a`  
		Last Modified: Tue, 16 Oct 2018 10:20:46 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b8615ebbc988042c7c4db62198beea70acc923ccc2b3f98aba803a3947a68fa`  
		Last Modified: Tue, 16 Oct 2018 10:20:46 GMT  
		Size: 510.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6d2a8b451c69a9153a5a2299fa76a6f68795ea547934e6343606c83d31f3f9f`  
		Last Modified: Sat, 10 Nov 2018 10:42:43 GMT  
		Size: 12.5 MB (12489686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:628ae252af1a36dcb9335d209a069607c24ef3e721befd4f715b3481f543185f`  
		Last Modified: Sat, 10 Nov 2018 10:42:40 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7696a1ee3939f9bbbc0d5313ae63a81fdc28b6e3dd30fde3ce3e36de4651126`  
		Last Modified: Sat, 10 Nov 2018 10:42:45 GMT  
		Size: 14.8 MB (14789407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a210ca29558bd9fd22ea689556a1fa9d481d405e32a8fbc91b26a30566348ff`  
		Last Modified: Sat, 10 Nov 2018 10:42:40 GMT  
		Size: 2.2 KB (2192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f871e2386bb1b24ecac0b1f2bd1258f889c8bfdbf7bf9c64e2b6f6e3031973b`  
		Last Modified: Sat, 10 Nov 2018 10:42:40 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8e6c8197ba9f797dc43c28fa42eef615b88c75dd631b3cfa9c32fdd339be8e6`  
		Last Modified: Sat, 10 Nov 2018 10:42:40 GMT  
		Size: 903.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6c7c18b0416cf551bfc55cdf8bcf8958c4b64680babbb075301c00ee1f515e7`  
		Last Modified: Sat, 10 Nov 2018 12:32:24 GMT  
		Size: 55.9 MB (55895178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96b394aaa5ba59d916cd1fa2f75ace3f7eb82340428613d77ef33bc9711a93b7`  
		Last Modified: Sat, 10 Nov 2018 12:32:05 GMT  
		Size: 1.7 MB (1687916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10e2a4b7b22851cbb4ea86f35bc077512912b65fb1007e6a35d1bfad9c1d335f`  
		Last Modified: Sat, 10 Nov 2018 12:32:05 GMT  
		Size: 393.0 KB (393010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8f2101ffac770c11f14c7e1d8878c97ed70b040f91b01c2b25f14023a3c8bee`  
		Last Modified: Sat, 10 Nov 2018 12:32:05 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34bc760a22f9124017bb1ff861f37905528b0ef06413082b8a4ca101f270e512`  
		Last Modified: Sat, 10 Nov 2018 12:32:05 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:704c7cbd7eff3dd946315fbea52417012b1864d0e7fbaad1d1063578730b0bdf`  
		Last Modified: Sat, 10 Nov 2018 12:32:24 GMT  
		Size: 35.8 MB (35753834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:stable` - linux; arm variant v7

```console
$ docker pull mediawiki@sha256:f85a6008eb59054e7af130a286a8e14fa0e133862f082ae21ffac4c10e93cad1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.7 MB (206676783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb4d374b8dc475c09f0003ebce3a4c221294069b92edf6122a29351522ca2434`
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
# Tue, 16 Oct 2018 12:31:35 GMT
ENV PHP_VERSION=7.2.11
# Tue, 16 Oct 2018 12:31:36 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.11.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.11.tar.xz.asc/from/this/mirror
# Tue, 16 Oct 2018 12:31:36 GMT
ENV PHP_SHA256=da1a705c0bc46410e330fc6baa967666c8cd2985378fb9707c01a8e33b01d985 PHP_MD5=
# Tue, 16 Oct 2018 12:31:50 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 16 Oct 2018 12:31:51 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 16 Oct 2018 12:34:37 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 16 Oct 2018 12:34:39 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Tue, 16 Oct 2018 12:34:40 GMT
RUN docker-php-ext-enable sodium
# Tue, 16 Oct 2018 12:34:41 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 16 Oct 2018 12:34:41 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 16 Oct 2018 12:34:42 GMT
WORKDIR /var/www/html
# Tue, 16 Oct 2018 12:34:42 GMT
EXPOSE 80/tcp
# Tue, 16 Oct 2018 12:34:43 GMT
CMD ["apache2-foreground"]
# Tue, 16 Oct 2018 15:42:05 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python3 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 16 Oct 2018 15:44:59 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Tue, 16 Oct 2018 15:45:15 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu 	&& docker-php-ext-enable apcu
# Tue, 16 Oct 2018 15:45:16 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 16 Oct 2018 15:45:18 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Tue, 16 Oct 2018 15:45:18 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.31
# Tue, 16 Oct 2018 15:45:19 GMT
ENV MEDIAWIKI_BRANCH=REL1_31
# Tue, 16 Oct 2018 15:45:19 GMT
ENV MEDIAWIKI_VERSION=1.31.1
# Tue, 16 Oct 2018 15:45:19 GMT
ENV MEDIAWIKI_SHA512=ee49649cc37d0a7d45a7c6d90c822c2a595df290be2b5bf085affbec3318768700a458a6e5b5b7e437651400b9641424429d6d304f870c22ec63fae86ffc5152
# Tue, 16 Oct 2018 15:45:37 GMT
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
	-	`sha256:d03f74c911913f4aa68e96a8cb2444d85dc33d3b2d8ba5e1b0f12f94e5286121`  
		Last Modified: Tue, 16 Oct 2018 13:26:46 GMT  
		Size: 12.5 MB (12479383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a04cdad87bc3b7a5026c880b6e397465d27c0f0294938b69fcf7e58070babfcd`  
		Last Modified: Tue, 16 Oct 2018 13:26:43 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:428c54d2010e5274ed09c896eea424977cd5493fbc8a20ad5e71adfa868a539d`  
		Last Modified: Tue, 16 Oct 2018 13:26:48 GMT  
		Size: 13.9 MB (13927117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2edf7092f52263f330a951d3ef9051c580cb63b6712333b8080fd2350a8d622a`  
		Last Modified: Tue, 16 Oct 2018 13:26:43 GMT  
		Size: 2.2 KB (2191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4237cc7586b0378fd2144bc20a38b562c77bb762546581cef2753f0b678de164`  
		Last Modified: Tue, 16 Oct 2018 13:26:43 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6e1301067258438305c74d9ed9d845734d183bab1c6a053f25c175ab2dcce1b`  
		Last Modified: Tue, 16 Oct 2018 13:26:44 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:033abcf4a2df14f959cbaa1cb907bf95890e8eb48f635713da2981a922130643`  
		Last Modified: Tue, 16 Oct 2018 15:51:48 GMT  
		Size: 53.5 MB (53489566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3899cc11fca9fd65a23516801e6d483ff4e8a8ace0c3bbad6d1bf773923103b`  
		Last Modified: Tue, 16 Oct 2018 15:51:23 GMT  
		Size: 1.6 MB (1636865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed43eef1f4cd79e0d447d0f83b309ae8353fd132816f0450445fa66601158125`  
		Last Modified: Tue, 16 Oct 2018 15:51:25 GMT  
		Size: 387.4 KB (387429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64055abfad5888369e1ed8689f72a6f3c4940d50bc7d21ce0d8caa92690c078c`  
		Last Modified: Tue, 16 Oct 2018 15:51:23 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9e088e420efc3d714c4e46498213e17a1efc6e4082b58f92b63d3d73ad955f`  
		Last Modified: Tue, 16 Oct 2018 15:51:23 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2a8bccaf4444ec3affebbc4001e61c118f727488386655736235f1f2d671954`  
		Last Modified: Tue, 16 Oct 2018 15:51:42 GMT  
		Size: 35.8 MB (35753944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:stable` - linux; arm64 variant v8

```console
$ docker pull mediawiki@sha256:44ffe8d4078d33a6ca1a4799cfdf44a2c0025c9cd21d043a4f38d90257633929
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.1 MB (208080243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b208e944cb7e755680b7263bb4f7054d90055588f8cf8f9085f55ccd5fa0c900`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 16 Oct 2018 08:43:45 GMT
ADD file:e83c09a5cfc1cecaeba6b736737d551fe0f5d3f204ec3fc984fe768003774f81 in / 
# Tue, 16 Oct 2018 08:43:46 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 09:37:09 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 16 Oct 2018 09:37:10 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 16 Oct 2018 09:38:24 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 16 Oct 2018 09:38:25 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 16 Oct 2018 09:38:27 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 16 Oct 2018 09:49:43 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 09:49:44 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 16 Oct 2018 09:49:44 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 16 Oct 2018 09:49:46 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 16 Oct 2018 09:49:47 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 16 Oct 2018 09:49:49 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 16 Oct 2018 09:49:51 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 16 Oct 2018 09:49:51 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 16 Oct 2018 09:49:52 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Tue, 16 Oct 2018 09:49:53 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 16 Oct 2018 09:49:53 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 16 Oct 2018 09:49:54 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 16 Oct 2018 13:56:08 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 16 Oct 2018 13:56:09 GMT
ENV PHP_VERSION=7.0.32
# Tue, 16 Oct 2018 13:56:10 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.32.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.32.tar.xz.asc/from/this/mirror
# Tue, 16 Oct 2018 13:56:10 GMT
ENV PHP_SHA256=ff6f62afeb32c71b3b89ecbd42950ef6c5e0c329cc6e1c58ffac47e6f1f883c4 PHP_MD5=
# Tue, 16 Oct 2018 13:56:54 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 16 Oct 2018 13:56:55 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 16 Oct 2018 14:04:23 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 16 Oct 2018 14:04:25 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Tue, 16 Oct 2018 14:04:26 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 16 Oct 2018 14:04:27 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 16 Oct 2018 14:04:28 GMT
WORKDIR /var/www/html
# Tue, 16 Oct 2018 14:04:33 GMT
EXPOSE 80/tcp
# Tue, 16 Oct 2018 14:04:34 GMT
CMD ["apache2-foreground"]
# Wed, 17 Oct 2018 06:04:36 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 17 Oct 2018 06:07:58 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Wed, 17 Oct 2018 06:08:19 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Wed, 17 Oct 2018 06:08:22 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 17 Oct 2018 06:08:24 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Wed, 17 Oct 2018 06:08:32 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.27
# Wed, 17 Oct 2018 06:08:32 GMT
ENV MEDIAWIKI_BRANCH=REL1_27
# Wed, 17 Oct 2018 06:08:33 GMT
ENV MEDIAWIKI_VERSION=1.27.5
# Wed, 17 Oct 2018 06:08:34 GMT
ENV MEDIAWIKI_SHA512=2f341ed5afab24b81c315db6bcc58dd617f95231f71408c08bb2a8b974c95b7edd93d0f3c857f24058111c3228b9919a0f1c2fd2f85be940dc571e390225027a
# Wed, 17 Oct 2018 06:08:45 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:141796bfcf0d5a5edb072138e517bf85deef4f47f40afb51ba8705bec3b921dd`  
		Last Modified: Tue, 16 Oct 2018 08:50:53 GMT  
		Size: 20.3 MB (20331585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa887e40ae8a2b78a8eba6e16f2902853327c922f0110c4bd2e4728fb79b305b`  
		Last Modified: Tue, 16 Oct 2018 15:06:53 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99271cba459dd39a663363166e510f7cc1ebf18b221d33bb6c4e26d54774a5d7`  
		Last Modified: Tue, 16 Oct 2018 15:08:26 GMT  
		Size: 57.6 MB (57596184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:440b75b2132ae75a804754d6dd4f874b688e2f6a1d034fd0d2de6e496b8f1f0b`  
		Last Modified: Tue, 16 Oct 2018 15:06:52 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9716126acdb685c5ea84948fb47306c1b2d74752160d8de98d14cac45c1734a`  
		Last Modified: Tue, 16 Oct 2018 15:10:47 GMT  
		Size: 16.7 MB (16709722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92cd9f340623c79febab023e7bed21713ff7c5a54222f6e864d484df51e5eb5e`  
		Last Modified: Tue, 16 Oct 2018 15:10:15 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f4aca00aec726971992cfa7cb081238ab6d32d57c69cf024ee2690cef29374d`  
		Last Modified: Tue, 16 Oct 2018 15:10:14 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef70a607bae65cff09c6a3fd4add05727d00f023e83540e9823c8c73ce65afba`  
		Last Modified: Tue, 16 Oct 2018 15:10:14 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3482f362267a35679e02d84771ac1e78594ccb8598b70cfdb652909f558ae451`  
		Last Modified: Tue, 16 Oct 2018 15:10:13 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50624813ae71a53d58d6982af86920e9fdbaec7b06c8329e4ea88181ea682607`  
		Last Modified: Tue, 16 Oct 2018 15:43:35 GMT  
		Size: 12.4 MB (12378440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:154f5759e9b16e9a04f92afd14a7b5d5c2a92f781638c704f740986d5232caca`  
		Last Modified: Tue, 16 Oct 2018 15:43:33 GMT  
		Size: 502.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:116563a0376986b0dffd04b739a472b46be9e087b0e1aff085c5ee17cf08e287`  
		Last Modified: Tue, 16 Oct 2018 15:43:39 GMT  
		Size: 13.1 MB (13092238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:204e51532312e737fb45fedfafbff35b2381bbd51ed63b8bedadd5b79c86a8fc`  
		Last Modified: Tue, 16 Oct 2018 15:43:33 GMT  
		Size: 2.2 KB (2193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6520db0429b6facca4c9fed9a535ab187a6755dde45ba303c81da97db840095f`  
		Last Modified: Tue, 16 Oct 2018 15:43:33 GMT  
		Size: 905.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa8e3dce0d2b00c07b8b1d81365aba40a107ee790a3196a44c6e91de872d741b`  
		Last Modified: Wed, 17 Oct 2018 06:12:26 GMT  
		Size: 54.1 MB (54149817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad93e1fe64d7067a9db1021e3c4e3eaab44558105ebde6a50ac0f9ba3a5645e2`  
		Last Modified: Wed, 17 Oct 2018 06:12:05 GMT  
		Size: 1.5 MB (1486658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ac1f5aa91252d9dafcc4e5ba74eef3f7c3fa65cb1931cbe39ab155c07031f73`  
		Last Modified: Wed, 17 Oct 2018 06:12:02 GMT  
		Size: 395.0 KB (394970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56946bf185cff149538ad11ea4912945b25b68e8a7cab8f2457efd2701cef4d9`  
		Last Modified: Wed, 17 Oct 2018 06:12:02 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85b5171d7d075f37055f4a31e64767d5854ad0057627cd4b2564dd3790d838d2`  
		Last Modified: Wed, 17 Oct 2018 06:12:02 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f7948973641c4f1ad24c42af64c7125499a4f05252ec0d0507b6567ebef26f8`  
		Last Modified: Wed, 17 Oct 2018 06:12:24 GMT  
		Size: 31.9 MB (31933727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:stable` - linux; 386

```console
$ docker pull mediawiki@sha256:b21d1d70242702efdbb70168a3c286b30076caec26c6628394dc286be4ef5da1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.3 MB (229329317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e869b7784bacd85cc3b9f01934da9edaa4e408bd1d1e3e46f97553d3dc015024`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 16 Oct 2018 10:49:05 GMT
ADD file:a71ef0e9adb528ae2dc5ca3395654522c23762d8936a4902378c6749bb357582 in / 
# Tue, 16 Oct 2018 10:49:05 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 11:59:35 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 16 Oct 2018 11:59:36 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 16 Oct 2018 12:00:22 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:00:23 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 16 Oct 2018 12:00:24 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 16 Oct 2018 12:11:59 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:11:59 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 16 Oct 2018 12:12:00 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 16 Oct 2018 12:12:01 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 16 Oct 2018 12:12:02 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 16 Oct 2018 12:12:03 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 16 Oct 2018 12:12:04 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 16 Oct 2018 12:12:04 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 16 Oct 2018 12:12:05 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Tue, 16 Oct 2018 12:12:05 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 16 Oct 2018 12:12:05 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 16 Oct 2018 12:12:05 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 16 Oct 2018 17:29:54 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 16 Oct 2018 17:29:54 GMT
ENV PHP_VERSION=7.0.32
# Tue, 16 Oct 2018 17:29:55 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.32.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.32.tar.xz.asc/from/this/mirror
# Tue, 16 Oct 2018 17:29:55 GMT
ENV PHP_SHA256=ff6f62afeb32c71b3b89ecbd42950ef6c5e0c329cc6e1c58ffac47e6f1f883c4 PHP_MD5=
# Tue, 16 Oct 2018 17:30:07 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 16 Oct 2018 17:30:07 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 16 Oct 2018 17:34:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 16 Oct 2018 17:34:07 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Tue, 16 Oct 2018 17:34:07 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 16 Oct 2018 17:34:08 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 16 Oct 2018 17:34:08 GMT
WORKDIR /var/www/html
# Tue, 16 Oct 2018 17:34:08 GMT
EXPOSE 80/tcp
# Tue, 16 Oct 2018 17:34:08 GMT
CMD ["apache2-foreground"]
# Wed, 17 Oct 2018 07:58:33 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 17 Oct 2018 07:59:59 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Wed, 17 Oct 2018 08:00:08 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Wed, 17 Oct 2018 08:00:09 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Wed, 17 Oct 2018 08:00:09 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Wed, 17 Oct 2018 08:00:10 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.27
# Wed, 17 Oct 2018 08:00:10 GMT
ENV MEDIAWIKI_BRANCH=REL1_27
# Wed, 17 Oct 2018 08:00:10 GMT
ENV MEDIAWIKI_VERSION=1.27.5
# Wed, 17 Oct 2018 08:00:10 GMT
ENV MEDIAWIKI_SHA512=2f341ed5afab24b81c315db6bcc58dd617f95231f71408c08bb2a8b974c95b7edd93d0f3c857f24058111c3228b9919a0f1c2fd2f85be940dc571e390225027a
# Wed, 17 Oct 2018 08:00:18 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:2b7bcb618c4033f37486fd700e6d0debf2260935f888a192119c41eaddd29978`  
		Last Modified: Tue, 16 Oct 2018 11:06:15 GMT  
		Size: 23.1 MB (23126605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ac9f5e161441372e549d094f25b4640689548d53bb47c34a8ced01a74b8ad6f`  
		Last Modified: Tue, 16 Oct 2018 19:08:04 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cac64c78cd80e7e59f4a0fd49c7632e4799f427a439c1339df81ad969a7aed3`  
		Last Modified: Tue, 16 Oct 2018 19:08:39 GMT  
		Size: 71.5 MB (71484645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a7cfe59c8cc409c1eb116e2905e9a239f1f1a26128b6fd15cf1217563b373e4`  
		Last Modified: Tue, 16 Oct 2018 19:08:04 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99051976b849498ac53e2ffcd090cb770169576c8fe2ba03b72ec38559319cff`  
		Last Modified: Tue, 16 Oct 2018 19:10:57 GMT  
		Size: 17.6 MB (17562598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8baa008090db722001228a8b24993ff76cc41b4f3c5ee668b4ba3a9a91a8beb`  
		Last Modified: Tue, 16 Oct 2018 19:10:51 GMT  
		Size: 1.2 KB (1243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8f645450e0e3cf05fbcd8a2ca3ca89deb3a97661b07a8e11130055680df3138`  
		Last Modified: Tue, 16 Oct 2018 19:11:16 GMT  
		Size: 429.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a636e140725a9abf6bfca67dce52d8d0729b612493c86addf510f88cd41ff73`  
		Last Modified: Tue, 16 Oct 2018 19:10:50 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c899e0d2536fbfcfaa4ef00f9497a5891261cfb1fca3e776a428e461db7ee410`  
		Last Modified: Tue, 16 Oct 2018 19:10:50 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0cba1ef0564202ac1445408ed856bfc567867695100138b6278c4a50680cf7a`  
		Last Modified: Tue, 16 Oct 2018 19:49:33 GMT  
		Size: 12.4 MB (12379305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ca96ddbed1b213bc6b7cdd27cc821791a1a1594630bd9afbae4b648ee450255`  
		Last Modified: Tue, 16 Oct 2018 19:49:31 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b970950633084b70af418e3cf114d23a70f27e9e8fa032a907328f795aef1b81`  
		Last Modified: Tue, 16 Oct 2018 19:49:36 GMT  
		Size: 14.4 MB (14393946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add8f03f18325d56159cd2f3fcad9119a2bab20fd859fde0738145f82e5c6b8f`  
		Last Modified: Tue, 16 Oct 2018 19:49:31 GMT  
		Size: 2.2 KB (2193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c7c94c298264615aa9da4abf6b9e47f4b11d3c699c9d6a624e04f84679855ad`  
		Last Modified: Tue, 16 Oct 2018 19:49:31 GMT  
		Size: 903.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05cdbec925eca59dd43b5ffcb57c08abbae8d13d76179431dbc03b1041018770`  
		Last Modified: Wed, 17 Oct 2018 08:03:13 GMT  
		Size: 56.5 MB (56499573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb6e8e69dc478801be87de36f35f63ac515bae458b89124dbce6b3699a00296`  
		Last Modified: Wed, 17 Oct 2018 08:02:35 GMT  
		Size: 1.6 MB (1552701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d0ff586df7ffffb2c50c9cd9c0ed992526ca2ef675a027011984d3e2e63ae83`  
		Last Modified: Wed, 17 Oct 2018 08:02:34 GMT  
		Size: 389.4 KB (389353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28fc31eb8ac64e77e115c05b989b5f57b1a9f7f20cb66d1f997c54aa74fca7dc`  
		Last Modified: Wed, 17 Oct 2018 08:02:34 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b257eceaa8885e119f77ac04ebf8473d4e820244c945abefb769c9abe444a6e`  
		Last Modified: Wed, 17 Oct 2018 08:02:34 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79cb8aad099aaa347b0c7f6b94c0cadcd8f36533710f7a793b86a4660ca59184`  
		Last Modified: Wed, 17 Oct 2018 08:02:51 GMT  
		Size: 31.9 MB (31933705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:stable` - linux; ppc64le

```console
$ docker pull mediawiki@sha256:e76eacfa4ae216c9b7f4e6165ad7fa554f544f47ee5ae4d8b0d46e602777552f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.4 MB (218449205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:814f618dcdcccb99814687061d3b8b49e32ef553c89429c2a0a130c4577e6570`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 16 Oct 2018 08:22:25 GMT
ADD file:b1fa1d0ffa2b206311dfd95642d74c3312565a1ec2e6e3a2197bfd2a4b3de6c6 in / 
# Tue, 16 Oct 2018 08:22:30 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 08:36:20 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 16 Oct 2018 08:36:20 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 16 Oct 2018 08:38:14 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 16 Oct 2018 08:38:16 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 16 Oct 2018 08:38:19 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 16 Oct 2018 08:47:02 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 08:47:04 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 16 Oct 2018 08:47:06 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 16 Oct 2018 08:47:12 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 16 Oct 2018 08:47:15 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 16 Oct 2018 08:47:21 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 16 Oct 2018 08:47:25 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 16 Oct 2018 08:47:26 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 16 Oct 2018 08:47:27 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Tue, 16 Oct 2018 08:47:28 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 16 Oct 2018 08:47:30 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 16 Oct 2018 08:47:33 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 16 Oct 2018 11:37:55 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 16 Oct 2018 11:37:56 GMT
ENV PHP_VERSION=7.0.32
# Tue, 16 Oct 2018 11:37:57 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.32.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.32.tar.xz.asc/from/this/mirror
# Tue, 16 Oct 2018 11:37:58 GMT
ENV PHP_SHA256=ff6f62afeb32c71b3b89ecbd42950ef6c5e0c329cc6e1c58ffac47e6f1f883c4 PHP_MD5=
# Tue, 16 Oct 2018 11:38:37 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 16 Oct 2018 11:38:41 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 16 Oct 2018 11:42:36 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 16 Oct 2018 11:42:38 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Tue, 16 Oct 2018 11:42:39 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 16 Oct 2018 11:42:42 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 16 Oct 2018 11:42:43 GMT
WORKDIR /var/www/html
# Tue, 16 Oct 2018 11:42:44 GMT
EXPOSE 80/tcp
# Tue, 16 Oct 2018 11:42:44 GMT
CMD ["apache2-foreground"]
# Tue, 16 Oct 2018 20:12:30 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 16 Oct 2018 20:14:29 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Tue, 16 Oct 2018 20:14:47 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Tue, 16 Oct 2018 20:14:54 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 16 Oct 2018 20:14:59 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Tue, 16 Oct 2018 20:15:00 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.27
# Tue, 16 Oct 2018 20:15:01 GMT
ENV MEDIAWIKI_BRANCH=REL1_27
# Tue, 16 Oct 2018 20:15:03 GMT
ENV MEDIAWIKI_VERSION=1.27.5
# Tue, 16 Oct 2018 20:15:04 GMT
ENV MEDIAWIKI_SHA512=2f341ed5afab24b81c315db6bcc58dd617f95231f71408c08bb2a8b974c95b7edd93d0f3c857f24058111c3228b9919a0f1c2fd2f85be940dc571e390225027a
# Tue, 16 Oct 2018 20:15:27 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:202f659db3e53c01ac947538d8b37251e9fa16c4a6a699dc6c2a8910afcdfed4`  
		Last Modified: Tue, 16 Oct 2018 08:30:59 GMT  
		Size: 22.7 MB (22740583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba0f6d499d48eb19dc9d2e6453db815f1d64074f2775cbd9cac4928c0461cdbc`  
		Last Modified: Tue, 16 Oct 2018 12:20:25 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f354790bdfa97d0b204ca9cf4402d437e713049020362b7ad4af49ef47efb984`  
		Last Modified: Tue, 16 Oct 2018 12:21:25 GMT  
		Size: 61.8 MB (61809966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:745377e23f5d138b115edff3b4ebf7c90114d7d658bff2cd8453aaffc66a04db`  
		Last Modified: Tue, 16 Oct 2018 12:20:28 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6ca68ed7b31a0303cdb6d7669c24c6dedb55ddece4d992172fb000dc3f93eeb`  
		Last Modified: Tue, 16 Oct 2018 12:23:21 GMT  
		Size: 17.3 MB (17348500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba60179e94e0e6514a8bd50455affa30a26a572b16013a2b01ea060c2aaa60d3`  
		Last Modified: Tue, 16 Oct 2018 12:23:07 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9292d4db20fce2c69be0ea52392b7616f1846e01f9b70e0aadff84c1084bf254`  
		Last Modified: Tue, 16 Oct 2018 12:23:01 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a20d33fb196e2e93548afbb4d63cb3d16c02b0d6d342e94e77c6beca290525`  
		Last Modified: Tue, 16 Oct 2018 12:22:59 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c4ea029b99fcbbd8bfbfd74bd42ca81a84fbee060a87904f570a192fc958db5`  
		Last Modified: Tue, 16 Oct 2018 12:22:57 GMT  
		Size: 517.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c9720eb00827218a025ca83a1200da8fe81ff06a7addc7bb5bbe67a7135ce16`  
		Last Modified: Tue, 16 Oct 2018 12:48:36 GMT  
		Size: 12.4 MB (12378819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5df700c2238de8679c6dbb08bf02760e4e40bccf6ccaf35af683095dc66198ea`  
		Last Modified: Tue, 16 Oct 2018 12:48:33 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22b62e69dd460d061013a0b345cbdcfeb9adedbb59d021732cfca2a21eaf10de`  
		Last Modified: Tue, 16 Oct 2018 12:48:40 GMT  
		Size: 13.7 MB (13702592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc8b0e1276d18fb2703450c458d281a06a6bf5f57d56bfafa78804c108cfa33c`  
		Last Modified: Tue, 16 Oct 2018 12:48:33 GMT  
		Size: 2.2 KB (2194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1210917658a99e151617ddf0dded555475f0ec8ce36cd98daa699c042519fe8`  
		Last Modified: Tue, 16 Oct 2018 12:48:34 GMT  
		Size: 906.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e406cec386b4c449c6428e2ae5dc6f7677d1f5d173fb2b536a3d71ae16dfc121`  
		Last Modified: Tue, 16 Oct 2018 20:18:11 GMT  
		Size: 56.6 MB (56596313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f43efb949dce69d5327e901bc97faa44c380d96012f814fa33740e666bc1ab3`  
		Last Modified: Tue, 16 Oct 2018 20:17:52 GMT  
		Size: 1.5 MB (1530906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b93074650452c34e4a3bd7d8d9fe167cf458ae6688dc190a14f7ca5eedf8083`  
		Last Modified: Tue, 16 Oct 2018 20:17:52 GMT  
		Size: 400.4 KB (400382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c082530349e505f3093d4c9bec2ed7622e3f8f82f27cb4b700eeb6c1a1423130`  
		Last Modified: Tue, 16 Oct 2018 20:17:51 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69ee635cd230017d2bc1b368f6d42edd24f93f85202d8d24950baef9bfbd0001`  
		Last Modified: Tue, 16 Oct 2018 20:17:51 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65882f587f0e22183aa5dc102c5201529a1306d81e0cdd8b6359dd681854d123`  
		Last Modified: Tue, 16 Oct 2018 20:18:05 GMT  
		Size: 31.9 MB (31934083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
