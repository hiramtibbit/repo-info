## `php:cli`

```console
$ docker pull php@sha256:046a6decf611b66a6e42a04463b8d179a221c61346f36d84778fbcbdb4a45451
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `php:cli` - linux; amd64

```console
$ docker pull php@sha256:e524037dfc84c01c7779e35d7ce3044c2c4cdb54f7cd9d82a9b317e261a3f396
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.0 MB (131036555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8473cbe51b2266629239b74891d0d76ca5c05e2fd82c2bd99a6152c14d46f2b8`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 01:53:50 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Fri, 16 Nov 2018 01:53:50 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 16 Nov 2018 01:54:30 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 16 Nov 2018 01:54:31 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 16 Nov 2018 01:54:32 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 16 Nov 2018 01:54:32 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 16 Nov 2018 01:54:32 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 16 Nov 2018 01:54:33 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 16 Nov 2018 03:10:11 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 16 Nov 2018 03:10:11 GMT
ENV PHP_VERSION=7.2.12
# Fri, 16 Nov 2018 03:10:11 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.12.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.12.tar.xz.asc/from/this/mirror
# Fri, 16 Nov 2018 03:10:12 GMT
ENV PHP_SHA256=989c04cc879ee71a5e1131db867f3c5102f1f7565f805e2bb8bde33f93147fe1 PHP_MD5=
# Fri, 16 Nov 2018 03:10:26 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 16 Nov 2018 03:10:27 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 16 Nov 2018 03:19:12 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 16 Nov 2018 03:19:13 GMT
COPY multi:bea61589f5a3f8f99b5cfe1d774a1d3e55f2589d6c15a6fd6696601525640b39 in /usr/local/bin/ 
# Fri, 16 Nov 2018 03:19:13 GMT
RUN docker-php-ext-enable sodium
# Fri, 16 Nov 2018 03:19:14 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 16 Nov 2018 03:19:14 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:a5a6f2f73cd8abbdc55d0df0d8834f7262713e87d6c8800ea3851f103025e0f0`  
		Last Modified: Thu, 15 Nov 2018 23:12:57 GMT  
		Size: 22.5 MB (22486277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:633e0d1cd2a336ecc3124ec0b06e1039049f1716554038b9dfc8c3529f6fd988`  
		Last Modified: Fri, 16 Nov 2018 08:15:58 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcdfdf7118ba156cb7115b991210623e82c6ad0f57aa55e38790f2bd734c50fa`  
		Last Modified: Fri, 16 Nov 2018 08:16:15 GMT  
		Size: 67.4 MB (67428583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e7dc76b176992c0aa2fd3f3bc438ac6be98897e6025b68e8652b24b132ec952`  
		Last Modified: Fri, 16 Nov 2018 08:15:57 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35f4eff7ab0f9f7d1e4c6cc974f7e37f69249ce4ffb3e1d07347d387ba8e30a7`  
		Last Modified: Fri, 16 Nov 2018 08:37:47 GMT  
		Size: 12.5 MB (12470478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f1e528293cb2b479a302698e8953c9c1326d512429229a3561d3b5a0372780b`  
		Last Modified: Fri, 16 Nov 2018 08:37:45 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d84e6ef5c1c71eb39c9541689cbf9bf1e01d8f2266e12ccf0988418a7d9f6166`  
		Last Modified: Fri, 16 Nov 2018 08:37:51 GMT  
		Size: 28.6 MB (28647861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5a84d39467f707f84e67022d92848f8a2f32ed9881404cc4e7fc8ee3240a741`  
		Last Modified: Fri, 16 Nov 2018 08:37:46 GMT  
		Size: 2.2 KB (2188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3557589ef6f988caed2046bd32a716193a523a371cb4d9b561730057660e0a1c`  
		Last Modified: Fri, 16 Nov 2018 08:37:45 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `php:cli` - linux; arm variant v5

```console
$ docker pull php@sha256:211dfa4e28b5ca5e28540221f54f54d8a0d7d11626e8aa39c174c0b4cbf9fbcb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.5 MB (118512047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d681d1ad064f9e6a7c0d4ced273a50b0405641052a209d07433396d2bc9ddaeb`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Fri, 16 Nov 2018 09:58:31 GMT
ADD file:571b664b51137693f1c3889a3ace44345b13edf68179c54841bcf69428925fb3 in / 
# Fri, 16 Nov 2018 09:58:32 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:28:49 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Fri, 16 Nov 2018 11:28:49 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 16 Nov 2018 11:29:36 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:29:38 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 16 Nov 2018 11:29:39 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 16 Nov 2018 11:29:39 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 16 Nov 2018 11:29:40 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 16 Nov 2018 11:29:40 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 16 Nov 2018 11:48:25 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 16 Nov 2018 11:48:25 GMT
ENV PHP_VERSION=7.2.12
# Fri, 16 Nov 2018 11:48:26 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.12.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.12.tar.xz.asc/from/this/mirror
# Fri, 16 Nov 2018 11:48:26 GMT
ENV PHP_SHA256=989c04cc879ee71a5e1131db867f3c5102f1f7565f805e2bb8bde33f93147fe1 PHP_MD5=
# Fri, 16 Nov 2018 11:48:43 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 16 Nov 2018 11:48:43 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 16 Nov 2018 11:52:40 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 16 Nov 2018 11:52:42 GMT
COPY multi:bea61589f5a3f8f99b5cfe1d774a1d3e55f2589d6c15a6fd6696601525640b39 in /usr/local/bin/ 
# Fri, 16 Nov 2018 11:52:45 GMT
RUN docker-php-ext-enable sodium
# Fri, 16 Nov 2018 11:52:45 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 16 Nov 2018 11:52:46 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:409ea78f2caa9a970b3fae4f7a23caf60fe64dd022e2b3841944e6d82da81c03`  
		Last Modified: Fri, 16 Nov 2018 10:13:25 GMT  
		Size: 21.2 MB (21163007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36be7f24ef8249a63caa2e9cf2d4a5240da49447f8f4b1022e6deaabc04ade65`  
		Last Modified: Fri, 16 Nov 2018 14:03:16 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63dd69dcf2218b5d34ed001407e1b7b7762ae29fc1cbb5cdff51c4dc98f446dc`  
		Last Modified: Fri, 16 Nov 2018 14:03:38 GMT  
		Size: 57.4 MB (57447645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30fbb3322a97ab486d1416315f7bc8a4a229380e180bfaa7e7debcf05ba88012`  
		Last Modified: Fri, 16 Nov 2018 14:03:17 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cbc097b44eaa76ee844ee13c44699fe4631072f116fb4392b2311a617ffc28d`  
		Last Modified: Fri, 16 Nov 2018 14:09:36 GMT  
		Size: 12.5 MB (12468430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca3c9cc356e3a644dd92985e24ef01e92283ca9fda28860c42b917a566e1e800`  
		Last Modified: Fri, 16 Nov 2018 14:09:35 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73976dd61708be677b2f222c7f860e89b8d262353534b078cc9f36294e265799`  
		Last Modified: Fri, 16 Nov 2018 14:09:43 GMT  
		Size: 27.4 MB (27429580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a0a86b7a6ade77d9d4b5e322ed49c5732e9684474cec1c50be40362857a9249`  
		Last Modified: Fri, 16 Nov 2018 14:09:35 GMT  
		Size: 2.2 KB (2186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5e0ac90918256cd209d9d228ac84260ece34efee6e112eab09a65c7c78c40c7`  
		Last Modified: Fri, 16 Nov 2018 14:09:34 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `php:cli` - linux; arm variant v7

```console
$ docker pull php@sha256:56282af1234d00e3e62e7ba9cba4e79e698ad362dfb113588af38455e8aecaa1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.6 MB (111644046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7523515ef4f9d0027e9c424e97ef1024700e8f1315054a1bb9d007fd75abb656`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Fri, 16 Nov 2018 13:09:32 GMT
ADD file:dbddf6cec329cf26640d0898aecbeff1c7a67bc245092317a47bfd07c1a49a2d in / 
# Fri, 16 Nov 2018 13:09:33 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 14:10:08 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Fri, 16 Nov 2018 14:10:09 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 16 Nov 2018 14:10:45 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 16 Nov 2018 14:10:46 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 16 Nov 2018 14:10:47 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 16 Nov 2018 14:10:48 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 16 Nov 2018 14:10:48 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 16 Nov 2018 14:10:49 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 16 Nov 2018 14:28:58 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 16 Nov 2018 14:28:59 GMT
ENV PHP_VERSION=7.2.12
# Fri, 16 Nov 2018 14:29:00 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.12.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.12.tar.xz.asc/from/this/mirror
# Fri, 16 Nov 2018 14:29:00 GMT
ENV PHP_SHA256=989c04cc879ee71a5e1131db867f3c5102f1f7565f805e2bb8bde33f93147fe1 PHP_MD5=
# Fri, 16 Nov 2018 14:29:14 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 16 Nov 2018 14:29:18 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 16 Nov 2018 14:34:04 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 16 Nov 2018 14:34:13 GMT
COPY multi:bea61589f5a3f8f99b5cfe1d774a1d3e55f2589d6c15a6fd6696601525640b39 in /usr/local/bin/ 
# Fri, 16 Nov 2018 14:34:14 GMT
RUN docker-php-ext-enable sodium
# Fri, 16 Nov 2018 14:34:21 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 16 Nov 2018 14:34:21 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:88950d48cb7db5e5f329d377a3f7f1260b31f4e0f2d7202fbfc08f7685b41580`  
		Last Modified: Fri, 16 Nov 2018 13:22:02 GMT  
		Size: 19.3 MB (19270059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21355781a0f0ae4258b9daa067e907f606ea30be39b2232a07920da1b3bf8fec`  
		Last Modified: Fri, 16 Nov 2018 16:33:58 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dac5b67a930b7b63a87e2bc220495f2d0f4096ecfe1260237df5b3f716c165b9`  
		Last Modified: Fri, 16 Nov 2018 16:34:15 GMT  
		Size: 53.6 MB (53562566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50bde8d59f01aab8d0c195f72026b4b79966994a188978b0bc3d450b17a9bb9b`  
		Last Modified: Fri, 16 Nov 2018 16:33:57 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cbc47ba30506d84426c6879f1003fb889169944b4c3fc3aeb4f72f07dff0830`  
		Last Modified: Fri, 16 Nov 2018 16:39:17 GMT  
		Size: 12.5 MB (12468348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74fb96ba29db93aca32792176a3e38fd3448c1eef962b4554d6995f743c2e051`  
		Last Modified: Fri, 16 Nov 2018 16:39:13 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:362dc42d1f57b98760ab6b4f32563114b953bd84e60d792e905a10c599b857a6`  
		Last Modified: Fri, 16 Nov 2018 16:39:20 GMT  
		Size: 26.3 MB (26339691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:246b1ad7b1a4297c398b56e7c639587e1798443aa73d01be8c4af2c92a6139ce`  
		Last Modified: Fri, 16 Nov 2018 16:39:13 GMT  
		Size: 2.2 KB (2184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7471fcce53f62350809806fb501529b10d409e89d976ee09e2d406621ca4f1c5`  
		Last Modified: Fri, 16 Nov 2018 16:39:13 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `php:cli` - linux; arm64 variant v8

```console
$ docker pull php@sha256:a71648429576d9fe640a8fdb57084e01fab6292915b17061fcb23178fafcaa14
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.8 MB (117830119 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e6fcbf0f8691454c2db50c7a5d93f3f6578415c18477242fe2b83f8922bd51d`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Fri, 16 Nov 2018 10:14:24 GMT
ADD file:f12d39e66b336ca9d9a73319a35399c91c68f9023de2c1385f873a4aa804228b in / 
# Fri, 16 Nov 2018 10:14:25 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 14:21:45 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Fri, 16 Nov 2018 14:21:46 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 16 Nov 2018 14:23:20 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 16 Nov 2018 14:23:21 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 16 Nov 2018 14:23:24 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 16 Nov 2018 14:23:25 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 16 Nov 2018 14:23:26 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 16 Nov 2018 14:23:27 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 16 Nov 2018 15:26:57 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 16 Nov 2018 15:26:57 GMT
ENV PHP_VERSION=7.2.12
# Fri, 16 Nov 2018 15:26:58 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.12.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.12.tar.xz.asc/from/this/mirror
# Fri, 16 Nov 2018 15:26:59 GMT
ENV PHP_SHA256=989c04cc879ee71a5e1131db867f3c5102f1f7565f805e2bb8bde33f93147fe1 PHP_MD5=
# Fri, 16 Nov 2018 15:27:32 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 16 Nov 2018 15:27:33 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 16 Nov 2018 15:35:57 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 16 Nov 2018 15:35:59 GMT
COPY multi:bea61589f5a3f8f99b5cfe1d774a1d3e55f2589d6c15a6fd6696601525640b39 in /usr/local/bin/ 
# Fri, 16 Nov 2018 15:36:01 GMT
RUN docker-php-ext-enable sodium
# Fri, 16 Nov 2018 15:36:01 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 16 Nov 2018 15:36:02 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:2216f9d9ff00a3bca028dc4e59b0b7dfcebea1fa5910cc432b3d2f2f4eb2016b`  
		Last Modified: Thu, 15 Nov 2018 01:53:09 GMT  
		Size: 20.3 MB (20331309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a20f889de053fff39ae65be0f7240e88f43cd7d5cc3ce7aeaaf79e994f15ca4e`  
		Last Modified: Fri, 16 Nov 2018 19:14:49 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92a09b0831d3316f5fb61092eb43820cfbc5d91a89ef4f50802e003378a653ff`  
		Last Modified: Fri, 16 Nov 2018 19:15:12 GMT  
		Size: 57.6 MB (57594135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62db69f3c43ab4e2bc5a954f58e4576702d0a8b81162ff2dcb8b27a21ff6acaf`  
		Last Modified: Fri, 16 Nov 2018 19:14:48 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53d6be607c97816e23b37785687da12a2493a1e3eec44a8a3504597cf5897773`  
		Last Modified: Fri, 16 Nov 2018 19:32:04 GMT  
		Size: 12.5 MB (12468711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f67f62d3cd092ba97a2024c7329d63e2715f89ece4423218abc8775ea041f0`  
		Last Modified: Fri, 16 Nov 2018 19:32:02 GMT  
		Size: 502.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41ab8cb5052483d910eddb6d3be1d8d1b31b08ef42f59fea58c4ded56624556f`  
		Last Modified: Fri, 16 Nov 2018 19:32:13 GMT  
		Size: 27.4 MB (27432608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f57760dd15d76ef766d2fed1899b5d55d1e2161948a9b6791643e410706dde6e`  
		Last Modified: Fri, 16 Nov 2018 19:32:02 GMT  
		Size: 2.2 KB (2185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddabe28766948869bd5fc806360d227734165ab5e4c1e16bd7e4f8f5501b4ab0`  
		Last Modified: Fri, 16 Nov 2018 19:32:02 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `php:cli` - linux; 386

```console
$ docker pull php@sha256:8289fc741547abf7a3a9fe3e34ae4535068ae6d8c1560107c745857ef49b9adc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.4 MB (136359620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:324daa517babcdfd57593945772c5b54270e954096ceb14e8345a1d78c5fca22`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Fri, 16 Nov 2018 12:37:07 GMT
ADD file:e79bc0c504d8730048ef2ccae209fa270a0e3785a4029777112a397261336279 in / 
# Fri, 16 Nov 2018 12:37:08 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:15:50 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Fri, 16 Nov 2018 18:15:51 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 16 Nov 2018 18:16:49 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:16:49 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 16 Nov 2018 18:16:50 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 16 Nov 2018 18:16:50 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 16 Nov 2018 18:16:51 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 16 Nov 2018 18:16:51 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 16 Nov 2018 19:25:57 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 16 Nov 2018 19:25:57 GMT
ENV PHP_VERSION=7.2.12
# Fri, 16 Nov 2018 19:25:57 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.12.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.12.tar.xz.asc/from/this/mirror
# Fri, 16 Nov 2018 19:25:57 GMT
ENV PHP_SHA256=989c04cc879ee71a5e1131db867f3c5102f1f7565f805e2bb8bde33f93147fe1 PHP_MD5=
# Fri, 16 Nov 2018 19:26:10 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 16 Nov 2018 19:26:10 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 16 Nov 2018 19:35:04 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 16 Nov 2018 19:35:04 GMT
COPY multi:bea61589f5a3f8f99b5cfe1d774a1d3e55f2589d6c15a6fd6696601525640b39 in /usr/local/bin/ 
# Fri, 16 Nov 2018 19:35:05 GMT
RUN docker-php-ext-enable sodium
# Fri, 16 Nov 2018 19:35:05 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 16 Nov 2018 19:35:05 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:137021d63f76f1d8c7a7bcdd4c59e1a909b9d440414a2623b215f830920128e4`  
		Last Modified: Thu, 15 Nov 2018 01:55:24 GMT  
		Size: 23.1 MB (23126776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4aebce9236da836da0da39112d9cf2d2c9ff837127af39bf38ee80f7fbceee9`  
		Last Modified: Sat, 17 Nov 2018 01:30:51 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4a806383cab0029a02e0165ccafdd761706ba5a4b24639db005626c764a3fab`  
		Last Modified: Sat, 17 Nov 2018 01:31:18 GMT  
		Size: 71.5 MB (71484757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47aac9c096cb4eec16074c6101d1461b4078b88562471628eda20bc601ca139e`  
		Last Modified: Sat, 17 Nov 2018 01:30:51 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:862e56b8edc6ec9af26d7760d9a27b8aec66daf2921fda4c3de3da5739e0f4d9`  
		Last Modified: Sat, 17 Nov 2018 01:49:29 GMT  
		Size: 12.5 MB (12469987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:775ffdb04e35c062d870de046f3c8623802e32382f8a8a6da928f2a09ed792c5`  
		Last Modified: Sat, 17 Nov 2018 01:49:26 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5784c2257251ea238ed763d6af2463d5a3dcd653d1cf37629d592bceb38a368e`  
		Last Modified: Sat, 17 Nov 2018 01:49:39 GMT  
		Size: 29.3 MB (29274745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77eb09fb864c24dc0dc5e57118dfb236d2a645ac1fd1dcc5a640ae058097063b`  
		Last Modified: Sat, 17 Nov 2018 01:49:26 GMT  
		Size: 2.2 KB (2186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13c3e068bb22307a907d4cef13fda1d47770db8402d2d3bda71a4f5d58cccd55`  
		Last Modified: Sat, 17 Nov 2018 01:49:26 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `php:cli` - linux; ppc64le

```console
$ docker pull php@sha256:8384c03f4f39ea6a3fd03194a7ea815ee41602ca006d54d928da852663fe105c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.5 MB (125514612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:718b38bd61167b3100d71bb8dc02c4432ce666d43106afe7a766ee1d1fa6a35e`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Fri, 16 Nov 2018 09:32:15 GMT
ADD file:204503423ebb04acd333e18949cb54bcaed457b7cc62e0b3ea379a6e8f2954d3 in / 
# Fri, 16 Nov 2018 09:32:22 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 13:29:47 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Fri, 16 Nov 2018 13:29:49 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 16 Nov 2018 13:31:03 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 16 Nov 2018 13:31:06 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 16 Nov 2018 13:31:08 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 16 Nov 2018 13:31:09 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 16 Nov 2018 13:31:19 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 16 Nov 2018 13:31:19 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 16 Nov 2018 14:11:50 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 16 Nov 2018 14:11:53 GMT
ENV PHP_VERSION=7.2.12
# Fri, 16 Nov 2018 14:11:55 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.12.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.12.tar.xz.asc/from/this/mirror
# Fri, 16 Nov 2018 14:11:57 GMT
ENV PHP_SHA256=989c04cc879ee71a5e1131db867f3c5102f1f7565f805e2bb8bde33f93147fe1 PHP_MD5=
# Fri, 16 Nov 2018 14:13:22 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 16 Nov 2018 14:13:24 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 16 Nov 2018 14:18:34 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Fri, 16 Nov 2018 14:18:36 GMT
COPY multi:bea61589f5a3f8f99b5cfe1d774a1d3e55f2589d6c15a6fd6696601525640b39 in /usr/local/bin/ 
# Fri, 16 Nov 2018 14:18:40 GMT
RUN docker-php-ext-enable sodium
# Fri, 16 Nov 2018 14:18:42 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 16 Nov 2018 14:18:44 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:5f1fd7593ff8841061926e767f73d9fd35ddfcbbe3858208ebf5ff0a20a961d0`  
		Last Modified: Fri, 16 Nov 2018 09:42:42 GMT  
		Size: 22.7 MB (22740714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:525a8972b97972b561c916db0eeb988df6c690c0327eb7bbd50dabe640267c26`  
		Last Modified: Fri, 16 Nov 2018 16:36:09 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8d30d763795613fabe9c44f25107d390b018c907e93539edd828f6aad6894fa`  
		Last Modified: Fri, 16 Nov 2018 16:36:40 GMT  
		Size: 61.8 MB (61809932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb5ece80e3e063a15e644cb8657370a0df63979da031a7e6f3b04cacf4fcc89f`  
		Last Modified: Fri, 16 Nov 2018 16:36:08 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09be655ab041f3117809d9e964c46b13399dc2b2f0692998743b7749f9348618`  
		Last Modified: Fri, 16 Nov 2018 16:53:39 GMT  
		Size: 12.5 MB (12468778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5159acacbb0fdf11b0745aa8ba1f13e3f1efb18dab310c0d143283a108b8bef`  
		Last Modified: Fri, 16 Nov 2018 16:53:37 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:180bc2c3081d38f4c596218465b895e79d3023c65e9ee12302adbcca57f9f81e`  
		Last Modified: Fri, 16 Nov 2018 16:53:48 GMT  
		Size: 28.5 MB (28491799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:363f03371c194005c0e01245c7b4365469db55c7dceb375f4d8d55332c2ce7ee`  
		Last Modified: Fri, 16 Nov 2018 16:53:37 GMT  
		Size: 2.2 KB (2188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2c890ed0afb5d922a55c842e3636b3633701c60c19ca2bccca4e63c204438d3`  
		Last Modified: Fri, 16 Nov 2018 16:53:37 GMT  
		Size: 261.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
