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
-	[`mediawiki:lts`](#mediawikilts)
-	[`mediawiki:stable`](#mediawikistable)

## `mediawiki:1.27`

```console
$ docker pull mediawiki@sha256:aa831a128ae49e33fc5c1dea0d469a97de04cb29a2a7e9f775b36370ea9e665d
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
$ docker pull mediawiki@sha256:4d386df545b9cc5d1e0539ffc9445974209ebfea7249feda598b1083b7c19141
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.9 MB (223930034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72df0a53346f03eea55ef499aec494e1089062a2e0a4f5f8d408fb7f72bf5c32`
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
# Sat, 15 Sep 2018 04:38:22 GMT
ENV PHP_VERSION=7.0.32
# Sat, 15 Sep 2018 04:38:22 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.32.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.32.tar.xz.asc/from/this/mirror
# Sat, 15 Sep 2018 04:38:22 GMT
ENV PHP_SHA256=ff6f62afeb32c71b3b89ecbd42950ef6c5e0c329cc6e1c58ffac47e6f1f883c4 PHP_MD5=
# Sat, 15 Sep 2018 04:38:32 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 15 Sep 2018 04:38:32 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 15 Sep 2018 04:41:26 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 15 Sep 2018 04:41:27 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Sat, 15 Sep 2018 04:41:27 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 15 Sep 2018 04:41:27 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 15 Sep 2018 04:41:28 GMT
WORKDIR /var/www/html
# Sat, 15 Sep 2018 04:41:28 GMT
EXPOSE 80/tcp
# Sat, 15 Sep 2018 04:41:28 GMT
CMD ["apache2-foreground"]
# Sat, 15 Sep 2018 07:53:34 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 15 Sep 2018 07:55:05 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Sat, 15 Sep 2018 07:55:14 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Sat, 15 Sep 2018 07:55:15 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 15 Sep 2018 07:55:16 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 15 Sep 2018 07:55:16 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.27
# Sat, 15 Sep 2018 07:55:16 GMT
ENV MEDIAWIKI_BRANCH=REL1_27
# Fri, 21 Sep 2018 18:20:46 GMT
ENV MEDIAWIKI_VERSION=1.27.5
# Fri, 21 Sep 2018 18:20:47 GMT
ENV MEDIAWIKI_SHA512=2f341ed5afab24b81c315db6bcc58dd617f95231f71408c08bb2a8b974c95b7edd93d0f3c857f24058111c3228b9919a0f1c2fd2f85be940dc571e390225027a
# Fri, 21 Sep 2018 18:20:53 GMT
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
	-	`sha256:8aeded0a01b9c3e2b42f6e8d2894e3a52fa3ba75d23e9702d12ed378b10c0d53`  
		Last Modified: Sat, 15 Sep 2018 06:47:44 GMT  
		Size: 12.4 MB (12379854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c08ab63adbb16b66080c0a749db9366d75ccceb2752d5c69cc8869bc8326073`  
		Last Modified: Sat, 15 Sep 2018 06:47:43 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1fd6f6a74e69ff81ba2a31be4e4a7018f74679018960fdb4d89123e03b715cd`  
		Last Modified: Sat, 15 Sep 2018 06:47:46 GMT  
		Size: 14.3 MB (14281513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f544e3dd14913cb214d9ac723ee0d37ea9b5f1de8a0533ccab181ee4e5d0b00`  
		Last Modified: Sat, 15 Sep 2018 06:47:43 GMT  
		Size: 2.2 KB (2194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b356ba52e0f31dd8789388f6c4581e85655def9b818fa052dfa57cce0bfc11a2`  
		Last Modified: Sat, 15 Sep 2018 06:47:43 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbec72870a359c74792737bc7bf50614ac350e170e9c7f5be0a399c6f056e8c6`  
		Last Modified: Sat, 15 Sep 2018 07:57:19 GMT  
		Size: 56.3 MB (56336632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edc0d8c2b106316f0658484a73d89804a31f1555e422ff17aa92fd5a727896b1`  
		Last Modified: Sat, 15 Sep 2018 07:57:05 GMT  
		Size: 1.5 MB (1549021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dea0b0ad1e3916fee8eb6ea644730622eaa021494420e9978d58573a4211353c`  
		Last Modified: Sat, 15 Sep 2018 07:57:04 GMT  
		Size: 400.3 KB (400312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac30baaf359cf5eb03b7e594e139980ce2bcaae5f1442b0ae8e253a330030b61`  
		Last Modified: Sat, 15 Sep 2018 07:57:04 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0231407801bd0e5cafd08dcdce31a4d06921ac168ef2f44470917992986fced`  
		Last Modified: Sat, 15 Sep 2018 07:57:05 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e2992f658fbd32bbb3c7981d1b881a5d4190d7213fa608e29f003caf608c2fd`  
		Last Modified: Fri, 21 Sep 2018 18:22:59 GMT  
		Size: 31.9 MB (31933496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.27` - linux; arm variant v5

```console
$ docker pull mediawiki@sha256:eb8971382330457f360db8835b20fe32ac5b6947ed04d378ee522c61f67d6bbb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.1 MB (209097379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c88575364b822e2d1214507c87dac54ef41e67c1289ab84f41ec855fe2e9cde3`
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
# Sat, 15 Sep 2018 10:06:17 GMT
ENV PHP_VERSION=7.0.32
# Sat, 15 Sep 2018 10:06:17 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.32.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.32.tar.xz.asc/from/this/mirror
# Sat, 15 Sep 2018 10:06:17 GMT
ENV PHP_SHA256=ff6f62afeb32c71b3b89ecbd42950ef6c5e0c329cc6e1c58ffac47e6f1f883c4 PHP_MD5=
# Sat, 15 Sep 2018 10:06:33 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 15 Sep 2018 10:06:34 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 15 Sep 2018 10:09:23 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 15 Sep 2018 10:09:25 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Sat, 15 Sep 2018 10:09:25 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 15 Sep 2018 10:09:26 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 15 Sep 2018 10:09:26 GMT
WORKDIR /var/www/html
# Sat, 15 Sep 2018 10:09:27 GMT
EXPOSE 80/tcp
# Sat, 15 Sep 2018 10:09:27 GMT
CMD ["apache2-foreground"]
# Sat, 15 Sep 2018 12:56:24 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 15 Sep 2018 12:59:15 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Sat, 15 Sep 2018 12:59:31 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Sat, 15 Sep 2018 12:59:32 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 15 Sep 2018 12:59:34 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 15 Sep 2018 12:59:35 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.27
# Sat, 15 Sep 2018 12:59:35 GMT
ENV MEDIAWIKI_BRANCH=REL1_27
# Sat, 22 Sep 2018 08:49:58 GMT
ENV MEDIAWIKI_VERSION=1.27.5
# Sat, 22 Sep 2018 08:49:59 GMT
ENV MEDIAWIKI_SHA512=2f341ed5afab24b81c315db6bcc58dd617f95231f71408c08bb2a8b974c95b7edd93d0f3c857f24058111c3228b9919a0f1c2fd2f85be940dc571e390225027a
# Sat, 22 Sep 2018 08:50:20 GMT
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
	-	`sha256:97e7e76c17f1c70ca42d3f991e00d814117f370588c1b117ca2c0476adfbaf96`  
		Last Modified: Sat, 15 Sep 2018 11:32:54 GMT  
		Size: 12.4 MB (12378198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d976ebc07f0c73ac1767ed203627639a6e980f8e667aab741bf71317b4bcf66`  
		Last Modified: Sat, 15 Sep 2018 11:32:52 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ba9cc9cf8b9aac399e384702dfc08ecfe10ff33c1a604ac04ac413a7dca4c93`  
		Last Modified: Sat, 15 Sep 2018 11:32:59 GMT  
		Size: 13.7 MB (13658120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:235a174f083c87fcf834ad0ffa713bb728220c6a7a50c309ee5cd18a4c2da112`  
		Last Modified: Sat, 15 Sep 2018 11:32:52 GMT  
		Size: 2.2 KB (2194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e56196f612a807d17fde6de20bcc50a54a03f0129532c44974bbe29e87c325a3`  
		Last Modified: Sat, 15 Sep 2018 11:32:52 GMT  
		Size: 903.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7f83b9cce20011524a99793e680e252ae6d5d6309b8880a29efa2baa5fc0808`  
		Last Modified: Sat, 15 Sep 2018 13:02:58 GMT  
		Size: 54.0 MB (53981878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4158a0e8e2824e4d259f3dc879086c8b3061f4ebb16f789140d022b52ffa7d9f`  
		Last Modified: Sat, 15 Sep 2018 13:02:41 GMT  
		Size: 1.5 MB (1485553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56147efc0d62f93fac9120454f90d6e7a7b1b054e83a24c451778fbd395698a8`  
		Last Modified: Sat, 15 Sep 2018 13:02:39 GMT  
		Size: 392.1 KB (392113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8997ebb280db53b6c7cfb50a2f159eb1b17c8b73e43bca6124de9f17552f27e6`  
		Last Modified: Sat, 15 Sep 2018 13:02:39 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ec3d61c63d92a050b72b15a4779af2cf72b62c2d86bfa7dc88cc4aaea057292`  
		Last Modified: Sat, 15 Sep 2018 13:02:39 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23b0d5a11e220636c3bb071c04c162cad45fe2d3fe14fb81d34230d45ba0a70b`  
		Last Modified: Sat, 22 Sep 2018 08:53:34 GMT  
		Size: 31.9 MB (31933545 bytes)  
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
$ docker pull mediawiki@sha256:ab77ce7fec817a77def7b3c812935e46b4f6a0945d7edef89238a54b69de3d6c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.4 MB (208400437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21965b6dbd1dcb6c73f07a39a1b73f1aa73b85f3e678c4aff9ac51f9090a5d89`
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
# Sat, 15 Sep 2018 15:53:55 GMT
ENV PHP_VERSION=7.0.32
# Sat, 15 Sep 2018 15:53:56 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.32.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.32.tar.xz.asc/from/this/mirror
# Sat, 15 Sep 2018 15:53:57 GMT
ENV PHP_SHA256=ff6f62afeb32c71b3b89ecbd42950ef6c5e0c329cc6e1c58ffac47e6f1f883c4 PHP_MD5=
# Sat, 15 Sep 2018 15:54:28 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 15 Sep 2018 15:54:34 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 15 Sep 2018 16:00:28 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 15 Sep 2018 16:00:31 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Sat, 15 Sep 2018 16:00:32 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 15 Sep 2018 16:00:33 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 15 Sep 2018 16:00:34 GMT
WORKDIR /var/www/html
# Sat, 15 Sep 2018 16:00:34 GMT
EXPOSE 80/tcp
# Sat, 15 Sep 2018 16:00:35 GMT
CMD ["apache2-foreground"]
# Sat, 15 Sep 2018 20:17:11 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 15 Sep 2018 20:20:31 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Sat, 15 Sep 2018 20:20:51 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Sat, 15 Sep 2018 20:20:56 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 15 Sep 2018 20:20:58 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 15 Sep 2018 20:21:06 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.27
# Sat, 15 Sep 2018 20:21:07 GMT
ENV MEDIAWIKI_BRANCH=REL1_27
# Sat, 22 Sep 2018 08:41:06 GMT
ENV MEDIAWIKI_VERSION=1.27.5
# Sat, 22 Sep 2018 08:41:07 GMT
ENV MEDIAWIKI_SHA512=2f341ed5afab24b81c315db6bcc58dd617f95231f71408c08bb2a8b974c95b7edd93d0f3c857f24058111c3228b9919a0f1c2fd2f85be940dc571e390225027a
# Sat, 22 Sep 2018 08:41:22 GMT
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
	-	`sha256:4acf3adae2be347b697be45383caee740bfb8869968041d64867a6509955c4e3`  
		Last Modified: Sat, 15 Sep 2018 18:41:24 GMT  
		Size: 12.4 MB (12378441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e29ceeb4123e16f7824934753bb18047be107a8b4fadb3336a3114cc0f3c0bc7`  
		Last Modified: Sat, 15 Sep 2018 18:41:21 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f48ce88533cb090d61c9d080a8fe2c78f5e2e7d152b48bb5d4410296c4334f7`  
		Last Modified: Sat, 15 Sep 2018 18:41:28 GMT  
		Size: 13.4 MB (13432453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:322d7ac121d2a32580f7ebdbae1dde94b0ccdb6ee3f17c4f6c2d611d837820ac`  
		Last Modified: Sat, 15 Sep 2018 18:41:21 GMT  
		Size: 2.2 KB (2194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:068aeb643b0a8f0f0fb6a41530effaa14ce268531c39d11dd15b9b6d812c99e3`  
		Last Modified: Sat, 15 Sep 2018 18:41:21 GMT  
		Size: 905.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ac91495098b7fb52a3d8ae4ba70779c0b7019599d958b96b4ceb0a26835a196`  
		Last Modified: Sat, 15 Sep 2018 20:25:19 GMT  
		Size: 54.1 MB (54130058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7503902fa16bee4f8e46573be78d699511b0ad4907a927971f58523a85002b5d`  
		Last Modified: Sat, 15 Sep 2018 20:24:57 GMT  
		Size: 1.5 MB (1486662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e46c519845b838587e92dd459db458cb4edb1a7abde23bb8631a71931f5f95ff`  
		Last Modified: Sat, 15 Sep 2018 20:24:56 GMT  
		Size: 395.0 KB (394954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbbc499cd8b9df8dc4f1f7fd71f1565c67d19662686c6dd46df5509b5ae4dba9`  
		Last Modified: Sat, 15 Sep 2018 20:24:55 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:011df23db08049d2b17b3146b525298d14c2ed73b83ffbc8930cc81f5a4bc2c1`  
		Last Modified: Sat, 15 Sep 2018 20:24:55 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54bce512e700a62ac4c07e0700543be0016e3071859f7400296ad357691fe69f`  
		Last Modified: Sat, 22 Sep 2018 08:44:34 GMT  
		Size: 31.9 MB (31933363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.27` - linux; 386

```console
$ docker pull mediawiki@sha256:bb7c5d3e4b1544f9946732f339a7235373c64e6ea0748406c09fd140de284442
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.3 MB (229323433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00910d358cfb148e3daf6169245788781d06611e20e4fe43da1c4b2077ef0c75`
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
# Sat, 15 Sep 2018 14:16:27 GMT
ENV PHP_VERSION=7.0.32
# Sat, 15 Sep 2018 14:16:28 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.32.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.32.tar.xz.asc/from/this/mirror
# Sat, 15 Sep 2018 14:16:28 GMT
ENV PHP_SHA256=ff6f62afeb32c71b3b89ecbd42950ef6c5e0c329cc6e1c58ffac47e6f1f883c4 PHP_MD5=
# Sat, 15 Sep 2018 14:16:37 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 15 Sep 2018 14:16:38 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 15 Sep 2018 14:19:44 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 15 Sep 2018 14:19:45 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Sat, 15 Sep 2018 14:19:45 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 15 Sep 2018 14:19:45 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 15 Sep 2018 14:19:46 GMT
WORKDIR /var/www/html
# Sat, 15 Sep 2018 14:19:46 GMT
EXPOSE 80/tcp
# Sat, 15 Sep 2018 14:19:46 GMT
CMD ["apache2-foreground"]
# Sat, 15 Sep 2018 19:45:55 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 15 Sep 2018 19:47:21 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Sat, 15 Sep 2018 19:47:29 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Sat, 15 Sep 2018 19:47:30 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 15 Sep 2018 19:47:31 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 15 Sep 2018 19:47:31 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.27
# Sat, 15 Sep 2018 19:47:31 GMT
ENV MEDIAWIKI_BRANCH=REL1_27
# Sat, 22 Sep 2018 10:45:18 GMT
ENV MEDIAWIKI_VERSION=1.27.5
# Sat, 22 Sep 2018 10:45:18 GMT
ENV MEDIAWIKI_SHA512=2f341ed5afab24b81c315db6bcc58dd617f95231f71408c08bb2a8b974c95b7edd93d0f3c857f24058111c3228b9919a0f1c2fd2f85be940dc571e390225027a
# Sat, 22 Sep 2018 10:45:26 GMT
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
	-	`sha256:8b235f760158106a63f04b39c38a879125ae7270c78f274efa7e6ceaaea16779`  
		Last Modified: Sat, 15 Sep 2018 16:40:39 GMT  
		Size: 12.4 MB (12379236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7020cf61b2f791fd8abfde3fcd03e455b29e1b6fea1f2a953449a20cfb48e453`  
		Last Modified: Sat, 15 Sep 2018 16:40:37 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f3991b470b831ab9604f79808d1fd0f3aec196611121eed8358f70e6be4ddb0`  
		Last Modified: Sat, 15 Sep 2018 16:40:42 GMT  
		Size: 14.4 MB (14393867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbbf646d73cfa96498e56dd9a19d8da809704d356271432b15786450de225933`  
		Last Modified: Sat, 15 Sep 2018 16:40:38 GMT  
		Size: 2.2 KB (2194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:975bb728cb251f486dde4bab2b22d500af32128a88ebb037dafee665084a0dac`  
		Last Modified: Sat, 15 Sep 2018 16:40:37 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64772a41d91b9e8ae6136f5c19dc1635591e548fb218f67cf5395aae24ea60a8`  
		Last Modified: Sat, 15 Sep 2018 19:49:49 GMT  
		Size: 56.5 MB (56494152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0e93c9b7148bfa205e19759c7fabac9b364b0203e632d0729e2f27b09f50d2f`  
		Last Modified: Sat, 15 Sep 2018 19:49:32 GMT  
		Size: 1.6 MB (1552699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a90d39c47b1f97473477603be2ce11115c6fe76349afddc1dffd4b22ecbfe67e`  
		Last Modified: Sat, 15 Sep 2018 19:49:32 GMT  
		Size: 389.3 KB (389347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e56d1c2d450796556874909dfb8adc19a64481801981f9bfbfd85baeac21093`  
		Last Modified: Sat, 15 Sep 2018 19:49:32 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b57525fe878c22913f993cc00734de3621ed8c15b92386e897fd4bbce2fe9a03`  
		Last Modified: Sat, 15 Sep 2018 19:49:32 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c55efb361a7b21933dbcfa1675b19311bdfeff2ce25d186c408b7fa5b00f0c5a`  
		Last Modified: Sat, 22 Sep 2018 10:47:13 GMT  
		Size: 31.9 MB (31933519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.27` - linux; ppc64le

```console
$ docker pull mediawiki@sha256:017a7b79b30724f4bebf75ae321eee88756b89fefa812ecf32c319d39b9871b6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.8 MB (218806527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbd4b38024895e6fa559401f3a12b4fa57ee250bfda471aa046120b0050505cb`
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
# Sat, 15 Sep 2018 11:52:58 GMT
ENV PHP_VERSION=7.0.32
# Sat, 15 Sep 2018 11:52:59 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.32.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.32.tar.xz.asc/from/this/mirror
# Sat, 15 Sep 2018 11:52:59 GMT
ENV PHP_SHA256=ff6f62afeb32c71b3b89ecbd42950ef6c5e0c329cc6e1c58ffac47e6f1f883c4 PHP_MD5=
# Sat, 15 Sep 2018 11:53:23 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 15 Sep 2018 11:53:24 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 15 Sep 2018 11:56:15 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 15 Sep 2018 11:56:16 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Sat, 15 Sep 2018 11:56:16 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 15 Sep 2018 11:56:17 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 15 Sep 2018 11:56:18 GMT
WORKDIR /var/www/html
# Sat, 15 Sep 2018 11:56:19 GMT
EXPOSE 80/tcp
# Sat, 15 Sep 2018 11:56:20 GMT
CMD ["apache2-foreground"]
# Sat, 15 Sep 2018 15:08:41 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 15 Sep 2018 15:10:44 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Sat, 15 Sep 2018 15:14:07 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Sat, 15 Sep 2018 15:14:09 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 15 Sep 2018 15:14:12 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 15 Sep 2018 15:14:13 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.27
# Sat, 15 Sep 2018 15:14:13 GMT
ENV MEDIAWIKI_BRANCH=REL1_27
# Sat, 22 Sep 2018 08:19:01 GMT
ENV MEDIAWIKI_VERSION=1.27.5
# Sat, 22 Sep 2018 08:19:02 GMT
ENV MEDIAWIKI_SHA512=2f341ed5afab24b81c315db6bcc58dd617f95231f71408c08bb2a8b974c95b7edd93d0f3c857f24058111c3228b9919a0f1c2fd2f85be940dc571e390225027a
# Sat, 22 Sep 2018 08:19:26 GMT
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
	-	`sha256:3fc1c74a6b9943bb80b45cde3d990b11adcf5e709269180ed0c3c72a93c41b64`  
		Last Modified: Sat, 15 Sep 2018 13:49:44 GMT  
		Size: 12.4 MB (12378551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:557cda51438083cb2905c76843f5f2d083ae5746cd1c3dbe0671eefc5a7bc131`  
		Last Modified: Sat, 15 Sep 2018 13:49:42 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d6933af49963a14b437a0b71e656b3b5012c0dc4e72fdbe1715dfd186f5d852`  
		Last Modified: Sat, 15 Sep 2018 13:49:47 GMT  
		Size: 14.1 MB (14067892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a374218e60193cc4f3157e13092d6a54cbf23a3d089573f3d5aabdc0f9b850ee`  
		Last Modified: Sat, 15 Sep 2018 13:49:42 GMT  
		Size: 2.2 KB (2191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f57f691f8c5d994a7a8a2dcfa371e4e645c1829dcd4f80b5d6ffc1ed81896ba`  
		Last Modified: Sat, 15 Sep 2018 13:49:42 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:678566ac358c207652adbc2ce49ddf3020cd9114750e4b7460f8e63bfcd5ad1d`  
		Last Modified: Sat, 15 Sep 2018 15:24:05 GMT  
		Size: 56.6 MB (56589504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:167997fbbf27218e48632e59df64b03f0cdc988c8abfd6b65f72b5a02a744066`  
		Last Modified: Sat, 15 Sep 2018 15:23:35 GMT  
		Size: 1.5 MB (1530907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc8626a6e324284bfd3302d7eabacb62a9231fe73f6ed7d164a338906c8940c2`  
		Last Modified: Sat, 15 Sep 2018 15:23:33 GMT  
		Size: 400.4 KB (400384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7615573435704de64821ec9c1882b8e3f0cf378f544671031d29b8b536742a90`  
		Last Modified: Sat, 15 Sep 2018 15:23:33 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9c8302f79f8a398327199ef5c122c544301ca9843c0fe5dd6834b7347ef492c`  
		Last Modified: Sat, 15 Sep 2018 15:23:32 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3573d9d4a3c5ab3ce7e59c2f31e19a78e64060868b88363d8a91b28e6310737a`  
		Last Modified: Sat, 22 Sep 2018 08:26:08 GMT  
		Size: 31.9 MB (31933832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mediawiki:1.27.5`

```console
$ docker pull mediawiki@sha256:aa831a128ae49e33fc5c1dea0d469a97de04cb29a2a7e9f775b36370ea9e665d
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
$ docker pull mediawiki@sha256:4d386df545b9cc5d1e0539ffc9445974209ebfea7249feda598b1083b7c19141
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.9 MB (223930034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72df0a53346f03eea55ef499aec494e1089062a2e0a4f5f8d408fb7f72bf5c32`
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
# Sat, 15 Sep 2018 04:38:22 GMT
ENV PHP_VERSION=7.0.32
# Sat, 15 Sep 2018 04:38:22 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.32.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.32.tar.xz.asc/from/this/mirror
# Sat, 15 Sep 2018 04:38:22 GMT
ENV PHP_SHA256=ff6f62afeb32c71b3b89ecbd42950ef6c5e0c329cc6e1c58ffac47e6f1f883c4 PHP_MD5=
# Sat, 15 Sep 2018 04:38:32 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 15 Sep 2018 04:38:32 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 15 Sep 2018 04:41:26 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 15 Sep 2018 04:41:27 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Sat, 15 Sep 2018 04:41:27 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 15 Sep 2018 04:41:27 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 15 Sep 2018 04:41:28 GMT
WORKDIR /var/www/html
# Sat, 15 Sep 2018 04:41:28 GMT
EXPOSE 80/tcp
# Sat, 15 Sep 2018 04:41:28 GMT
CMD ["apache2-foreground"]
# Sat, 15 Sep 2018 07:53:34 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 15 Sep 2018 07:55:05 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Sat, 15 Sep 2018 07:55:14 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Sat, 15 Sep 2018 07:55:15 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 15 Sep 2018 07:55:16 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 15 Sep 2018 07:55:16 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.27
# Sat, 15 Sep 2018 07:55:16 GMT
ENV MEDIAWIKI_BRANCH=REL1_27
# Fri, 21 Sep 2018 18:20:46 GMT
ENV MEDIAWIKI_VERSION=1.27.5
# Fri, 21 Sep 2018 18:20:47 GMT
ENV MEDIAWIKI_SHA512=2f341ed5afab24b81c315db6bcc58dd617f95231f71408c08bb2a8b974c95b7edd93d0f3c857f24058111c3228b9919a0f1c2fd2f85be940dc571e390225027a
# Fri, 21 Sep 2018 18:20:53 GMT
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
	-	`sha256:8aeded0a01b9c3e2b42f6e8d2894e3a52fa3ba75d23e9702d12ed378b10c0d53`  
		Last Modified: Sat, 15 Sep 2018 06:47:44 GMT  
		Size: 12.4 MB (12379854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c08ab63adbb16b66080c0a749db9366d75ccceb2752d5c69cc8869bc8326073`  
		Last Modified: Sat, 15 Sep 2018 06:47:43 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1fd6f6a74e69ff81ba2a31be4e4a7018f74679018960fdb4d89123e03b715cd`  
		Last Modified: Sat, 15 Sep 2018 06:47:46 GMT  
		Size: 14.3 MB (14281513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f544e3dd14913cb214d9ac723ee0d37ea9b5f1de8a0533ccab181ee4e5d0b00`  
		Last Modified: Sat, 15 Sep 2018 06:47:43 GMT  
		Size: 2.2 KB (2194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b356ba52e0f31dd8789388f6c4581e85655def9b818fa052dfa57cce0bfc11a2`  
		Last Modified: Sat, 15 Sep 2018 06:47:43 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbec72870a359c74792737bc7bf50614ac350e170e9c7f5be0a399c6f056e8c6`  
		Last Modified: Sat, 15 Sep 2018 07:57:19 GMT  
		Size: 56.3 MB (56336632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edc0d8c2b106316f0658484a73d89804a31f1555e422ff17aa92fd5a727896b1`  
		Last Modified: Sat, 15 Sep 2018 07:57:05 GMT  
		Size: 1.5 MB (1549021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dea0b0ad1e3916fee8eb6ea644730622eaa021494420e9978d58573a4211353c`  
		Last Modified: Sat, 15 Sep 2018 07:57:04 GMT  
		Size: 400.3 KB (400312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac30baaf359cf5eb03b7e594e139980ce2bcaae5f1442b0ae8e253a330030b61`  
		Last Modified: Sat, 15 Sep 2018 07:57:04 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0231407801bd0e5cafd08dcdce31a4d06921ac168ef2f44470917992986fced`  
		Last Modified: Sat, 15 Sep 2018 07:57:05 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e2992f658fbd32bbb3c7981d1b881a5d4190d7213fa608e29f003caf608c2fd`  
		Last Modified: Fri, 21 Sep 2018 18:22:59 GMT  
		Size: 31.9 MB (31933496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.27.5` - linux; arm variant v5

```console
$ docker pull mediawiki@sha256:eb8971382330457f360db8835b20fe32ac5b6947ed04d378ee522c61f67d6bbb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.1 MB (209097379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c88575364b822e2d1214507c87dac54ef41e67c1289ab84f41ec855fe2e9cde3`
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
# Sat, 15 Sep 2018 10:06:17 GMT
ENV PHP_VERSION=7.0.32
# Sat, 15 Sep 2018 10:06:17 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.32.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.32.tar.xz.asc/from/this/mirror
# Sat, 15 Sep 2018 10:06:17 GMT
ENV PHP_SHA256=ff6f62afeb32c71b3b89ecbd42950ef6c5e0c329cc6e1c58ffac47e6f1f883c4 PHP_MD5=
# Sat, 15 Sep 2018 10:06:33 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 15 Sep 2018 10:06:34 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 15 Sep 2018 10:09:23 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 15 Sep 2018 10:09:25 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Sat, 15 Sep 2018 10:09:25 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 15 Sep 2018 10:09:26 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 15 Sep 2018 10:09:26 GMT
WORKDIR /var/www/html
# Sat, 15 Sep 2018 10:09:27 GMT
EXPOSE 80/tcp
# Sat, 15 Sep 2018 10:09:27 GMT
CMD ["apache2-foreground"]
# Sat, 15 Sep 2018 12:56:24 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 15 Sep 2018 12:59:15 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Sat, 15 Sep 2018 12:59:31 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Sat, 15 Sep 2018 12:59:32 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 15 Sep 2018 12:59:34 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 15 Sep 2018 12:59:35 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.27
# Sat, 15 Sep 2018 12:59:35 GMT
ENV MEDIAWIKI_BRANCH=REL1_27
# Sat, 22 Sep 2018 08:49:58 GMT
ENV MEDIAWIKI_VERSION=1.27.5
# Sat, 22 Sep 2018 08:49:59 GMT
ENV MEDIAWIKI_SHA512=2f341ed5afab24b81c315db6bcc58dd617f95231f71408c08bb2a8b974c95b7edd93d0f3c857f24058111c3228b9919a0f1c2fd2f85be940dc571e390225027a
# Sat, 22 Sep 2018 08:50:20 GMT
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
	-	`sha256:97e7e76c17f1c70ca42d3f991e00d814117f370588c1b117ca2c0476adfbaf96`  
		Last Modified: Sat, 15 Sep 2018 11:32:54 GMT  
		Size: 12.4 MB (12378198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d976ebc07f0c73ac1767ed203627639a6e980f8e667aab741bf71317b4bcf66`  
		Last Modified: Sat, 15 Sep 2018 11:32:52 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ba9cc9cf8b9aac399e384702dfc08ecfe10ff33c1a604ac04ac413a7dca4c93`  
		Last Modified: Sat, 15 Sep 2018 11:32:59 GMT  
		Size: 13.7 MB (13658120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:235a174f083c87fcf834ad0ffa713bb728220c6a7a50c309ee5cd18a4c2da112`  
		Last Modified: Sat, 15 Sep 2018 11:32:52 GMT  
		Size: 2.2 KB (2194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e56196f612a807d17fde6de20bcc50a54a03f0129532c44974bbe29e87c325a3`  
		Last Modified: Sat, 15 Sep 2018 11:32:52 GMT  
		Size: 903.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7f83b9cce20011524a99793e680e252ae6d5d6309b8880a29efa2baa5fc0808`  
		Last Modified: Sat, 15 Sep 2018 13:02:58 GMT  
		Size: 54.0 MB (53981878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4158a0e8e2824e4d259f3dc879086c8b3061f4ebb16f789140d022b52ffa7d9f`  
		Last Modified: Sat, 15 Sep 2018 13:02:41 GMT  
		Size: 1.5 MB (1485553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56147efc0d62f93fac9120454f90d6e7a7b1b054e83a24c451778fbd395698a8`  
		Last Modified: Sat, 15 Sep 2018 13:02:39 GMT  
		Size: 392.1 KB (392113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8997ebb280db53b6c7cfb50a2f159eb1b17c8b73e43bca6124de9f17552f27e6`  
		Last Modified: Sat, 15 Sep 2018 13:02:39 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ec3d61c63d92a050b72b15a4779af2cf72b62c2d86bfa7dc88cc4aaea057292`  
		Last Modified: Sat, 15 Sep 2018 13:02:39 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23b0d5a11e220636c3bb071c04c162cad45fe2d3fe14fb81d34230d45ba0a70b`  
		Last Modified: Sat, 22 Sep 2018 08:53:34 GMT  
		Size: 31.9 MB (31933545 bytes)  
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
$ docker pull mediawiki@sha256:ab77ce7fec817a77def7b3c812935e46b4f6a0945d7edef89238a54b69de3d6c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.4 MB (208400437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21965b6dbd1dcb6c73f07a39a1b73f1aa73b85f3e678c4aff9ac51f9090a5d89`
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
# Sat, 15 Sep 2018 15:53:55 GMT
ENV PHP_VERSION=7.0.32
# Sat, 15 Sep 2018 15:53:56 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.32.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.32.tar.xz.asc/from/this/mirror
# Sat, 15 Sep 2018 15:53:57 GMT
ENV PHP_SHA256=ff6f62afeb32c71b3b89ecbd42950ef6c5e0c329cc6e1c58ffac47e6f1f883c4 PHP_MD5=
# Sat, 15 Sep 2018 15:54:28 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 15 Sep 2018 15:54:34 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 15 Sep 2018 16:00:28 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 15 Sep 2018 16:00:31 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Sat, 15 Sep 2018 16:00:32 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 15 Sep 2018 16:00:33 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 15 Sep 2018 16:00:34 GMT
WORKDIR /var/www/html
# Sat, 15 Sep 2018 16:00:34 GMT
EXPOSE 80/tcp
# Sat, 15 Sep 2018 16:00:35 GMT
CMD ["apache2-foreground"]
# Sat, 15 Sep 2018 20:17:11 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 15 Sep 2018 20:20:31 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Sat, 15 Sep 2018 20:20:51 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Sat, 15 Sep 2018 20:20:56 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 15 Sep 2018 20:20:58 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 15 Sep 2018 20:21:06 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.27
# Sat, 15 Sep 2018 20:21:07 GMT
ENV MEDIAWIKI_BRANCH=REL1_27
# Sat, 22 Sep 2018 08:41:06 GMT
ENV MEDIAWIKI_VERSION=1.27.5
# Sat, 22 Sep 2018 08:41:07 GMT
ENV MEDIAWIKI_SHA512=2f341ed5afab24b81c315db6bcc58dd617f95231f71408c08bb2a8b974c95b7edd93d0f3c857f24058111c3228b9919a0f1c2fd2f85be940dc571e390225027a
# Sat, 22 Sep 2018 08:41:22 GMT
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
	-	`sha256:4acf3adae2be347b697be45383caee740bfb8869968041d64867a6509955c4e3`  
		Last Modified: Sat, 15 Sep 2018 18:41:24 GMT  
		Size: 12.4 MB (12378441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e29ceeb4123e16f7824934753bb18047be107a8b4fadb3336a3114cc0f3c0bc7`  
		Last Modified: Sat, 15 Sep 2018 18:41:21 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f48ce88533cb090d61c9d080a8fe2c78f5e2e7d152b48bb5d4410296c4334f7`  
		Last Modified: Sat, 15 Sep 2018 18:41:28 GMT  
		Size: 13.4 MB (13432453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:322d7ac121d2a32580f7ebdbae1dde94b0ccdb6ee3f17c4f6c2d611d837820ac`  
		Last Modified: Sat, 15 Sep 2018 18:41:21 GMT  
		Size: 2.2 KB (2194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:068aeb643b0a8f0f0fb6a41530effaa14ce268531c39d11dd15b9b6d812c99e3`  
		Last Modified: Sat, 15 Sep 2018 18:41:21 GMT  
		Size: 905.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ac91495098b7fb52a3d8ae4ba70779c0b7019599d958b96b4ceb0a26835a196`  
		Last Modified: Sat, 15 Sep 2018 20:25:19 GMT  
		Size: 54.1 MB (54130058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7503902fa16bee4f8e46573be78d699511b0ad4907a927971f58523a85002b5d`  
		Last Modified: Sat, 15 Sep 2018 20:24:57 GMT  
		Size: 1.5 MB (1486662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e46c519845b838587e92dd459db458cb4edb1a7abde23bb8631a71931f5f95ff`  
		Last Modified: Sat, 15 Sep 2018 20:24:56 GMT  
		Size: 395.0 KB (394954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbbc499cd8b9df8dc4f1f7fd71f1565c67d19662686c6dd46df5509b5ae4dba9`  
		Last Modified: Sat, 15 Sep 2018 20:24:55 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:011df23db08049d2b17b3146b525298d14c2ed73b83ffbc8930cc81f5a4bc2c1`  
		Last Modified: Sat, 15 Sep 2018 20:24:55 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54bce512e700a62ac4c07e0700543be0016e3071859f7400296ad357691fe69f`  
		Last Modified: Sat, 22 Sep 2018 08:44:34 GMT  
		Size: 31.9 MB (31933363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.27.5` - linux; 386

```console
$ docker pull mediawiki@sha256:bb7c5d3e4b1544f9946732f339a7235373c64e6ea0748406c09fd140de284442
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.3 MB (229323433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00910d358cfb148e3daf6169245788781d06611e20e4fe43da1c4b2077ef0c75`
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
# Sat, 15 Sep 2018 14:16:27 GMT
ENV PHP_VERSION=7.0.32
# Sat, 15 Sep 2018 14:16:28 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.32.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.32.tar.xz.asc/from/this/mirror
# Sat, 15 Sep 2018 14:16:28 GMT
ENV PHP_SHA256=ff6f62afeb32c71b3b89ecbd42950ef6c5e0c329cc6e1c58ffac47e6f1f883c4 PHP_MD5=
# Sat, 15 Sep 2018 14:16:37 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 15 Sep 2018 14:16:38 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 15 Sep 2018 14:19:44 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 15 Sep 2018 14:19:45 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Sat, 15 Sep 2018 14:19:45 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 15 Sep 2018 14:19:45 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 15 Sep 2018 14:19:46 GMT
WORKDIR /var/www/html
# Sat, 15 Sep 2018 14:19:46 GMT
EXPOSE 80/tcp
# Sat, 15 Sep 2018 14:19:46 GMT
CMD ["apache2-foreground"]
# Sat, 15 Sep 2018 19:45:55 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 15 Sep 2018 19:47:21 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Sat, 15 Sep 2018 19:47:29 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Sat, 15 Sep 2018 19:47:30 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 15 Sep 2018 19:47:31 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 15 Sep 2018 19:47:31 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.27
# Sat, 15 Sep 2018 19:47:31 GMT
ENV MEDIAWIKI_BRANCH=REL1_27
# Sat, 22 Sep 2018 10:45:18 GMT
ENV MEDIAWIKI_VERSION=1.27.5
# Sat, 22 Sep 2018 10:45:18 GMT
ENV MEDIAWIKI_SHA512=2f341ed5afab24b81c315db6bcc58dd617f95231f71408c08bb2a8b974c95b7edd93d0f3c857f24058111c3228b9919a0f1c2fd2f85be940dc571e390225027a
# Sat, 22 Sep 2018 10:45:26 GMT
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
	-	`sha256:8b235f760158106a63f04b39c38a879125ae7270c78f274efa7e6ceaaea16779`  
		Last Modified: Sat, 15 Sep 2018 16:40:39 GMT  
		Size: 12.4 MB (12379236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7020cf61b2f791fd8abfde3fcd03e455b29e1b6fea1f2a953449a20cfb48e453`  
		Last Modified: Sat, 15 Sep 2018 16:40:37 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f3991b470b831ab9604f79808d1fd0f3aec196611121eed8358f70e6be4ddb0`  
		Last Modified: Sat, 15 Sep 2018 16:40:42 GMT  
		Size: 14.4 MB (14393867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbbf646d73cfa96498e56dd9a19d8da809704d356271432b15786450de225933`  
		Last Modified: Sat, 15 Sep 2018 16:40:38 GMT  
		Size: 2.2 KB (2194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:975bb728cb251f486dde4bab2b22d500af32128a88ebb037dafee665084a0dac`  
		Last Modified: Sat, 15 Sep 2018 16:40:37 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64772a41d91b9e8ae6136f5c19dc1635591e548fb218f67cf5395aae24ea60a8`  
		Last Modified: Sat, 15 Sep 2018 19:49:49 GMT  
		Size: 56.5 MB (56494152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0e93c9b7148bfa205e19759c7fabac9b364b0203e632d0729e2f27b09f50d2f`  
		Last Modified: Sat, 15 Sep 2018 19:49:32 GMT  
		Size: 1.6 MB (1552699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a90d39c47b1f97473477603be2ce11115c6fe76349afddc1dffd4b22ecbfe67e`  
		Last Modified: Sat, 15 Sep 2018 19:49:32 GMT  
		Size: 389.3 KB (389347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e56d1c2d450796556874909dfb8adc19a64481801981f9bfbfd85baeac21093`  
		Last Modified: Sat, 15 Sep 2018 19:49:32 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b57525fe878c22913f993cc00734de3621ed8c15b92386e897fd4bbce2fe9a03`  
		Last Modified: Sat, 15 Sep 2018 19:49:32 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c55efb361a7b21933dbcfa1675b19311bdfeff2ce25d186c408b7fa5b00f0c5a`  
		Last Modified: Sat, 22 Sep 2018 10:47:13 GMT  
		Size: 31.9 MB (31933519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.27.5` - linux; ppc64le

```console
$ docker pull mediawiki@sha256:017a7b79b30724f4bebf75ae321eee88756b89fefa812ecf32c319d39b9871b6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.8 MB (218806527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbd4b38024895e6fa559401f3a12b4fa57ee250bfda471aa046120b0050505cb`
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
# Sat, 15 Sep 2018 11:52:58 GMT
ENV PHP_VERSION=7.0.32
# Sat, 15 Sep 2018 11:52:59 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.32.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.32.tar.xz.asc/from/this/mirror
# Sat, 15 Sep 2018 11:52:59 GMT
ENV PHP_SHA256=ff6f62afeb32c71b3b89ecbd42950ef6c5e0c329cc6e1c58ffac47e6f1f883c4 PHP_MD5=
# Sat, 15 Sep 2018 11:53:23 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 15 Sep 2018 11:53:24 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 15 Sep 2018 11:56:15 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 15 Sep 2018 11:56:16 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Sat, 15 Sep 2018 11:56:16 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 15 Sep 2018 11:56:17 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 15 Sep 2018 11:56:18 GMT
WORKDIR /var/www/html
# Sat, 15 Sep 2018 11:56:19 GMT
EXPOSE 80/tcp
# Sat, 15 Sep 2018 11:56:20 GMT
CMD ["apache2-foreground"]
# Sat, 15 Sep 2018 15:08:41 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 15 Sep 2018 15:10:44 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Sat, 15 Sep 2018 15:14:07 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Sat, 15 Sep 2018 15:14:09 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 15 Sep 2018 15:14:12 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 15 Sep 2018 15:14:13 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.27
# Sat, 15 Sep 2018 15:14:13 GMT
ENV MEDIAWIKI_BRANCH=REL1_27
# Sat, 22 Sep 2018 08:19:01 GMT
ENV MEDIAWIKI_VERSION=1.27.5
# Sat, 22 Sep 2018 08:19:02 GMT
ENV MEDIAWIKI_SHA512=2f341ed5afab24b81c315db6bcc58dd617f95231f71408c08bb2a8b974c95b7edd93d0f3c857f24058111c3228b9919a0f1c2fd2f85be940dc571e390225027a
# Sat, 22 Sep 2018 08:19:26 GMT
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
	-	`sha256:3fc1c74a6b9943bb80b45cde3d990b11adcf5e709269180ed0c3c72a93c41b64`  
		Last Modified: Sat, 15 Sep 2018 13:49:44 GMT  
		Size: 12.4 MB (12378551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:557cda51438083cb2905c76843f5f2d083ae5746cd1c3dbe0671eefc5a7bc131`  
		Last Modified: Sat, 15 Sep 2018 13:49:42 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d6933af49963a14b437a0b71e656b3b5012c0dc4e72fdbe1715dfd186f5d852`  
		Last Modified: Sat, 15 Sep 2018 13:49:47 GMT  
		Size: 14.1 MB (14067892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a374218e60193cc4f3157e13092d6a54cbf23a3d089573f3d5aabdc0f9b850ee`  
		Last Modified: Sat, 15 Sep 2018 13:49:42 GMT  
		Size: 2.2 KB (2191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f57f691f8c5d994a7a8a2dcfa371e4e645c1829dcd4f80b5d6ffc1ed81896ba`  
		Last Modified: Sat, 15 Sep 2018 13:49:42 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:678566ac358c207652adbc2ce49ddf3020cd9114750e4b7460f8e63bfcd5ad1d`  
		Last Modified: Sat, 15 Sep 2018 15:24:05 GMT  
		Size: 56.6 MB (56589504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:167997fbbf27218e48632e59df64b03f0cdc988c8abfd6b65f72b5a02a744066`  
		Last Modified: Sat, 15 Sep 2018 15:23:35 GMT  
		Size: 1.5 MB (1530907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc8626a6e324284bfd3302d7eabacb62a9231fe73f6ed7d164a338906c8940c2`  
		Last Modified: Sat, 15 Sep 2018 15:23:33 GMT  
		Size: 400.4 KB (400384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7615573435704de64821ec9c1882b8e3f0cf378f544671031d29b8b536742a90`  
		Last Modified: Sat, 15 Sep 2018 15:23:33 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9c8302f79f8a398327199ef5c122c544301ca9843c0fe5dd6834b7347ef492c`  
		Last Modified: Sat, 15 Sep 2018 15:23:32 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3573d9d4a3c5ab3ce7e59c2f31e19a78e64060868b88363d8a91b28e6310737a`  
		Last Modified: Sat, 22 Sep 2018 08:26:08 GMT  
		Size: 31.9 MB (31933832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mediawiki:1.30`

```console
$ docker pull mediawiki@sha256:a2b5aadf40f559bfc5bbd1cc38bfbda337101cf8291a464d25d4596b9a4ad306
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
$ docker pull mediawiki@sha256:792320e30bd1c5ae4f3063ebb11c7950dbf527cca9e940db52fc74fb5b1f9ccc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.4 MB (235429375 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:488b8befac35dc61322a9cf6c5eda06f584a2ca54449afcd4cf8b4382658bfa9`
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
# Mon, 15 Oct 2018 19:38:01 GMT
ENV PHP_VERSION=7.1.23
# Mon, 15 Oct 2018 19:38:01 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.23.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.23.tar.xz.asc/from/this/mirror
# Mon, 15 Oct 2018 19:38:01 GMT
ENV PHP_SHA256=227a3c76133c3dc1cec937989456cbd89ed00e68e7260c651900dbe1f5b798bc PHP_MD5=
# Mon, 15 Oct 2018 19:38:09 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Mon, 15 Oct 2018 19:38:10 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 15 Oct 2018 19:41:01 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Mon, 15 Oct 2018 19:41:02 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Mon, 15 Oct 2018 19:41:02 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 15 Oct 2018 19:41:02 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Mon, 15 Oct 2018 19:41:03 GMT
WORKDIR /var/www/html
# Mon, 15 Oct 2018 19:41:03 GMT
EXPOSE 80/tcp
# Mon, 15 Oct 2018 19:41:03 GMT
CMD ["apache2-foreground"]
# Mon, 15 Oct 2018 21:41:42 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Mon, 15 Oct 2018 21:43:18 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Mon, 15 Oct 2018 21:43:28 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Mon, 15 Oct 2018 21:43:35 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Mon, 15 Oct 2018 21:43:36 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Mon, 15 Oct 2018 21:43:36 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.30
# Mon, 15 Oct 2018 21:43:36 GMT
ENV MEDIAWIKI_BRANCH=REL1_30
# Mon, 15 Oct 2018 21:43:36 GMT
ENV MEDIAWIKI_VERSION=1.30.1
# Mon, 15 Oct 2018 21:43:36 GMT
ENV MEDIAWIKI_SHA512=bda37c7b1be4e1532ee8357843140e666ed550c4f54b53873d163d4b53ed87a80c0ad8a11d189577d32e554488aed517fb9477f2da04d7e7d87014049a2eabbe
# Mon, 15 Oct 2018 21:43:44 GMT
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
	-	`sha256:1675df3bd7f712abaf4304d90039ef34364ced89decb877713ae13aa6367ca3a`  
		Last Modified: Mon, 15 Oct 2018 21:02:45 GMT  
		Size: 12.6 MB (12577019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10fdac1e0f697d684ee5490a09b8350ea65f91d54eb19cb5f88383ac92c11fe8`  
		Last Modified: Mon, 15 Oct 2018 21:02:44 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10c9c4da81d3073f5b7db921dc604462160040a9ec9f3fb08ec070ee624fac8a`  
		Last Modified: Mon, 15 Oct 2018 21:02:48 GMT  
		Size: 14.6 MB (14605110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f43fdf88cb0e73c52cbe7184817590cd3debc57aabdad158da444841742ff76c`  
		Last Modified: Mon, 15 Oct 2018 21:02:44 GMT  
		Size: 2.2 KB (2193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1ab2a744d311c5a691ccd74820a5addc34776c2f67c236d8e30059f7bdb37fb`  
		Last Modified: Mon, 15 Oct 2018 21:02:44 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d431b793ca9ae1483afe32db440dfbf123b5c5ae3385712dfa6043e24280dcf`  
		Last Modified: Mon, 15 Oct 2018 21:45:31 GMT  
		Size: 56.3 MB (56344069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b73a9f5c951fb1965c918c7c02a7912c4f598cf0b1058c9f058d7a7a692dad3`  
		Last Modified: Mon, 15 Oct 2018 21:45:18 GMT  
		Size: 1.7 MB (1663089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:175e0972f46d08a381dc5ad7df557d36c087e6785659949394b2f66ca8f4c9bb`  
		Last Modified: Mon, 15 Oct 2018 21:45:17 GMT  
		Size: 408.6 KB (408627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d4029e84f9a674a594486f99ae0bfb4f58fcbb5ffca35cc9938a4cff355c27`  
		Last Modified: Mon, 15 Oct 2018 21:45:16 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:798c8a31461865349822e64fa17f7c6ca5a824bc31078e5a283556aade29727c`  
		Last Modified: Mon, 15 Oct 2018 21:45:18 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed06a1bfc68f777f52b379f54a199d392bb358f60541dff9147796b1f08071c4`  
		Last Modified: Mon, 15 Oct 2018 21:45:34 GMT  
		Size: 42.8 MB (42782255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.30` - linux; arm variant v5

```console
$ docker pull mediawiki@sha256:a4786cfbd67ac4938f7807f9c6aa61ea78e3e799b558170e4fc377528eedc52b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.5 MB (220527754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33706513ec7a04cb8fa67688ed65c5442efb8f320019587abd89e73f3141eae0`
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
# Sat, 15 Sep 2018 09:29:20 GMT
ENV PHP_VERSION=7.1.22
# Sat, 15 Sep 2018 09:29:20 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.22.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.22.tar.xz.asc/from/this/mirror
# Sat, 15 Sep 2018 09:29:21 GMT
ENV PHP_SHA256=9194c9b3a592d8376fde837dde711ec01ee26f8607fc2884047ef6f7c089b15d PHP_MD5=
# Sat, 15 Sep 2018 09:29:37 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 15 Sep 2018 09:29:37 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 15 Sep 2018 09:32:29 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 15 Sep 2018 09:32:30 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Sat, 15 Sep 2018 09:32:31 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 15 Sep 2018 09:32:31 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 15 Sep 2018 09:32:32 GMT
WORKDIR /var/www/html
# Sat, 15 Sep 2018 09:32:32 GMT
EXPOSE 80/tcp
# Sat, 15 Sep 2018 09:32:32 GMT
CMD ["apache2-foreground"]
# Sat, 15 Sep 2018 12:51:44 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 15 Sep 2018 12:54:46 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Sat, 15 Sep 2018 12:55:02 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Sat, 15 Sep 2018 12:55:03 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 15 Sep 2018 12:55:04 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 15 Sep 2018 12:55:05 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.30
# Sat, 15 Sep 2018 12:55:05 GMT
ENV MEDIAWIKI_BRANCH=REL1_30
# Sat, 22 Sep 2018 08:49:14 GMT
ENV MEDIAWIKI_VERSION=1.30.1
# Sat, 22 Sep 2018 08:49:14 GMT
ENV MEDIAWIKI_SHA512=bda37c7b1be4e1532ee8357843140e666ed550c4f54b53873d163d4b53ed87a80c0ad8a11d189577d32e554488aed517fb9477f2da04d7e7d87014049a2eabbe
# Sat, 22 Sep 2018 08:49:39 GMT
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
	-	`sha256:5fcae2b315b22b5b47533c93f6aa5207b4bc55fc8ec83b7cba2149750df49e98`  
		Last Modified: Sat, 15 Sep 2018 11:26:46 GMT  
		Size: 12.6 MB (12575252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00e81a5b5d35d23a243ea9aa2d2198161a3faf46193271fe00ee25e3230f33a7`  
		Last Modified: Sat, 15 Sep 2018 11:26:44 GMT  
		Size: 502.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b2ae8927d16aff988d324290ce8576c5d8b533e99c8b64d0e2985c40a438633`  
		Last Modified: Sat, 15 Sep 2018 11:26:49 GMT  
		Size: 13.9 MB (13929039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:651e26e1efed4267c837291658bc8687ed5da3d5b0c8a603334a29ba58bda961`  
		Last Modified: Sat, 15 Sep 2018 11:26:44 GMT  
		Size: 2.2 KB (2194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e75ce9de61e349af15ae933e0cfcf872759a60f926cac004155f1e5714aeeb5`  
		Last Modified: Sat, 15 Sep 2018 11:26:44 GMT  
		Size: 901.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4312464f96f8fd19b5371398a10262930c22a700cb367bfa722fc0a5b1a6b20`  
		Last Modified: Sat, 15 Sep 2018 13:01:52 GMT  
		Size: 54.0 MB (53981834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7886a988510fe81c9d0bc9ec44e8f16d0905793929394b3375056e16c136ee4e`  
		Last Modified: Sat, 15 Sep 2018 13:01:35 GMT  
		Size: 1.6 MB (1593726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04085b1b378785d88a53e640cb58ccc3f25e07c0b1315daf1ef31014316be23a`  
		Last Modified: Sat, 15 Sep 2018 13:01:34 GMT  
		Size: 397.7 KB (397722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73a8c589b4e1aaba6d46caa2f94b325114a0d2b6b9548930d9f1dd4e5b15825a`  
		Last Modified: Sat, 15 Sep 2018 13:01:34 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f32982f59769af66b32fd952958091b8b6db9bfc9bf19cbd108f93b3f1d0ca4`  
		Last Modified: Sat, 15 Sep 2018 13:01:34 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b8763cc184b48fc5b9df8158bfd696318b781b63551ec755c15480bda9e0817`  
		Last Modified: Sat, 22 Sep 2018 08:52:27 GMT  
		Size: 42.8 MB (42782208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.30` - linux; arm variant v7

```console
$ docker pull mediawiki@sha256:3034587f4713ca26e420f064be6f860607c2b96681731a5fcf3d66fe9d85cf84
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.0 MB (211016114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30723c050058a5b1c0cfac47ebc407e6145c913a7a7469ce1149ad72753fedac`
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
# Sat, 15 Sep 2018 12:34:17 GMT
ENV PHP_VERSION=7.1.22
# Sat, 15 Sep 2018 12:34:17 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.22.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.22.tar.xz.asc/from/this/mirror
# Sat, 15 Sep 2018 12:34:17 GMT
ENV PHP_SHA256=9194c9b3a592d8376fde837dde711ec01ee26f8607fc2884047ef6f7c089b15d PHP_MD5=
# Sat, 15 Sep 2018 12:34:31 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 15 Sep 2018 12:34:31 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 15 Sep 2018 12:37:03 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 15 Sep 2018 12:37:04 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Sat, 15 Sep 2018 12:37:04 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 15 Sep 2018 12:37:05 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 15 Sep 2018 12:37:05 GMT
WORKDIR /var/www/html
# Sat, 15 Sep 2018 12:37:06 GMT
EXPOSE 80/tcp
# Sat, 15 Sep 2018 12:37:06 GMT
CMD ["apache2-foreground"]
# Sat, 22 Sep 2018 12:02:46 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 22 Sep 2018 12:05:29 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Sat, 22 Sep 2018 12:05:44 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Sat, 22 Sep 2018 12:05:45 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 22 Sep 2018 12:05:46 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 22 Sep 2018 12:05:46 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.30
# Sat, 22 Sep 2018 12:05:47 GMT
ENV MEDIAWIKI_BRANCH=REL1_30
# Sat, 22 Sep 2018 12:05:47 GMT
ENV MEDIAWIKI_VERSION=1.30.1
# Sat, 22 Sep 2018 12:05:48 GMT
ENV MEDIAWIKI_SHA512=bda37c7b1be4e1532ee8357843140e666ed550c4f54b53873d163d4b53ed87a80c0ad8a11d189577d32e554488aed517fb9477f2da04d7e7d87014049a2eabbe
# Sat, 22 Sep 2018 12:06:12 GMT
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
	-	`sha256:ccc1b65c35a2df0a980ccf42e919ea055824a7b4bded4e9caa148d0a1eed22e5`  
		Last Modified: Sat, 15 Sep 2018 14:24:53 GMT  
		Size: 12.6 MB (12575186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7502c8cc84520526612da9eee375dd9efda348f0230c5df0045133c4e14981e0`  
		Last Modified: Sat, 15 Sep 2018 14:24:50 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d7967689ec520174eaa2cc4d311d4fb3a62ec7fd5f79095a6e73432df3417b7`  
		Last Modified: Sat, 15 Sep 2018 14:24:55 GMT  
		Size: 13.1 MB (13108505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9811e255c20db92569c5815035e2678396428fd79ab8dd6318e1b07a87d75438`  
		Last Modified: Sat, 15 Sep 2018 14:24:50 GMT  
		Size: 2.2 KB (2191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c93efd275d3b027792cfa89619a7043de372e25ef71fe36a00612466b93ed140`  
		Last Modified: Sat, 15 Sep 2018 14:24:50 GMT  
		Size: 903.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:961bbeb7199c025716d3ad9c658de64662007c8d33311c68c757d703fa6faab7`  
		Last Modified: Sat, 22 Sep 2018 12:11:55 GMT  
		Size: 51.6 MB (51605422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ed62b29a7c8597cd35c5e2079df749d969966781536ffbd16da2cf68f8f002e`  
		Last Modified: Sat, 22 Sep 2018 12:11:39 GMT  
		Size: 1.5 MB (1549628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d5df1ad520b786b19931155eab44a5d51a14f5aa013cb6414b36c3595d8ead6`  
		Last Modified: Sat, 22 Sep 2018 12:11:38 GMT  
		Size: 392.8 KB (392785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4caeaf577ec159670c528cf4e3a4c05ef47cbef8dff2b296610bcc55fef257d`  
		Last Modified: Sat, 22 Sep 2018 12:11:38 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c411d708ea6f96861ac5412386d2ab9c58f31cd8aeff9d93d781420f393cc75`  
		Last Modified: Sat, 22 Sep 2018 12:11:38 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f40887a0caf2cf8bae53450be71f8799b27df9f63336882d5642c8e15d98d46`  
		Last Modified: Sat, 22 Sep 2018 12:12:04 GMT  
		Size: 42.8 MB (42782369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.30` - linux; arm64 variant v8

```console
$ docker pull mediawiki@sha256:1596a00079cb2a040f36ecd51e8e7d460b4ffc092723c09a457ac411c10f4f4b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.9 MB (219854032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8325460dfb05587f23829f3dc9d6bf5a1280bb24720138d51eb7bd87d16cca9`
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
# Sat, 15 Sep 2018 14:31:46 GMT
ENV PHP_VERSION=7.1.22
# Sat, 15 Sep 2018 14:31:47 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.22.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.22.tar.xz.asc/from/this/mirror
# Sat, 15 Sep 2018 14:31:47 GMT
ENV PHP_SHA256=9194c9b3a592d8376fde837dde711ec01ee26f8607fc2884047ef6f7c089b15d PHP_MD5=
# Sat, 15 Sep 2018 14:32:25 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 15 Sep 2018 14:32:26 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 15 Sep 2018 14:38:27 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 15 Sep 2018 14:38:29 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Sat, 15 Sep 2018 14:38:29 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 15 Sep 2018 14:38:31 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 15 Sep 2018 14:38:32 GMT
WORKDIR /var/www/html
# Sat, 15 Sep 2018 14:38:32 GMT
EXPOSE 80/tcp
# Sat, 15 Sep 2018 14:38:33 GMT
CMD ["apache2-foreground"]
# Sat, 15 Sep 2018 20:11:12 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 15 Sep 2018 20:14:55 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Sat, 15 Sep 2018 20:15:23 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Sat, 15 Sep 2018 20:15:26 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 15 Sep 2018 20:15:27 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 15 Sep 2018 20:15:36 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.30
# Sat, 15 Sep 2018 20:15:36 GMT
ENV MEDIAWIKI_BRANCH=REL1_30
# Sat, 22 Sep 2018 08:40:27 GMT
ENV MEDIAWIKI_VERSION=1.30.1
# Sat, 22 Sep 2018 08:40:28 GMT
ENV MEDIAWIKI_SHA512=bda37c7b1be4e1532ee8357843140e666ed550c4f54b53873d163d4b53ed87a80c0ad8a11d189577d32e554488aed517fb9477f2da04d7e7d87014049a2eabbe
# Sat, 22 Sep 2018 08:40:43 GMT
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
	-	`sha256:5276b626cd3c3a8d7fa873132414f97886808e1b4e31b3b85bee5e8120ff1b38`  
		Last Modified: Sat, 15 Sep 2018 18:32:17 GMT  
		Size: 12.6 MB (12575519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a5e4d79fab4f67e4ba5ce4da4410a1eccbcbb8ba54aa4fdb7828c4090e7a8c2`  
		Last Modified: Sat, 15 Sep 2018 18:32:15 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ccbc6a9fd5c48c031fe1cc23916ea641e908eb517efc9cb329c49a73022c5b1`  
		Last Modified: Sat, 15 Sep 2018 18:32:21 GMT  
		Size: 13.7 MB (13727475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6080afc0e94d3475f52f58249e2c0d505121cebc44e8c6897711ed0a5d6a3a75`  
		Last Modified: Sat, 15 Sep 2018 18:32:15 GMT  
		Size: 2.2 KB (2191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33104fdedd144c13843e9146f403640fcfa0ac99b0bf74a25c3bfbd63a000c3f`  
		Last Modified: Sat, 15 Sep 2018 18:32:15 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c008ef0a71e7898bf0b9687af9de777eb5bdee015bf6f5984c51c963b50c425`  
		Last Modified: Sat, 15 Sep 2018 20:23:54 GMT  
		Size: 54.1 MB (54130545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc30cf9a3c98f098a53e961f55556802a6ebbf9f5a28afebf735bfcde5e5dd3e`  
		Last Modified: Sat, 15 Sep 2018 20:23:33 GMT  
		Size: 1.6 MB (1594554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7347bb69e8a97845dd76f6c62eb52576e207757fb02f64f3548e45a247187dcb`  
		Last Modified: Sat, 15 Sep 2018 20:23:30 GMT  
		Size: 400.4 KB (400446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b8eb661fbc6610b03558bf80acc664f87dc1563abd91a02f647852264ac7174`  
		Last Modified: Sat, 15 Sep 2018 20:23:30 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff0f5490755bc9029772c65e1fb98ff48939d4d75349ecf1842932562882a587`  
		Last Modified: Sat, 15 Sep 2018 20:23:30 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b995feea996c0841094c9818584632f21c499c618ca0e132e7100d6f5a845523`  
		Last Modified: Sat, 22 Sep 2018 08:43:28 GMT  
		Size: 42.8 MB (42780992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.30` - linux; 386

```console
$ docker pull mediawiki@sha256:6814a89447596f2f98f58260a77aed540e527385290a34acdce149d53de9f059
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.8 MB (240823704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1db194bdf4958a1104c3b64cd797a496e16e8f22ecfd8a60f4410befc9b75584`
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
# Sat, 15 Sep 2018 13:01:21 GMT
ENV PHP_VERSION=7.1.22
# Sat, 15 Sep 2018 13:01:21 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.22.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.22.tar.xz.asc/from/this/mirror
# Sat, 15 Sep 2018 13:01:21 GMT
ENV PHP_SHA256=9194c9b3a592d8376fde837dde711ec01ee26f8607fc2884047ef6f7c089b15d PHP_MD5=
# Sat, 15 Sep 2018 13:01:30 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 15 Sep 2018 13:01:31 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 15 Sep 2018 13:04:36 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 15 Sep 2018 13:04:36 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Sat, 15 Sep 2018 13:04:36 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 15 Sep 2018 13:04:37 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 15 Sep 2018 13:04:37 GMT
WORKDIR /var/www/html
# Sat, 15 Sep 2018 13:04:37 GMT
EXPOSE 80/tcp
# Sat, 15 Sep 2018 13:04:37 GMT
CMD ["apache2-foreground"]
# Sat, 15 Sep 2018 19:43:24 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 15 Sep 2018 19:44:56 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Sat, 15 Sep 2018 19:45:06 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Sat, 15 Sep 2018 19:45:07 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 15 Sep 2018 19:45:07 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 15 Sep 2018 19:45:08 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.30
# Sat, 15 Sep 2018 19:45:08 GMT
ENV MEDIAWIKI_BRANCH=REL1_30
# Sat, 22 Sep 2018 10:45:00 GMT
ENV MEDIAWIKI_VERSION=1.30.1
# Sat, 22 Sep 2018 10:45:00 GMT
ENV MEDIAWIKI_SHA512=bda37c7b1be4e1532ee8357843140e666ed550c4f54b53873d163d4b53ed87a80c0ad8a11d189577d32e554488aed517fb9477f2da04d7e7d87014049a2eabbe
# Sat, 22 Sep 2018 10:45:10 GMT
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
	-	`sha256:bc785d6fa2913f54c397d7c2a3008d9ebed30aa1b5d545b63c7c54be5f54c27d`  
		Last Modified: Sat, 15 Sep 2018 16:34:09 GMT  
		Size: 12.6 MB (12576689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6f26574b932c7490afa279c757d67188f715256c20f97b7b94a7eb610902aa2`  
		Last Modified: Sat, 15 Sep 2018 16:34:08 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b5ccd1f07d222bdf4bae0a79933b8aa9fe3ba451d7bf953281aee958a2ec375`  
		Last Modified: Sat, 15 Sep 2018 16:34:12 GMT  
		Size: 14.7 MB (14730147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa202b0f86018bff74d334d9072935153e352f48c2d76828c2908843795311af`  
		Last Modified: Sat, 15 Sep 2018 16:34:07 GMT  
		Size: 2.2 KB (2191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:775709f5bcf5fc845fe0149f4f1fb95efcbf7164b130d8d3e65865af814aba75`  
		Last Modified: Sat, 15 Sep 2018 16:34:08 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b1ea5d0ce477669cee2c991d0211862f5b57aafe4a59b724c8479c4bf04e660`  
		Last Modified: Sat, 15 Sep 2018 19:49:08 GMT  
		Size: 56.5 MB (56494092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:253044f4c252214950aa66999e54d31091a7998b6dafccb151ec68c78ebc6698`  
		Last Modified: Sat, 15 Sep 2018 19:48:50 GMT  
		Size: 1.7 MB (1664678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d7c8be92c91898873420652966d1c26d5750b9ec0f5ad60aa842c56494eb5f8`  
		Last Modified: Sat, 15 Sep 2018 19:48:51 GMT  
		Size: 395.0 KB (395004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c61f150ca58831f53906e18a5fff431b7dce05589cd8b41a4befea8cafc14f4c`  
		Last Modified: Sat, 15 Sep 2018 19:48:50 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa17c0525669f08d5ee993d0041042b288e186a91f548e676a05353b8bbed06b`  
		Last Modified: Sat, 15 Sep 2018 19:48:49 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10214628cf1c19aed9c9f170dea480d6e52432b7ba9a116714d202ae5e1f865d`  
		Last Modified: Sat, 22 Sep 2018 10:46:38 GMT  
		Size: 42.8 MB (42782489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.30` - linux; ppc64le

```console
$ docker pull mediawiki@sha256:234b6f0e38448ae8d5e8261390ab9beb52567ac92fa3c470df243c383ac7b75f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.3 MB (230274922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:464ed396d1b1064a6fde165721df6b47127327c27c23d726deb80d2f3d9ba67e`
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
# Sat, 15 Sep 2018 11:14:19 GMT
ENV PHP_VERSION=7.1.22
# Sat, 15 Sep 2018 11:14:20 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.22.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.22.tar.xz.asc/from/this/mirror
# Sat, 15 Sep 2018 11:14:21 GMT
ENV PHP_SHA256=9194c9b3a592d8376fde837dde711ec01ee26f8607fc2884047ef6f7c089b15d PHP_MD5=
# Sat, 15 Sep 2018 11:14:46 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 15 Sep 2018 11:14:48 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 15 Sep 2018 11:18:02 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 15 Sep 2018 11:18:03 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Sat, 15 Sep 2018 11:18:04 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 15 Sep 2018 11:18:05 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 15 Sep 2018 11:18:06 GMT
WORKDIR /var/www/html
# Sat, 15 Sep 2018 11:18:06 GMT
EXPOSE 80/tcp
# Sat, 15 Sep 2018 11:18:07 GMT
CMD ["apache2-foreground"]
# Sat, 15 Sep 2018 15:03:14 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 15 Sep 2018 15:05:46 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Sat, 15 Sep 2018 15:06:02 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Sat, 15 Sep 2018 15:06:04 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 15 Sep 2018 15:06:06 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 15 Sep 2018 15:06:07 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.30
# Sat, 15 Sep 2018 15:06:07 GMT
ENV MEDIAWIKI_BRANCH=REL1_30
# Sat, 22 Sep 2018 08:18:16 GMT
ENV MEDIAWIKI_VERSION=1.30.1
# Sat, 22 Sep 2018 08:18:19 GMT
ENV MEDIAWIKI_SHA512=bda37c7b1be4e1532ee8357843140e666ed550c4f54b53873d163d4b53ed87a80c0ad8a11d189577d32e554488aed517fb9477f2da04d7e7d87014049a2eabbe
# Sat, 22 Sep 2018 08:18:47 GMT
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
	-	`sha256:1c4d1686ad18b0f0deec55cbfa7d5e6d7d71574fa2d6b26a96a7fb7453bed418`  
		Last Modified: Sat, 15 Sep 2018 13:38:44 GMT  
		Size: 12.6 MB (12575560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7611dbcc3f86011cfe4e50c8199da954dbe2002681b47c8be77df47f399084de`  
		Last Modified: Sat, 15 Sep 2018 13:38:42 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83e539ed2dc29aad23fbf4e0156aefea75782e723365c0f5d13951aa82cb4430`  
		Last Modified: Sat, 15 Sep 2018 13:38:48 GMT  
		Size: 14.4 MB (14373516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5be42125aafbf910ffa6fea479c63bc66fa7fcadcb7255673a189cdd9de4901`  
		Last Modified: Sat, 15 Sep 2018 13:38:42 GMT  
		Size: 2.2 KB (2192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ef6a7032c229b8b7252ede1eededc83a14083bd37dfcf9a2bcfe2a986f4bb70`  
		Last Modified: Sat, 15 Sep 2018 13:38:42 GMT  
		Size: 905.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83e817944c9c16f591ff0ffcef54d9e37b0de8077ffe080f1fc1ea0403d4e574`  
		Last Modified: Sat, 15 Sep 2018 15:21:47 GMT  
		Size: 56.6 MB (56589591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb51e935874ef6c3a39d43807ccc304fca118eca7b0eeca9c1aa60cc150ac987`  
		Last Modified: Sat, 15 Sep 2018 15:21:13 GMT  
		Size: 1.6 MB (1643676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a78bc377606d99a6e11b7d6ef786a7b411b6307d0665eb91beec4966fd45d2`  
		Last Modified: Sat, 15 Sep 2018 15:21:12 GMT  
		Size: 404.8 KB (404797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3328d65142bd6289229bb5f928941dbb6b804061582a330ebc5cdac93169d3e8`  
		Last Modified: Sat, 15 Sep 2018 15:21:12 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6da55fd03448874cb49d6b65e2c4e468f2304b3e4a3086e2440b7cb668d0ee39`  
		Last Modified: Sat, 15 Sep 2018 15:21:12 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a575a6f16460535d5d71264e2c43f496c9130d0823706e8dff66de1c31defaa6`  
		Last Modified: Sat, 22 Sep 2018 08:24:39 GMT  
		Size: 42.8 MB (42782322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mediawiki:1.30.1`

```console
$ docker pull mediawiki@sha256:a2b5aadf40f559bfc5bbd1cc38bfbda337101cf8291a464d25d4596b9a4ad306
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
$ docker pull mediawiki@sha256:792320e30bd1c5ae4f3063ebb11c7950dbf527cca9e940db52fc74fb5b1f9ccc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.4 MB (235429375 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:488b8befac35dc61322a9cf6c5eda06f584a2ca54449afcd4cf8b4382658bfa9`
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
# Mon, 15 Oct 2018 19:38:01 GMT
ENV PHP_VERSION=7.1.23
# Mon, 15 Oct 2018 19:38:01 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.23.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.23.tar.xz.asc/from/this/mirror
# Mon, 15 Oct 2018 19:38:01 GMT
ENV PHP_SHA256=227a3c76133c3dc1cec937989456cbd89ed00e68e7260c651900dbe1f5b798bc PHP_MD5=
# Mon, 15 Oct 2018 19:38:09 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Mon, 15 Oct 2018 19:38:10 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 15 Oct 2018 19:41:01 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Mon, 15 Oct 2018 19:41:02 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Mon, 15 Oct 2018 19:41:02 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 15 Oct 2018 19:41:02 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Mon, 15 Oct 2018 19:41:03 GMT
WORKDIR /var/www/html
# Mon, 15 Oct 2018 19:41:03 GMT
EXPOSE 80/tcp
# Mon, 15 Oct 2018 19:41:03 GMT
CMD ["apache2-foreground"]
# Mon, 15 Oct 2018 21:41:42 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Mon, 15 Oct 2018 21:43:18 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Mon, 15 Oct 2018 21:43:28 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Mon, 15 Oct 2018 21:43:35 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Mon, 15 Oct 2018 21:43:36 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Mon, 15 Oct 2018 21:43:36 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.30
# Mon, 15 Oct 2018 21:43:36 GMT
ENV MEDIAWIKI_BRANCH=REL1_30
# Mon, 15 Oct 2018 21:43:36 GMT
ENV MEDIAWIKI_VERSION=1.30.1
# Mon, 15 Oct 2018 21:43:36 GMT
ENV MEDIAWIKI_SHA512=bda37c7b1be4e1532ee8357843140e666ed550c4f54b53873d163d4b53ed87a80c0ad8a11d189577d32e554488aed517fb9477f2da04d7e7d87014049a2eabbe
# Mon, 15 Oct 2018 21:43:44 GMT
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
	-	`sha256:1675df3bd7f712abaf4304d90039ef34364ced89decb877713ae13aa6367ca3a`  
		Last Modified: Mon, 15 Oct 2018 21:02:45 GMT  
		Size: 12.6 MB (12577019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10fdac1e0f697d684ee5490a09b8350ea65f91d54eb19cb5f88383ac92c11fe8`  
		Last Modified: Mon, 15 Oct 2018 21:02:44 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10c9c4da81d3073f5b7db921dc604462160040a9ec9f3fb08ec070ee624fac8a`  
		Last Modified: Mon, 15 Oct 2018 21:02:48 GMT  
		Size: 14.6 MB (14605110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f43fdf88cb0e73c52cbe7184817590cd3debc57aabdad158da444841742ff76c`  
		Last Modified: Mon, 15 Oct 2018 21:02:44 GMT  
		Size: 2.2 KB (2193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1ab2a744d311c5a691ccd74820a5addc34776c2f67c236d8e30059f7bdb37fb`  
		Last Modified: Mon, 15 Oct 2018 21:02:44 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d431b793ca9ae1483afe32db440dfbf123b5c5ae3385712dfa6043e24280dcf`  
		Last Modified: Mon, 15 Oct 2018 21:45:31 GMT  
		Size: 56.3 MB (56344069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b73a9f5c951fb1965c918c7c02a7912c4f598cf0b1058c9f058d7a7a692dad3`  
		Last Modified: Mon, 15 Oct 2018 21:45:18 GMT  
		Size: 1.7 MB (1663089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:175e0972f46d08a381dc5ad7df557d36c087e6785659949394b2f66ca8f4c9bb`  
		Last Modified: Mon, 15 Oct 2018 21:45:17 GMT  
		Size: 408.6 KB (408627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d4029e84f9a674a594486f99ae0bfb4f58fcbb5ffca35cc9938a4cff355c27`  
		Last Modified: Mon, 15 Oct 2018 21:45:16 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:798c8a31461865349822e64fa17f7c6ca5a824bc31078e5a283556aade29727c`  
		Last Modified: Mon, 15 Oct 2018 21:45:18 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed06a1bfc68f777f52b379f54a199d392bb358f60541dff9147796b1f08071c4`  
		Last Modified: Mon, 15 Oct 2018 21:45:34 GMT  
		Size: 42.8 MB (42782255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.30.1` - linux; arm variant v5

```console
$ docker pull mediawiki@sha256:a4786cfbd67ac4938f7807f9c6aa61ea78e3e799b558170e4fc377528eedc52b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.5 MB (220527754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33706513ec7a04cb8fa67688ed65c5442efb8f320019587abd89e73f3141eae0`
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
# Sat, 15 Sep 2018 09:29:20 GMT
ENV PHP_VERSION=7.1.22
# Sat, 15 Sep 2018 09:29:20 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.22.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.22.tar.xz.asc/from/this/mirror
# Sat, 15 Sep 2018 09:29:21 GMT
ENV PHP_SHA256=9194c9b3a592d8376fde837dde711ec01ee26f8607fc2884047ef6f7c089b15d PHP_MD5=
# Sat, 15 Sep 2018 09:29:37 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 15 Sep 2018 09:29:37 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 15 Sep 2018 09:32:29 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 15 Sep 2018 09:32:30 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Sat, 15 Sep 2018 09:32:31 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 15 Sep 2018 09:32:31 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 15 Sep 2018 09:32:32 GMT
WORKDIR /var/www/html
# Sat, 15 Sep 2018 09:32:32 GMT
EXPOSE 80/tcp
# Sat, 15 Sep 2018 09:32:32 GMT
CMD ["apache2-foreground"]
# Sat, 15 Sep 2018 12:51:44 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 15 Sep 2018 12:54:46 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Sat, 15 Sep 2018 12:55:02 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Sat, 15 Sep 2018 12:55:03 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 15 Sep 2018 12:55:04 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 15 Sep 2018 12:55:05 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.30
# Sat, 15 Sep 2018 12:55:05 GMT
ENV MEDIAWIKI_BRANCH=REL1_30
# Sat, 22 Sep 2018 08:49:14 GMT
ENV MEDIAWIKI_VERSION=1.30.1
# Sat, 22 Sep 2018 08:49:14 GMT
ENV MEDIAWIKI_SHA512=bda37c7b1be4e1532ee8357843140e666ed550c4f54b53873d163d4b53ed87a80c0ad8a11d189577d32e554488aed517fb9477f2da04d7e7d87014049a2eabbe
# Sat, 22 Sep 2018 08:49:39 GMT
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
	-	`sha256:5fcae2b315b22b5b47533c93f6aa5207b4bc55fc8ec83b7cba2149750df49e98`  
		Last Modified: Sat, 15 Sep 2018 11:26:46 GMT  
		Size: 12.6 MB (12575252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00e81a5b5d35d23a243ea9aa2d2198161a3faf46193271fe00ee25e3230f33a7`  
		Last Modified: Sat, 15 Sep 2018 11:26:44 GMT  
		Size: 502.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b2ae8927d16aff988d324290ce8576c5d8b533e99c8b64d0e2985c40a438633`  
		Last Modified: Sat, 15 Sep 2018 11:26:49 GMT  
		Size: 13.9 MB (13929039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:651e26e1efed4267c837291658bc8687ed5da3d5b0c8a603334a29ba58bda961`  
		Last Modified: Sat, 15 Sep 2018 11:26:44 GMT  
		Size: 2.2 KB (2194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e75ce9de61e349af15ae933e0cfcf872759a60f926cac004155f1e5714aeeb5`  
		Last Modified: Sat, 15 Sep 2018 11:26:44 GMT  
		Size: 901.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4312464f96f8fd19b5371398a10262930c22a700cb367bfa722fc0a5b1a6b20`  
		Last Modified: Sat, 15 Sep 2018 13:01:52 GMT  
		Size: 54.0 MB (53981834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7886a988510fe81c9d0bc9ec44e8f16d0905793929394b3375056e16c136ee4e`  
		Last Modified: Sat, 15 Sep 2018 13:01:35 GMT  
		Size: 1.6 MB (1593726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04085b1b378785d88a53e640cb58ccc3f25e07c0b1315daf1ef31014316be23a`  
		Last Modified: Sat, 15 Sep 2018 13:01:34 GMT  
		Size: 397.7 KB (397722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73a8c589b4e1aaba6d46caa2f94b325114a0d2b6b9548930d9f1dd4e5b15825a`  
		Last Modified: Sat, 15 Sep 2018 13:01:34 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f32982f59769af66b32fd952958091b8b6db9bfc9bf19cbd108f93b3f1d0ca4`  
		Last Modified: Sat, 15 Sep 2018 13:01:34 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b8763cc184b48fc5b9df8158bfd696318b781b63551ec755c15480bda9e0817`  
		Last Modified: Sat, 22 Sep 2018 08:52:27 GMT  
		Size: 42.8 MB (42782208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.30.1` - linux; arm variant v7

```console
$ docker pull mediawiki@sha256:3034587f4713ca26e420f064be6f860607c2b96681731a5fcf3d66fe9d85cf84
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.0 MB (211016114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30723c050058a5b1c0cfac47ebc407e6145c913a7a7469ce1149ad72753fedac`
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
# Sat, 15 Sep 2018 12:34:17 GMT
ENV PHP_VERSION=7.1.22
# Sat, 15 Sep 2018 12:34:17 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.22.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.22.tar.xz.asc/from/this/mirror
# Sat, 15 Sep 2018 12:34:17 GMT
ENV PHP_SHA256=9194c9b3a592d8376fde837dde711ec01ee26f8607fc2884047ef6f7c089b15d PHP_MD5=
# Sat, 15 Sep 2018 12:34:31 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 15 Sep 2018 12:34:31 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 15 Sep 2018 12:37:03 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 15 Sep 2018 12:37:04 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Sat, 15 Sep 2018 12:37:04 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 15 Sep 2018 12:37:05 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 15 Sep 2018 12:37:05 GMT
WORKDIR /var/www/html
# Sat, 15 Sep 2018 12:37:06 GMT
EXPOSE 80/tcp
# Sat, 15 Sep 2018 12:37:06 GMT
CMD ["apache2-foreground"]
# Sat, 22 Sep 2018 12:02:46 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 22 Sep 2018 12:05:29 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Sat, 22 Sep 2018 12:05:44 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Sat, 22 Sep 2018 12:05:45 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 22 Sep 2018 12:05:46 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 22 Sep 2018 12:05:46 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.30
# Sat, 22 Sep 2018 12:05:47 GMT
ENV MEDIAWIKI_BRANCH=REL1_30
# Sat, 22 Sep 2018 12:05:47 GMT
ENV MEDIAWIKI_VERSION=1.30.1
# Sat, 22 Sep 2018 12:05:48 GMT
ENV MEDIAWIKI_SHA512=bda37c7b1be4e1532ee8357843140e666ed550c4f54b53873d163d4b53ed87a80c0ad8a11d189577d32e554488aed517fb9477f2da04d7e7d87014049a2eabbe
# Sat, 22 Sep 2018 12:06:12 GMT
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
	-	`sha256:ccc1b65c35a2df0a980ccf42e919ea055824a7b4bded4e9caa148d0a1eed22e5`  
		Last Modified: Sat, 15 Sep 2018 14:24:53 GMT  
		Size: 12.6 MB (12575186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7502c8cc84520526612da9eee375dd9efda348f0230c5df0045133c4e14981e0`  
		Last Modified: Sat, 15 Sep 2018 14:24:50 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d7967689ec520174eaa2cc4d311d4fb3a62ec7fd5f79095a6e73432df3417b7`  
		Last Modified: Sat, 15 Sep 2018 14:24:55 GMT  
		Size: 13.1 MB (13108505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9811e255c20db92569c5815035e2678396428fd79ab8dd6318e1b07a87d75438`  
		Last Modified: Sat, 15 Sep 2018 14:24:50 GMT  
		Size: 2.2 KB (2191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c93efd275d3b027792cfa89619a7043de372e25ef71fe36a00612466b93ed140`  
		Last Modified: Sat, 15 Sep 2018 14:24:50 GMT  
		Size: 903.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:961bbeb7199c025716d3ad9c658de64662007c8d33311c68c757d703fa6faab7`  
		Last Modified: Sat, 22 Sep 2018 12:11:55 GMT  
		Size: 51.6 MB (51605422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ed62b29a7c8597cd35c5e2079df749d969966781536ffbd16da2cf68f8f002e`  
		Last Modified: Sat, 22 Sep 2018 12:11:39 GMT  
		Size: 1.5 MB (1549628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d5df1ad520b786b19931155eab44a5d51a14f5aa013cb6414b36c3595d8ead6`  
		Last Modified: Sat, 22 Sep 2018 12:11:38 GMT  
		Size: 392.8 KB (392785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4caeaf577ec159670c528cf4e3a4c05ef47cbef8dff2b296610bcc55fef257d`  
		Last Modified: Sat, 22 Sep 2018 12:11:38 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c411d708ea6f96861ac5412386d2ab9c58f31cd8aeff9d93d781420f393cc75`  
		Last Modified: Sat, 22 Sep 2018 12:11:38 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f40887a0caf2cf8bae53450be71f8799b27df9f63336882d5642c8e15d98d46`  
		Last Modified: Sat, 22 Sep 2018 12:12:04 GMT  
		Size: 42.8 MB (42782369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.30.1` - linux; arm64 variant v8

```console
$ docker pull mediawiki@sha256:1596a00079cb2a040f36ecd51e8e7d460b4ffc092723c09a457ac411c10f4f4b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.9 MB (219854032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8325460dfb05587f23829f3dc9d6bf5a1280bb24720138d51eb7bd87d16cca9`
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
# Sat, 15 Sep 2018 14:31:46 GMT
ENV PHP_VERSION=7.1.22
# Sat, 15 Sep 2018 14:31:47 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.22.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.22.tar.xz.asc/from/this/mirror
# Sat, 15 Sep 2018 14:31:47 GMT
ENV PHP_SHA256=9194c9b3a592d8376fde837dde711ec01ee26f8607fc2884047ef6f7c089b15d PHP_MD5=
# Sat, 15 Sep 2018 14:32:25 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 15 Sep 2018 14:32:26 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 15 Sep 2018 14:38:27 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 15 Sep 2018 14:38:29 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Sat, 15 Sep 2018 14:38:29 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 15 Sep 2018 14:38:31 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 15 Sep 2018 14:38:32 GMT
WORKDIR /var/www/html
# Sat, 15 Sep 2018 14:38:32 GMT
EXPOSE 80/tcp
# Sat, 15 Sep 2018 14:38:33 GMT
CMD ["apache2-foreground"]
# Sat, 15 Sep 2018 20:11:12 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 15 Sep 2018 20:14:55 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Sat, 15 Sep 2018 20:15:23 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Sat, 15 Sep 2018 20:15:26 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 15 Sep 2018 20:15:27 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 15 Sep 2018 20:15:36 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.30
# Sat, 15 Sep 2018 20:15:36 GMT
ENV MEDIAWIKI_BRANCH=REL1_30
# Sat, 22 Sep 2018 08:40:27 GMT
ENV MEDIAWIKI_VERSION=1.30.1
# Sat, 22 Sep 2018 08:40:28 GMT
ENV MEDIAWIKI_SHA512=bda37c7b1be4e1532ee8357843140e666ed550c4f54b53873d163d4b53ed87a80c0ad8a11d189577d32e554488aed517fb9477f2da04d7e7d87014049a2eabbe
# Sat, 22 Sep 2018 08:40:43 GMT
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
	-	`sha256:5276b626cd3c3a8d7fa873132414f97886808e1b4e31b3b85bee5e8120ff1b38`  
		Last Modified: Sat, 15 Sep 2018 18:32:17 GMT  
		Size: 12.6 MB (12575519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a5e4d79fab4f67e4ba5ce4da4410a1eccbcbb8ba54aa4fdb7828c4090e7a8c2`  
		Last Modified: Sat, 15 Sep 2018 18:32:15 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ccbc6a9fd5c48c031fe1cc23916ea641e908eb517efc9cb329c49a73022c5b1`  
		Last Modified: Sat, 15 Sep 2018 18:32:21 GMT  
		Size: 13.7 MB (13727475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6080afc0e94d3475f52f58249e2c0d505121cebc44e8c6897711ed0a5d6a3a75`  
		Last Modified: Sat, 15 Sep 2018 18:32:15 GMT  
		Size: 2.2 KB (2191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33104fdedd144c13843e9146f403640fcfa0ac99b0bf74a25c3bfbd63a000c3f`  
		Last Modified: Sat, 15 Sep 2018 18:32:15 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c008ef0a71e7898bf0b9687af9de777eb5bdee015bf6f5984c51c963b50c425`  
		Last Modified: Sat, 15 Sep 2018 20:23:54 GMT  
		Size: 54.1 MB (54130545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc30cf9a3c98f098a53e961f55556802a6ebbf9f5a28afebf735bfcde5e5dd3e`  
		Last Modified: Sat, 15 Sep 2018 20:23:33 GMT  
		Size: 1.6 MB (1594554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7347bb69e8a97845dd76f6c62eb52576e207757fb02f64f3548e45a247187dcb`  
		Last Modified: Sat, 15 Sep 2018 20:23:30 GMT  
		Size: 400.4 KB (400446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b8eb661fbc6610b03558bf80acc664f87dc1563abd91a02f647852264ac7174`  
		Last Modified: Sat, 15 Sep 2018 20:23:30 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff0f5490755bc9029772c65e1fb98ff48939d4d75349ecf1842932562882a587`  
		Last Modified: Sat, 15 Sep 2018 20:23:30 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b995feea996c0841094c9818584632f21c499c618ca0e132e7100d6f5a845523`  
		Last Modified: Sat, 22 Sep 2018 08:43:28 GMT  
		Size: 42.8 MB (42780992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.30.1` - linux; 386

```console
$ docker pull mediawiki@sha256:6814a89447596f2f98f58260a77aed540e527385290a34acdce149d53de9f059
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.8 MB (240823704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1db194bdf4958a1104c3b64cd797a496e16e8f22ecfd8a60f4410befc9b75584`
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
# Sat, 15 Sep 2018 13:01:21 GMT
ENV PHP_VERSION=7.1.22
# Sat, 15 Sep 2018 13:01:21 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.22.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.22.tar.xz.asc/from/this/mirror
# Sat, 15 Sep 2018 13:01:21 GMT
ENV PHP_SHA256=9194c9b3a592d8376fde837dde711ec01ee26f8607fc2884047ef6f7c089b15d PHP_MD5=
# Sat, 15 Sep 2018 13:01:30 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 15 Sep 2018 13:01:31 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 15 Sep 2018 13:04:36 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 15 Sep 2018 13:04:36 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Sat, 15 Sep 2018 13:04:36 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 15 Sep 2018 13:04:37 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 15 Sep 2018 13:04:37 GMT
WORKDIR /var/www/html
# Sat, 15 Sep 2018 13:04:37 GMT
EXPOSE 80/tcp
# Sat, 15 Sep 2018 13:04:37 GMT
CMD ["apache2-foreground"]
# Sat, 15 Sep 2018 19:43:24 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 15 Sep 2018 19:44:56 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Sat, 15 Sep 2018 19:45:06 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Sat, 15 Sep 2018 19:45:07 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 15 Sep 2018 19:45:07 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 15 Sep 2018 19:45:08 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.30
# Sat, 15 Sep 2018 19:45:08 GMT
ENV MEDIAWIKI_BRANCH=REL1_30
# Sat, 22 Sep 2018 10:45:00 GMT
ENV MEDIAWIKI_VERSION=1.30.1
# Sat, 22 Sep 2018 10:45:00 GMT
ENV MEDIAWIKI_SHA512=bda37c7b1be4e1532ee8357843140e666ed550c4f54b53873d163d4b53ed87a80c0ad8a11d189577d32e554488aed517fb9477f2da04d7e7d87014049a2eabbe
# Sat, 22 Sep 2018 10:45:10 GMT
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
	-	`sha256:bc785d6fa2913f54c397d7c2a3008d9ebed30aa1b5d545b63c7c54be5f54c27d`  
		Last Modified: Sat, 15 Sep 2018 16:34:09 GMT  
		Size: 12.6 MB (12576689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6f26574b932c7490afa279c757d67188f715256c20f97b7b94a7eb610902aa2`  
		Last Modified: Sat, 15 Sep 2018 16:34:08 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b5ccd1f07d222bdf4bae0a79933b8aa9fe3ba451d7bf953281aee958a2ec375`  
		Last Modified: Sat, 15 Sep 2018 16:34:12 GMT  
		Size: 14.7 MB (14730147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa202b0f86018bff74d334d9072935153e352f48c2d76828c2908843795311af`  
		Last Modified: Sat, 15 Sep 2018 16:34:07 GMT  
		Size: 2.2 KB (2191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:775709f5bcf5fc845fe0149f4f1fb95efcbf7164b130d8d3e65865af814aba75`  
		Last Modified: Sat, 15 Sep 2018 16:34:08 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b1ea5d0ce477669cee2c991d0211862f5b57aafe4a59b724c8479c4bf04e660`  
		Last Modified: Sat, 15 Sep 2018 19:49:08 GMT  
		Size: 56.5 MB (56494092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:253044f4c252214950aa66999e54d31091a7998b6dafccb151ec68c78ebc6698`  
		Last Modified: Sat, 15 Sep 2018 19:48:50 GMT  
		Size: 1.7 MB (1664678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d7c8be92c91898873420652966d1c26d5750b9ec0f5ad60aa842c56494eb5f8`  
		Last Modified: Sat, 15 Sep 2018 19:48:51 GMT  
		Size: 395.0 KB (395004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c61f150ca58831f53906e18a5fff431b7dce05589cd8b41a4befea8cafc14f4c`  
		Last Modified: Sat, 15 Sep 2018 19:48:50 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa17c0525669f08d5ee993d0041042b288e186a91f548e676a05353b8bbed06b`  
		Last Modified: Sat, 15 Sep 2018 19:48:49 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10214628cf1c19aed9c9f170dea480d6e52432b7ba9a116714d202ae5e1f865d`  
		Last Modified: Sat, 22 Sep 2018 10:46:38 GMT  
		Size: 42.8 MB (42782489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.30.1` - linux; ppc64le

```console
$ docker pull mediawiki@sha256:234b6f0e38448ae8d5e8261390ab9beb52567ac92fa3c470df243c383ac7b75f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.3 MB (230274922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:464ed396d1b1064a6fde165721df6b47127327c27c23d726deb80d2f3d9ba67e`
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
# Sat, 15 Sep 2018 11:14:19 GMT
ENV PHP_VERSION=7.1.22
# Sat, 15 Sep 2018 11:14:20 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.22.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.22.tar.xz.asc/from/this/mirror
# Sat, 15 Sep 2018 11:14:21 GMT
ENV PHP_SHA256=9194c9b3a592d8376fde837dde711ec01ee26f8607fc2884047ef6f7c089b15d PHP_MD5=
# Sat, 15 Sep 2018 11:14:46 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 15 Sep 2018 11:14:48 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 15 Sep 2018 11:18:02 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 15 Sep 2018 11:18:03 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Sat, 15 Sep 2018 11:18:04 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 15 Sep 2018 11:18:05 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 15 Sep 2018 11:18:06 GMT
WORKDIR /var/www/html
# Sat, 15 Sep 2018 11:18:06 GMT
EXPOSE 80/tcp
# Sat, 15 Sep 2018 11:18:07 GMT
CMD ["apache2-foreground"]
# Sat, 15 Sep 2018 15:03:14 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 15 Sep 2018 15:05:46 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Sat, 15 Sep 2018 15:06:02 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Sat, 15 Sep 2018 15:06:04 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 15 Sep 2018 15:06:06 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 15 Sep 2018 15:06:07 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.30
# Sat, 15 Sep 2018 15:06:07 GMT
ENV MEDIAWIKI_BRANCH=REL1_30
# Sat, 22 Sep 2018 08:18:16 GMT
ENV MEDIAWIKI_VERSION=1.30.1
# Sat, 22 Sep 2018 08:18:19 GMT
ENV MEDIAWIKI_SHA512=bda37c7b1be4e1532ee8357843140e666ed550c4f54b53873d163d4b53ed87a80c0ad8a11d189577d32e554488aed517fb9477f2da04d7e7d87014049a2eabbe
# Sat, 22 Sep 2018 08:18:47 GMT
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
	-	`sha256:1c4d1686ad18b0f0deec55cbfa7d5e6d7d71574fa2d6b26a96a7fb7453bed418`  
		Last Modified: Sat, 15 Sep 2018 13:38:44 GMT  
		Size: 12.6 MB (12575560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7611dbcc3f86011cfe4e50c8199da954dbe2002681b47c8be77df47f399084de`  
		Last Modified: Sat, 15 Sep 2018 13:38:42 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83e539ed2dc29aad23fbf4e0156aefea75782e723365c0f5d13951aa82cb4430`  
		Last Modified: Sat, 15 Sep 2018 13:38:48 GMT  
		Size: 14.4 MB (14373516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5be42125aafbf910ffa6fea479c63bc66fa7fcadcb7255673a189cdd9de4901`  
		Last Modified: Sat, 15 Sep 2018 13:38:42 GMT  
		Size: 2.2 KB (2192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ef6a7032c229b8b7252ede1eededc83a14083bd37dfcf9a2bcfe2a986f4bb70`  
		Last Modified: Sat, 15 Sep 2018 13:38:42 GMT  
		Size: 905.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83e817944c9c16f591ff0ffcef54d9e37b0de8077ffe080f1fc1ea0403d4e574`  
		Last Modified: Sat, 15 Sep 2018 15:21:47 GMT  
		Size: 56.6 MB (56589591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb51e935874ef6c3a39d43807ccc304fca118eca7b0eeca9c1aa60cc150ac987`  
		Last Modified: Sat, 15 Sep 2018 15:21:13 GMT  
		Size: 1.6 MB (1643676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a78bc377606d99a6e11b7d6ef786a7b411b6307d0665eb91beec4966fd45d2`  
		Last Modified: Sat, 15 Sep 2018 15:21:12 GMT  
		Size: 404.8 KB (404797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3328d65142bd6289229bb5f928941dbb6b804061582a330ebc5cdac93169d3e8`  
		Last Modified: Sat, 15 Sep 2018 15:21:12 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6da55fd03448874cb49d6b65e2c4e468f2304b3e4a3086e2440b7cb668d0ee39`  
		Last Modified: Sat, 15 Sep 2018 15:21:12 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a575a6f16460535d5d71264e2c43f496c9130d0823706e8dff66de1c31defaa6`  
		Last Modified: Sat, 22 Sep 2018 08:24:39 GMT  
		Size: 42.8 MB (42782322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mediawiki:1.31`

```console
$ docker pull mediawiki@sha256:9d2ef799065f910ea510616a3c9781329031ed59971d7f6579067d3f7a968945
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
$ docker pull mediawiki@sha256:e97cd58d709fcee49c7b3b974457358cac04fb463be7fba15c1775cf19c53e35
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.4 MB (231396983 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff776a576d8361e2b8ed8880616dc15060a929d073222d3ddac6f1f092a9071c`
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
# Mon, 15 Oct 2018 18:28:47 GMT
ENV PHP_VERSION=7.2.11
# Mon, 15 Oct 2018 18:28:47 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.11.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.11.tar.xz.asc/from/this/mirror
# Mon, 15 Oct 2018 18:28:48 GMT
ENV PHP_SHA256=da1a705c0bc46410e330fc6baa967666c8cd2985378fb9707c01a8e33b01d985 PHP_MD5=
# Mon, 15 Oct 2018 18:28:56 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Mon, 15 Oct 2018 18:28:57 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 15 Oct 2018 18:32:49 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Mon, 15 Oct 2018 18:32:50 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Mon, 15 Oct 2018 18:32:50 GMT
RUN docker-php-ext-enable sodium
# Mon, 15 Oct 2018 18:32:51 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 15 Oct 2018 18:32:51 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Mon, 15 Oct 2018 18:32:51 GMT
WORKDIR /var/www/html
# Mon, 15 Oct 2018 18:32:51 GMT
EXPOSE 80/tcp
# Mon, 15 Oct 2018 18:32:52 GMT
CMD ["apache2-foreground"]
# Mon, 15 Oct 2018 21:38:48 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python3 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Mon, 15 Oct 2018 21:40:30 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Mon, 15 Oct 2018 21:40:46 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu 	&& docker-php-ext-enable apcu
# Mon, 15 Oct 2018 21:40:47 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Mon, 15 Oct 2018 21:40:54 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Mon, 15 Oct 2018 21:40:54 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.31
# Mon, 15 Oct 2018 21:40:54 GMT
ENV MEDIAWIKI_BRANCH=REL1_31
# Mon, 15 Oct 2018 21:40:55 GMT
ENV MEDIAWIKI_VERSION=1.31.1
# Mon, 15 Oct 2018 21:40:55 GMT
ENV MEDIAWIKI_SHA512=ee49649cc37d0a7d45a7c6d90c822c2a595df290be2b5bf085affbec3318768700a458a6e5b5b7e437651400b9641424429d6d304f870c22ec63fae86ffc5152
# Mon, 15 Oct 2018 21:41:01 GMT
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
	-	`sha256:2aa6a4938abfc833c9d40f5215a4c8d97d535047fd5c2527d8b97b76339299e9`  
		Last Modified: Mon, 15 Oct 2018 20:45:55 GMT  
		Size: 12.5 MB (12481341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f35a9f88b02f5920db1e7a6486017cfc3604f396de29b8ce0c9d2cbf5b4d2992`  
		Last Modified: Mon, 15 Oct 2018 20:45:48 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d8d0a45e8e97a6571489b501b863a58e2d5d5158413d10511a662948f044b90`  
		Last Modified: Mon, 15 Oct 2018 20:45:52 GMT  
		Size: 15.6 MB (15617699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cb174294b9de02512143f11b542a114b0148f1f9f086265c9cd82bdff2a3216`  
		Last Modified: Mon, 15 Oct 2018 20:45:48 GMT  
		Size: 2.2 KB (2194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1cdc5d5dd4951828fb1ee5d3ce0ed0fef39d09de60060adb8f4aa7b75af4132`  
		Last Modified: Mon, 15 Oct 2018 20:45:48 GMT  
		Size: 257.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4ed8fccbb330622882e8181a06c0bd413c71c63f949a8011566e88817115718`  
		Last Modified: Mon, 15 Oct 2018 20:45:48 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30825a2dff635d9c12f75c445c8deb30b11007bf7c913595e8af757bccf60435`  
		Last Modified: Mon, 15 Oct 2018 21:44:40 GMT  
		Size: 58.3 MB (58336877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5df02abb9b28f263c8c9d0da98a0f5f2c7608b2a8ea9288fe45803804279978a`  
		Last Modified: Mon, 15 Oct 2018 21:44:00 GMT  
		Size: 1.8 MB (1757315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6a4e269ff4fc5b90f3b587d4e187709ed4db45cd0beecc8af7a774312c06dda`  
		Last Modified: Mon, 15 Oct 2018 21:43:59 GMT  
		Size: 400.9 KB (400919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbed08b85a9195f9a1bd43f2b9859caf234bd99ec55a850986e9dcffeeb3d4ad`  
		Last Modified: Mon, 15 Oct 2018 21:43:59 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b59c2f08e79bb75acdd76b149e0d2ae088c5caf6a35debc5637b7a01f1856674`  
		Last Modified: Mon, 15 Oct 2018 21:43:59 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b4b5b02f7755f529095257f30ec8421829bc16d5e7044867f2a8b796beecf52`  
		Last Modified: Mon, 15 Oct 2018 21:44:17 GMT  
		Size: 35.8 MB (35753369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.31` - linux; arm variant v5

```console
$ docker pull mediawiki@sha256:b4d7188f6fd3084f66270391104d3f9e5af220d15c0b8413c84f3c2bf26c803b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.3 MB (216304480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7cc6837020a11fddb7c8d57cf580751c52377a436f766d9579927a4a7f079565`
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
# Sat, 15 Sep 2018 12:46:50 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python3 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 15 Sep 2018 12:50:06 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Sat, 15 Sep 2018 12:50:22 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu 	&& docker-php-ext-enable apcu
# Sat, 15 Sep 2018 12:50:24 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 15 Sep 2018 12:50:25 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 15 Sep 2018 12:50:26 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.31
# Sat, 15 Sep 2018 12:50:26 GMT
ENV MEDIAWIKI_BRANCH=REL1_31
# Sat, 22 Sep 2018 08:48:35 GMT
ENV MEDIAWIKI_VERSION=1.31.1
# Sat, 22 Sep 2018 08:48:35 GMT
ENV MEDIAWIKI_SHA512=ee49649cc37d0a7d45a7c6d90c822c2a595df290be2b5bf085affbec3318768700a458a6e5b5b7e437651400b9641424429d6d304f870c22ec63fae86ffc5152
# Sat, 22 Sep 2018 08:48:59 GMT
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
	-	`sha256:f3f61b92a4bd0124008bc1143f2e7ec1e5b7256de8a79fe2a4854ecdbaf35021`  
		Last Modified: Sat, 15 Sep 2018 13:00:45 GMT  
		Size: 55.9 MB (55901328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbd097ebfd5199ff45c602d5d441e00a30a6a8e3431403044a3e341a3936696f`  
		Last Modified: Sat, 15 Sep 2018 13:00:26 GMT  
		Size: 1.7 MB (1687891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc6dbcddbb68cca71b86f81b33340df9b39b93bffe7cb5a4d7a65d01484662d4`  
		Last Modified: Sat, 15 Sep 2018 13:00:25 GMT  
		Size: 393.0 KB (392953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06e01d88b59ba4d33efe215d6b81bfb7548419668d0d442e0f411a485613d3fb`  
		Last Modified: Sat, 15 Sep 2018 13:00:25 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3119ce2cba753cd5d74cef8ed9bbfbb0a6322cbd65d675b59d6cabe2b4653b12`  
		Last Modified: Sat, 15 Sep 2018 13:00:25 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fbff13b56420bb44ae707afb047486ce88ed4037e49eff89f27471bbcdfc219`  
		Last Modified: Sat, 22 Sep 2018 08:51:06 GMT  
		Size: 35.8 MB (35752963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.31` - linux; arm variant v7

```console
$ docker pull mediawiki@sha256:0ac6ef7e2166d3e9e7ed13d6113f6711302686dc7062ae48fc15095d7d4e8ea1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.7 MB (206708769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:902ebc2f8a3de0a552c0a80622fee36db6fdebea0e93ace91ad2c491770adbc0`
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
# Sat, 22 Sep 2018 11:58:31 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python3 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 22 Sep 2018 12:01:20 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Sat, 22 Sep 2018 12:01:35 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu 	&& docker-php-ext-enable apcu
# Sat, 22 Sep 2018 12:01:37 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 22 Sep 2018 12:01:38 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 22 Sep 2018 12:01:38 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.31
# Sat, 22 Sep 2018 12:01:38 GMT
ENV MEDIAWIKI_BRANCH=REL1_31
# Sat, 22 Sep 2018 12:01:39 GMT
ENV MEDIAWIKI_VERSION=1.31.1
# Sat, 22 Sep 2018 12:01:39 GMT
ENV MEDIAWIKI_SHA512=ee49649cc37d0a7d45a7c6d90c822c2a595df290be2b5bf085affbec3318768700a458a6e5b5b7e437651400b9641424429d6d304f870c22ec63fae86ffc5152
# Sat, 22 Sep 2018 12:02:01 GMT
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
	-	`sha256:06e91820fe8198e94068d9a2f22a7ab406cfec1b0c71fe5a99f48f524c6cecaa`  
		Last Modified: Sat, 22 Sep 2018 12:10:53 GMT  
		Size: 53.5 MB (53486626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b5412c3e21ef5d291bc3aa7a7e09051518a512314f46ff04800e2a1c00357f8`  
		Last Modified: Sat, 22 Sep 2018 12:10:37 GMT  
		Size: 1.6 MB (1636843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65ed2a01d64333eadc9ea0ddc79a5e3d9334034b73389593f77626b6f33d8b0b`  
		Last Modified: Sat, 22 Sep 2018 12:10:36 GMT  
		Size: 387.4 KB (387379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fccd67bc1ba52a3c25390d6b4f549b7947a8aebb6f8a1e93f792748cfc06274`  
		Last Modified: Sat, 22 Sep 2018 12:10:36 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:143af59313239881bce14a6d3f7f2a8dd1938e2c803ec702d9902ce7938e275d`  
		Last Modified: Sat, 22 Sep 2018 12:10:36 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48280823691b469d37e42f819929514928538f09f7bd4be49e5d4788fb787b2a`  
		Last Modified: Sat, 22 Sep 2018 12:10:53 GMT  
		Size: 35.8 MB (35753003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.31` - linux; arm64 variant v8

```console
$ docker pull mediawiki@sha256:edb57a7ba15c69e3f2a5dc9f9ffcd7ec43c29decf67ca48e76e214f91b480d62
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.2 MB (215207125 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2cfa8be08f9ad5a45198cfa3996bb8c85d5dccd537bb7cdb5b17963aa8e41cf`
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
# Sat, 15 Sep 2018 20:05:04 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python3 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 15 Sep 2018 20:08:59 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Sat, 15 Sep 2018 20:09:20 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu 	&& docker-php-ext-enable apcu
# Sat, 15 Sep 2018 20:09:22 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 15 Sep 2018 20:09:23 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 15 Sep 2018 20:09:24 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.31
# Sat, 15 Sep 2018 20:09:25 GMT
ENV MEDIAWIKI_BRANCH=REL1_31
# Sat, 22 Sep 2018 08:39:55 GMT
ENV MEDIAWIKI_VERSION=1.31.1
# Sat, 22 Sep 2018 08:39:56 GMT
ENV MEDIAWIKI_SHA512=ee49649cc37d0a7d45a7c6d90c822c2a595df290be2b5bf085affbec3318768700a458a6e5b5b7e437651400b9641424429d6d304f870c22ec63fae86ffc5152
# Sat, 22 Sep 2018 08:40:10 GMT
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
	-	`sha256:c820c66538cc01ebcd2246b711141336f05ca1734466b94666c00b9eef28b31a`  
		Last Modified: Sat, 15 Sep 2018 20:22:16 GMT  
		Size: 55.7 MB (55657631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73e377710b4562042b45ac706d3df08eedd3759e639aaf1477aaaf09001e0e66`  
		Last Modified: Sat, 15 Sep 2018 20:21:51 GMT  
		Size: 1.7 MB (1686533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6f0dac512e609a1ce495d7e094784552fcc245ab57a95c3fd9d9dc67f30928d`  
		Last Modified: Sat, 15 Sep 2018 20:21:50 GMT  
		Size: 393.4 KB (393448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a8e23680c792067b188c46f281d519dd5646f6af23919ec671b70b81b3eb405`  
		Last Modified: Sat, 15 Sep 2018 20:21:50 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:991e32e40c34259933bdfd539c8f08a00ca6c627d731bee8c899d251abc7333e`  
		Last Modified: Sat, 15 Sep 2018 20:21:50 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6e70985cdeced99a8ca02410cff41c19d3a00d23b7ca8afd7678371901e19ff`  
		Last Modified: Sat, 22 Sep 2018 08:42:07 GMT  
		Size: 35.8 MB (35752019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.31` - linux; 386

```console
$ docker pull mediawiki@sha256:878fb654296befdd32df9cc2c43cf99e5ee2903a2def847e853963bc9c38e760
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.8 MB (236769719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f075b0bbdae03ea1bbadd81494fcae8e476886ebdcbd3087d40c47fed0d52e3c`
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
# Sat, 15 Sep 2018 19:40:43 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python3 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 15 Sep 2018 19:42:19 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Sat, 15 Sep 2018 19:42:29 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu 	&& docker-php-ext-enable apcu
# Sat, 15 Sep 2018 19:42:29 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 15 Sep 2018 19:42:30 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 15 Sep 2018 19:42:30 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.31
# Sat, 15 Sep 2018 19:42:30 GMT
ENV MEDIAWIKI_BRANCH=REL1_31
# Sat, 22 Sep 2018 10:44:43 GMT
ENV MEDIAWIKI_VERSION=1.31.1
# Sat, 22 Sep 2018 10:44:43 GMT
ENV MEDIAWIKI_SHA512=ee49649cc37d0a7d45a7c6d90c822c2a595df290be2b5bf085affbec3318768700a458a6e5b5b7e437651400b9641424429d6d304f870c22ec63fae86ffc5152
# Sat, 22 Sep 2018 10:44:52 GMT
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
	-	`sha256:b43b3ad3bba0078edb519b97eec9689d3a539e0e6013e73ab1757a71d636308c`  
		Last Modified: Sat, 15 Sep 2018 19:48:21 GMT  
		Size: 58.5 MB (58487661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c55564d08e9f037bf723707a7d28e6b1bc28eeb56cd7943760afd4b8f843ee26`  
		Last Modified: Sat, 15 Sep 2018 19:48:03 GMT  
		Size: 1.8 MB (1756934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f21edb72c0338cd430e777d987212e40bb1be0572b32eb31d52a19b3a3d41181`  
		Last Modified: Sat, 15 Sep 2018 19:48:03 GMT  
		Size: 389.9 KB (389921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9db21ceda1b59bd9cd1faffdbee1a2671139db19da97dd865d6332c03e535b95`  
		Last Modified: Sat, 15 Sep 2018 19:48:02 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c32f0de36bbe09bb0e9622734462cadb6b373ed510764e590c042acfc132205a`  
		Last Modified: Sat, 15 Sep 2018 19:48:02 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42b8bc9057640bfc2969afae257992a7a7363b0b19e4f3e8322514be22708fdb`  
		Last Modified: Sat, 22 Sep 2018 10:45:53 GMT  
		Size: 35.8 MB (35752608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.31` - linux; ppc64le

```console
$ docker pull mediawiki@sha256:01223f489b21ae2e3dc8b54fea95b17e2c7f1fd3d626c492e9869c72e5c0d1dd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.3 MB (226280038 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:983db8b9db835004553b36a6bf7e863cfa8fff487294c647be78daa89ba5f973`
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
# Sat, 15 Sep 2018 14:58:21 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python3 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 15 Sep 2018 15:00:52 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Sat, 15 Sep 2018 15:01:16 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu 	&& docker-php-ext-enable apcu
# Sat, 15 Sep 2018 15:01:20 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 15 Sep 2018 15:01:23 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 15 Sep 2018 15:01:23 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.31
# Sat, 15 Sep 2018 15:01:24 GMT
ENV MEDIAWIKI_BRANCH=REL1_31
# Sat, 22 Sep 2018 08:17:26 GMT
ENV MEDIAWIKI_VERSION=1.31.1
# Sat, 22 Sep 2018 08:17:29 GMT
ENV MEDIAWIKI_SHA512=ee49649cc37d0a7d45a7c6d90c822c2a595df290be2b5bf085affbec3318768700a458a6e5b5b7e437651400b9641424429d6d304f870c22ec63fae86ffc5152
# Sat, 22 Sep 2018 08:17:56 GMT
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
	-	`sha256:2a720bd98233372795df37bf2bfe5c6cfa1eb2e5f1bc2ac9e374c730a7efa611`  
		Last Modified: Sat, 15 Sep 2018 15:20:13 GMT  
		Size: 58.6 MB (58576126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25fb1c9c97d805486b4699cec4614c47ccf13d74b28cce5b005ba50139e4cb1b`  
		Last Modified: Sat, 15 Sep 2018 15:19:45 GMT  
		Size: 1.7 MB (1740120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87673c571991aa08a81e3621725ce78985bb615160dcd0d6b799f85e20491939`  
		Last Modified: Sat, 15 Sep 2018 15:19:44 GMT  
		Size: 399.8 KB (399790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c31f92520d1216284f706a1bb071734075b798af99d370591e7a85dc9607737`  
		Last Modified: Sat, 15 Sep 2018 15:19:44 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3956296fb44df3ff3a2cdc02b64bf787fdb4e66a25937b9fbefa49702c405c7`  
		Last Modified: Sat, 15 Sep 2018 15:19:44 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fe91e2b41d2c0ce2264f443dec7d9db2ada870c7aaa61cd28fcc9ad9d966b8d`  
		Last Modified: Sat, 22 Sep 2018 08:22:55 GMT  
		Size: 35.8 MB (35753055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mediawiki:1.31.1`

```console
$ docker pull mediawiki@sha256:9d2ef799065f910ea510616a3c9781329031ed59971d7f6579067d3f7a968945
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
$ docker pull mediawiki@sha256:e97cd58d709fcee49c7b3b974457358cac04fb463be7fba15c1775cf19c53e35
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.4 MB (231396983 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff776a576d8361e2b8ed8880616dc15060a929d073222d3ddac6f1f092a9071c`
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
# Mon, 15 Oct 2018 18:28:47 GMT
ENV PHP_VERSION=7.2.11
# Mon, 15 Oct 2018 18:28:47 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.11.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.11.tar.xz.asc/from/this/mirror
# Mon, 15 Oct 2018 18:28:48 GMT
ENV PHP_SHA256=da1a705c0bc46410e330fc6baa967666c8cd2985378fb9707c01a8e33b01d985 PHP_MD5=
# Mon, 15 Oct 2018 18:28:56 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Mon, 15 Oct 2018 18:28:57 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 15 Oct 2018 18:32:49 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Mon, 15 Oct 2018 18:32:50 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Mon, 15 Oct 2018 18:32:50 GMT
RUN docker-php-ext-enable sodium
# Mon, 15 Oct 2018 18:32:51 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 15 Oct 2018 18:32:51 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Mon, 15 Oct 2018 18:32:51 GMT
WORKDIR /var/www/html
# Mon, 15 Oct 2018 18:32:51 GMT
EXPOSE 80/tcp
# Mon, 15 Oct 2018 18:32:52 GMT
CMD ["apache2-foreground"]
# Mon, 15 Oct 2018 21:38:48 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python3 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Mon, 15 Oct 2018 21:40:30 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Mon, 15 Oct 2018 21:40:46 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu 	&& docker-php-ext-enable apcu
# Mon, 15 Oct 2018 21:40:47 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Mon, 15 Oct 2018 21:40:54 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Mon, 15 Oct 2018 21:40:54 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.31
# Mon, 15 Oct 2018 21:40:54 GMT
ENV MEDIAWIKI_BRANCH=REL1_31
# Mon, 15 Oct 2018 21:40:55 GMT
ENV MEDIAWIKI_VERSION=1.31.1
# Mon, 15 Oct 2018 21:40:55 GMT
ENV MEDIAWIKI_SHA512=ee49649cc37d0a7d45a7c6d90c822c2a595df290be2b5bf085affbec3318768700a458a6e5b5b7e437651400b9641424429d6d304f870c22ec63fae86ffc5152
# Mon, 15 Oct 2018 21:41:01 GMT
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
	-	`sha256:2aa6a4938abfc833c9d40f5215a4c8d97d535047fd5c2527d8b97b76339299e9`  
		Last Modified: Mon, 15 Oct 2018 20:45:55 GMT  
		Size: 12.5 MB (12481341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f35a9f88b02f5920db1e7a6486017cfc3604f396de29b8ce0c9d2cbf5b4d2992`  
		Last Modified: Mon, 15 Oct 2018 20:45:48 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d8d0a45e8e97a6571489b501b863a58e2d5d5158413d10511a662948f044b90`  
		Last Modified: Mon, 15 Oct 2018 20:45:52 GMT  
		Size: 15.6 MB (15617699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cb174294b9de02512143f11b542a114b0148f1f9f086265c9cd82bdff2a3216`  
		Last Modified: Mon, 15 Oct 2018 20:45:48 GMT  
		Size: 2.2 KB (2194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1cdc5d5dd4951828fb1ee5d3ce0ed0fef39d09de60060adb8f4aa7b75af4132`  
		Last Modified: Mon, 15 Oct 2018 20:45:48 GMT  
		Size: 257.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4ed8fccbb330622882e8181a06c0bd413c71c63f949a8011566e88817115718`  
		Last Modified: Mon, 15 Oct 2018 20:45:48 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30825a2dff635d9c12f75c445c8deb30b11007bf7c913595e8af757bccf60435`  
		Last Modified: Mon, 15 Oct 2018 21:44:40 GMT  
		Size: 58.3 MB (58336877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5df02abb9b28f263c8c9d0da98a0f5f2c7608b2a8ea9288fe45803804279978a`  
		Last Modified: Mon, 15 Oct 2018 21:44:00 GMT  
		Size: 1.8 MB (1757315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6a4e269ff4fc5b90f3b587d4e187709ed4db45cd0beecc8af7a774312c06dda`  
		Last Modified: Mon, 15 Oct 2018 21:43:59 GMT  
		Size: 400.9 KB (400919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbed08b85a9195f9a1bd43f2b9859caf234bd99ec55a850986e9dcffeeb3d4ad`  
		Last Modified: Mon, 15 Oct 2018 21:43:59 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b59c2f08e79bb75acdd76b149e0d2ae088c5caf6a35debc5637b7a01f1856674`  
		Last Modified: Mon, 15 Oct 2018 21:43:59 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b4b5b02f7755f529095257f30ec8421829bc16d5e7044867f2a8b796beecf52`  
		Last Modified: Mon, 15 Oct 2018 21:44:17 GMT  
		Size: 35.8 MB (35753369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.31.1` - linux; arm variant v5

```console
$ docker pull mediawiki@sha256:b4d7188f6fd3084f66270391104d3f9e5af220d15c0b8413c84f3c2bf26c803b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.3 MB (216304480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7cc6837020a11fddb7c8d57cf580751c52377a436f766d9579927a4a7f079565`
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
# Sat, 15 Sep 2018 12:46:50 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python3 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 15 Sep 2018 12:50:06 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Sat, 15 Sep 2018 12:50:22 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu 	&& docker-php-ext-enable apcu
# Sat, 15 Sep 2018 12:50:24 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 15 Sep 2018 12:50:25 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 15 Sep 2018 12:50:26 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.31
# Sat, 15 Sep 2018 12:50:26 GMT
ENV MEDIAWIKI_BRANCH=REL1_31
# Sat, 22 Sep 2018 08:48:35 GMT
ENV MEDIAWIKI_VERSION=1.31.1
# Sat, 22 Sep 2018 08:48:35 GMT
ENV MEDIAWIKI_SHA512=ee49649cc37d0a7d45a7c6d90c822c2a595df290be2b5bf085affbec3318768700a458a6e5b5b7e437651400b9641424429d6d304f870c22ec63fae86ffc5152
# Sat, 22 Sep 2018 08:48:59 GMT
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
	-	`sha256:f3f61b92a4bd0124008bc1143f2e7ec1e5b7256de8a79fe2a4854ecdbaf35021`  
		Last Modified: Sat, 15 Sep 2018 13:00:45 GMT  
		Size: 55.9 MB (55901328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbd097ebfd5199ff45c602d5d441e00a30a6a8e3431403044a3e341a3936696f`  
		Last Modified: Sat, 15 Sep 2018 13:00:26 GMT  
		Size: 1.7 MB (1687891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc6dbcddbb68cca71b86f81b33340df9b39b93bffe7cb5a4d7a65d01484662d4`  
		Last Modified: Sat, 15 Sep 2018 13:00:25 GMT  
		Size: 393.0 KB (392953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06e01d88b59ba4d33efe215d6b81bfb7548419668d0d442e0f411a485613d3fb`  
		Last Modified: Sat, 15 Sep 2018 13:00:25 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3119ce2cba753cd5d74cef8ed9bbfbb0a6322cbd65d675b59d6cabe2b4653b12`  
		Last Modified: Sat, 15 Sep 2018 13:00:25 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fbff13b56420bb44ae707afb047486ce88ed4037e49eff89f27471bbcdfc219`  
		Last Modified: Sat, 22 Sep 2018 08:51:06 GMT  
		Size: 35.8 MB (35752963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.31.1` - linux; arm variant v7

```console
$ docker pull mediawiki@sha256:0ac6ef7e2166d3e9e7ed13d6113f6711302686dc7062ae48fc15095d7d4e8ea1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.7 MB (206708769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:902ebc2f8a3de0a552c0a80622fee36db6fdebea0e93ace91ad2c491770adbc0`
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
# Sat, 22 Sep 2018 11:58:31 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python3 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 22 Sep 2018 12:01:20 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Sat, 22 Sep 2018 12:01:35 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu 	&& docker-php-ext-enable apcu
# Sat, 22 Sep 2018 12:01:37 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 22 Sep 2018 12:01:38 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 22 Sep 2018 12:01:38 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.31
# Sat, 22 Sep 2018 12:01:38 GMT
ENV MEDIAWIKI_BRANCH=REL1_31
# Sat, 22 Sep 2018 12:01:39 GMT
ENV MEDIAWIKI_VERSION=1.31.1
# Sat, 22 Sep 2018 12:01:39 GMT
ENV MEDIAWIKI_SHA512=ee49649cc37d0a7d45a7c6d90c822c2a595df290be2b5bf085affbec3318768700a458a6e5b5b7e437651400b9641424429d6d304f870c22ec63fae86ffc5152
# Sat, 22 Sep 2018 12:02:01 GMT
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
	-	`sha256:06e91820fe8198e94068d9a2f22a7ab406cfec1b0c71fe5a99f48f524c6cecaa`  
		Last Modified: Sat, 22 Sep 2018 12:10:53 GMT  
		Size: 53.5 MB (53486626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b5412c3e21ef5d291bc3aa7a7e09051518a512314f46ff04800e2a1c00357f8`  
		Last Modified: Sat, 22 Sep 2018 12:10:37 GMT  
		Size: 1.6 MB (1636843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65ed2a01d64333eadc9ea0ddc79a5e3d9334034b73389593f77626b6f33d8b0b`  
		Last Modified: Sat, 22 Sep 2018 12:10:36 GMT  
		Size: 387.4 KB (387379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fccd67bc1ba52a3c25390d6b4f549b7947a8aebb6f8a1e93f792748cfc06274`  
		Last Modified: Sat, 22 Sep 2018 12:10:36 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:143af59313239881bce14a6d3f7f2a8dd1938e2c803ec702d9902ce7938e275d`  
		Last Modified: Sat, 22 Sep 2018 12:10:36 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48280823691b469d37e42f819929514928538f09f7bd4be49e5d4788fb787b2a`  
		Last Modified: Sat, 22 Sep 2018 12:10:53 GMT  
		Size: 35.8 MB (35753003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.31.1` - linux; arm64 variant v8

```console
$ docker pull mediawiki@sha256:edb57a7ba15c69e3f2a5dc9f9ffcd7ec43c29decf67ca48e76e214f91b480d62
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.2 MB (215207125 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2cfa8be08f9ad5a45198cfa3996bb8c85d5dccd537bb7cdb5b17963aa8e41cf`
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
# Sat, 15 Sep 2018 20:05:04 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python3 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 15 Sep 2018 20:08:59 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Sat, 15 Sep 2018 20:09:20 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu 	&& docker-php-ext-enable apcu
# Sat, 15 Sep 2018 20:09:22 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 15 Sep 2018 20:09:23 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 15 Sep 2018 20:09:24 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.31
# Sat, 15 Sep 2018 20:09:25 GMT
ENV MEDIAWIKI_BRANCH=REL1_31
# Sat, 22 Sep 2018 08:39:55 GMT
ENV MEDIAWIKI_VERSION=1.31.1
# Sat, 22 Sep 2018 08:39:56 GMT
ENV MEDIAWIKI_SHA512=ee49649cc37d0a7d45a7c6d90c822c2a595df290be2b5bf085affbec3318768700a458a6e5b5b7e437651400b9641424429d6d304f870c22ec63fae86ffc5152
# Sat, 22 Sep 2018 08:40:10 GMT
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
	-	`sha256:c820c66538cc01ebcd2246b711141336f05ca1734466b94666c00b9eef28b31a`  
		Last Modified: Sat, 15 Sep 2018 20:22:16 GMT  
		Size: 55.7 MB (55657631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73e377710b4562042b45ac706d3df08eedd3759e639aaf1477aaaf09001e0e66`  
		Last Modified: Sat, 15 Sep 2018 20:21:51 GMT  
		Size: 1.7 MB (1686533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6f0dac512e609a1ce495d7e094784552fcc245ab57a95c3fd9d9dc67f30928d`  
		Last Modified: Sat, 15 Sep 2018 20:21:50 GMT  
		Size: 393.4 KB (393448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a8e23680c792067b188c46f281d519dd5646f6af23919ec671b70b81b3eb405`  
		Last Modified: Sat, 15 Sep 2018 20:21:50 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:991e32e40c34259933bdfd539c8f08a00ca6c627d731bee8c899d251abc7333e`  
		Last Modified: Sat, 15 Sep 2018 20:21:50 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6e70985cdeced99a8ca02410cff41c19d3a00d23b7ca8afd7678371901e19ff`  
		Last Modified: Sat, 22 Sep 2018 08:42:07 GMT  
		Size: 35.8 MB (35752019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.31.1` - linux; 386

```console
$ docker pull mediawiki@sha256:878fb654296befdd32df9cc2c43cf99e5ee2903a2def847e853963bc9c38e760
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.8 MB (236769719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f075b0bbdae03ea1bbadd81494fcae8e476886ebdcbd3087d40c47fed0d52e3c`
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
# Sat, 15 Sep 2018 19:40:43 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python3 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 15 Sep 2018 19:42:19 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Sat, 15 Sep 2018 19:42:29 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu 	&& docker-php-ext-enable apcu
# Sat, 15 Sep 2018 19:42:29 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 15 Sep 2018 19:42:30 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 15 Sep 2018 19:42:30 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.31
# Sat, 15 Sep 2018 19:42:30 GMT
ENV MEDIAWIKI_BRANCH=REL1_31
# Sat, 22 Sep 2018 10:44:43 GMT
ENV MEDIAWIKI_VERSION=1.31.1
# Sat, 22 Sep 2018 10:44:43 GMT
ENV MEDIAWIKI_SHA512=ee49649cc37d0a7d45a7c6d90c822c2a595df290be2b5bf085affbec3318768700a458a6e5b5b7e437651400b9641424429d6d304f870c22ec63fae86ffc5152
# Sat, 22 Sep 2018 10:44:52 GMT
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
	-	`sha256:b43b3ad3bba0078edb519b97eec9689d3a539e0e6013e73ab1757a71d636308c`  
		Last Modified: Sat, 15 Sep 2018 19:48:21 GMT  
		Size: 58.5 MB (58487661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c55564d08e9f037bf723707a7d28e6b1bc28eeb56cd7943760afd4b8f843ee26`  
		Last Modified: Sat, 15 Sep 2018 19:48:03 GMT  
		Size: 1.8 MB (1756934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f21edb72c0338cd430e777d987212e40bb1be0572b32eb31d52a19b3a3d41181`  
		Last Modified: Sat, 15 Sep 2018 19:48:03 GMT  
		Size: 389.9 KB (389921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9db21ceda1b59bd9cd1faffdbee1a2671139db19da97dd865d6332c03e535b95`  
		Last Modified: Sat, 15 Sep 2018 19:48:02 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c32f0de36bbe09bb0e9622734462cadb6b373ed510764e590c042acfc132205a`  
		Last Modified: Sat, 15 Sep 2018 19:48:02 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42b8bc9057640bfc2969afae257992a7a7363b0b19e4f3e8322514be22708fdb`  
		Last Modified: Sat, 22 Sep 2018 10:45:53 GMT  
		Size: 35.8 MB (35752608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:1.31.1` - linux; ppc64le

```console
$ docker pull mediawiki@sha256:01223f489b21ae2e3dc8b54fea95b17e2c7f1fd3d626c492e9869c72e5c0d1dd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.3 MB (226280038 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:983db8b9db835004553b36a6bf7e863cfa8fff487294c647be78daa89ba5f973`
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
# Sat, 15 Sep 2018 14:58:21 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python3 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 15 Sep 2018 15:00:52 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Sat, 15 Sep 2018 15:01:16 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu 	&& docker-php-ext-enable apcu
# Sat, 15 Sep 2018 15:01:20 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 15 Sep 2018 15:01:23 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 15 Sep 2018 15:01:23 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.31
# Sat, 15 Sep 2018 15:01:24 GMT
ENV MEDIAWIKI_BRANCH=REL1_31
# Sat, 22 Sep 2018 08:17:26 GMT
ENV MEDIAWIKI_VERSION=1.31.1
# Sat, 22 Sep 2018 08:17:29 GMT
ENV MEDIAWIKI_SHA512=ee49649cc37d0a7d45a7c6d90c822c2a595df290be2b5bf085affbec3318768700a458a6e5b5b7e437651400b9641424429d6d304f870c22ec63fae86ffc5152
# Sat, 22 Sep 2018 08:17:56 GMT
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
	-	`sha256:2a720bd98233372795df37bf2bfe5c6cfa1eb2e5f1bc2ac9e374c730a7efa611`  
		Last Modified: Sat, 15 Sep 2018 15:20:13 GMT  
		Size: 58.6 MB (58576126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25fb1c9c97d805486b4699cec4614c47ccf13d74b28cce5b005ba50139e4cb1b`  
		Last Modified: Sat, 15 Sep 2018 15:19:45 GMT  
		Size: 1.7 MB (1740120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87673c571991aa08a81e3621725ce78985bb615160dcd0d6b799f85e20491939`  
		Last Modified: Sat, 15 Sep 2018 15:19:44 GMT  
		Size: 399.8 KB (399790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c31f92520d1216284f706a1bb071734075b798af99d370591e7a85dc9607737`  
		Last Modified: Sat, 15 Sep 2018 15:19:44 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3956296fb44df3ff3a2cdc02b64bf787fdb4e66a25937b9fbefa49702c405c7`  
		Last Modified: Sat, 15 Sep 2018 15:19:44 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fe91e2b41d2c0ce2264f443dec7d9db2ada870c7aaa61cd28fcc9ad9d966b8d`  
		Last Modified: Sat, 22 Sep 2018 08:22:55 GMT  
		Size: 35.8 MB (35753055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mediawiki:latest`

```console
$ docker pull mediawiki@sha256:9d2ef799065f910ea510616a3c9781329031ed59971d7f6579067d3f7a968945
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
$ docker pull mediawiki@sha256:e97cd58d709fcee49c7b3b974457358cac04fb463be7fba15c1775cf19c53e35
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.4 MB (231396983 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff776a576d8361e2b8ed8880616dc15060a929d073222d3ddac6f1f092a9071c`
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
# Mon, 15 Oct 2018 18:28:47 GMT
ENV PHP_VERSION=7.2.11
# Mon, 15 Oct 2018 18:28:47 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.11.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.11.tar.xz.asc/from/this/mirror
# Mon, 15 Oct 2018 18:28:48 GMT
ENV PHP_SHA256=da1a705c0bc46410e330fc6baa967666c8cd2985378fb9707c01a8e33b01d985 PHP_MD5=
# Mon, 15 Oct 2018 18:28:56 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Mon, 15 Oct 2018 18:28:57 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 15 Oct 2018 18:32:49 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Mon, 15 Oct 2018 18:32:50 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Mon, 15 Oct 2018 18:32:50 GMT
RUN docker-php-ext-enable sodium
# Mon, 15 Oct 2018 18:32:51 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 15 Oct 2018 18:32:51 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Mon, 15 Oct 2018 18:32:51 GMT
WORKDIR /var/www/html
# Mon, 15 Oct 2018 18:32:51 GMT
EXPOSE 80/tcp
# Mon, 15 Oct 2018 18:32:52 GMT
CMD ["apache2-foreground"]
# Mon, 15 Oct 2018 21:38:48 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python3 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Mon, 15 Oct 2018 21:40:30 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Mon, 15 Oct 2018 21:40:46 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu 	&& docker-php-ext-enable apcu
# Mon, 15 Oct 2018 21:40:47 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Mon, 15 Oct 2018 21:40:54 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Mon, 15 Oct 2018 21:40:54 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.31
# Mon, 15 Oct 2018 21:40:54 GMT
ENV MEDIAWIKI_BRANCH=REL1_31
# Mon, 15 Oct 2018 21:40:55 GMT
ENV MEDIAWIKI_VERSION=1.31.1
# Mon, 15 Oct 2018 21:40:55 GMT
ENV MEDIAWIKI_SHA512=ee49649cc37d0a7d45a7c6d90c822c2a595df290be2b5bf085affbec3318768700a458a6e5b5b7e437651400b9641424429d6d304f870c22ec63fae86ffc5152
# Mon, 15 Oct 2018 21:41:01 GMT
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
	-	`sha256:2aa6a4938abfc833c9d40f5215a4c8d97d535047fd5c2527d8b97b76339299e9`  
		Last Modified: Mon, 15 Oct 2018 20:45:55 GMT  
		Size: 12.5 MB (12481341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f35a9f88b02f5920db1e7a6486017cfc3604f396de29b8ce0c9d2cbf5b4d2992`  
		Last Modified: Mon, 15 Oct 2018 20:45:48 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d8d0a45e8e97a6571489b501b863a58e2d5d5158413d10511a662948f044b90`  
		Last Modified: Mon, 15 Oct 2018 20:45:52 GMT  
		Size: 15.6 MB (15617699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cb174294b9de02512143f11b542a114b0148f1f9f086265c9cd82bdff2a3216`  
		Last Modified: Mon, 15 Oct 2018 20:45:48 GMT  
		Size: 2.2 KB (2194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1cdc5d5dd4951828fb1ee5d3ce0ed0fef39d09de60060adb8f4aa7b75af4132`  
		Last Modified: Mon, 15 Oct 2018 20:45:48 GMT  
		Size: 257.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4ed8fccbb330622882e8181a06c0bd413c71c63f949a8011566e88817115718`  
		Last Modified: Mon, 15 Oct 2018 20:45:48 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30825a2dff635d9c12f75c445c8deb30b11007bf7c913595e8af757bccf60435`  
		Last Modified: Mon, 15 Oct 2018 21:44:40 GMT  
		Size: 58.3 MB (58336877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5df02abb9b28f263c8c9d0da98a0f5f2c7608b2a8ea9288fe45803804279978a`  
		Last Modified: Mon, 15 Oct 2018 21:44:00 GMT  
		Size: 1.8 MB (1757315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6a4e269ff4fc5b90f3b587d4e187709ed4db45cd0beecc8af7a774312c06dda`  
		Last Modified: Mon, 15 Oct 2018 21:43:59 GMT  
		Size: 400.9 KB (400919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbed08b85a9195f9a1bd43f2b9859caf234bd99ec55a850986e9dcffeeb3d4ad`  
		Last Modified: Mon, 15 Oct 2018 21:43:59 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b59c2f08e79bb75acdd76b149e0d2ae088c5caf6a35debc5637b7a01f1856674`  
		Last Modified: Mon, 15 Oct 2018 21:43:59 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b4b5b02f7755f529095257f30ec8421829bc16d5e7044867f2a8b796beecf52`  
		Last Modified: Mon, 15 Oct 2018 21:44:17 GMT  
		Size: 35.8 MB (35753369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:latest` - linux; arm variant v5

```console
$ docker pull mediawiki@sha256:b4d7188f6fd3084f66270391104d3f9e5af220d15c0b8413c84f3c2bf26c803b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.3 MB (216304480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7cc6837020a11fddb7c8d57cf580751c52377a436f766d9579927a4a7f079565`
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
# Sat, 15 Sep 2018 12:46:50 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python3 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 15 Sep 2018 12:50:06 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Sat, 15 Sep 2018 12:50:22 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu 	&& docker-php-ext-enable apcu
# Sat, 15 Sep 2018 12:50:24 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 15 Sep 2018 12:50:25 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 15 Sep 2018 12:50:26 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.31
# Sat, 15 Sep 2018 12:50:26 GMT
ENV MEDIAWIKI_BRANCH=REL1_31
# Sat, 22 Sep 2018 08:48:35 GMT
ENV MEDIAWIKI_VERSION=1.31.1
# Sat, 22 Sep 2018 08:48:35 GMT
ENV MEDIAWIKI_SHA512=ee49649cc37d0a7d45a7c6d90c822c2a595df290be2b5bf085affbec3318768700a458a6e5b5b7e437651400b9641424429d6d304f870c22ec63fae86ffc5152
# Sat, 22 Sep 2018 08:48:59 GMT
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
	-	`sha256:f3f61b92a4bd0124008bc1143f2e7ec1e5b7256de8a79fe2a4854ecdbaf35021`  
		Last Modified: Sat, 15 Sep 2018 13:00:45 GMT  
		Size: 55.9 MB (55901328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbd097ebfd5199ff45c602d5d441e00a30a6a8e3431403044a3e341a3936696f`  
		Last Modified: Sat, 15 Sep 2018 13:00:26 GMT  
		Size: 1.7 MB (1687891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc6dbcddbb68cca71b86f81b33340df9b39b93bffe7cb5a4d7a65d01484662d4`  
		Last Modified: Sat, 15 Sep 2018 13:00:25 GMT  
		Size: 393.0 KB (392953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06e01d88b59ba4d33efe215d6b81bfb7548419668d0d442e0f411a485613d3fb`  
		Last Modified: Sat, 15 Sep 2018 13:00:25 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3119ce2cba753cd5d74cef8ed9bbfbb0a6322cbd65d675b59d6cabe2b4653b12`  
		Last Modified: Sat, 15 Sep 2018 13:00:25 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fbff13b56420bb44ae707afb047486ce88ed4037e49eff89f27471bbcdfc219`  
		Last Modified: Sat, 22 Sep 2018 08:51:06 GMT  
		Size: 35.8 MB (35752963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:latest` - linux; arm variant v7

```console
$ docker pull mediawiki@sha256:0ac6ef7e2166d3e9e7ed13d6113f6711302686dc7062ae48fc15095d7d4e8ea1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.7 MB (206708769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:902ebc2f8a3de0a552c0a80622fee36db6fdebea0e93ace91ad2c491770adbc0`
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
# Sat, 22 Sep 2018 11:58:31 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python3 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 22 Sep 2018 12:01:20 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Sat, 22 Sep 2018 12:01:35 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu 	&& docker-php-ext-enable apcu
# Sat, 22 Sep 2018 12:01:37 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 22 Sep 2018 12:01:38 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 22 Sep 2018 12:01:38 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.31
# Sat, 22 Sep 2018 12:01:38 GMT
ENV MEDIAWIKI_BRANCH=REL1_31
# Sat, 22 Sep 2018 12:01:39 GMT
ENV MEDIAWIKI_VERSION=1.31.1
# Sat, 22 Sep 2018 12:01:39 GMT
ENV MEDIAWIKI_SHA512=ee49649cc37d0a7d45a7c6d90c822c2a595df290be2b5bf085affbec3318768700a458a6e5b5b7e437651400b9641424429d6d304f870c22ec63fae86ffc5152
# Sat, 22 Sep 2018 12:02:01 GMT
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
	-	`sha256:06e91820fe8198e94068d9a2f22a7ab406cfec1b0c71fe5a99f48f524c6cecaa`  
		Last Modified: Sat, 22 Sep 2018 12:10:53 GMT  
		Size: 53.5 MB (53486626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b5412c3e21ef5d291bc3aa7a7e09051518a512314f46ff04800e2a1c00357f8`  
		Last Modified: Sat, 22 Sep 2018 12:10:37 GMT  
		Size: 1.6 MB (1636843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65ed2a01d64333eadc9ea0ddc79a5e3d9334034b73389593f77626b6f33d8b0b`  
		Last Modified: Sat, 22 Sep 2018 12:10:36 GMT  
		Size: 387.4 KB (387379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fccd67bc1ba52a3c25390d6b4f549b7947a8aebb6f8a1e93f792748cfc06274`  
		Last Modified: Sat, 22 Sep 2018 12:10:36 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:143af59313239881bce14a6d3f7f2a8dd1938e2c803ec702d9902ce7938e275d`  
		Last Modified: Sat, 22 Sep 2018 12:10:36 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48280823691b469d37e42f819929514928538f09f7bd4be49e5d4788fb787b2a`  
		Last Modified: Sat, 22 Sep 2018 12:10:53 GMT  
		Size: 35.8 MB (35753003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:latest` - linux; arm64 variant v8

```console
$ docker pull mediawiki@sha256:edb57a7ba15c69e3f2a5dc9f9ffcd7ec43c29decf67ca48e76e214f91b480d62
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.2 MB (215207125 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2cfa8be08f9ad5a45198cfa3996bb8c85d5dccd537bb7cdb5b17963aa8e41cf`
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
# Sat, 15 Sep 2018 20:05:04 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python3 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 15 Sep 2018 20:08:59 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Sat, 15 Sep 2018 20:09:20 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu 	&& docker-php-ext-enable apcu
# Sat, 15 Sep 2018 20:09:22 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 15 Sep 2018 20:09:23 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 15 Sep 2018 20:09:24 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.31
# Sat, 15 Sep 2018 20:09:25 GMT
ENV MEDIAWIKI_BRANCH=REL1_31
# Sat, 22 Sep 2018 08:39:55 GMT
ENV MEDIAWIKI_VERSION=1.31.1
# Sat, 22 Sep 2018 08:39:56 GMT
ENV MEDIAWIKI_SHA512=ee49649cc37d0a7d45a7c6d90c822c2a595df290be2b5bf085affbec3318768700a458a6e5b5b7e437651400b9641424429d6d304f870c22ec63fae86ffc5152
# Sat, 22 Sep 2018 08:40:10 GMT
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
	-	`sha256:c820c66538cc01ebcd2246b711141336f05ca1734466b94666c00b9eef28b31a`  
		Last Modified: Sat, 15 Sep 2018 20:22:16 GMT  
		Size: 55.7 MB (55657631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73e377710b4562042b45ac706d3df08eedd3759e639aaf1477aaaf09001e0e66`  
		Last Modified: Sat, 15 Sep 2018 20:21:51 GMT  
		Size: 1.7 MB (1686533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6f0dac512e609a1ce495d7e094784552fcc245ab57a95c3fd9d9dc67f30928d`  
		Last Modified: Sat, 15 Sep 2018 20:21:50 GMT  
		Size: 393.4 KB (393448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a8e23680c792067b188c46f281d519dd5646f6af23919ec671b70b81b3eb405`  
		Last Modified: Sat, 15 Sep 2018 20:21:50 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:991e32e40c34259933bdfd539c8f08a00ca6c627d731bee8c899d251abc7333e`  
		Last Modified: Sat, 15 Sep 2018 20:21:50 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6e70985cdeced99a8ca02410cff41c19d3a00d23b7ca8afd7678371901e19ff`  
		Last Modified: Sat, 22 Sep 2018 08:42:07 GMT  
		Size: 35.8 MB (35752019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:latest` - linux; 386

```console
$ docker pull mediawiki@sha256:878fb654296befdd32df9cc2c43cf99e5ee2903a2def847e853963bc9c38e760
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.8 MB (236769719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f075b0bbdae03ea1bbadd81494fcae8e476886ebdcbd3087d40c47fed0d52e3c`
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
# Sat, 15 Sep 2018 19:40:43 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python3 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 15 Sep 2018 19:42:19 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Sat, 15 Sep 2018 19:42:29 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu 	&& docker-php-ext-enable apcu
# Sat, 15 Sep 2018 19:42:29 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 15 Sep 2018 19:42:30 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 15 Sep 2018 19:42:30 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.31
# Sat, 15 Sep 2018 19:42:30 GMT
ENV MEDIAWIKI_BRANCH=REL1_31
# Sat, 22 Sep 2018 10:44:43 GMT
ENV MEDIAWIKI_VERSION=1.31.1
# Sat, 22 Sep 2018 10:44:43 GMT
ENV MEDIAWIKI_SHA512=ee49649cc37d0a7d45a7c6d90c822c2a595df290be2b5bf085affbec3318768700a458a6e5b5b7e437651400b9641424429d6d304f870c22ec63fae86ffc5152
# Sat, 22 Sep 2018 10:44:52 GMT
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
	-	`sha256:b43b3ad3bba0078edb519b97eec9689d3a539e0e6013e73ab1757a71d636308c`  
		Last Modified: Sat, 15 Sep 2018 19:48:21 GMT  
		Size: 58.5 MB (58487661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c55564d08e9f037bf723707a7d28e6b1bc28eeb56cd7943760afd4b8f843ee26`  
		Last Modified: Sat, 15 Sep 2018 19:48:03 GMT  
		Size: 1.8 MB (1756934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f21edb72c0338cd430e777d987212e40bb1be0572b32eb31d52a19b3a3d41181`  
		Last Modified: Sat, 15 Sep 2018 19:48:03 GMT  
		Size: 389.9 KB (389921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9db21ceda1b59bd9cd1faffdbee1a2671139db19da97dd865d6332c03e535b95`  
		Last Modified: Sat, 15 Sep 2018 19:48:02 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c32f0de36bbe09bb0e9622734462cadb6b373ed510764e590c042acfc132205a`  
		Last Modified: Sat, 15 Sep 2018 19:48:02 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42b8bc9057640bfc2969afae257992a7a7363b0b19e4f3e8322514be22708fdb`  
		Last Modified: Sat, 22 Sep 2018 10:45:53 GMT  
		Size: 35.8 MB (35752608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:latest` - linux; ppc64le

```console
$ docker pull mediawiki@sha256:01223f489b21ae2e3dc8b54fea95b17e2c7f1fd3d626c492e9869c72e5c0d1dd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.3 MB (226280038 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:983db8b9db835004553b36a6bf7e863cfa8fff487294c647be78daa89ba5f973`
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
# Sat, 15 Sep 2018 14:58:21 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python3 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 15 Sep 2018 15:00:52 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Sat, 15 Sep 2018 15:01:16 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu 	&& docker-php-ext-enable apcu
# Sat, 15 Sep 2018 15:01:20 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 15 Sep 2018 15:01:23 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 15 Sep 2018 15:01:23 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.31
# Sat, 15 Sep 2018 15:01:24 GMT
ENV MEDIAWIKI_BRANCH=REL1_31
# Sat, 22 Sep 2018 08:17:26 GMT
ENV MEDIAWIKI_VERSION=1.31.1
# Sat, 22 Sep 2018 08:17:29 GMT
ENV MEDIAWIKI_SHA512=ee49649cc37d0a7d45a7c6d90c822c2a595df290be2b5bf085affbec3318768700a458a6e5b5b7e437651400b9641424429d6d304f870c22ec63fae86ffc5152
# Sat, 22 Sep 2018 08:17:56 GMT
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
	-	`sha256:2a720bd98233372795df37bf2bfe5c6cfa1eb2e5f1bc2ac9e374c730a7efa611`  
		Last Modified: Sat, 15 Sep 2018 15:20:13 GMT  
		Size: 58.6 MB (58576126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25fb1c9c97d805486b4699cec4614c47ccf13d74b28cce5b005ba50139e4cb1b`  
		Last Modified: Sat, 15 Sep 2018 15:19:45 GMT  
		Size: 1.7 MB (1740120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87673c571991aa08a81e3621725ce78985bb615160dcd0d6b799f85e20491939`  
		Last Modified: Sat, 15 Sep 2018 15:19:44 GMT  
		Size: 399.8 KB (399790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c31f92520d1216284f706a1bb071734075b798af99d370591e7a85dc9607737`  
		Last Modified: Sat, 15 Sep 2018 15:19:44 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3956296fb44df3ff3a2cdc02b64bf787fdb4e66a25937b9fbefa49702c405c7`  
		Last Modified: Sat, 15 Sep 2018 15:19:44 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fe91e2b41d2c0ce2264f443dec7d9db2ada870c7aaa61cd28fcc9ad9d966b8d`  
		Last Modified: Sat, 22 Sep 2018 08:22:55 GMT  
		Size: 35.8 MB (35753055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mediawiki:legacy`

```console
$ docker pull mediawiki@sha256:a2b5aadf40f559bfc5bbd1cc38bfbda337101cf8291a464d25d4596b9a4ad306
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
$ docker pull mediawiki@sha256:792320e30bd1c5ae4f3063ebb11c7950dbf527cca9e940db52fc74fb5b1f9ccc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.4 MB (235429375 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:488b8befac35dc61322a9cf6c5eda06f584a2ca54449afcd4cf8b4382658bfa9`
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
# Mon, 15 Oct 2018 19:38:01 GMT
ENV PHP_VERSION=7.1.23
# Mon, 15 Oct 2018 19:38:01 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.23.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.23.tar.xz.asc/from/this/mirror
# Mon, 15 Oct 2018 19:38:01 GMT
ENV PHP_SHA256=227a3c76133c3dc1cec937989456cbd89ed00e68e7260c651900dbe1f5b798bc PHP_MD5=
# Mon, 15 Oct 2018 19:38:09 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Mon, 15 Oct 2018 19:38:10 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 15 Oct 2018 19:41:01 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Mon, 15 Oct 2018 19:41:02 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Mon, 15 Oct 2018 19:41:02 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 15 Oct 2018 19:41:02 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Mon, 15 Oct 2018 19:41:03 GMT
WORKDIR /var/www/html
# Mon, 15 Oct 2018 19:41:03 GMT
EXPOSE 80/tcp
# Mon, 15 Oct 2018 19:41:03 GMT
CMD ["apache2-foreground"]
# Mon, 15 Oct 2018 21:41:42 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Mon, 15 Oct 2018 21:43:18 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Mon, 15 Oct 2018 21:43:28 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Mon, 15 Oct 2018 21:43:35 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Mon, 15 Oct 2018 21:43:36 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Mon, 15 Oct 2018 21:43:36 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.30
# Mon, 15 Oct 2018 21:43:36 GMT
ENV MEDIAWIKI_BRANCH=REL1_30
# Mon, 15 Oct 2018 21:43:36 GMT
ENV MEDIAWIKI_VERSION=1.30.1
# Mon, 15 Oct 2018 21:43:36 GMT
ENV MEDIAWIKI_SHA512=bda37c7b1be4e1532ee8357843140e666ed550c4f54b53873d163d4b53ed87a80c0ad8a11d189577d32e554488aed517fb9477f2da04d7e7d87014049a2eabbe
# Mon, 15 Oct 2018 21:43:44 GMT
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
	-	`sha256:1675df3bd7f712abaf4304d90039ef34364ced89decb877713ae13aa6367ca3a`  
		Last Modified: Mon, 15 Oct 2018 21:02:45 GMT  
		Size: 12.6 MB (12577019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10fdac1e0f697d684ee5490a09b8350ea65f91d54eb19cb5f88383ac92c11fe8`  
		Last Modified: Mon, 15 Oct 2018 21:02:44 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10c9c4da81d3073f5b7db921dc604462160040a9ec9f3fb08ec070ee624fac8a`  
		Last Modified: Mon, 15 Oct 2018 21:02:48 GMT  
		Size: 14.6 MB (14605110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f43fdf88cb0e73c52cbe7184817590cd3debc57aabdad158da444841742ff76c`  
		Last Modified: Mon, 15 Oct 2018 21:02:44 GMT  
		Size: 2.2 KB (2193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1ab2a744d311c5a691ccd74820a5addc34776c2f67c236d8e30059f7bdb37fb`  
		Last Modified: Mon, 15 Oct 2018 21:02:44 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d431b793ca9ae1483afe32db440dfbf123b5c5ae3385712dfa6043e24280dcf`  
		Last Modified: Mon, 15 Oct 2018 21:45:31 GMT  
		Size: 56.3 MB (56344069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b73a9f5c951fb1965c918c7c02a7912c4f598cf0b1058c9f058d7a7a692dad3`  
		Last Modified: Mon, 15 Oct 2018 21:45:18 GMT  
		Size: 1.7 MB (1663089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:175e0972f46d08a381dc5ad7df557d36c087e6785659949394b2f66ca8f4c9bb`  
		Last Modified: Mon, 15 Oct 2018 21:45:17 GMT  
		Size: 408.6 KB (408627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d4029e84f9a674a594486f99ae0bfb4f58fcbb5ffca35cc9938a4cff355c27`  
		Last Modified: Mon, 15 Oct 2018 21:45:16 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:798c8a31461865349822e64fa17f7c6ca5a824bc31078e5a283556aade29727c`  
		Last Modified: Mon, 15 Oct 2018 21:45:18 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed06a1bfc68f777f52b379f54a199d392bb358f60541dff9147796b1f08071c4`  
		Last Modified: Mon, 15 Oct 2018 21:45:34 GMT  
		Size: 42.8 MB (42782255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:legacy` - linux; arm variant v5

```console
$ docker pull mediawiki@sha256:a4786cfbd67ac4938f7807f9c6aa61ea78e3e799b558170e4fc377528eedc52b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.5 MB (220527754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33706513ec7a04cb8fa67688ed65c5442efb8f320019587abd89e73f3141eae0`
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
# Sat, 15 Sep 2018 09:29:20 GMT
ENV PHP_VERSION=7.1.22
# Sat, 15 Sep 2018 09:29:20 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.22.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.22.tar.xz.asc/from/this/mirror
# Sat, 15 Sep 2018 09:29:21 GMT
ENV PHP_SHA256=9194c9b3a592d8376fde837dde711ec01ee26f8607fc2884047ef6f7c089b15d PHP_MD5=
# Sat, 15 Sep 2018 09:29:37 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 15 Sep 2018 09:29:37 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 15 Sep 2018 09:32:29 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 15 Sep 2018 09:32:30 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Sat, 15 Sep 2018 09:32:31 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 15 Sep 2018 09:32:31 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 15 Sep 2018 09:32:32 GMT
WORKDIR /var/www/html
# Sat, 15 Sep 2018 09:32:32 GMT
EXPOSE 80/tcp
# Sat, 15 Sep 2018 09:32:32 GMT
CMD ["apache2-foreground"]
# Sat, 15 Sep 2018 12:51:44 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 15 Sep 2018 12:54:46 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Sat, 15 Sep 2018 12:55:02 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Sat, 15 Sep 2018 12:55:03 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 15 Sep 2018 12:55:04 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 15 Sep 2018 12:55:05 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.30
# Sat, 15 Sep 2018 12:55:05 GMT
ENV MEDIAWIKI_BRANCH=REL1_30
# Sat, 22 Sep 2018 08:49:14 GMT
ENV MEDIAWIKI_VERSION=1.30.1
# Sat, 22 Sep 2018 08:49:14 GMT
ENV MEDIAWIKI_SHA512=bda37c7b1be4e1532ee8357843140e666ed550c4f54b53873d163d4b53ed87a80c0ad8a11d189577d32e554488aed517fb9477f2da04d7e7d87014049a2eabbe
# Sat, 22 Sep 2018 08:49:39 GMT
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
	-	`sha256:5fcae2b315b22b5b47533c93f6aa5207b4bc55fc8ec83b7cba2149750df49e98`  
		Last Modified: Sat, 15 Sep 2018 11:26:46 GMT  
		Size: 12.6 MB (12575252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00e81a5b5d35d23a243ea9aa2d2198161a3faf46193271fe00ee25e3230f33a7`  
		Last Modified: Sat, 15 Sep 2018 11:26:44 GMT  
		Size: 502.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b2ae8927d16aff988d324290ce8576c5d8b533e99c8b64d0e2985c40a438633`  
		Last Modified: Sat, 15 Sep 2018 11:26:49 GMT  
		Size: 13.9 MB (13929039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:651e26e1efed4267c837291658bc8687ed5da3d5b0c8a603334a29ba58bda961`  
		Last Modified: Sat, 15 Sep 2018 11:26:44 GMT  
		Size: 2.2 KB (2194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e75ce9de61e349af15ae933e0cfcf872759a60f926cac004155f1e5714aeeb5`  
		Last Modified: Sat, 15 Sep 2018 11:26:44 GMT  
		Size: 901.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4312464f96f8fd19b5371398a10262930c22a700cb367bfa722fc0a5b1a6b20`  
		Last Modified: Sat, 15 Sep 2018 13:01:52 GMT  
		Size: 54.0 MB (53981834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7886a988510fe81c9d0bc9ec44e8f16d0905793929394b3375056e16c136ee4e`  
		Last Modified: Sat, 15 Sep 2018 13:01:35 GMT  
		Size: 1.6 MB (1593726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04085b1b378785d88a53e640cb58ccc3f25e07c0b1315daf1ef31014316be23a`  
		Last Modified: Sat, 15 Sep 2018 13:01:34 GMT  
		Size: 397.7 KB (397722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73a8c589b4e1aaba6d46caa2f94b325114a0d2b6b9548930d9f1dd4e5b15825a`  
		Last Modified: Sat, 15 Sep 2018 13:01:34 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f32982f59769af66b32fd952958091b8b6db9bfc9bf19cbd108f93b3f1d0ca4`  
		Last Modified: Sat, 15 Sep 2018 13:01:34 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b8763cc184b48fc5b9df8158bfd696318b781b63551ec755c15480bda9e0817`  
		Last Modified: Sat, 22 Sep 2018 08:52:27 GMT  
		Size: 42.8 MB (42782208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:legacy` - linux; arm variant v7

```console
$ docker pull mediawiki@sha256:3034587f4713ca26e420f064be6f860607c2b96681731a5fcf3d66fe9d85cf84
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.0 MB (211016114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30723c050058a5b1c0cfac47ebc407e6145c913a7a7469ce1149ad72753fedac`
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
# Sat, 15 Sep 2018 12:34:17 GMT
ENV PHP_VERSION=7.1.22
# Sat, 15 Sep 2018 12:34:17 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.22.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.22.tar.xz.asc/from/this/mirror
# Sat, 15 Sep 2018 12:34:17 GMT
ENV PHP_SHA256=9194c9b3a592d8376fde837dde711ec01ee26f8607fc2884047ef6f7c089b15d PHP_MD5=
# Sat, 15 Sep 2018 12:34:31 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 15 Sep 2018 12:34:31 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 15 Sep 2018 12:37:03 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 15 Sep 2018 12:37:04 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Sat, 15 Sep 2018 12:37:04 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 15 Sep 2018 12:37:05 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 15 Sep 2018 12:37:05 GMT
WORKDIR /var/www/html
# Sat, 15 Sep 2018 12:37:06 GMT
EXPOSE 80/tcp
# Sat, 15 Sep 2018 12:37:06 GMT
CMD ["apache2-foreground"]
# Sat, 22 Sep 2018 12:02:46 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 22 Sep 2018 12:05:29 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Sat, 22 Sep 2018 12:05:44 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Sat, 22 Sep 2018 12:05:45 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 22 Sep 2018 12:05:46 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 22 Sep 2018 12:05:46 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.30
# Sat, 22 Sep 2018 12:05:47 GMT
ENV MEDIAWIKI_BRANCH=REL1_30
# Sat, 22 Sep 2018 12:05:47 GMT
ENV MEDIAWIKI_VERSION=1.30.1
# Sat, 22 Sep 2018 12:05:48 GMT
ENV MEDIAWIKI_SHA512=bda37c7b1be4e1532ee8357843140e666ed550c4f54b53873d163d4b53ed87a80c0ad8a11d189577d32e554488aed517fb9477f2da04d7e7d87014049a2eabbe
# Sat, 22 Sep 2018 12:06:12 GMT
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
	-	`sha256:ccc1b65c35a2df0a980ccf42e919ea055824a7b4bded4e9caa148d0a1eed22e5`  
		Last Modified: Sat, 15 Sep 2018 14:24:53 GMT  
		Size: 12.6 MB (12575186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7502c8cc84520526612da9eee375dd9efda348f0230c5df0045133c4e14981e0`  
		Last Modified: Sat, 15 Sep 2018 14:24:50 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d7967689ec520174eaa2cc4d311d4fb3a62ec7fd5f79095a6e73432df3417b7`  
		Last Modified: Sat, 15 Sep 2018 14:24:55 GMT  
		Size: 13.1 MB (13108505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9811e255c20db92569c5815035e2678396428fd79ab8dd6318e1b07a87d75438`  
		Last Modified: Sat, 15 Sep 2018 14:24:50 GMT  
		Size: 2.2 KB (2191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c93efd275d3b027792cfa89619a7043de372e25ef71fe36a00612466b93ed140`  
		Last Modified: Sat, 15 Sep 2018 14:24:50 GMT  
		Size: 903.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:961bbeb7199c025716d3ad9c658de64662007c8d33311c68c757d703fa6faab7`  
		Last Modified: Sat, 22 Sep 2018 12:11:55 GMT  
		Size: 51.6 MB (51605422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ed62b29a7c8597cd35c5e2079df749d969966781536ffbd16da2cf68f8f002e`  
		Last Modified: Sat, 22 Sep 2018 12:11:39 GMT  
		Size: 1.5 MB (1549628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d5df1ad520b786b19931155eab44a5d51a14f5aa013cb6414b36c3595d8ead6`  
		Last Modified: Sat, 22 Sep 2018 12:11:38 GMT  
		Size: 392.8 KB (392785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4caeaf577ec159670c528cf4e3a4c05ef47cbef8dff2b296610bcc55fef257d`  
		Last Modified: Sat, 22 Sep 2018 12:11:38 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c411d708ea6f96861ac5412386d2ab9c58f31cd8aeff9d93d781420f393cc75`  
		Last Modified: Sat, 22 Sep 2018 12:11:38 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f40887a0caf2cf8bae53450be71f8799b27df9f63336882d5642c8e15d98d46`  
		Last Modified: Sat, 22 Sep 2018 12:12:04 GMT  
		Size: 42.8 MB (42782369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:legacy` - linux; arm64 variant v8

```console
$ docker pull mediawiki@sha256:1596a00079cb2a040f36ecd51e8e7d460b4ffc092723c09a457ac411c10f4f4b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.9 MB (219854032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8325460dfb05587f23829f3dc9d6bf5a1280bb24720138d51eb7bd87d16cca9`
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
# Sat, 15 Sep 2018 14:31:46 GMT
ENV PHP_VERSION=7.1.22
# Sat, 15 Sep 2018 14:31:47 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.22.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.22.tar.xz.asc/from/this/mirror
# Sat, 15 Sep 2018 14:31:47 GMT
ENV PHP_SHA256=9194c9b3a592d8376fde837dde711ec01ee26f8607fc2884047ef6f7c089b15d PHP_MD5=
# Sat, 15 Sep 2018 14:32:25 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 15 Sep 2018 14:32:26 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 15 Sep 2018 14:38:27 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 15 Sep 2018 14:38:29 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Sat, 15 Sep 2018 14:38:29 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 15 Sep 2018 14:38:31 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 15 Sep 2018 14:38:32 GMT
WORKDIR /var/www/html
# Sat, 15 Sep 2018 14:38:32 GMT
EXPOSE 80/tcp
# Sat, 15 Sep 2018 14:38:33 GMT
CMD ["apache2-foreground"]
# Sat, 15 Sep 2018 20:11:12 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 15 Sep 2018 20:14:55 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Sat, 15 Sep 2018 20:15:23 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Sat, 15 Sep 2018 20:15:26 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 15 Sep 2018 20:15:27 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 15 Sep 2018 20:15:36 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.30
# Sat, 15 Sep 2018 20:15:36 GMT
ENV MEDIAWIKI_BRANCH=REL1_30
# Sat, 22 Sep 2018 08:40:27 GMT
ENV MEDIAWIKI_VERSION=1.30.1
# Sat, 22 Sep 2018 08:40:28 GMT
ENV MEDIAWIKI_SHA512=bda37c7b1be4e1532ee8357843140e666ed550c4f54b53873d163d4b53ed87a80c0ad8a11d189577d32e554488aed517fb9477f2da04d7e7d87014049a2eabbe
# Sat, 22 Sep 2018 08:40:43 GMT
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
	-	`sha256:5276b626cd3c3a8d7fa873132414f97886808e1b4e31b3b85bee5e8120ff1b38`  
		Last Modified: Sat, 15 Sep 2018 18:32:17 GMT  
		Size: 12.6 MB (12575519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a5e4d79fab4f67e4ba5ce4da4410a1eccbcbb8ba54aa4fdb7828c4090e7a8c2`  
		Last Modified: Sat, 15 Sep 2018 18:32:15 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ccbc6a9fd5c48c031fe1cc23916ea641e908eb517efc9cb329c49a73022c5b1`  
		Last Modified: Sat, 15 Sep 2018 18:32:21 GMT  
		Size: 13.7 MB (13727475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6080afc0e94d3475f52f58249e2c0d505121cebc44e8c6897711ed0a5d6a3a75`  
		Last Modified: Sat, 15 Sep 2018 18:32:15 GMT  
		Size: 2.2 KB (2191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33104fdedd144c13843e9146f403640fcfa0ac99b0bf74a25c3bfbd63a000c3f`  
		Last Modified: Sat, 15 Sep 2018 18:32:15 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c008ef0a71e7898bf0b9687af9de777eb5bdee015bf6f5984c51c963b50c425`  
		Last Modified: Sat, 15 Sep 2018 20:23:54 GMT  
		Size: 54.1 MB (54130545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc30cf9a3c98f098a53e961f55556802a6ebbf9f5a28afebf735bfcde5e5dd3e`  
		Last Modified: Sat, 15 Sep 2018 20:23:33 GMT  
		Size: 1.6 MB (1594554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7347bb69e8a97845dd76f6c62eb52576e207757fb02f64f3548e45a247187dcb`  
		Last Modified: Sat, 15 Sep 2018 20:23:30 GMT  
		Size: 400.4 KB (400446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b8eb661fbc6610b03558bf80acc664f87dc1563abd91a02f647852264ac7174`  
		Last Modified: Sat, 15 Sep 2018 20:23:30 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff0f5490755bc9029772c65e1fb98ff48939d4d75349ecf1842932562882a587`  
		Last Modified: Sat, 15 Sep 2018 20:23:30 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b995feea996c0841094c9818584632f21c499c618ca0e132e7100d6f5a845523`  
		Last Modified: Sat, 22 Sep 2018 08:43:28 GMT  
		Size: 42.8 MB (42780992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:legacy` - linux; 386

```console
$ docker pull mediawiki@sha256:6814a89447596f2f98f58260a77aed540e527385290a34acdce149d53de9f059
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.8 MB (240823704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1db194bdf4958a1104c3b64cd797a496e16e8f22ecfd8a60f4410befc9b75584`
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
# Sat, 15 Sep 2018 13:01:21 GMT
ENV PHP_VERSION=7.1.22
# Sat, 15 Sep 2018 13:01:21 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.22.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.22.tar.xz.asc/from/this/mirror
# Sat, 15 Sep 2018 13:01:21 GMT
ENV PHP_SHA256=9194c9b3a592d8376fde837dde711ec01ee26f8607fc2884047ef6f7c089b15d PHP_MD5=
# Sat, 15 Sep 2018 13:01:30 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 15 Sep 2018 13:01:31 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 15 Sep 2018 13:04:36 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 15 Sep 2018 13:04:36 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Sat, 15 Sep 2018 13:04:36 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 15 Sep 2018 13:04:37 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 15 Sep 2018 13:04:37 GMT
WORKDIR /var/www/html
# Sat, 15 Sep 2018 13:04:37 GMT
EXPOSE 80/tcp
# Sat, 15 Sep 2018 13:04:37 GMT
CMD ["apache2-foreground"]
# Sat, 15 Sep 2018 19:43:24 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 15 Sep 2018 19:44:56 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Sat, 15 Sep 2018 19:45:06 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Sat, 15 Sep 2018 19:45:07 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 15 Sep 2018 19:45:07 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 15 Sep 2018 19:45:08 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.30
# Sat, 15 Sep 2018 19:45:08 GMT
ENV MEDIAWIKI_BRANCH=REL1_30
# Sat, 22 Sep 2018 10:45:00 GMT
ENV MEDIAWIKI_VERSION=1.30.1
# Sat, 22 Sep 2018 10:45:00 GMT
ENV MEDIAWIKI_SHA512=bda37c7b1be4e1532ee8357843140e666ed550c4f54b53873d163d4b53ed87a80c0ad8a11d189577d32e554488aed517fb9477f2da04d7e7d87014049a2eabbe
# Sat, 22 Sep 2018 10:45:10 GMT
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
	-	`sha256:bc785d6fa2913f54c397d7c2a3008d9ebed30aa1b5d545b63c7c54be5f54c27d`  
		Last Modified: Sat, 15 Sep 2018 16:34:09 GMT  
		Size: 12.6 MB (12576689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6f26574b932c7490afa279c757d67188f715256c20f97b7b94a7eb610902aa2`  
		Last Modified: Sat, 15 Sep 2018 16:34:08 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b5ccd1f07d222bdf4bae0a79933b8aa9fe3ba451d7bf953281aee958a2ec375`  
		Last Modified: Sat, 15 Sep 2018 16:34:12 GMT  
		Size: 14.7 MB (14730147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa202b0f86018bff74d334d9072935153e352f48c2d76828c2908843795311af`  
		Last Modified: Sat, 15 Sep 2018 16:34:07 GMT  
		Size: 2.2 KB (2191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:775709f5bcf5fc845fe0149f4f1fb95efcbf7164b130d8d3e65865af814aba75`  
		Last Modified: Sat, 15 Sep 2018 16:34:08 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b1ea5d0ce477669cee2c991d0211862f5b57aafe4a59b724c8479c4bf04e660`  
		Last Modified: Sat, 15 Sep 2018 19:49:08 GMT  
		Size: 56.5 MB (56494092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:253044f4c252214950aa66999e54d31091a7998b6dafccb151ec68c78ebc6698`  
		Last Modified: Sat, 15 Sep 2018 19:48:50 GMT  
		Size: 1.7 MB (1664678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d7c8be92c91898873420652966d1c26d5750b9ec0f5ad60aa842c56494eb5f8`  
		Last Modified: Sat, 15 Sep 2018 19:48:51 GMT  
		Size: 395.0 KB (395004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c61f150ca58831f53906e18a5fff431b7dce05589cd8b41a4befea8cafc14f4c`  
		Last Modified: Sat, 15 Sep 2018 19:48:50 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa17c0525669f08d5ee993d0041042b288e186a91f548e676a05353b8bbed06b`  
		Last Modified: Sat, 15 Sep 2018 19:48:49 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10214628cf1c19aed9c9f170dea480d6e52432b7ba9a116714d202ae5e1f865d`  
		Last Modified: Sat, 22 Sep 2018 10:46:38 GMT  
		Size: 42.8 MB (42782489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:legacy` - linux; ppc64le

```console
$ docker pull mediawiki@sha256:234b6f0e38448ae8d5e8261390ab9beb52567ac92fa3c470df243c383ac7b75f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.3 MB (230274922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:464ed396d1b1064a6fde165721df6b47127327c27c23d726deb80d2f3d9ba67e`
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
# Sat, 15 Sep 2018 11:14:19 GMT
ENV PHP_VERSION=7.1.22
# Sat, 15 Sep 2018 11:14:20 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.22.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.22.tar.xz.asc/from/this/mirror
# Sat, 15 Sep 2018 11:14:21 GMT
ENV PHP_SHA256=9194c9b3a592d8376fde837dde711ec01ee26f8607fc2884047ef6f7c089b15d PHP_MD5=
# Sat, 15 Sep 2018 11:14:46 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 15 Sep 2018 11:14:48 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 15 Sep 2018 11:18:02 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 15 Sep 2018 11:18:03 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Sat, 15 Sep 2018 11:18:04 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 15 Sep 2018 11:18:05 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 15 Sep 2018 11:18:06 GMT
WORKDIR /var/www/html
# Sat, 15 Sep 2018 11:18:06 GMT
EXPOSE 80/tcp
# Sat, 15 Sep 2018 11:18:07 GMT
CMD ["apache2-foreground"]
# Sat, 15 Sep 2018 15:03:14 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 15 Sep 2018 15:05:46 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Sat, 15 Sep 2018 15:06:02 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Sat, 15 Sep 2018 15:06:04 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 15 Sep 2018 15:06:06 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 15 Sep 2018 15:06:07 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.30
# Sat, 15 Sep 2018 15:06:07 GMT
ENV MEDIAWIKI_BRANCH=REL1_30
# Sat, 22 Sep 2018 08:18:16 GMT
ENV MEDIAWIKI_VERSION=1.30.1
# Sat, 22 Sep 2018 08:18:19 GMT
ENV MEDIAWIKI_SHA512=bda37c7b1be4e1532ee8357843140e666ed550c4f54b53873d163d4b53ed87a80c0ad8a11d189577d32e554488aed517fb9477f2da04d7e7d87014049a2eabbe
# Sat, 22 Sep 2018 08:18:47 GMT
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
	-	`sha256:1c4d1686ad18b0f0deec55cbfa7d5e6d7d71574fa2d6b26a96a7fb7453bed418`  
		Last Modified: Sat, 15 Sep 2018 13:38:44 GMT  
		Size: 12.6 MB (12575560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7611dbcc3f86011cfe4e50c8199da954dbe2002681b47c8be77df47f399084de`  
		Last Modified: Sat, 15 Sep 2018 13:38:42 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83e539ed2dc29aad23fbf4e0156aefea75782e723365c0f5d13951aa82cb4430`  
		Last Modified: Sat, 15 Sep 2018 13:38:48 GMT  
		Size: 14.4 MB (14373516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5be42125aafbf910ffa6fea479c63bc66fa7fcadcb7255673a189cdd9de4901`  
		Last Modified: Sat, 15 Sep 2018 13:38:42 GMT  
		Size: 2.2 KB (2192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ef6a7032c229b8b7252ede1eededc83a14083bd37dfcf9a2bcfe2a986f4bb70`  
		Last Modified: Sat, 15 Sep 2018 13:38:42 GMT  
		Size: 905.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83e817944c9c16f591ff0ffcef54d9e37b0de8077ffe080f1fc1ea0403d4e574`  
		Last Modified: Sat, 15 Sep 2018 15:21:47 GMT  
		Size: 56.6 MB (56589591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb51e935874ef6c3a39d43807ccc304fca118eca7b0eeca9c1aa60cc150ac987`  
		Last Modified: Sat, 15 Sep 2018 15:21:13 GMT  
		Size: 1.6 MB (1643676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a78bc377606d99a6e11b7d6ef786a7b411b6307d0665eb91beec4966fd45d2`  
		Last Modified: Sat, 15 Sep 2018 15:21:12 GMT  
		Size: 404.8 KB (404797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3328d65142bd6289229bb5f928941dbb6b804061582a330ebc5cdac93169d3e8`  
		Last Modified: Sat, 15 Sep 2018 15:21:12 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6da55fd03448874cb49d6b65e2c4e468f2304b3e4a3086e2440b7cb668d0ee39`  
		Last Modified: Sat, 15 Sep 2018 15:21:12 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a575a6f16460535d5d71264e2c43f496c9130d0823706e8dff66de1c31defaa6`  
		Last Modified: Sat, 22 Sep 2018 08:24:39 GMT  
		Size: 42.8 MB (42782322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mediawiki:lts`

```console
$ docker pull mediawiki@sha256:aa831a128ae49e33fc5c1dea0d469a97de04cb29a2a7e9f775b36370ea9e665d
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
$ docker pull mediawiki@sha256:4d386df545b9cc5d1e0539ffc9445974209ebfea7249feda598b1083b7c19141
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.9 MB (223930034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72df0a53346f03eea55ef499aec494e1089062a2e0a4f5f8d408fb7f72bf5c32`
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
# Sat, 15 Sep 2018 04:38:22 GMT
ENV PHP_VERSION=7.0.32
# Sat, 15 Sep 2018 04:38:22 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.32.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.32.tar.xz.asc/from/this/mirror
# Sat, 15 Sep 2018 04:38:22 GMT
ENV PHP_SHA256=ff6f62afeb32c71b3b89ecbd42950ef6c5e0c329cc6e1c58ffac47e6f1f883c4 PHP_MD5=
# Sat, 15 Sep 2018 04:38:32 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 15 Sep 2018 04:38:32 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 15 Sep 2018 04:41:26 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 15 Sep 2018 04:41:27 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Sat, 15 Sep 2018 04:41:27 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 15 Sep 2018 04:41:27 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 15 Sep 2018 04:41:28 GMT
WORKDIR /var/www/html
# Sat, 15 Sep 2018 04:41:28 GMT
EXPOSE 80/tcp
# Sat, 15 Sep 2018 04:41:28 GMT
CMD ["apache2-foreground"]
# Sat, 15 Sep 2018 07:53:34 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 15 Sep 2018 07:55:05 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Sat, 15 Sep 2018 07:55:14 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Sat, 15 Sep 2018 07:55:15 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 15 Sep 2018 07:55:16 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 15 Sep 2018 07:55:16 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.27
# Sat, 15 Sep 2018 07:55:16 GMT
ENV MEDIAWIKI_BRANCH=REL1_27
# Fri, 21 Sep 2018 18:20:46 GMT
ENV MEDIAWIKI_VERSION=1.27.5
# Fri, 21 Sep 2018 18:20:47 GMT
ENV MEDIAWIKI_SHA512=2f341ed5afab24b81c315db6bcc58dd617f95231f71408c08bb2a8b974c95b7edd93d0f3c857f24058111c3228b9919a0f1c2fd2f85be940dc571e390225027a
# Fri, 21 Sep 2018 18:20:53 GMT
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
	-	`sha256:8aeded0a01b9c3e2b42f6e8d2894e3a52fa3ba75d23e9702d12ed378b10c0d53`  
		Last Modified: Sat, 15 Sep 2018 06:47:44 GMT  
		Size: 12.4 MB (12379854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c08ab63adbb16b66080c0a749db9366d75ccceb2752d5c69cc8869bc8326073`  
		Last Modified: Sat, 15 Sep 2018 06:47:43 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1fd6f6a74e69ff81ba2a31be4e4a7018f74679018960fdb4d89123e03b715cd`  
		Last Modified: Sat, 15 Sep 2018 06:47:46 GMT  
		Size: 14.3 MB (14281513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f544e3dd14913cb214d9ac723ee0d37ea9b5f1de8a0533ccab181ee4e5d0b00`  
		Last Modified: Sat, 15 Sep 2018 06:47:43 GMT  
		Size: 2.2 KB (2194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b356ba52e0f31dd8789388f6c4581e85655def9b818fa052dfa57cce0bfc11a2`  
		Last Modified: Sat, 15 Sep 2018 06:47:43 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbec72870a359c74792737bc7bf50614ac350e170e9c7f5be0a399c6f056e8c6`  
		Last Modified: Sat, 15 Sep 2018 07:57:19 GMT  
		Size: 56.3 MB (56336632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edc0d8c2b106316f0658484a73d89804a31f1555e422ff17aa92fd5a727896b1`  
		Last Modified: Sat, 15 Sep 2018 07:57:05 GMT  
		Size: 1.5 MB (1549021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dea0b0ad1e3916fee8eb6ea644730622eaa021494420e9978d58573a4211353c`  
		Last Modified: Sat, 15 Sep 2018 07:57:04 GMT  
		Size: 400.3 KB (400312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac30baaf359cf5eb03b7e594e139980ce2bcaae5f1442b0ae8e253a330030b61`  
		Last Modified: Sat, 15 Sep 2018 07:57:04 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0231407801bd0e5cafd08dcdce31a4d06921ac168ef2f44470917992986fced`  
		Last Modified: Sat, 15 Sep 2018 07:57:05 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e2992f658fbd32bbb3c7981d1b881a5d4190d7213fa608e29f003caf608c2fd`  
		Last Modified: Fri, 21 Sep 2018 18:22:59 GMT  
		Size: 31.9 MB (31933496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:lts` - linux; arm variant v5

```console
$ docker pull mediawiki@sha256:eb8971382330457f360db8835b20fe32ac5b6947ed04d378ee522c61f67d6bbb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.1 MB (209097379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c88575364b822e2d1214507c87dac54ef41e67c1289ab84f41ec855fe2e9cde3`
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
# Sat, 15 Sep 2018 10:06:17 GMT
ENV PHP_VERSION=7.0.32
# Sat, 15 Sep 2018 10:06:17 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.32.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.32.tar.xz.asc/from/this/mirror
# Sat, 15 Sep 2018 10:06:17 GMT
ENV PHP_SHA256=ff6f62afeb32c71b3b89ecbd42950ef6c5e0c329cc6e1c58ffac47e6f1f883c4 PHP_MD5=
# Sat, 15 Sep 2018 10:06:33 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 15 Sep 2018 10:06:34 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 15 Sep 2018 10:09:23 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 15 Sep 2018 10:09:25 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Sat, 15 Sep 2018 10:09:25 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 15 Sep 2018 10:09:26 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 15 Sep 2018 10:09:26 GMT
WORKDIR /var/www/html
# Sat, 15 Sep 2018 10:09:27 GMT
EXPOSE 80/tcp
# Sat, 15 Sep 2018 10:09:27 GMT
CMD ["apache2-foreground"]
# Sat, 15 Sep 2018 12:56:24 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 15 Sep 2018 12:59:15 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Sat, 15 Sep 2018 12:59:31 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Sat, 15 Sep 2018 12:59:32 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 15 Sep 2018 12:59:34 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 15 Sep 2018 12:59:35 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.27
# Sat, 15 Sep 2018 12:59:35 GMT
ENV MEDIAWIKI_BRANCH=REL1_27
# Sat, 22 Sep 2018 08:49:58 GMT
ENV MEDIAWIKI_VERSION=1.27.5
# Sat, 22 Sep 2018 08:49:59 GMT
ENV MEDIAWIKI_SHA512=2f341ed5afab24b81c315db6bcc58dd617f95231f71408c08bb2a8b974c95b7edd93d0f3c857f24058111c3228b9919a0f1c2fd2f85be940dc571e390225027a
# Sat, 22 Sep 2018 08:50:20 GMT
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
	-	`sha256:97e7e76c17f1c70ca42d3f991e00d814117f370588c1b117ca2c0476adfbaf96`  
		Last Modified: Sat, 15 Sep 2018 11:32:54 GMT  
		Size: 12.4 MB (12378198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d976ebc07f0c73ac1767ed203627639a6e980f8e667aab741bf71317b4bcf66`  
		Last Modified: Sat, 15 Sep 2018 11:32:52 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ba9cc9cf8b9aac399e384702dfc08ecfe10ff33c1a604ac04ac413a7dca4c93`  
		Last Modified: Sat, 15 Sep 2018 11:32:59 GMT  
		Size: 13.7 MB (13658120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:235a174f083c87fcf834ad0ffa713bb728220c6a7a50c309ee5cd18a4c2da112`  
		Last Modified: Sat, 15 Sep 2018 11:32:52 GMT  
		Size: 2.2 KB (2194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e56196f612a807d17fde6de20bcc50a54a03f0129532c44974bbe29e87c325a3`  
		Last Modified: Sat, 15 Sep 2018 11:32:52 GMT  
		Size: 903.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7f83b9cce20011524a99793e680e252ae6d5d6309b8880a29efa2baa5fc0808`  
		Last Modified: Sat, 15 Sep 2018 13:02:58 GMT  
		Size: 54.0 MB (53981878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4158a0e8e2824e4d259f3dc879086c8b3061f4ebb16f789140d022b52ffa7d9f`  
		Last Modified: Sat, 15 Sep 2018 13:02:41 GMT  
		Size: 1.5 MB (1485553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56147efc0d62f93fac9120454f90d6e7a7b1b054e83a24c451778fbd395698a8`  
		Last Modified: Sat, 15 Sep 2018 13:02:39 GMT  
		Size: 392.1 KB (392113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8997ebb280db53b6c7cfb50a2f159eb1b17c8b73e43bca6124de9f17552f27e6`  
		Last Modified: Sat, 15 Sep 2018 13:02:39 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ec3d61c63d92a050b72b15a4779af2cf72b62c2d86bfa7dc88cc4aaea057292`  
		Last Modified: Sat, 15 Sep 2018 13:02:39 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23b0d5a11e220636c3bb071c04c162cad45fe2d3fe14fb81d34230d45ba0a70b`  
		Last Modified: Sat, 22 Sep 2018 08:53:34 GMT  
		Size: 31.9 MB (31933545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:lts` - linux; arm variant v7

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

### `mediawiki:lts` - linux; arm64 variant v8

```console
$ docker pull mediawiki@sha256:ab77ce7fec817a77def7b3c812935e46b4f6a0945d7edef89238a54b69de3d6c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.4 MB (208400437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21965b6dbd1dcb6c73f07a39a1b73f1aa73b85f3e678c4aff9ac51f9090a5d89`
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
# Sat, 15 Sep 2018 15:53:55 GMT
ENV PHP_VERSION=7.0.32
# Sat, 15 Sep 2018 15:53:56 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.32.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.32.tar.xz.asc/from/this/mirror
# Sat, 15 Sep 2018 15:53:57 GMT
ENV PHP_SHA256=ff6f62afeb32c71b3b89ecbd42950ef6c5e0c329cc6e1c58ffac47e6f1f883c4 PHP_MD5=
# Sat, 15 Sep 2018 15:54:28 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 15 Sep 2018 15:54:34 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 15 Sep 2018 16:00:28 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 15 Sep 2018 16:00:31 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Sat, 15 Sep 2018 16:00:32 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 15 Sep 2018 16:00:33 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 15 Sep 2018 16:00:34 GMT
WORKDIR /var/www/html
# Sat, 15 Sep 2018 16:00:34 GMT
EXPOSE 80/tcp
# Sat, 15 Sep 2018 16:00:35 GMT
CMD ["apache2-foreground"]
# Sat, 15 Sep 2018 20:17:11 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 15 Sep 2018 20:20:31 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Sat, 15 Sep 2018 20:20:51 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Sat, 15 Sep 2018 20:20:56 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 15 Sep 2018 20:20:58 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 15 Sep 2018 20:21:06 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.27
# Sat, 15 Sep 2018 20:21:07 GMT
ENV MEDIAWIKI_BRANCH=REL1_27
# Sat, 22 Sep 2018 08:41:06 GMT
ENV MEDIAWIKI_VERSION=1.27.5
# Sat, 22 Sep 2018 08:41:07 GMT
ENV MEDIAWIKI_SHA512=2f341ed5afab24b81c315db6bcc58dd617f95231f71408c08bb2a8b974c95b7edd93d0f3c857f24058111c3228b9919a0f1c2fd2f85be940dc571e390225027a
# Sat, 22 Sep 2018 08:41:22 GMT
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
	-	`sha256:4acf3adae2be347b697be45383caee740bfb8869968041d64867a6509955c4e3`  
		Last Modified: Sat, 15 Sep 2018 18:41:24 GMT  
		Size: 12.4 MB (12378441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e29ceeb4123e16f7824934753bb18047be107a8b4fadb3336a3114cc0f3c0bc7`  
		Last Modified: Sat, 15 Sep 2018 18:41:21 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f48ce88533cb090d61c9d080a8fe2c78f5e2e7d152b48bb5d4410296c4334f7`  
		Last Modified: Sat, 15 Sep 2018 18:41:28 GMT  
		Size: 13.4 MB (13432453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:322d7ac121d2a32580f7ebdbae1dde94b0ccdb6ee3f17c4f6c2d611d837820ac`  
		Last Modified: Sat, 15 Sep 2018 18:41:21 GMT  
		Size: 2.2 KB (2194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:068aeb643b0a8f0f0fb6a41530effaa14ce268531c39d11dd15b9b6d812c99e3`  
		Last Modified: Sat, 15 Sep 2018 18:41:21 GMT  
		Size: 905.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ac91495098b7fb52a3d8ae4ba70779c0b7019599d958b96b4ceb0a26835a196`  
		Last Modified: Sat, 15 Sep 2018 20:25:19 GMT  
		Size: 54.1 MB (54130058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7503902fa16bee4f8e46573be78d699511b0ad4907a927971f58523a85002b5d`  
		Last Modified: Sat, 15 Sep 2018 20:24:57 GMT  
		Size: 1.5 MB (1486662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e46c519845b838587e92dd459db458cb4edb1a7abde23bb8631a71931f5f95ff`  
		Last Modified: Sat, 15 Sep 2018 20:24:56 GMT  
		Size: 395.0 KB (394954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbbc499cd8b9df8dc4f1f7fd71f1565c67d19662686c6dd46df5509b5ae4dba9`  
		Last Modified: Sat, 15 Sep 2018 20:24:55 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:011df23db08049d2b17b3146b525298d14c2ed73b83ffbc8930cc81f5a4bc2c1`  
		Last Modified: Sat, 15 Sep 2018 20:24:55 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54bce512e700a62ac4c07e0700543be0016e3071859f7400296ad357691fe69f`  
		Last Modified: Sat, 22 Sep 2018 08:44:34 GMT  
		Size: 31.9 MB (31933363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:lts` - linux; 386

```console
$ docker pull mediawiki@sha256:bb7c5d3e4b1544f9946732f339a7235373c64e6ea0748406c09fd140de284442
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.3 MB (229323433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00910d358cfb148e3daf6169245788781d06611e20e4fe43da1c4b2077ef0c75`
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
# Sat, 15 Sep 2018 14:16:27 GMT
ENV PHP_VERSION=7.0.32
# Sat, 15 Sep 2018 14:16:28 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.32.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.32.tar.xz.asc/from/this/mirror
# Sat, 15 Sep 2018 14:16:28 GMT
ENV PHP_SHA256=ff6f62afeb32c71b3b89ecbd42950ef6c5e0c329cc6e1c58ffac47e6f1f883c4 PHP_MD5=
# Sat, 15 Sep 2018 14:16:37 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 15 Sep 2018 14:16:38 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 15 Sep 2018 14:19:44 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 15 Sep 2018 14:19:45 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Sat, 15 Sep 2018 14:19:45 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 15 Sep 2018 14:19:45 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 15 Sep 2018 14:19:46 GMT
WORKDIR /var/www/html
# Sat, 15 Sep 2018 14:19:46 GMT
EXPOSE 80/tcp
# Sat, 15 Sep 2018 14:19:46 GMT
CMD ["apache2-foreground"]
# Sat, 15 Sep 2018 19:45:55 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 15 Sep 2018 19:47:21 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Sat, 15 Sep 2018 19:47:29 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Sat, 15 Sep 2018 19:47:30 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 15 Sep 2018 19:47:31 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 15 Sep 2018 19:47:31 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.27
# Sat, 15 Sep 2018 19:47:31 GMT
ENV MEDIAWIKI_BRANCH=REL1_27
# Sat, 22 Sep 2018 10:45:18 GMT
ENV MEDIAWIKI_VERSION=1.27.5
# Sat, 22 Sep 2018 10:45:18 GMT
ENV MEDIAWIKI_SHA512=2f341ed5afab24b81c315db6bcc58dd617f95231f71408c08bb2a8b974c95b7edd93d0f3c857f24058111c3228b9919a0f1c2fd2f85be940dc571e390225027a
# Sat, 22 Sep 2018 10:45:26 GMT
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
	-	`sha256:8b235f760158106a63f04b39c38a879125ae7270c78f274efa7e6ceaaea16779`  
		Last Modified: Sat, 15 Sep 2018 16:40:39 GMT  
		Size: 12.4 MB (12379236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7020cf61b2f791fd8abfde3fcd03e455b29e1b6fea1f2a953449a20cfb48e453`  
		Last Modified: Sat, 15 Sep 2018 16:40:37 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f3991b470b831ab9604f79808d1fd0f3aec196611121eed8358f70e6be4ddb0`  
		Last Modified: Sat, 15 Sep 2018 16:40:42 GMT  
		Size: 14.4 MB (14393867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbbf646d73cfa96498e56dd9a19d8da809704d356271432b15786450de225933`  
		Last Modified: Sat, 15 Sep 2018 16:40:38 GMT  
		Size: 2.2 KB (2194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:975bb728cb251f486dde4bab2b22d500af32128a88ebb037dafee665084a0dac`  
		Last Modified: Sat, 15 Sep 2018 16:40:37 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64772a41d91b9e8ae6136f5c19dc1635591e548fb218f67cf5395aae24ea60a8`  
		Last Modified: Sat, 15 Sep 2018 19:49:49 GMT  
		Size: 56.5 MB (56494152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0e93c9b7148bfa205e19759c7fabac9b364b0203e632d0729e2f27b09f50d2f`  
		Last Modified: Sat, 15 Sep 2018 19:49:32 GMT  
		Size: 1.6 MB (1552699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a90d39c47b1f97473477603be2ce11115c6fe76349afddc1dffd4b22ecbfe67e`  
		Last Modified: Sat, 15 Sep 2018 19:49:32 GMT  
		Size: 389.3 KB (389347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e56d1c2d450796556874909dfb8adc19a64481801981f9bfbfd85baeac21093`  
		Last Modified: Sat, 15 Sep 2018 19:49:32 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b57525fe878c22913f993cc00734de3621ed8c15b92386e897fd4bbce2fe9a03`  
		Last Modified: Sat, 15 Sep 2018 19:49:32 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c55efb361a7b21933dbcfa1675b19311bdfeff2ce25d186c408b7fa5b00f0c5a`  
		Last Modified: Sat, 22 Sep 2018 10:47:13 GMT  
		Size: 31.9 MB (31933519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:lts` - linux; ppc64le

```console
$ docker pull mediawiki@sha256:017a7b79b30724f4bebf75ae321eee88756b89fefa812ecf32c319d39b9871b6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.8 MB (218806527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbd4b38024895e6fa559401f3a12b4fa57ee250bfda471aa046120b0050505cb`
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
# Sat, 15 Sep 2018 11:52:58 GMT
ENV PHP_VERSION=7.0.32
# Sat, 15 Sep 2018 11:52:59 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.32.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.32.tar.xz.asc/from/this/mirror
# Sat, 15 Sep 2018 11:52:59 GMT
ENV PHP_SHA256=ff6f62afeb32c71b3b89ecbd42950ef6c5e0c329cc6e1c58ffac47e6f1f883c4 PHP_MD5=
# Sat, 15 Sep 2018 11:53:23 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 15 Sep 2018 11:53:24 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 15 Sep 2018 11:56:15 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 15 Sep 2018 11:56:16 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Sat, 15 Sep 2018 11:56:16 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 15 Sep 2018 11:56:17 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 15 Sep 2018 11:56:18 GMT
WORKDIR /var/www/html
# Sat, 15 Sep 2018 11:56:19 GMT
EXPOSE 80/tcp
# Sat, 15 Sep 2018 11:56:20 GMT
CMD ["apache2-foreground"]
# Sat, 15 Sep 2018 15:08:41 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 15 Sep 2018 15:10:44 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Sat, 15 Sep 2018 15:14:07 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu-5.1.8 	&& docker-php-ext-enable apcu
# Sat, 15 Sep 2018 15:14:09 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 15 Sep 2018 15:14:12 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 15 Sep 2018 15:14:13 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.27
# Sat, 15 Sep 2018 15:14:13 GMT
ENV MEDIAWIKI_BRANCH=REL1_27
# Sat, 22 Sep 2018 08:19:01 GMT
ENV MEDIAWIKI_VERSION=1.27.5
# Sat, 22 Sep 2018 08:19:02 GMT
ENV MEDIAWIKI_SHA512=2f341ed5afab24b81c315db6bcc58dd617f95231f71408c08bb2a8b974c95b7edd93d0f3c857f24058111c3228b9919a0f1c2fd2f85be940dc571e390225027a
# Sat, 22 Sep 2018 08:19:26 GMT
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
	-	`sha256:3fc1c74a6b9943bb80b45cde3d990b11adcf5e709269180ed0c3c72a93c41b64`  
		Last Modified: Sat, 15 Sep 2018 13:49:44 GMT  
		Size: 12.4 MB (12378551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:557cda51438083cb2905c76843f5f2d083ae5746cd1c3dbe0671eefc5a7bc131`  
		Last Modified: Sat, 15 Sep 2018 13:49:42 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d6933af49963a14b437a0b71e656b3b5012c0dc4e72fdbe1715dfd186f5d852`  
		Last Modified: Sat, 15 Sep 2018 13:49:47 GMT  
		Size: 14.1 MB (14067892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a374218e60193cc4f3157e13092d6a54cbf23a3d089573f3d5aabdc0f9b850ee`  
		Last Modified: Sat, 15 Sep 2018 13:49:42 GMT  
		Size: 2.2 KB (2191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f57f691f8c5d994a7a8a2dcfa371e4e645c1829dcd4f80b5d6ffc1ed81896ba`  
		Last Modified: Sat, 15 Sep 2018 13:49:42 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:678566ac358c207652adbc2ce49ddf3020cd9114750e4b7460f8e63bfcd5ad1d`  
		Last Modified: Sat, 15 Sep 2018 15:24:05 GMT  
		Size: 56.6 MB (56589504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:167997fbbf27218e48632e59df64b03f0cdc988c8abfd6b65f72b5a02a744066`  
		Last Modified: Sat, 15 Sep 2018 15:23:35 GMT  
		Size: 1.5 MB (1530907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc8626a6e324284bfd3302d7eabacb62a9231fe73f6ed7d164a338906c8940c2`  
		Last Modified: Sat, 15 Sep 2018 15:23:33 GMT  
		Size: 400.4 KB (400384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7615573435704de64821ec9c1882b8e3f0cf378f544671031d29b8b536742a90`  
		Last Modified: Sat, 15 Sep 2018 15:23:33 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9c8302f79f8a398327199ef5c122c544301ca9843c0fe5dd6834b7347ef492c`  
		Last Modified: Sat, 15 Sep 2018 15:23:32 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3573d9d4a3c5ab3ce7e59c2f31e19a78e64060868b88363d8a91b28e6310737a`  
		Last Modified: Sat, 22 Sep 2018 08:26:08 GMT  
		Size: 31.9 MB (31933832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mediawiki:stable`

```console
$ docker pull mediawiki@sha256:9d2ef799065f910ea510616a3c9781329031ed59971d7f6579067d3f7a968945
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
$ docker pull mediawiki@sha256:e97cd58d709fcee49c7b3b974457358cac04fb463be7fba15c1775cf19c53e35
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.4 MB (231396983 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff776a576d8361e2b8ed8880616dc15060a929d073222d3ddac6f1f092a9071c`
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
# Mon, 15 Oct 2018 18:28:47 GMT
ENV PHP_VERSION=7.2.11
# Mon, 15 Oct 2018 18:28:47 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.11.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.11.tar.xz.asc/from/this/mirror
# Mon, 15 Oct 2018 18:28:48 GMT
ENV PHP_SHA256=da1a705c0bc46410e330fc6baa967666c8cd2985378fb9707c01a8e33b01d985 PHP_MD5=
# Mon, 15 Oct 2018 18:28:56 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Mon, 15 Oct 2018 18:28:57 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 15 Oct 2018 18:32:49 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Mon, 15 Oct 2018 18:32:50 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Mon, 15 Oct 2018 18:32:50 GMT
RUN docker-php-ext-enable sodium
# Mon, 15 Oct 2018 18:32:51 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 15 Oct 2018 18:32:51 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Mon, 15 Oct 2018 18:32:51 GMT
WORKDIR /var/www/html
# Mon, 15 Oct 2018 18:32:51 GMT
EXPOSE 80/tcp
# Mon, 15 Oct 2018 18:32:52 GMT
CMD ["apache2-foreground"]
# Mon, 15 Oct 2018 21:38:48 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python3 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Mon, 15 Oct 2018 21:40:30 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Mon, 15 Oct 2018 21:40:46 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu 	&& docker-php-ext-enable apcu
# Mon, 15 Oct 2018 21:40:47 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Mon, 15 Oct 2018 21:40:54 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Mon, 15 Oct 2018 21:40:54 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.31
# Mon, 15 Oct 2018 21:40:54 GMT
ENV MEDIAWIKI_BRANCH=REL1_31
# Mon, 15 Oct 2018 21:40:55 GMT
ENV MEDIAWIKI_VERSION=1.31.1
# Mon, 15 Oct 2018 21:40:55 GMT
ENV MEDIAWIKI_SHA512=ee49649cc37d0a7d45a7c6d90c822c2a595df290be2b5bf085affbec3318768700a458a6e5b5b7e437651400b9641424429d6d304f870c22ec63fae86ffc5152
# Mon, 15 Oct 2018 21:41:01 GMT
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
	-	`sha256:2aa6a4938abfc833c9d40f5215a4c8d97d535047fd5c2527d8b97b76339299e9`  
		Last Modified: Mon, 15 Oct 2018 20:45:55 GMT  
		Size: 12.5 MB (12481341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f35a9f88b02f5920db1e7a6486017cfc3604f396de29b8ce0c9d2cbf5b4d2992`  
		Last Modified: Mon, 15 Oct 2018 20:45:48 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d8d0a45e8e97a6571489b501b863a58e2d5d5158413d10511a662948f044b90`  
		Last Modified: Mon, 15 Oct 2018 20:45:52 GMT  
		Size: 15.6 MB (15617699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cb174294b9de02512143f11b542a114b0148f1f9f086265c9cd82bdff2a3216`  
		Last Modified: Mon, 15 Oct 2018 20:45:48 GMT  
		Size: 2.2 KB (2194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1cdc5d5dd4951828fb1ee5d3ce0ed0fef39d09de60060adb8f4aa7b75af4132`  
		Last Modified: Mon, 15 Oct 2018 20:45:48 GMT  
		Size: 257.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4ed8fccbb330622882e8181a06c0bd413c71c63f949a8011566e88817115718`  
		Last Modified: Mon, 15 Oct 2018 20:45:48 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30825a2dff635d9c12f75c445c8deb30b11007bf7c913595e8af757bccf60435`  
		Last Modified: Mon, 15 Oct 2018 21:44:40 GMT  
		Size: 58.3 MB (58336877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5df02abb9b28f263c8c9d0da98a0f5f2c7608b2a8ea9288fe45803804279978a`  
		Last Modified: Mon, 15 Oct 2018 21:44:00 GMT  
		Size: 1.8 MB (1757315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6a4e269ff4fc5b90f3b587d4e187709ed4db45cd0beecc8af7a774312c06dda`  
		Last Modified: Mon, 15 Oct 2018 21:43:59 GMT  
		Size: 400.9 KB (400919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbed08b85a9195f9a1bd43f2b9859caf234bd99ec55a850986e9dcffeeb3d4ad`  
		Last Modified: Mon, 15 Oct 2018 21:43:59 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b59c2f08e79bb75acdd76b149e0d2ae088c5caf6a35debc5637b7a01f1856674`  
		Last Modified: Mon, 15 Oct 2018 21:43:59 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b4b5b02f7755f529095257f30ec8421829bc16d5e7044867f2a8b796beecf52`  
		Last Modified: Mon, 15 Oct 2018 21:44:17 GMT  
		Size: 35.8 MB (35753369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:stable` - linux; arm variant v5

```console
$ docker pull mediawiki@sha256:b4d7188f6fd3084f66270391104d3f9e5af220d15c0b8413c84f3c2bf26c803b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.3 MB (216304480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7cc6837020a11fddb7c8d57cf580751c52377a436f766d9579927a4a7f079565`
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
# Sat, 15 Sep 2018 12:46:50 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python3 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 15 Sep 2018 12:50:06 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Sat, 15 Sep 2018 12:50:22 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu 	&& docker-php-ext-enable apcu
# Sat, 15 Sep 2018 12:50:24 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 15 Sep 2018 12:50:25 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 15 Sep 2018 12:50:26 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.31
# Sat, 15 Sep 2018 12:50:26 GMT
ENV MEDIAWIKI_BRANCH=REL1_31
# Sat, 22 Sep 2018 08:48:35 GMT
ENV MEDIAWIKI_VERSION=1.31.1
# Sat, 22 Sep 2018 08:48:35 GMT
ENV MEDIAWIKI_SHA512=ee49649cc37d0a7d45a7c6d90c822c2a595df290be2b5bf085affbec3318768700a458a6e5b5b7e437651400b9641424429d6d304f870c22ec63fae86ffc5152
# Sat, 22 Sep 2018 08:48:59 GMT
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
	-	`sha256:f3f61b92a4bd0124008bc1143f2e7ec1e5b7256de8a79fe2a4854ecdbaf35021`  
		Last Modified: Sat, 15 Sep 2018 13:00:45 GMT  
		Size: 55.9 MB (55901328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbd097ebfd5199ff45c602d5d441e00a30a6a8e3431403044a3e341a3936696f`  
		Last Modified: Sat, 15 Sep 2018 13:00:26 GMT  
		Size: 1.7 MB (1687891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc6dbcddbb68cca71b86f81b33340df9b39b93bffe7cb5a4d7a65d01484662d4`  
		Last Modified: Sat, 15 Sep 2018 13:00:25 GMT  
		Size: 393.0 KB (392953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06e01d88b59ba4d33efe215d6b81bfb7548419668d0d442e0f411a485613d3fb`  
		Last Modified: Sat, 15 Sep 2018 13:00:25 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3119ce2cba753cd5d74cef8ed9bbfbb0a6322cbd65d675b59d6cabe2b4653b12`  
		Last Modified: Sat, 15 Sep 2018 13:00:25 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fbff13b56420bb44ae707afb047486ce88ed4037e49eff89f27471bbcdfc219`  
		Last Modified: Sat, 22 Sep 2018 08:51:06 GMT  
		Size: 35.8 MB (35752963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:stable` - linux; arm variant v7

```console
$ docker pull mediawiki@sha256:0ac6ef7e2166d3e9e7ed13d6113f6711302686dc7062ae48fc15095d7d4e8ea1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.7 MB (206708769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:902ebc2f8a3de0a552c0a80622fee36db6fdebea0e93ace91ad2c491770adbc0`
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
# Sat, 22 Sep 2018 11:58:31 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python3 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 22 Sep 2018 12:01:20 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Sat, 22 Sep 2018 12:01:35 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu 	&& docker-php-ext-enable apcu
# Sat, 22 Sep 2018 12:01:37 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 22 Sep 2018 12:01:38 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 22 Sep 2018 12:01:38 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.31
# Sat, 22 Sep 2018 12:01:38 GMT
ENV MEDIAWIKI_BRANCH=REL1_31
# Sat, 22 Sep 2018 12:01:39 GMT
ENV MEDIAWIKI_VERSION=1.31.1
# Sat, 22 Sep 2018 12:01:39 GMT
ENV MEDIAWIKI_SHA512=ee49649cc37d0a7d45a7c6d90c822c2a595df290be2b5bf085affbec3318768700a458a6e5b5b7e437651400b9641424429d6d304f870c22ec63fae86ffc5152
# Sat, 22 Sep 2018 12:02:01 GMT
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
	-	`sha256:06e91820fe8198e94068d9a2f22a7ab406cfec1b0c71fe5a99f48f524c6cecaa`  
		Last Modified: Sat, 22 Sep 2018 12:10:53 GMT  
		Size: 53.5 MB (53486626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b5412c3e21ef5d291bc3aa7a7e09051518a512314f46ff04800e2a1c00357f8`  
		Last Modified: Sat, 22 Sep 2018 12:10:37 GMT  
		Size: 1.6 MB (1636843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65ed2a01d64333eadc9ea0ddc79a5e3d9334034b73389593f77626b6f33d8b0b`  
		Last Modified: Sat, 22 Sep 2018 12:10:36 GMT  
		Size: 387.4 KB (387379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fccd67bc1ba52a3c25390d6b4f549b7947a8aebb6f8a1e93f792748cfc06274`  
		Last Modified: Sat, 22 Sep 2018 12:10:36 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:143af59313239881bce14a6d3f7f2a8dd1938e2c803ec702d9902ce7938e275d`  
		Last Modified: Sat, 22 Sep 2018 12:10:36 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48280823691b469d37e42f819929514928538f09f7bd4be49e5d4788fb787b2a`  
		Last Modified: Sat, 22 Sep 2018 12:10:53 GMT  
		Size: 35.8 MB (35753003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:stable` - linux; arm64 variant v8

```console
$ docker pull mediawiki@sha256:edb57a7ba15c69e3f2a5dc9f9ffcd7ec43c29decf67ca48e76e214f91b480d62
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.2 MB (215207125 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2cfa8be08f9ad5a45198cfa3996bb8c85d5dccd537bb7cdb5b17963aa8e41cf`
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
# Sat, 15 Sep 2018 20:05:04 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python3 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 15 Sep 2018 20:08:59 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Sat, 15 Sep 2018 20:09:20 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu 	&& docker-php-ext-enable apcu
# Sat, 15 Sep 2018 20:09:22 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 15 Sep 2018 20:09:23 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 15 Sep 2018 20:09:24 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.31
# Sat, 15 Sep 2018 20:09:25 GMT
ENV MEDIAWIKI_BRANCH=REL1_31
# Sat, 22 Sep 2018 08:39:55 GMT
ENV MEDIAWIKI_VERSION=1.31.1
# Sat, 22 Sep 2018 08:39:56 GMT
ENV MEDIAWIKI_SHA512=ee49649cc37d0a7d45a7c6d90c822c2a595df290be2b5bf085affbec3318768700a458a6e5b5b7e437651400b9641424429d6d304f870c22ec63fae86ffc5152
# Sat, 22 Sep 2018 08:40:10 GMT
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
	-	`sha256:c820c66538cc01ebcd2246b711141336f05ca1734466b94666c00b9eef28b31a`  
		Last Modified: Sat, 15 Sep 2018 20:22:16 GMT  
		Size: 55.7 MB (55657631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73e377710b4562042b45ac706d3df08eedd3759e639aaf1477aaaf09001e0e66`  
		Last Modified: Sat, 15 Sep 2018 20:21:51 GMT  
		Size: 1.7 MB (1686533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6f0dac512e609a1ce495d7e094784552fcc245ab57a95c3fd9d9dc67f30928d`  
		Last Modified: Sat, 15 Sep 2018 20:21:50 GMT  
		Size: 393.4 KB (393448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a8e23680c792067b188c46f281d519dd5646f6af23919ec671b70b81b3eb405`  
		Last Modified: Sat, 15 Sep 2018 20:21:50 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:991e32e40c34259933bdfd539c8f08a00ca6c627d731bee8c899d251abc7333e`  
		Last Modified: Sat, 15 Sep 2018 20:21:50 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6e70985cdeced99a8ca02410cff41c19d3a00d23b7ca8afd7678371901e19ff`  
		Last Modified: Sat, 22 Sep 2018 08:42:07 GMT  
		Size: 35.8 MB (35752019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:stable` - linux; 386

```console
$ docker pull mediawiki@sha256:878fb654296befdd32df9cc2c43cf99e5ee2903a2def847e853963bc9c38e760
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.8 MB (236769719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f075b0bbdae03ea1bbadd81494fcae8e476886ebdcbd3087d40c47fed0d52e3c`
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
# Sat, 15 Sep 2018 19:40:43 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python3 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 15 Sep 2018 19:42:19 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Sat, 15 Sep 2018 19:42:29 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu 	&& docker-php-ext-enable apcu
# Sat, 15 Sep 2018 19:42:29 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 15 Sep 2018 19:42:30 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 15 Sep 2018 19:42:30 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.31
# Sat, 15 Sep 2018 19:42:30 GMT
ENV MEDIAWIKI_BRANCH=REL1_31
# Sat, 22 Sep 2018 10:44:43 GMT
ENV MEDIAWIKI_VERSION=1.31.1
# Sat, 22 Sep 2018 10:44:43 GMT
ENV MEDIAWIKI_SHA512=ee49649cc37d0a7d45a7c6d90c822c2a595df290be2b5bf085affbec3318768700a458a6e5b5b7e437651400b9641424429d6d304f870c22ec63fae86ffc5152
# Sat, 22 Sep 2018 10:44:52 GMT
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
	-	`sha256:b43b3ad3bba0078edb519b97eec9689d3a539e0e6013e73ab1757a71d636308c`  
		Last Modified: Sat, 15 Sep 2018 19:48:21 GMT  
		Size: 58.5 MB (58487661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c55564d08e9f037bf723707a7d28e6b1bc28eeb56cd7943760afd4b8f843ee26`  
		Last Modified: Sat, 15 Sep 2018 19:48:03 GMT  
		Size: 1.8 MB (1756934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f21edb72c0338cd430e777d987212e40bb1be0572b32eb31d52a19b3a3d41181`  
		Last Modified: Sat, 15 Sep 2018 19:48:03 GMT  
		Size: 389.9 KB (389921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9db21ceda1b59bd9cd1faffdbee1a2671139db19da97dd865d6332c03e535b95`  
		Last Modified: Sat, 15 Sep 2018 19:48:02 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c32f0de36bbe09bb0e9622734462cadb6b373ed510764e590c042acfc132205a`  
		Last Modified: Sat, 15 Sep 2018 19:48:02 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42b8bc9057640bfc2969afae257992a7a7363b0b19e4f3e8322514be22708fdb`  
		Last Modified: Sat, 22 Sep 2018 10:45:53 GMT  
		Size: 35.8 MB (35752608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:stable` - linux; ppc64le

```console
$ docker pull mediawiki@sha256:01223f489b21ae2e3dc8b54fea95b17e2c7f1fd3d626c492e9869c72e5c0d1dd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.3 MB (226280038 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:983db8b9db835004553b36a6bf7e863cfa8fff487294c647be78daa89ba5f973`
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
# Sat, 15 Sep 2018 14:58:21 GMT
RUN apt-get update && apt-get install -y 		git 		imagemagick 		libicu-dev 		python3 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 15 Sep 2018 15:00:52 GMT
RUN docker-php-ext-install mbstring mysqli opcache intl
# Sat, 15 Sep 2018 15:01:16 GMT
RUN pecl channel-update pecl.php.net 	&& pecl install apcu 	&& docker-php-ext-enable apcu
# Sat, 15 Sep 2018 15:01:20 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 15 Sep 2018 15:01:23 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 15 Sep 2018 15:01:23 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.31
# Sat, 15 Sep 2018 15:01:24 GMT
ENV MEDIAWIKI_BRANCH=REL1_31
# Sat, 22 Sep 2018 08:17:26 GMT
ENV MEDIAWIKI_VERSION=1.31.1
# Sat, 22 Sep 2018 08:17:29 GMT
ENV MEDIAWIKI_SHA512=ee49649cc37d0a7d45a7c6d90c822c2a595df290be2b5bf085affbec3318768700a458a6e5b5b7e437651400b9641424429d6d304f870c22ec63fae86ffc5152
# Sat, 22 Sep 2018 08:17:56 GMT
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
	-	`sha256:2a720bd98233372795df37bf2bfe5c6cfa1eb2e5f1bc2ac9e374c730a7efa611`  
		Last Modified: Sat, 15 Sep 2018 15:20:13 GMT  
		Size: 58.6 MB (58576126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25fb1c9c97d805486b4699cec4614c47ccf13d74b28cce5b005ba50139e4cb1b`  
		Last Modified: Sat, 15 Sep 2018 15:19:45 GMT  
		Size: 1.7 MB (1740120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87673c571991aa08a81e3621725ce78985bb615160dcd0d6b799f85e20491939`  
		Last Modified: Sat, 15 Sep 2018 15:19:44 GMT  
		Size: 399.8 KB (399790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c31f92520d1216284f706a1bb071734075b798af99d370591e7a85dc9607737`  
		Last Modified: Sat, 15 Sep 2018 15:19:44 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3956296fb44df3ff3a2cdc02b64bf787fdb4e66a25937b9fbefa49702c405c7`  
		Last Modified: Sat, 15 Sep 2018 15:19:44 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fe91e2b41d2c0ce2264f443dec7d9db2ada870c7aaa61cd28fcc9ad9d966b8d`  
		Last Modified: Sat, 22 Sep 2018 08:22:55 GMT  
		Size: 35.8 MB (35753055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
