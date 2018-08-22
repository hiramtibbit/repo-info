## `php:rc-fpm-stretch`

```console
$ docker pull php@sha256:802a593256e6296f668a0c74cd8c87038c84cc2088aa9c6c3844b598602cb91b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `php:rc-fpm-stretch` - linux; amd64

```console
$ docker pull php@sha256:2fb833b0326c22cc7ad2630ef72ec7bcc85cc1f87d912a6232890099ab8d8481
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.8 MB (131781758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18189b78fe09c26e0cbcccafafdee1a7962d317f9c98aa9b44eb69f740722aef`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

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
# Thu, 16 Nov 2017 00:09:28 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Thu, 16 Nov 2017 00:09:29 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 16 Nov 2017 00:09:29 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 16 Nov 2017 00:09:29 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 16 Nov 2017 00:09:29 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Thu, 16 Nov 2017 00:09:29 GMT
ENV PHP_VERSION=7.2.0RC6
# Thu, 16 Nov 2017 00:09:29 GMT
ENV PHP_URL=https://downloads.php.net/~pollita/php-7.2.0RC6.tar.xz PHP_ASC_URL=https://downloads.php.net/~pollita/php-7.2.0RC6.tar.xz.asc
# Thu, 16 Nov 2017 00:09:30 GMT
ENV PHP_SHA256=be4df00ff5b66e9f13c83e1d08d1d5384ae7ccc820e26f7e5f9e660011496a9e PHP_MD5=
# Thu, 16 Nov 2017 00:09:42 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Thu, 16 Nov 2017 00:09:43 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 16 Nov 2017 00:13:53 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libargon2-0-dev 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 16 Nov 2017 00:13:54 GMT
COPY multi:3a3ce8aa3891c64454909e9f8257446a1817abe660b49a7baaa26f28bfdc444d in /usr/local/bin/ 
# Thu, 16 Nov 2017 00:13:54 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 16 Nov 2017 00:13:54 GMT
WORKDIR /var/www/html
# Thu, 16 Nov 2017 00:13:55 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Thu, 16 Nov 2017 00:13:55 GMT
EXPOSE 9000/tcp
# Thu, 16 Nov 2017 00:13:55 GMT
CMD ["php-fpm"]
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
	-	`sha256:631199d19625f073123f59c28a9dbc9ee93a635194f05bb7efdb234123df3ad1`  
		Last Modified: Thu, 16 Nov 2017 00:23:17 GMT  
		Size: 12.4 MB (12411656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7488c205212f0738a0ba991cab73a0c65b566db6d988982a3f882ced4a27e83a`  
		Last Modified: Thu, 16 Nov 2017 00:23:11 GMT  
		Size: 502.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c69b19d0ee8ac98b2ea009f6353938b5326098cc8952e29ac535d27c416ffce`  
		Last Modified: Thu, 16 Nov 2017 00:23:14 GMT  
		Size: 14.1 MB (14101141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a4636dc04d8884056287ea6acd4a25eacd8075185f64b711b2bb5b8c6d98a2d`  
		Last Modified: Thu, 16 Nov 2017 00:23:11 GMT  
		Size: 2.2 KB (2175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ba296e0b5058d0336cc2a02817e1818784a7db98fe8a221f412fcc135fcc44d`  
		Last Modified: Thu, 16 Nov 2017 00:23:11 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7737457d61687d905d778646042a934edf31a3f4b4c6e5977be8a81fa822d7f`  
		Last Modified: Thu, 16 Nov 2017 00:23:11 GMT  
		Size: 7.7 KB (7714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `php:rc-fpm-stretch` - linux; arm variant v5

```console
$ docker pull php@sha256:b3abd27dd1a13c23b774637fba574657e20a787fbfa0a3104cf291082c8cc7a6
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.2 MB (119202014 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a87b2beff3b8463de72f13c683e1cf549fcb7aa540d8653feb3e02aab3b1124`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

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
# Thu, 16 Nov 2017 14:46:27 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Thu, 16 Nov 2017 14:46:27 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 16 Nov 2017 14:46:27 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 16 Nov 2017 14:46:28 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 16 Nov 2017 14:46:28 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Thu, 16 Nov 2017 14:46:28 GMT
ENV PHP_VERSION=7.2.0RC6
# Thu, 16 Nov 2017 14:46:28 GMT
ENV PHP_URL=https://downloads.php.net/~pollita/php-7.2.0RC6.tar.xz PHP_ASC_URL=https://downloads.php.net/~pollita/php-7.2.0RC6.tar.xz.asc
# Thu, 16 Nov 2017 14:46:28 GMT
ENV PHP_SHA256=be4df00ff5b66e9f13c83e1d08d1d5384ae7ccc820e26f7e5f9e660011496a9e PHP_MD5=
# Thu, 16 Nov 2017 14:46:42 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Thu, 16 Nov 2017 14:46:42 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 16 Nov 2017 14:50:01 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libargon2-0-dev 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 16 Nov 2017 14:50:02 GMT
COPY multi:3a3ce8aa3891c64454909e9f8257446a1817abe660b49a7baaa26f28bfdc444d in /usr/local/bin/ 
# Thu, 16 Nov 2017 14:50:02 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 16 Nov 2017 14:50:02 GMT
WORKDIR /var/www/html
# Thu, 16 Nov 2017 14:50:03 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Thu, 16 Nov 2017 14:50:03 GMT
EXPOSE 9000/tcp
# Thu, 16 Nov 2017 14:50:03 GMT
CMD ["php-fpm"]
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
	-	`sha256:fb24aff06819e00bb0e0c89f2d51c58d5a8b51d055225754f83d4d3ca2758125`  
		Last Modified: Thu, 16 Nov 2017 14:54:40 GMT  
		Size: 12.4 MB (12409672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:475f95da5ab17aea1cb2dc140f837021d10f5b351f11700c93b692550b98c845`  
		Last Modified: Thu, 16 Nov 2017 14:54:37 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ffbf4db528413cca096c8073784a08413f3561c1fe2ee5e2569dd42820e3edd`  
		Last Modified: Thu, 16 Nov 2017 14:54:41 GMT  
		Size: 13.2 MB (13210901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2410b12c37e54cd9d675266d78cbe9a874ba68dca8adcf8feb0e8d80d421ec5a`  
		Last Modified: Thu, 16 Nov 2017 14:54:36 GMT  
		Size: 2.2 KB (2174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58b00e13dcf3f908b9b54fe0203f6f1cbb12f73df6f87a72bf4d7ef174b14818`  
		Last Modified: Thu, 16 Nov 2017 14:54:37 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83325ad6e4c27530ecc478d2f4cbcc4b59a327c8cc0fe486d75bf7fc09020f2f`  
		Last Modified: Thu, 16 Nov 2017 14:54:36 GMT  
		Size: 7.7 KB (7714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `php:rc-fpm-stretch` - linux; arm variant v7

```console
$ docker pull php@sha256:d7caaebf56416191785dff8e2769334048b850731f6ea8e9294ffeaf0682f546
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.2 MB (112243972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc32c16b34904e35bedfb5be4d18977419f61d50f254caaac4e352bbc64a3029`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

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
# Thu, 16 Nov 2017 12:56:01 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Thu, 16 Nov 2017 12:56:01 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 16 Nov 2017 12:56:02 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 16 Nov 2017 12:56:02 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 16 Nov 2017 12:56:02 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Thu, 16 Nov 2017 12:56:02 GMT
ENV PHP_VERSION=7.2.0RC6
# Thu, 16 Nov 2017 12:56:02 GMT
ENV PHP_URL=https://downloads.php.net/~pollita/php-7.2.0RC6.tar.xz PHP_ASC_URL=https://downloads.php.net/~pollita/php-7.2.0RC6.tar.xz.asc
# Thu, 16 Nov 2017 12:56:03 GMT
ENV PHP_SHA256=be4df00ff5b66e9f13c83e1d08d1d5384ae7ccc820e26f7e5f9e660011496a9e PHP_MD5=
# Thu, 16 Nov 2017 12:56:14 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Thu, 16 Nov 2017 12:56:14 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 16 Nov 2017 12:59:14 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libargon2-0-dev 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 16 Nov 2017 12:59:15 GMT
COPY multi:3a3ce8aa3891c64454909e9f8257446a1817abe660b49a7baaa26f28bfdc444d in /usr/local/bin/ 
# Thu, 16 Nov 2017 12:59:16 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 16 Nov 2017 12:59:16 GMT
WORKDIR /var/www/html
# Thu, 16 Nov 2017 12:59:17 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Thu, 16 Nov 2017 12:59:17 GMT
EXPOSE 9000/tcp
# Thu, 16 Nov 2017 12:59:17 GMT
CMD ["php-fpm"]
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
	-	`sha256:cebbcce05ff689fa5b170f34c416e268ea593a86573ea5c92ef0fc7858819965`  
		Last Modified: Thu, 16 Nov 2017 13:07:23 GMT  
		Size: 12.4 MB (12409641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f43b03684f065c5bbf82a646df97bfc08bcfa08af61e4da21475f244570b8b`  
		Last Modified: Thu, 16 Nov 2017 13:07:22 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:969dc4da2b470fa06725542caca573f552c12494a024b3cf0421f06e3cce863d`  
		Last Modified: Thu, 16 Nov 2017 13:07:24 GMT  
		Size: 12.4 MB (12409447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c57dc40f5f36711830a653c02f57eafca3fef9c5a1f7e83abab59e385e8e327`  
		Last Modified: Thu, 16 Nov 2017 13:07:20 GMT  
		Size: 2.2 KB (2176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:902b161a2c7991d991e2b71a641ecdf4e0c091e7a1d91303f358308aaab3461d`  
		Last Modified: Thu, 16 Nov 2017 13:07:20 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73818fba33e36c74801094e05dace640d18878060ee31480deeea40f4cbb9e2b`  
		Last Modified: Thu, 16 Nov 2017 13:07:20 GMT  
		Size: 7.7 KB (7712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `php:rc-fpm-stretch` - linux; arm64 variant v8

```console
$ docker pull php@sha256:2c576134e86fbffbe6996ea2097f748c0b15ad6723025cd65eba7d00a84e68ec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.5 MB (118510887 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8061bd998156220baef30946ebdde9052a4af4706e1f8f8422db269c53e9fade`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

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
# Thu, 16 Nov 2017 03:14:15 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Thu, 16 Nov 2017 03:14:16 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 16 Nov 2017 03:14:16 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 16 Nov 2017 03:14:17 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 16 Nov 2017 03:14:18 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Thu, 16 Nov 2017 03:14:18 GMT
ENV PHP_VERSION=7.2.0RC6
# Thu, 16 Nov 2017 03:14:19 GMT
ENV PHP_URL=https://downloads.php.net/~pollita/php-7.2.0RC6.tar.xz PHP_ASC_URL=https://downloads.php.net/~pollita/php-7.2.0RC6.tar.xz.asc
# Thu, 16 Nov 2017 03:14:19 GMT
ENV PHP_SHA256=be4df00ff5b66e9f13c83e1d08d1d5384ae7ccc820e26f7e5f9e660011496a9e PHP_MD5=
# Thu, 16 Nov 2017 03:14:49 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Thu, 16 Nov 2017 03:14:50 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 16 Nov 2017 03:22:33 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libargon2-0-dev 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 16 Nov 2017 03:22:34 GMT
COPY multi:3a3ce8aa3891c64454909e9f8257446a1817abe660b49a7baaa26f28bfdc444d in /usr/local/bin/ 
# Thu, 16 Nov 2017 03:22:35 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 16 Nov 2017 03:22:35 GMT
WORKDIR /var/www/html
# Thu, 16 Nov 2017 03:22:37 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Thu, 16 Nov 2017 03:22:37 GMT
EXPOSE 9000/tcp
# Thu, 16 Nov 2017 03:22:38 GMT
CMD ["php-fpm"]
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
	-	`sha256:8edc3947be682d2e22903b7a289278acb89a443643058a98fbd48a411badd644`  
		Last Modified: Thu, 16 Nov 2017 03:32:08 GMT  
		Size: 12.4 MB (12409919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24869671cd47917c312028f672b8aebf800934d85721d77252757dd848db5b37`  
		Last Modified: Thu, 16 Nov 2017 03:32:03 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af158b88671394ec7402efc205c9602ff05a33428c07f36658bea0edd1af1925`  
		Last Modified: Thu, 16 Nov 2017 03:32:07 GMT  
		Size: 13.2 MB (13159704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9016237c2e9d4aafb2da6020d79a4de6bba91bd8789919e9e46332d36e2a05e3`  
		Last Modified: Thu, 16 Nov 2017 03:32:02 GMT  
		Size: 2.2 KB (2176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b0fca1674b49879937747e7d378010c8a9879ed850c74958434c9849fcfb38`  
		Last Modified: Thu, 16 Nov 2017 03:32:03 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f038340989d260cbd7c0e9822e55a8e65fe9f0082aec84b334a80cc7b274651a`  
		Last Modified: Thu, 16 Nov 2017 03:32:02 GMT  
		Size: 7.7 KB (7714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `php:rc-fpm-stretch` - linux; 386

```console
$ docker pull php@sha256:7acd0896c2b38d310b0909aa6ff8909108744fa40ca2dd52ac85e2b63cc21822
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.2 MB (137170351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96b650389224bf1049c8f4a528020a61b5b4e91f7103c995c9c4e98bd5a3edf7`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

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
# Thu, 16 Nov 2017 10:06:35 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Thu, 16 Nov 2017 10:06:35 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 16 Nov 2017 10:06:35 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 16 Nov 2017 10:06:35 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 16 Nov 2017 10:06:36 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Thu, 16 Nov 2017 10:06:36 GMT
ENV PHP_VERSION=7.2.0RC6
# Thu, 16 Nov 2017 10:06:36 GMT
ENV PHP_URL=https://downloads.php.net/~pollita/php-7.2.0RC6.tar.xz PHP_ASC_URL=https://downloads.php.net/~pollita/php-7.2.0RC6.tar.xz.asc
# Thu, 16 Nov 2017 10:06:36 GMT
ENV PHP_SHA256=be4df00ff5b66e9f13c83e1d08d1d5384ae7ccc820e26f7e5f9e660011496a9e PHP_MD5=
# Thu, 16 Nov 2017 10:07:07 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Thu, 16 Nov 2017 10:07:08 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 16 Nov 2017 10:11:38 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libargon2-0-dev 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 16 Nov 2017 10:11:38 GMT
COPY multi:3a3ce8aa3891c64454909e9f8257446a1817abe660b49a7baaa26f28bfdc444d in /usr/local/bin/ 
# Thu, 16 Nov 2017 10:11:38 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 16 Nov 2017 10:11:39 GMT
WORKDIR /var/www/html
# Thu, 16 Nov 2017 10:11:39 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Thu, 16 Nov 2017 10:11:40 GMT
EXPOSE 9000/tcp
# Thu, 16 Nov 2017 10:11:40 GMT
CMD ["php-fpm"]
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
	-	`sha256:d3bda787a64d101dd7aaf218315615182a53dc2c13eb50a126019f8743ab2e5c`  
		Last Modified: Thu, 16 Nov 2017 10:31:28 GMT  
		Size: 12.4 MB (12411105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:779884a3450b3b3407b802d917cc338e8846a2719b302d0906ec7c6539dbe491`  
		Last Modified: Thu, 16 Nov 2017 10:31:27 GMT  
		Size: 503.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ec1db67abd4e84d10a4c8014a83151b5c4e75ad967acecf607ec221bbc87bb2`  
		Last Modified: Thu, 16 Nov 2017 10:31:32 GMT  
		Size: 14.5 MB (14460174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24c01f87c57cdb0735c6479efb2e36457868419babf4b0728d4694e3a68c1960`  
		Last Modified: Thu, 16 Nov 2017 10:31:28 GMT  
		Size: 2.2 KB (2173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67e17998c2bb278826232b8c6d1f9d586667385b97ae4479ca03c53427f694dd`  
		Last Modified: Thu, 16 Nov 2017 10:31:27 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:210cec2d89e8b4a8736149376fad2494aadd7d85f005eff107d6c3c4dae57fae`  
		Last Modified: Thu, 16 Nov 2017 10:31:27 GMT  
		Size: 7.7 KB (7714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `php:rc-fpm-stretch` - linux; ppc64le

```console
$ docker pull php@sha256:a162069cd1eda51bcb311f0fc0500eb60ca2b7468252c20cfadd191d364fa7d7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.3 MB (126297609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e29177b9a5e5471e61763b13609fc014ae0742120a79b2e468260405ad41dfba`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

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
# Thu, 16 Nov 2017 10:06:58 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Thu, 16 Nov 2017 10:07:00 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 16 Nov 2017 10:07:00 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 16 Nov 2017 10:07:02 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 16 Nov 2017 10:07:03 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Thu, 16 Nov 2017 10:07:04 GMT
ENV PHP_VERSION=7.2.0RC6
# Thu, 16 Nov 2017 10:07:05 GMT
ENV PHP_URL=https://downloads.php.net/~pollita/php-7.2.0RC6.tar.xz PHP_ASC_URL=https://downloads.php.net/~pollita/php-7.2.0RC6.tar.xz.asc
# Thu, 16 Nov 2017 10:07:07 GMT
ENV PHP_SHA256=be4df00ff5b66e9f13c83e1d08d1d5384ae7ccc820e26f7e5f9e660011496a9e PHP_MD5=
# Thu, 16 Nov 2017 10:08:40 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Thu, 16 Nov 2017 10:08:42 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 16 Nov 2017 10:12:38 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libargon2-0-dev 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 16 Nov 2017 10:12:39 GMT
COPY multi:3a3ce8aa3891c64454909e9f8257446a1817abe660b49a7baaa26f28bfdc444d in /usr/local/bin/ 
# Thu, 16 Nov 2017 10:12:41 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 16 Nov 2017 10:12:42 GMT
WORKDIR /var/www/html
# Thu, 16 Nov 2017 10:12:45 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = [::]:9000'; 	} | tee php-fpm.d/zz-docker.conf
# Thu, 16 Nov 2017 10:12:46 GMT
EXPOSE 9000/tcp
# Thu, 16 Nov 2017 10:12:47 GMT
CMD ["php-fpm"]
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
	-	`sha256:75238a8e97f598b3fc3a98dbc3ade08116d04bf4330d83c81d46d15b4a871cc3`  
		Last Modified: Thu, 16 Nov 2017 10:35:32 GMT  
		Size: 12.4 MB (12410394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:903ff2fde9e849a0cecea2d63541fd8aba0c0b4f612de4398548bfb5138cb05c`  
		Last Modified: Thu, 16 Nov 2017 10:35:28 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36ae68be88e55510e219126b4475a5aa8b01a28ad9058dee5ab01217b455d865`  
		Last Modified: Thu, 16 Nov 2017 10:35:33 GMT  
		Size: 13.9 MB (13892855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c03b4e7ef0fed41240c125a32855f17f00adc67530d129659a2d047fdc0f4fc`  
		Last Modified: Thu, 16 Nov 2017 10:35:28 GMT  
		Size: 2.2 KB (2175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e831684600613db2b790fced87549e2cfd220f453540728263dbec1177bb6d3`  
		Last Modified: Thu, 16 Nov 2017 10:35:28 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04cb52bdfbfae7d5583ccefc9dde4acf3d46eded4db32cff068110f8d5d76c8f`  
		Last Modified: Thu, 16 Nov 2017 10:35:28 GMT  
		Size: 7.7 KB (7714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
