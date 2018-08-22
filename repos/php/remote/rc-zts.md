## `php:rc-zts`

```console
$ docker pull php@sha256:97e83da6cd1281ba3f930a5ca90eb321b07b8050c0158373318c2ce51ab8d018
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `php:rc-zts` - linux; amd64

```console
$ docker pull php@sha256:a7ae2d44ab32c66aeaa00fe2100e4e7e97e22552bf682f159fdcb6ca7853bfb8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.9 MB (127906132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:faeca7e7760e39d28c71f19cf84b890ef3408330fbc47cfba60921114d5bb7c5`
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
# Thu, 16 Nov 2017 00:14:10 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-maintainer-zts
# Thu, 16 Nov 2017 00:14:10 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 16 Nov 2017 00:14:10 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 16 Nov 2017 00:14:10 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 16 Nov 2017 00:14:10 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Thu, 16 Nov 2017 00:14:11 GMT
ENV PHP_VERSION=7.2.0RC6
# Thu, 16 Nov 2017 00:14:11 GMT
ENV PHP_URL=https://downloads.php.net/~pollita/php-7.2.0RC6.tar.xz PHP_ASC_URL=https://downloads.php.net/~pollita/php-7.2.0RC6.tar.xz.asc
# Thu, 16 Nov 2017 00:14:11 GMT
ENV PHP_SHA256=be4df00ff5b66e9f13c83e1d08d1d5384ae7ccc820e26f7e5f9e660011496a9e PHP_MD5=
# Thu, 16 Nov 2017 00:14:49 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Thu, 16 Nov 2017 00:14:49 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 16 Nov 2017 00:19:14 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libargon2-0-dev 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 16 Nov 2017 00:19:15 GMT
COPY multi:d237dc13cc37e124ffa6adaa98392420764ea5e4327263182c1b7a749bd736fa in /usr/local/bin/ 
# Thu, 16 Nov 2017 00:19:15 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 16 Nov 2017 00:19:16 GMT
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
	-	`sha256:c5cb989801d4549cc5ce16273cc1a4acd043841a9f6747f18ad7bb589b0ecef6`  
		Last Modified: Thu, 16 Nov 2017 00:23:59 GMT  
		Size: 12.4 MB (12411623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c9f393c7b12ec461e2101abb579e1c71c98c79940374cbceaa1d4c957363aa2`  
		Last Modified: Thu, 16 Nov 2017 00:23:58 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d32ab03ec3378a1fe2ce253d47ac748ead500bf0d4d7beaec01b13cc5ca5a53f`  
		Last Modified: Thu, 16 Nov 2017 00:24:00 GMT  
		Size: 10.2 MB (10233395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:280224d2c6b9b743cf388720ffc5543d0c6a3cc07ed6bfdd12be868958962f14`  
		Last Modified: Thu, 16 Nov 2017 00:23:57 GMT  
		Size: 2.2 KB (2173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `php:rc-zts` - linux; arm variant v5

```console
$ docker pull php@sha256:c6695bc2e1d1f890ea79285544437a163b5c3836e42c1991656e3e0e50c0df97
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.7 MB (115677925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1ffa96643dc54397c02859d581a26eb5bff93bdeaa4f15ebf7b85d86d54e954`
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
# Thu, 16 Nov 2017 14:50:24 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-maintainer-zts
# Thu, 16 Nov 2017 14:50:24 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 16 Nov 2017 14:50:24 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 16 Nov 2017 14:50:25 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 16 Nov 2017 14:50:25 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Thu, 16 Nov 2017 14:50:25 GMT
ENV PHP_VERSION=7.2.0RC6
# Thu, 16 Nov 2017 14:50:25 GMT
ENV PHP_URL=https://downloads.php.net/~pollita/php-7.2.0RC6.tar.xz PHP_ASC_URL=https://downloads.php.net/~pollita/php-7.2.0RC6.tar.xz.asc
# Thu, 16 Nov 2017 14:50:25 GMT
ENV PHP_SHA256=be4df00ff5b66e9f13c83e1d08d1d5384ae7ccc820e26f7e5f9e660011496a9e PHP_MD5=
# Fri, 17 Nov 2017 14:38:17 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 17 Nov 2017 14:38:18 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 17 Nov 2017 14:41:37 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libargon2-0-dev 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 17 Nov 2017 14:41:38 GMT
COPY multi:d237dc13cc37e124ffa6adaa98392420764ea5e4327263182c1b7a749bd736fa in /usr/local/bin/ 
# Fri, 17 Nov 2017 14:41:38 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 17 Nov 2017 14:41:39 GMT
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
	-	`sha256:1dc2969c48fff239299cc346983e1b9737e5b107b9c001c2f55c3737274cfa5c`  
		Last Modified: Fri, 17 Nov 2017 14:42:46 GMT  
		Size: 12.4 MB (12409680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efca43a2673ff76d62ef559af196a2796b3b56e5cb647864010ff699ea49b878`  
		Last Modified: Fri, 17 Nov 2017 14:42:44 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:065db498cb3f12e3b97f65d1e40909a30ac791ed0b3436102fdcd4cfae6f9fea`  
		Last Modified: Fri, 17 Nov 2017 14:42:48 GMT  
		Size: 9.7 MB (9694677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c2434bbeadfe211b8d26c62fef6d7a4cbedb07a989ba9e5b1fbd61a3333ea0f`  
		Last Modified: Fri, 17 Nov 2017 14:42:43 GMT  
		Size: 2.2 KB (2173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `php:rc-zts` - linux; arm variant v7

```console
$ docker pull php@sha256:ab369f0fbbaa97665ddee87c8e725ca11f7f277aa08de95ac54dce0c41b05a78
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.0 MB (108982141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e873ea9ec4bb170e4d351829d06349ceeabdb93ddb717c9fdc260d73df3c0b53`
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
# Thu, 16 Nov 2017 12:59:30 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-maintainer-zts
# Thu, 16 Nov 2017 12:59:30 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 16 Nov 2017 12:59:31 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 16 Nov 2017 12:59:31 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 16 Nov 2017 12:59:31 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Thu, 16 Nov 2017 12:59:31 GMT
ENV PHP_VERSION=7.2.0RC6
# Thu, 16 Nov 2017 12:59:32 GMT
ENV PHP_URL=https://downloads.php.net/~pollita/php-7.2.0RC6.tar.xz PHP_ASC_URL=https://downloads.php.net/~pollita/php-7.2.0RC6.tar.xz.asc
# Thu, 16 Nov 2017 12:59:32 GMT
ENV PHP_SHA256=be4df00ff5b66e9f13c83e1d08d1d5384ae7ccc820e26f7e5f9e660011496a9e PHP_MD5=
# Thu, 16 Nov 2017 12:59:43 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Thu, 16 Nov 2017 12:59:43 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 16 Nov 2017 13:02:40 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libargon2-0-dev 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 16 Nov 2017 13:02:41 GMT
COPY multi:d237dc13cc37e124ffa6adaa98392420764ea5e4327263182c1b7a749bd736fa in /usr/local/bin/ 
# Thu, 16 Nov 2017 13:02:42 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 16 Nov 2017 13:02:42 GMT
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
	-	`sha256:4c83e12664b6bee6b27bcf24c6162b714992ce69d390cbd11ab2931e61ba8099`  
		Last Modified: Thu, 16 Nov 2017 13:08:21 GMT  
		Size: 12.4 MB (12409645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6906a80135d492edd242ed34d3f5ce604e78c923e22cd426450f2ec62ebb309`  
		Last Modified: Thu, 16 Nov 2017 13:08:19 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51b31321966efd058feb6217e6413a38b71a68d834a4b49303c8d134d8e0434e`  
		Last Modified: Thu, 16 Nov 2017 13:08:22 GMT  
		Size: 9.2 MB (9155488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:232ea87bb69c539a2bff7f3510b86dd1a4308fb116b73d60254f6474bc6303d8`  
		Last Modified: Thu, 16 Nov 2017 13:08:19 GMT  
		Size: 2.2 KB (2172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `php:rc-zts` - linux; arm64 variant v8

```console
$ docker pull php@sha256:122a80b89233268f41742b50f8dc6d919e2bdd9a13bedbc5e44f1e2430fb20a3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (115008928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ef80c2a74e86c4da0d9d913cc8e9301e55ebccaef9a753d8ba5128b7caa04e4`
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
# Thu, 16 Nov 2017 03:23:08 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-maintainer-zts
# Thu, 16 Nov 2017 03:23:09 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 16 Nov 2017 03:23:10 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 16 Nov 2017 03:23:10 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 16 Nov 2017 03:23:11 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Thu, 16 Nov 2017 03:23:11 GMT
ENV PHP_VERSION=7.2.0RC6
# Thu, 16 Nov 2017 03:23:12 GMT
ENV PHP_URL=https://downloads.php.net/~pollita/php-7.2.0RC6.tar.xz PHP_ASC_URL=https://downloads.php.net/~pollita/php-7.2.0RC6.tar.xz.asc
# Thu, 16 Nov 2017 03:23:13 GMT
ENV PHP_SHA256=be4df00ff5b66e9f13c83e1d08d1d5384ae7ccc820e26f7e5f9e660011496a9e PHP_MD5=
# Fri, 17 Nov 2017 02:57:55 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 17 Nov 2017 02:57:55 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 17 Nov 2017 03:05:28 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libargon2-0-dev 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 17 Nov 2017 03:05:30 GMT
COPY multi:d237dc13cc37e124ffa6adaa98392420764ea5e4327263182c1b7a749bd736fa in /usr/local/bin/ 
# Fri, 17 Nov 2017 03:05:30 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 17 Nov 2017 03:05:31 GMT
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
	-	`sha256:27d0c164eaa6ae2fa01ee304114bbab786db751ba60a03eb4b54938bbff41d41`  
		Last Modified: Fri, 17 Nov 2017 03:07:27 GMT  
		Size: 12.4 MB (12409940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7997f357e5ee1bd6b4c2cc8dd91b2ca203e41c9d6263c918ef4cd4e953d23d4`  
		Last Modified: Fri, 17 Nov 2017 03:07:25 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:150f944b756ffb988b17b19dab2acf1fb6754940b780fe3f527296df3eaebccd`  
		Last Modified: Fri, 17 Nov 2017 03:07:29 GMT  
		Size: 9.7 MB (9665570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81fff08fdae460d7b0012f5b96cc953eb84d13b82d3d282ef954c07fa7d8369b`  
		Last Modified: Fri, 17 Nov 2017 03:07:26 GMT  
		Size: 2.2 KB (2174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `php:rc-zts` - linux; 386

```console
$ docker pull php@sha256:d579031f5e482f1a9e8f25e04efe26f30b2ba847ece63c2c4786ff4dcebe37ab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.2 MB (133187069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec22d4307834cdcd024e83e398bfab83db612e403a62071e5be41012023bf328`
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
# Thu, 16 Nov 2017 10:17:00 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-maintainer-zts
# Thu, 16 Nov 2017 10:17:00 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 16 Nov 2017 10:17:00 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 16 Nov 2017 10:17:01 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 16 Nov 2017 10:17:01 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Thu, 16 Nov 2017 10:17:01 GMT
ENV PHP_VERSION=7.2.0RC6
# Thu, 16 Nov 2017 10:17:01 GMT
ENV PHP_URL=https://downloads.php.net/~pollita/php-7.2.0RC6.tar.xz PHP_ASC_URL=https://downloads.php.net/~pollita/php-7.2.0RC6.tar.xz.asc
# Thu, 16 Nov 2017 10:17:01 GMT
ENV PHP_SHA256=be4df00ff5b66e9f13c83e1d08d1d5384ae7ccc820e26f7e5f9e660011496a9e PHP_MD5=
# Thu, 16 Nov 2017 10:17:16 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Thu, 16 Nov 2017 10:17:16 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 16 Nov 2017 10:21:54 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libargon2-0-dev 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 16 Nov 2017 10:21:55 GMT
COPY multi:d237dc13cc37e124ffa6adaa98392420764ea5e4327263182c1b7a749bd736fa in /usr/local/bin/ 
# Thu, 16 Nov 2017 10:21:55 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 16 Nov 2017 10:21:55 GMT
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
	-	`sha256:533d549f78a15c1e5897f8a786fd5dd913cb9eef0b66dd2d37c9e53d202103ac`  
		Last Modified: Thu, 16 Nov 2017 10:32:38 GMT  
		Size: 12.4 MB (12411095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96e77638aa03f0e74e25b899485b4ec18be0a45b03908266495f6868c434a963`  
		Last Modified: Thu, 16 Nov 2017 10:32:34 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abce35e9eaba46c1e2b117d9b4fb469e95b1571e44a7e82da2f808a2e0832bad`  
		Last Modified: Thu, 16 Nov 2017 10:32:37 GMT  
		Size: 10.5 MB (10484746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7340e99dac6ebee3f4c6a82df49ff9b6b6c185ed6c5b273d3fc3dd1ff196e6e`  
		Last Modified: Thu, 16 Nov 2017 10:32:34 GMT  
		Size: 2.2 KB (2176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `php:rc-zts` - linux; ppc64le

```console
$ docker pull php@sha256:3c72750f7ff103718bd3dfc72b8c95d8bce051120ca0e21c055c019d70dcce47
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.5 MB (122489883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad7f60b24c52b96faa9ebed6452ea5c251d741e4e22f11b2780158f935abb3e1`
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
# Thu, 16 Nov 2017 10:12:56 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-maintainer-zts
# Thu, 16 Nov 2017 10:12:57 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 16 Nov 2017 10:12:58 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 16 Nov 2017 10:12:59 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 16 Nov 2017 10:13:00 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Thu, 16 Nov 2017 10:13:01 GMT
ENV PHP_VERSION=7.2.0RC6
# Thu, 16 Nov 2017 10:13:02 GMT
ENV PHP_URL=https://downloads.php.net/~pollita/php-7.2.0RC6.tar.xz PHP_ASC_URL=https://downloads.php.net/~pollita/php-7.2.0RC6.tar.xz.asc
# Thu, 16 Nov 2017 10:13:03 GMT
ENV PHP_SHA256=be4df00ff5b66e9f13c83e1d08d1d5384ae7ccc820e26f7e5f9e660011496a9e PHP_MD5=
# Thu, 16 Nov 2017 10:15:02 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Thu, 16 Nov 2017 10:15:03 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 16 Nov 2017 10:18:57 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libargon2-0-dev 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 16 Nov 2017 10:18:59 GMT
COPY multi:d237dc13cc37e124ffa6adaa98392420764ea5e4327263182c1b7a749bd736fa in /usr/local/bin/ 
# Thu, 16 Nov 2017 10:19:00 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 16 Nov 2017 10:19:00 GMT
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
	-	`sha256:05f2741bf38833d9b5541956b5e9db6828e71813525355b46519cc50a6763d28`  
		Last Modified: Thu, 16 Nov 2017 10:36:00 GMT  
		Size: 12.4 MB (12410370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7703a3333788c3c6d4377c43e3e75cfef716570f34e9434ada9f7b264dd36fe`  
		Last Modified: Thu, 16 Nov 2017 10:36:00 GMT  
		Size: 503.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02556b13a4a936a9187818eeeebcda4ccb4f637a682a50c25687214169bb802a`  
		Last Modified: Thu, 16 Nov 2017 10:36:02 GMT  
		Size: 10.1 MB (10093022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:967dd361bdcaa0ce85daa3dc5a1dc0421cc9742f476fba9450e7ec3db67d95d7`  
		Last Modified: Thu, 16 Nov 2017 10:35:59 GMT  
		Size: 2.2 KB (2176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
