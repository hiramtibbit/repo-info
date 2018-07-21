## `php:5-jessie`

```console
$ docker pull php@sha256:2ccbc3b075fa2ab2c7e1ee5bf6e3bae919ac02c22b85c4e2d14fac4b028a86a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; arm variant v5

### `php:5-jessie` - linux; arm variant v5

```console
$ docker pull php@sha256:154589c295e54d3d1711339510f8af1597c379a5c74fd3ad1b8ac9562c096341
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.8 MB (134786020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4da032a940bee2b2457134df4a31524917148f5203d2efe245b4e1e4dfe6b75c`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Tue, 17 Jul 2018 08:50:04 GMT
ADD file:4f71ce5a537d5b850f449dc85c4ab5092c673eb0784e112eaeed004c1053c959 in / 
# Tue, 17 Jul 2018 08:50:05 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 12:44:47 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 17 Jul 2018 12:44:48 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 17 Jul 2018 12:46:01 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 17 Jul 2018 12:46:02 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 17 Jul 2018 12:46:03 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 17 Jul 2018 12:46:03 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 17 Jul 2018 12:46:03 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 17 Jul 2018 12:46:04 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 17 Jul 2018 13:53:10 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Sat, 21 Jul 2018 10:24:23 GMT
ENV PHP_VERSION=5.6.37
# Sat, 21 Jul 2018 10:24:24 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.37.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.37.tar.xz.asc/from/this/mirror
# Sat, 21 Jul 2018 10:24:24 GMT
ENV PHP_SHA256=5000d82610f9134aaedef28854ec3591f68dedf26a17b8935727dac2843bd256 PHP_MD5=
# Sat, 21 Jul 2018 10:24:58 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 21 Jul 2018 10:24:59 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 21 Jul 2018 10:28:07 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 21 Jul 2018 10:28:08 GMT
COPY multi:2cdcedabcf5a3b9ae610fab7848e94bc2f64b4d85710d55fd6f79e44dacf73d8 in /usr/local/bin/ 
# Sat, 21 Jul 2018 10:28:08 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 21 Jul 2018 10:28:09 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:6517acaf0fe60ef69bfcf8dfa76c43b4a1e5b4fedea418026ded2b0fe506ac2b`  
		Last Modified: Tue, 17 Jul 2018 09:02:44 GMT  
		Size: 52.4 MB (52447839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8ebcfe4e91018c54b3b8b2f602510f95ee2ad3dc9c65a528bd5377c24582687`  
		Last Modified: Tue, 17 Jul 2018 14:21:02 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8919e983b477f8437faf28f7f682e177c29d74682f22386b8fbc2b2858214cb`  
		Last Modified: Tue, 17 Jul 2018 14:21:20 GMT  
		Size: 59.8 MB (59796437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db69529f18778ef12771b01e88e9694bb9faa09c4b49372989120e1004682afb`  
		Last Modified: Tue, 17 Jul 2018 14:21:01 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c60d4e72cfc5e4d61a374402d8f6973b1a0761ad988a3bf11d100ad584a186f`  
		Last Modified: Sat, 21 Jul 2018 11:12:41 GMT  
		Size: 12.8 MB (12800289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3631149dcb733de818e65ce412d244c9f542f21f91718ead28447ed168a4e3b9`  
		Last Modified: Sat, 21 Jul 2018 11:12:40 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:698ebb0d394853c566edbefe33662776dc9e9d1bb2ba11d8b15bdc474052ff2f`  
		Last Modified: Sat, 21 Jul 2018 11:12:43 GMT  
		Size: 9.7 MB (9738338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea87c59361370688f0d02894a9e2add2420be81e75f9f46bcbd194b036826485`  
		Last Modified: Sat, 21 Jul 2018 11:12:40 GMT  
		Size: 2.2 KB (2181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
