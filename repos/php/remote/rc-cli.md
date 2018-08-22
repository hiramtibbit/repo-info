## `php:rc-cli`

```console
$ docker pull php@sha256:b592eb32f2f975a5d7da3307dbc739cf961d1b4f30db6cf46f33802046474249
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `php:rc-cli` - linux; amd64

```console
$ docker pull php@sha256:fe335a3671d63d452720cc883d12dc89725df9b83547eea23df6fc24e9ec0280
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.8 MB (127775653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d32f1a65ad897aa7ec3ef34449df436383532b1298762abea45e872dc0bec193`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:48 GMT
ADD file:45233d6b5c9b91e9437065d3e7c332d1c4eb4bce8e1079a4c1af342c450abe67 in / 
# Sat, 04 Nov 2017 05:26:48 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 09:34:59 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Wed, 15 Nov 2017 23:59:02 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libargon2-0 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 15 Nov 2017 23:59:02 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 15 Nov 2017 23:59:03 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 15 Nov 2017 23:59:03 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 15 Nov 2017 23:59:03 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 15 Nov 2017 23:59:03 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 15 Nov 2017 23:59:03 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Wed, 15 Nov 2017 23:59:04 GMT
ENV PHP_VERSION=7.2.0RC6
# Wed, 15 Nov 2017 23:59:04 GMT
ENV PHP_URL=https://downloads.php.net/~pollita/php-7.2.0RC6.tar.xz PHP_ASC_URL=https://downloads.php.net/~pollita/php-7.2.0RC6.tar.xz.asc
# Wed, 15 Nov 2017 23:59:04 GMT
ENV PHP_SHA256=be4df00ff5b66e9f13c83e1d08d1d5384ae7ccc820e26f7e5f9e660011496a9e PHP_MD5=
# Wed, 15 Nov 2017 23:59:28 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 15 Nov 2017 23:59:28 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 16 Nov 2017 00:03:36 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libargon2-0-dev 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 16 Nov 2017 00:03:37 GMT
COPY multi:d237dc13cc37e124ffa6adaa98392420764ea5e4327263182c1b7a749bd736fa in /usr/local/bin/ 
# Thu, 16 Nov 2017 00:03:37 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 16 Nov 2017 00:03:37 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:bc95e04b23c06ba1b9bf092d07d1493177b218e0340bd2ed49dac351c1e34313`  
		Last Modified: Mon, 09 Oct 2017 21:42:28 GMT  
		Size: 22.5 MB (22492350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a2129b02a8d0ba0faf17a9cfd0faeecfc525cb0d5857576e8795f839c60d80e`  
		Last Modified: Thu, 16 Nov 2017 00:20:50 GMT  
		Size: 82.8 MB (82765906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c169a5fe5fbcfc3ea769cf0d787b84de8adadd48231adfbf29373b463d857aa`  
		Last Modified: Thu, 16 Nov 2017 00:20:31 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:772b10fff7a0d456cb904f1b0a2a4776e574b1d48500760f9152da8b010e3a9f`  
		Last Modified: Thu, 16 Nov 2017 00:20:35 GMT  
		Size: 12.4 MB (12411657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40bfebed53596a959fda0f2ab6deeeda8dfd62c4021aa4f488c7a6716bcef3e1`  
		Last Modified: Thu, 16 Nov 2017 00:20:31 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7408b2447b063670254ff4e336441e2decfe672594503c3408ce5a90cee64d3f`  
		Last Modified: Thu, 16 Nov 2017 00:20:40 GMT  
		Size: 10.1 MB (10102884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:304bb8fc7c5c6c657aaffac7d07ea56ac475173d967dd46d8ebbef595c66afe0`  
		Last Modified: Thu, 16 Nov 2017 00:20:31 GMT  
		Size: 2.2 KB (2172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `php:rc-cli` - linux; arm variant v5

```console
$ docker pull php@sha256:fb39d1fd506cf1b452eff23ab827d9e0601060a393d9b32cdf8fded0512a0a3d
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.5 MB (115478628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b21ddd89257b29a9291e9a500e9f4a41862a3ed86254f64a55364102402745f3`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:48 GMT
ADD file:ff9945b48b1ac236dcec24eb9dfaf52b7c151a3b11c8502391f0866dfb4e3ac3 in / 
# Mon, 09 Oct 2017 21:44:48 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:28:06 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Thu, 16 Nov 2017 14:38:26 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libargon2-0 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 16 Nov 2017 14:38:27 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 16 Nov 2017 14:38:27 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 16 Nov 2017 14:38:28 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 16 Nov 2017 14:38:28 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 16 Nov 2017 14:38:28 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 16 Nov 2017 14:38:29 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Thu, 16 Nov 2017 14:38:29 GMT
ENV PHP_VERSION=7.2.0RC6
# Thu, 16 Nov 2017 14:38:29 GMT
ENV PHP_URL=https://downloads.php.net/~pollita/php-7.2.0RC6.tar.xz PHP_ASC_URL=https://downloads.php.net/~pollita/php-7.2.0RC6.tar.xz.asc
# Thu, 16 Nov 2017 14:38:29 GMT
ENV PHP_SHA256=be4df00ff5b66e9f13c83e1d08d1d5384ae7ccc820e26f7e5f9e660011496a9e PHP_MD5=
# Thu, 16 Nov 2017 14:39:17 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Thu, 16 Nov 2017 14:39:18 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 16 Nov 2017 14:42:36 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libargon2-0-dev 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 16 Nov 2017 14:42:38 GMT
COPY multi:d237dc13cc37e124ffa6adaa98392420764ea5e4327263182c1b7a749bd736fa in /usr/local/bin/ 
# Thu, 16 Nov 2017 14:42:38 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 16 Nov 2017 14:42:38 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:836d5b6056a9815be79c76480a90299267f60201bd1e3396817003e6c14819cc`  
		Last Modified: Mon, 09 Oct 2017 21:50:56 GMT  
		Size: 21.2 MB (21166251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f8e9ebaca4c72217784ade7f6b94a86965ec1671d363563d3978003a3806d67`  
		Last Modified: Thu, 16 Nov 2017 14:52:32 GMT  
		Size: 72.4 MB (72404429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab05f72eda77ca14dc3735145e8c75e827301926acd92bf933e5f1ebeadfadb2`  
		Last Modified: Thu, 16 Nov 2017 14:52:09 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58d6c62f7d515952ff42a39f6bb1b4527b48fc0e8ca4ef505ff09ad93e129e67`  
		Last Modified: Thu, 16 Nov 2017 14:52:11 GMT  
		Size: 12.4 MB (12409664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73db2494184ceb3cf3a77d0a299090b132ee9acd4f62fc40a474c95379b72420`  
		Last Modified: Thu, 16 Nov 2017 14:52:09 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17edf46ee09b996d4081bf3063c538ce120e11785cc3981d91810acf02f9f605`  
		Last Modified: Thu, 16 Nov 2017 14:52:12 GMT  
		Size: 9.5 MB (9495397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e81d43dd615592019a27d81e9ab715cd7e62ea16fa46334184420d44952f9715`  
		Last Modified: Thu, 16 Nov 2017 14:52:09 GMT  
		Size: 2.2 KB (2173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `php:rc-cli` - linux; arm variant v7

```console
$ docker pull php@sha256:386c367c8f0f6438b55d3faaabc297242f85c71da01f8dc3f5380f2cdeda2edf
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.8 MB (108772342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14d34b1237da4e3eacada314a51b432b8a1092099c6c1c8d2abfcd7b2af3ada3`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:43 GMT
ADD file:b758c6c3ff989778bd740dde35c86b953fa09be913a7e02711b2881de6b8911d in / 
# Mon, 09 Oct 2017 21:45:44 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:56:44 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Thu, 16 Nov 2017 12:49:16 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libargon2-0 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 16 Nov 2017 12:49:16 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 16 Nov 2017 12:49:17 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 16 Nov 2017 12:49:17 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 16 Nov 2017 12:49:18 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 16 Nov 2017 12:49:18 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 16 Nov 2017 12:49:18 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Thu, 16 Nov 2017 12:49:19 GMT
ENV PHP_VERSION=7.2.0RC6
# Thu, 16 Nov 2017 12:49:19 GMT
ENV PHP_URL=https://downloads.php.net/~pollita/php-7.2.0RC6.tar.xz PHP_ASC_URL=https://downloads.php.net/~pollita/php-7.2.0RC6.tar.xz.asc
# Thu, 16 Nov 2017 12:49:19 GMT
ENV PHP_SHA256=be4df00ff5b66e9f13c83e1d08d1d5384ae7ccc820e26f7e5f9e660011496a9e PHP_MD5=
# Thu, 16 Nov 2017 12:49:31 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Thu, 16 Nov 2017 12:49:32 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 16 Nov 2017 12:52:31 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libargon2-0-dev 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 16 Nov 2017 12:52:33 GMT
COPY multi:d237dc13cc37e124ffa6adaa98392420764ea5e4327263182c1b7a749bd736fa in /usr/local/bin/ 
# Thu, 16 Nov 2017 12:52:33 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 16 Nov 2017 12:52:33 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:59e81a3fde58ec8d4b8f2f58b98ef2f4d951d37dd9b99b016fd294a8e07d7796`  
		Last Modified: Mon, 09 Oct 2017 21:52:49 GMT  
		Size: 19.3 MB (19277135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60fe12035c8008793b29b361e9c9ccba1b3eebe985cd7a25f3ab69dd5e54ac4f`  
		Last Modified: Thu, 16 Nov 2017 13:04:10 GMT  
		Size: 68.1 MB (68136987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6656610a28bd6a06500b8d328eb04c266e3eee08a0e2f8975680975c513f64ab`  
		Last Modified: Thu, 16 Nov 2017 13:03:50 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74f2f79e796462cdc60f7e82f3bf6ab468d95a753e3d85683c513cbcd0669650`  
		Last Modified: Thu, 16 Nov 2017 13:03:52 GMT  
		Size: 12.4 MB (12409626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9729262f34c66ae90a46dc51ae80931d818fa41d3a1d5350963db6e62de79f80`  
		Last Modified: Thu, 16 Nov 2017 13:03:50 GMT  
		Size: 503.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94101ee0c363476f1fc8f9ef612195bb6569f6e37e107fe3ffe7eb174740b9f2`  
		Last Modified: Thu, 16 Nov 2017 13:03:53 GMT  
		Size: 8.9 MB (8945703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c19d5906a594c5100dc28e8a133d50ae5263aa3d9c6c89cc58ee0ff318f2838e`  
		Last Modified: Thu, 16 Nov 2017 13:03:50 GMT  
		Size: 2.2 KB (2174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `php:rc-cli` - linux; arm64 variant v8

```console
$ docker pull php@sha256:6126b4e6ec40a67e57fd7c3231df759129fab390dda4969029f411cb44636060
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.8 MB (114804646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b7663ffae3dbdd900dcc939b71ea189cae933f53da3ac78fc61258ad67eac18`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:55 GMT
ADD file:3a528355cfc75437716aff3b517ef99ae602918d84d26dbafff0ed142248fb93 in / 
# Mon, 09 Oct 2017 21:47:56 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 02:27:50 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Thu, 16 Nov 2017 02:58:54 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libargon2-0 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 16 Nov 2017 02:58:55 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 16 Nov 2017 02:58:56 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 16 Nov 2017 02:58:57 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 16 Nov 2017 02:58:57 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 16 Nov 2017 02:58:58 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 16 Nov 2017 02:58:58 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Thu, 16 Nov 2017 02:58:59 GMT
ENV PHP_VERSION=7.2.0RC6
# Thu, 16 Nov 2017 02:58:59 GMT
ENV PHP_URL=https://downloads.php.net/~pollita/php-7.2.0RC6.tar.xz PHP_ASC_URL=https://downloads.php.net/~pollita/php-7.2.0RC6.tar.xz.asc
# Thu, 16 Nov 2017 02:59:00 GMT
ENV PHP_SHA256=be4df00ff5b66e9f13c83e1d08d1d5384ae7ccc820e26f7e5f9e660011496a9e PHP_MD5=
# Thu, 16 Nov 2017 02:59:33 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Thu, 16 Nov 2017 02:59:34 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 16 Nov 2017 03:06:50 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libargon2-0-dev 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 16 Nov 2017 03:06:51 GMT
COPY multi:d237dc13cc37e124ffa6adaa98392420764ea5e4327263182c1b7a749bd736fa in /usr/local/bin/ 
# Thu, 16 Nov 2017 03:06:52 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 16 Nov 2017 03:06:52 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:e907afd6e25615a4d3eb554d930cef57b87e79ec82413889c2eac38beb4eb8f7`  
		Last Modified: Mon, 09 Oct 2017 22:03:08 GMT  
		Size: 20.3 MB (20337143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1385480f75ce27757011948cd806b074ee79919476b1e1ec540e7a22e68241ac`  
		Last Modified: Thu, 16 Nov 2017 03:26:48 GMT  
		Size: 72.6 MB (72593417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f06c3e4d472fdc2d79360369dfbc4efdf5142f2dd4fac2aab39e8754c9b5848`  
		Last Modified: Thu, 16 Nov 2017 03:26:22 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c24b05c8c3545d8f65515df22927e05ffbe33634fef9797b11ec609c0375adf`  
		Last Modified: Thu, 16 Nov 2017 03:26:22 GMT  
		Size: 12.4 MB (12409935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26cfd6ad9ffdbf14d5ad60ad823988a9b2143229eaae415f892504eddb320350`  
		Last Modified: Thu, 16 Nov 2017 03:26:21 GMT  
		Size: 503.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc5ca64401bd85709455a3063f7fa1e7cb3a9bca9faad484fef78f511707cc64`  
		Last Modified: Thu, 16 Nov 2017 03:26:24 GMT  
		Size: 9.5 MB (9461287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2815c28945931c08ca45a7c583b414094a575211de5bf986d28701e5e916d120`  
		Last Modified: Thu, 16 Nov 2017 03:26:20 GMT  
		Size: 2.2 KB (2177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `php:rc-cli` - linux; 386

```console
$ docker pull php@sha256:1bd7317a00801930dcc4eb21c0d68f2d769fea28cc62e206fab32ad502e43f10
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.0 MB (133046891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95ba321c73419d664543252391874a2371cda7e515b887d1dca97114b904e49a`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:36 GMT
ADD file:6582536277127947668f7bfdc1471a4e36170915b91a4cb841e7e1bfa1de6535 in / 
# Mon, 09 Oct 2017 21:45:36 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:07:00 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Thu, 16 Nov 2017 09:44:50 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libargon2-0 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 16 Nov 2017 09:44:50 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 16 Nov 2017 09:44:51 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 16 Nov 2017 09:44:51 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 16 Nov 2017 09:44:51 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 16 Nov 2017 09:44:52 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 16 Nov 2017 09:44:52 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Thu, 16 Nov 2017 09:44:52 GMT
ENV PHP_VERSION=7.2.0RC6
# Thu, 16 Nov 2017 09:44:52 GMT
ENV PHP_URL=https://downloads.php.net/~pollita/php-7.2.0RC6.tar.xz PHP_ASC_URL=https://downloads.php.net/~pollita/php-7.2.0RC6.tar.xz.asc
# Thu, 16 Nov 2017 09:44:53 GMT
ENV PHP_SHA256=be4df00ff5b66e9f13c83e1d08d1d5384ae7ccc820e26f7e5f9e660011496a9e PHP_MD5=
# Thu, 16 Nov 2017 09:48:02 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Thu, 16 Nov 2017 09:48:02 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 16 Nov 2017 09:52:38 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libargon2-0-dev 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 16 Nov 2017 09:52:38 GMT
COPY multi:d237dc13cc37e124ffa6adaa98392420764ea5e4327263182c1b7a749bd736fa in /usr/local/bin/ 
# Thu, 16 Nov 2017 09:52:39 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 16 Nov 2017 09:52:39 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:b2b52fe46b29fe5d0689f26449c2114e40f0731d4ce3eb8c3941397b74205432`  
		Last Modified: Mon, 09 Oct 2017 21:53:42 GMT  
		Size: 23.1 MB (23128678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33113a7014afb9b8a62834cba32d272b27b537e2f80bf0e3bf268eb34dc61015`  
		Last Modified: Thu, 16 Nov 2017 10:28:19 GMT  
		Size: 87.2 MB (87159691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:084f935b8bcbdfadd42f70aaba02b8b31967f28260824c2d972af03f5271bf7d`  
		Last Modified: Thu, 16 Nov 2017 10:27:52 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1892d40355902f9a6b5f06dbb21e0963a205c9ffd2361164405538e8a92f0571`  
		Last Modified: Thu, 16 Nov 2017 10:27:54 GMT  
		Size: 12.4 MB (12411096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c3eed5f52e65a01b4c9830208f08875334b6ca0c3ff53a62a59f08ef2ab34e0`  
		Last Modified: Thu, 16 Nov 2017 10:27:52 GMT  
		Size: 502.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60ff0cba8f54100ec948b7d213e5e7e39351d5798650ee37b7bb9092b07916e0`  
		Last Modified: Thu, 16 Nov 2017 10:27:56 GMT  
		Size: 10.3 MB (10344567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13a4f388056733156932ce318ca31b90a493c37df901dd1d7d89a8d3ba22773c`  
		Last Modified: Thu, 16 Nov 2017 10:27:52 GMT  
		Size: 2.2 KB (2174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `php:rc-cli` - linux; ppc64le

```console
$ docker pull php@sha256:c2f4a23cd0e58648221cee522f759de49d4d052b90c0e9c474628f1137cf6c6c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.4 MB (122360300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a691cd86ffbcbdb76ca9d62aeac428364155d3487bd4f28c386e91a9578894a9`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:56 GMT
ADD file:7edf73437495be24244c16841b563be06c15452963f41ac940fb5e105ed96027 in / 
# Mon, 09 Oct 2017 21:45:58 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 04:07:33 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		libpcre3-dev 		make 		pkg-config 		re2c
# Thu, 16 Nov 2017 09:51:57 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		libargon2-0 		libedit2 		libsqlite3-0 		libxml2 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 16 Nov 2017 09:52:01 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 16 Nov 2017 09:52:07 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 16 Nov 2017 09:52:09 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 16 Nov 2017 09:52:11 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 16 Nov 2017 09:52:12 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 16 Nov 2017 09:52:13 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Thu, 16 Nov 2017 09:52:14 GMT
ENV PHP_VERSION=7.2.0RC6
# Thu, 16 Nov 2017 09:52:15 GMT
ENV PHP_URL=https://downloads.php.net/~pollita/php-7.2.0RC6.tar.xz PHP_ASC_URL=https://downloads.php.net/~pollita/php-7.2.0RC6.tar.xz.asc
# Thu, 16 Nov 2017 09:52:16 GMT
ENV PHP_SHA256=be4df00ff5b66e9f13c83e1d08d1d5384ae7ccc820e26f7e5f9e660011496a9e PHP_MD5=
# Thu, 16 Nov 2017 09:53:16 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Thu, 16 Nov 2017 09:53:17 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 16 Nov 2017 09:57:15 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libargon2-0-dev 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 16 Nov 2017 09:57:16 GMT
COPY multi:d237dc13cc37e124ffa6adaa98392420764ea5e4327263182c1b7a749bd736fa in /usr/local/bin/ 
# Thu, 16 Nov 2017 09:57:17 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 16 Nov 2017 09:57:19 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:c4860466fa1e6824151f4fa3a51ef0e9d7d3c3ba860e21d94e69988b65601260`  
		Last Modified: Mon, 09 Oct 2017 21:52:59 GMT  
		Size: 22.7 MB (22746217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6045f7530264f7ab91741ad995111621379e76eea9ca8d7ef06a2a749cfd153`  
		Last Modified: Thu, 16 Nov 2017 10:34:04 GMT  
		Size: 77.2 MB (77237381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae093934bfda7d9607ed0848081140ea7beefa810475e370453daf370eb2894d`  
		Last Modified: Thu, 16 Nov 2017 10:33:40 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f939e210b9cb83e003276c54e610bba4c774d301fdb694a4afc865e3549fbd7b`  
		Last Modified: Thu, 16 Nov 2017 10:33:42 GMT  
		Size: 12.4 MB (12410418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ede5d5b85cef9a60d7887dbab44f9c44b5717140a418bef869b6a12b290526d`  
		Last Modified: Thu, 16 Nov 2017 10:33:40 GMT  
		Size: 502.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b44703bc8af9f15df75b0d67cd2a2ec11aa13e94b615583dab593da9251e2413`  
		Last Modified: Thu, 16 Nov 2017 10:33:43 GMT  
		Size: 10.0 MB (9963394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea39dc41cbabc81eb03f8e061d6ee10886d5d42b961b63c261b359cdef8f1a59`  
		Last Modified: Thu, 16 Nov 2017 10:33:40 GMT  
		Size: 2.2 KB (2174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
