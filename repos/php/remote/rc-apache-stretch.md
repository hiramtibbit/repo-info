## `php:rc-apache-stretch`

```console
$ docker pull php@sha256:e284b6d5a78b3ae0ce3f3f2a1debad37bd1b48702d1ca39015ed0be0ef97c777
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `php:rc-apache-stretch` - linux; amd64

```console
$ docker pull php@sha256:eb078a92ef60fe9556c82430ee4dd74d8a73d73ec2ac2e0933dcd790c045c642
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.9 MB (134902598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ab218d2fc3620ccdcf00f9b4a67953653f4c07e9f2bd0098b3ca85b14033bf5`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

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
# Thu, 16 Nov 2017 00:06:17 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Thu, 16 Nov 2017 00:06:18 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 16 Nov 2017 00:06:18 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 16 Nov 2017 00:06:19 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Thu, 16 Nov 2017 00:06:19 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Thu, 16 Nov 2017 00:06:20 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Thu, 16 Nov 2017 00:06:20 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Thu, 16 Nov 2017 00:06:21 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Thu, 16 Nov 2017 00:06:21 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Thu, 16 Nov 2017 00:06:21 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 16 Nov 2017 00:06:21 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 16 Nov 2017 00:06:21 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 16 Nov 2017 00:06:22 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Thu, 16 Nov 2017 00:06:22 GMT
ENV PHP_VERSION=7.2.0RC6
# Thu, 16 Nov 2017 00:06:22 GMT
ENV PHP_URL=https://downloads.php.net/~pollita/php-7.2.0RC6.tar.xz PHP_ASC_URL=https://downloads.php.net/~pollita/php-7.2.0RC6.tar.xz.asc
# Thu, 16 Nov 2017 00:06:22 GMT
ENV PHP_SHA256=be4df00ff5b66e9f13c83e1d08d1d5384ae7ccc820e26f7e5f9e660011496a9e PHP_MD5=
# Thu, 16 Nov 2017 00:06:35 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Thu, 16 Nov 2017 00:06:35 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 16 Nov 2017 00:09:13 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libargon2-0-dev 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 16 Nov 2017 00:09:14 GMT
COPY multi:dbabcc0b81566a75f49e7faa9ca5f96cd22a515b80ee7ea1e34fceceee3f9c2a in /usr/local/bin/ 
# Thu, 16 Nov 2017 00:09:14 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 16 Nov 2017 00:09:14 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Thu, 16 Nov 2017 00:09:15 GMT
WORKDIR /var/www/html
# Thu, 16 Nov 2017 00:09:15 GMT
EXPOSE 80/tcp
# Thu, 16 Nov 2017 00:09:15 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:d3d80593047a14eddf2f7dba437653ed51182b3de9969706d92f9f673a081974`  
		Last Modified: Thu, 16 Nov 2017 00:22:26 GMT  
		Size: 2.9 MB (2922180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfaa4ded39f82dbce2cb25640cd44ad4d873d8bcdc5bb08250e471f18d6ca67a`  
		Last Modified: Thu, 16 Nov 2017 00:22:23 GMT  
		Size: 1.2 KB (1241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cf01f4ca0fff16b1f47ab67490db3fc58abab1357406a7203d147c9c3280c3f`  
		Last Modified: Thu, 16 Nov 2017 00:22:22 GMT  
		Size: 430.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:922b531da5240820449d77f3c6bbd2cac865e4f3e10557a4737486798ecc170c`  
		Last Modified: Thu, 16 Nov 2017 00:22:21 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc7f58407c859125fbac0c84f3b3b179e6d28ae77b015b0c0b7d681917c4dc2d`  
		Last Modified: Thu, 16 Nov 2017 00:22:20 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bfe6cf7938c7b8c04df6b3b4336b01b752d524b61c1880ba58da8b88bb869e7`  
		Last Modified: Thu, 16 Nov 2017 00:22:20 GMT  
		Size: 12.4 MB (12430750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca3dba2c93bd83d7b372c07a134a111dab3f8ef4712ffb01971c6a3e3624fbb3`  
		Last Modified: Thu, 16 Nov 2017 00:22:18 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c1e1ac9baac4357bc7d8389ac18a9d8807675e4b9c3bd39e7b6bd67112a341a`  
		Last Modified: Thu, 16 Nov 2017 00:22:23 GMT  
		Size: 14.3 MB (14285256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9561d0f510a142b0bce30b136411e5cd15d90de8ae1bad3a3dca4a95c00ca7ca`  
		Last Modified: Thu, 16 Nov 2017 00:22:18 GMT  
		Size: 2.2 KB (2180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15e2b6b574435a64e2b15826d77d2240a64f695a00940b19027c88d64d294f28`  
		Last Modified: Thu, 16 Nov 2017 00:22:21 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `php:rc-apache-stretch` - linux; arm variant v5

```console
$ docker pull php@sha256:1979a28952a29145811ffd45bfa4acbc97a5f60c6bb3df38b4b78ba84b4143be
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.3 MB (122293093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f22d68e185b9140d402f42328bf143c9c144d526886ddf932ce45d3932ed2d76`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

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
# Thu, 16 Nov 2017 14:43:15 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Thu, 16 Nov 2017 14:43:15 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 16 Nov 2017 14:43:16 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 16 Nov 2017 14:43:16 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Thu, 16 Nov 2017 14:43:17 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Thu, 16 Nov 2017 14:43:18 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Thu, 16 Nov 2017 14:43:19 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Thu, 16 Nov 2017 14:43:19 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Thu, 16 Nov 2017 14:43:20 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Thu, 16 Nov 2017 14:43:20 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 16 Nov 2017 14:43:20 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 16 Nov 2017 14:43:20 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 16 Nov 2017 14:43:21 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Thu, 16 Nov 2017 14:43:21 GMT
ENV PHP_VERSION=7.2.0RC6
# Thu, 16 Nov 2017 14:43:21 GMT
ENV PHP_URL=https://downloads.php.net/~pollita/php-7.2.0RC6.tar.xz PHP_ASC_URL=https://downloads.php.net/~pollita/php-7.2.0RC6.tar.xz.asc
# Thu, 16 Nov 2017 14:43:21 GMT
ENV PHP_SHA256=be4df00ff5b66e9f13c83e1d08d1d5384ae7ccc820e26f7e5f9e660011496a9e PHP_MD5=
# Thu, 16 Nov 2017 14:43:35 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Thu, 16 Nov 2017 14:43:36 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 16 Nov 2017 14:46:09 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libargon2-0-dev 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 16 Nov 2017 14:46:10 GMT
COPY multi:dbabcc0b81566a75f49e7faa9ca5f96cd22a515b80ee7ea1e34fceceee3f9c2a in /usr/local/bin/ 
# Thu, 16 Nov 2017 14:46:10 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 16 Nov 2017 14:46:10 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Thu, 16 Nov 2017 14:46:11 GMT
WORKDIR /var/www/html
# Thu, 16 Nov 2017 14:46:11 GMT
EXPOSE 80/tcp
# Thu, 16 Nov 2017 14:46:11 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:1a3ad39ad3c12955f1e6de4fd931d72c466f2989c9a572a92c862fd6c7b09da2`  
		Last Modified: Thu, 16 Nov 2017 14:53:53 GMT  
		Size: 2.8 MB (2801027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d342410e9d6fe3b27d71a6aebcc35714a6deea8b59d33a27ff0feb27de1c9df`  
		Last Modified: Thu, 16 Nov 2017 14:53:52 GMT  
		Size: 1.3 KB (1270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf5b908c9766797d94097ebd03ff4c1ec23353840e343702076ba6477eacb51c`  
		Last Modified: Thu, 16 Nov 2017 14:53:51 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bf686c3c9f3480afa1b1ae0c9b1b01aea1ea4f77a2522b45135226d2d661823`  
		Last Modified: Thu, 16 Nov 2017 14:53:51 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a1730f88bf1c871ced7e8dc1cfc706572e559af94027ed0aee98606dc1c1385`  
		Last Modified: Thu, 16 Nov 2017 14:53:51 GMT  
		Size: 513.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa5b0e2ca95c24d1dcd23f17f3d6391080c46c3064233e129785db60c2de5bb1`  
		Last Modified: Thu, 16 Nov 2017 14:53:52 GMT  
		Size: 12.4 MB (12429084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1142fa938d760ef64675ee4455db29c1fe437695ccd8ac63f117c12c61c9d0f9`  
		Last Modified: Thu, 16 Nov 2017 14:53:50 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c4a7734d26a19f6760bfd62eec6429da2cbe05f92c6e09e494546cdadba6c4b`  
		Last Modified: Thu, 16 Nov 2017 14:53:54 GMT  
		Size: 13.5 MB (13486017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dfd15d9237c7efeb59ca5c1047049f7ba59659dd9a04bf1b0505ec5bfd72c37`  
		Last Modified: Thu, 16 Nov 2017 14:53:50 GMT  
		Size: 2.2 KB (2183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11b1955583fdaf4143e8c55520996216d2ea2d29c203efb51555b9f7c980d000`  
		Last Modified: Thu, 16 Nov 2017 14:53:50 GMT  
		Size: 905.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `php:rc-apache-stretch` - linux; arm variant v7

```console
$ docker pull php@sha256:647bdebaf274b6a49a148aa6f69e6897f3337c1cf7f53c2e6c20049576369362
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.2 MB (115159301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9cffcb6ce593a12c190e32dc80905c4a3353db1a0dd2d0a2e58a3a58ba9e10e`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

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
# Thu, 16 Nov 2017 12:52:56 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Thu, 16 Nov 2017 12:52:56 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 16 Nov 2017 12:52:56 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 16 Nov 2017 12:52:57 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Thu, 16 Nov 2017 12:52:58 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Thu, 16 Nov 2017 12:52:59 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Thu, 16 Nov 2017 12:53:00 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Thu, 16 Nov 2017 12:53:00 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Thu, 16 Nov 2017 12:53:00 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Thu, 16 Nov 2017 12:53:00 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 16 Nov 2017 12:53:01 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 16 Nov 2017 12:53:01 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 16 Nov 2017 12:53:01 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Thu, 16 Nov 2017 12:53:02 GMT
ENV PHP_VERSION=7.2.0RC6
# Thu, 16 Nov 2017 12:53:02 GMT
ENV PHP_URL=https://downloads.php.net/~pollita/php-7.2.0RC6.tar.xz PHP_ASC_URL=https://downloads.php.net/~pollita/php-7.2.0RC6.tar.xz.asc
# Thu, 16 Nov 2017 12:53:02 GMT
ENV PHP_SHA256=be4df00ff5b66e9f13c83e1d08d1d5384ae7ccc820e26f7e5f9e660011496a9e PHP_MD5=
# Thu, 16 Nov 2017 12:53:12 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Thu, 16 Nov 2017 12:53:13 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 16 Nov 2017 12:55:33 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libargon2-0-dev 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 16 Nov 2017 12:55:34 GMT
COPY multi:dbabcc0b81566a75f49e7faa9ca5f96cd22a515b80ee7ea1e34fceceee3f9c2a in /usr/local/bin/ 
# Thu, 16 Nov 2017 12:55:34 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 16 Nov 2017 12:55:35 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Thu, 16 Nov 2017 12:55:35 GMT
WORKDIR /var/www/html
# Thu, 16 Nov 2017 12:55:35 GMT
EXPOSE 80/tcp
# Thu, 16 Nov 2017 12:55:35 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:310d3d6f89d580a90cfdd5f50a9437f7768be35c93a73974513d9eede74a0d42`  
		Last Modified: Thu, 16 Nov 2017 13:06:22 GMT  
		Size: 2.6 MB (2594802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:635a960f01cc5fbeda57c30000a8414e5cc41652f5839f2ef7d04bbc8a828265`  
		Last Modified: Thu, 16 Nov 2017 13:06:22 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e748176d8fb4a5206b426956cb2983e4cb8f596060314ab5670d05acfe223a1`  
		Last Modified: Thu, 16 Nov 2017 13:06:21 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2519aa4f0bc646b85aa3d08632f220ef8e2ad0529663978ab17bae76aa696c56`  
		Last Modified: Thu, 16 Nov 2017 13:06:20 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:149de69ce28c61ac5198cca8d2082417f5ec9eab4b3baba38a5fbd69452a06ce`  
		Last Modified: Thu, 16 Nov 2017 13:06:20 GMT  
		Size: 510.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25dce2c4594c5722ce9a088b5e74828d5903c10594870e46585ab1a3c71f880f`  
		Last Modified: Thu, 16 Nov 2017 13:06:21 GMT  
		Size: 12.4 MB (12429061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeffee06047e4ebcb486a3508f2ab243997165212dc6daca98187823554ac1f7`  
		Last Modified: Thu, 16 Nov 2017 13:06:20 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8c4491faf029b3812e50393a021660c357f123ee56eab8be1b24a21cd48499b`  
		Last Modified: Thu, 16 Nov 2017 13:06:23 GMT  
		Size: 12.7 MB (12715024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96e569599afe8345d1f140627dd997b0f33f525f9fc79beb88780e7d1d4967ec`  
		Last Modified: Thu, 16 Nov 2017 13:06:19 GMT  
		Size: 2.2 KB (2184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9e3a40738447dd9bcaa56d1749c8efd20940eb32c92ea6f44abe1b0d8c871d1`  
		Last Modified: Thu, 16 Nov 2017 13:06:19 GMT  
		Size: 905.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `php:rc-apache-stretch` - linux; arm64 variant v8

```console
$ docker pull php@sha256:24f2d243803b8e8db3a974b1e368f9d1928d223890c8c2b7fbaa21947b0e1eb9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.5 MB (121471098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a2273d071e035a2d4393df773c025d9252834bfe1a540536f9d7664c2e523ac`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

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
# Thu, 16 Nov 2017 03:07:40 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Thu, 16 Nov 2017 03:07:40 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 16 Nov 2017 03:07:41 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 16 Nov 2017 03:07:43 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Thu, 16 Nov 2017 03:07:45 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Thu, 16 Nov 2017 03:07:46 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Thu, 16 Nov 2017 03:07:48 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Thu, 16 Nov 2017 03:07:48 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Thu, 16 Nov 2017 03:07:49 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Thu, 16 Nov 2017 03:07:50 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 16 Nov 2017 03:07:50 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 16 Nov 2017 03:07:51 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 16 Nov 2017 03:07:51 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Thu, 16 Nov 2017 03:07:52 GMT
ENV PHP_VERSION=7.2.0RC6
# Thu, 16 Nov 2017 03:07:53 GMT
ENV PHP_URL=https://downloads.php.net/~pollita/php-7.2.0RC6.tar.xz PHP_ASC_URL=https://downloads.php.net/~pollita/php-7.2.0RC6.tar.xz.asc
# Thu, 16 Nov 2017 03:07:53 GMT
ENV PHP_SHA256=be4df00ff5b66e9f13c83e1d08d1d5384ae7ccc820e26f7e5f9e660011496a9e PHP_MD5=
# Thu, 16 Nov 2017 03:08:22 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Thu, 16 Nov 2017 03:08:23 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 16 Nov 2017 03:13:45 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libargon2-0-dev 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 16 Nov 2017 03:13:46 GMT
COPY multi:dbabcc0b81566a75f49e7faa9ca5f96cd22a515b80ee7ea1e34fceceee3f9c2a in /usr/local/bin/ 
# Thu, 16 Nov 2017 03:13:47 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 16 Nov 2017 03:13:47 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Thu, 16 Nov 2017 03:13:48 GMT
WORKDIR /var/www/html
# Thu, 16 Nov 2017 03:13:49 GMT
EXPOSE 80/tcp
# Thu, 16 Nov 2017 03:13:49 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:012f951debb2ae4c650ed24def34ec06e5f91f3a2691c8a329bb39a78bb0d619`  
		Last Modified: Thu, 16 Nov 2017 03:30:14 GMT  
		Size: 2.7 MB (2712930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0fb43fc027b45a82ab209d225d58c3f305d9ed3b40fa8786d07ea238896c563`  
		Last Modified: Thu, 16 Nov 2017 03:30:12 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a33308125d42918bc2c83d79a85ffe925114850aad23db764d591cba26cf9d3f`  
		Last Modified: Thu, 16 Nov 2017 03:30:11 GMT  
		Size: 434.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:043a5e27009ce041c2aa26d79c58e5673f3d5029ae601c0d5e64b4382c67bbb2`  
		Last Modified: Thu, 16 Nov 2017 03:30:10 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:968ed5eddbd6644646422d50f2bc2b3eeb9abbdb12efef56aa9fe2b8fcc983a1`  
		Last Modified: Thu, 16 Nov 2017 03:30:10 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abb7c3b60ae21ac639f7daca7c8c0a3ee678a09bdb77c6ccee65871831317135`  
		Last Modified: Thu, 16 Nov 2017 03:30:11 GMT  
		Size: 12.4 MB (12429355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac99c9c948a9810961689de48cc677c45edf918bd4a17a9faa0d59a291f6b90b`  
		Last Modified: Thu, 16 Nov 2017 03:30:08 GMT  
		Size: 503.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f358b078508dd17b324c0389f6373a0f70561be8618c671b3d10c9ab48447869`  
		Last Modified: Thu, 16 Nov 2017 03:30:13 GMT  
		Size: 13.4 MB (13392070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b84d4c237239df253bcc940b2f9887e3827d5c7dd19f08bb95d1b73e9567e11`  
		Last Modified: Thu, 16 Nov 2017 03:30:08 GMT  
		Size: 2.2 KB (2185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:660c35e015eb93b9748a14c48f46a0c99d2e0efb769d9285619c083f43a629e3`  
		Last Modified: Thu, 16 Nov 2017 03:30:08 GMT  
		Size: 906.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `php:rc-apache-stretch` - linux; 386

```console
$ docker pull php@sha256:8ea49937a3b7abc252da4192347b53c553eed6ab149c48c398afce551624f6f4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.5 MB (140489439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d94aeb45784199a6656a8ae4fbc94e2093f63c7953cca17d002fa60bc739098`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

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
# Thu, 16 Nov 2017 09:57:59 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Thu, 16 Nov 2017 09:57:59 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 16 Nov 2017 09:57:59 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 16 Nov 2017 09:58:00 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Thu, 16 Nov 2017 09:58:01 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Thu, 16 Nov 2017 09:58:02 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Thu, 16 Nov 2017 09:58:02 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Thu, 16 Nov 2017 09:58:02 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Thu, 16 Nov 2017 09:58:03 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Thu, 16 Nov 2017 09:58:03 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 16 Nov 2017 09:58:03 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 16 Nov 2017 09:58:03 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 16 Nov 2017 09:58:03 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Thu, 16 Nov 2017 09:58:04 GMT
ENV PHP_VERSION=7.2.0RC6
# Thu, 16 Nov 2017 09:58:04 GMT
ENV PHP_URL=https://downloads.php.net/~pollita/php-7.2.0RC6.tar.xz PHP_ASC_URL=https://downloads.php.net/~pollita/php-7.2.0RC6.tar.xz.asc
# Thu, 16 Nov 2017 09:58:04 GMT
ENV PHP_SHA256=be4df00ff5b66e9f13c83e1d08d1d5384ae7ccc820e26f7e5f9e660011496a9e PHP_MD5=
# Thu, 16 Nov 2017 09:58:22 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Thu, 16 Nov 2017 09:58:22 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 16 Nov 2017 10:01:08 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libargon2-0-dev 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 16 Nov 2017 10:01:09 GMT
COPY multi:dbabcc0b81566a75f49e7faa9ca5f96cd22a515b80ee7ea1e34fceceee3f9c2a in /usr/local/bin/ 
# Thu, 16 Nov 2017 10:01:09 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 16 Nov 2017 10:01:09 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Thu, 16 Nov 2017 10:01:10 GMT
WORKDIR /var/www/html
# Thu, 16 Nov 2017 10:01:10 GMT
EXPOSE 80/tcp
# Thu, 16 Nov 2017 10:01:10 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:5de5ab428f425a7d4ada488d50a68ae2870fa650d421f8c9c08fc8c42396f535`  
		Last Modified: Thu, 16 Nov 2017 10:30:21 GMT  
		Size: 3.1 MB (3077030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69c6535efe84aa0e8aaf429a5ef23b759f05f6441dd61eaee327f0322f8172ad`  
		Last Modified: Thu, 16 Nov 2017 10:30:18 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00c528ae64529a038d0adf69c65cab52cb8e5bdac4f7f6270c30363d35765640`  
		Last Modified: Thu, 16 Nov 2017 10:30:18 GMT  
		Size: 430.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c4af6dccffdd7aa2c1e39a3eab0ef81230375372ebc7dd8ffee9daa2e720c5a`  
		Last Modified: Thu, 16 Nov 2017 10:30:19 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:693fa57b2e69e196ab0a56d8c1e81ba7dd1cf20fff4c455e71de4d9911fedc43`  
		Last Modified: Thu, 16 Nov 2017 10:30:18 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c99bf9116346d39e43344d68198e97dea9102576795b1598e3e74990007472ae`  
		Last Modified: Thu, 16 Nov 2017 10:30:20 GMT  
		Size: 12.4 MB (12430273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1cacd50ce9966d1f784a9631caec4ee957e606ba4217a164a7eb7141e85bf6a`  
		Last Modified: Thu, 16 Nov 2017 10:30:18 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2dde2b6a2c16392fdf4048ab5cb72469ae9ec5de46f482aea3ee1057d54e367`  
		Last Modified: Thu, 16 Nov 2017 10:30:24 GMT  
		Size: 14.7 MB (14687608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4f05cbb1f557deded87117d4b2d882d19daad1e0536f081dd22756178bad9b3`  
		Last Modified: Thu, 16 Nov 2017 10:30:18 GMT  
		Size: 2.2 KB (2182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cf3f5710ac4dbaf89b352ec2a5324696e6ec8084324342bb77bb3b2a34b6e7d`  
		Last Modified: Thu, 16 Nov 2017 10:30:18 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `php:rc-apache-stretch` - linux; ppc64le

```console
$ docker pull php@sha256:d1f26a01c97676d85e1ed9305019d934aa0d1c2f60ed19789bc69a4fc6a8d52f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.6 MB (129571747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:beb0e4cd91813af5c93e6adfbc2485175624f51187991351b055603c56669490`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

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
# Thu, 16 Nov 2017 09:58:33 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Thu, 16 Nov 2017 09:58:34 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 16 Nov 2017 09:58:36 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 16 Nov 2017 09:58:40 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Thu, 16 Nov 2017 09:58:45 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Thu, 16 Nov 2017 09:58:48 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Thu, 16 Nov 2017 09:58:51 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Thu, 16 Nov 2017 09:58:52 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Thu, 16 Nov 2017 09:58:53 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Thu, 16 Nov 2017 09:58:55 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 16 Nov 2017 09:58:56 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 16 Nov 2017 09:58:57 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 16 Nov 2017 09:58:58 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Thu, 16 Nov 2017 09:59:00 GMT
ENV PHP_VERSION=7.2.0RC6
# Thu, 16 Nov 2017 09:59:01 GMT
ENV PHP_URL=https://downloads.php.net/~pollita/php-7.2.0RC6.tar.xz PHP_ASC_URL=https://downloads.php.net/~pollita/php-7.2.0RC6.tar.xz.asc
# Thu, 16 Nov 2017 09:59:02 GMT
ENV PHP_SHA256=be4df00ff5b66e9f13c83e1d08d1d5384ae7ccc820e26f7e5f9e660011496a9e PHP_MD5=
# Thu, 16 Nov 2017 10:00:35 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Thu, 16 Nov 2017 10:00:37 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 16 Nov 2017 10:06:41 GMT
RUN set -xe 	&& buildDeps=" 		$PHP_EXTRA_BUILD_DEPS 		libargon2-0-dev 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" 	&& if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				--with-pcre-regex=/usr 		--with-libdir="lib/$debMultiarch" 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 16 Nov 2017 10:06:43 GMT
COPY multi:dbabcc0b81566a75f49e7faa9ca5f96cd22a515b80ee7ea1e34fceceee3f9c2a in /usr/local/bin/ 
# Thu, 16 Nov 2017 10:06:46 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 16 Nov 2017 10:06:49 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Thu, 16 Nov 2017 10:06:50 GMT
WORKDIR /var/www/html
# Thu, 16 Nov 2017 10:06:51 GMT
EXPOSE 80/tcp
# Thu, 16 Nov 2017 10:06:53 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:3a5addc017576bad25a3fc3bd1fba3bc58c54b063a67109c77be45f6c32fe348`  
		Last Modified: Thu, 16 Nov 2017 10:34:59 GMT  
		Size: 3.0 MB (3044502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09350c0f65e0ed2b48ac629961bffc0376978efe1a10fc19516e207978524336`  
		Last Modified: Thu, 16 Nov 2017 10:34:57 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f83584c5122af22871b73d1d0287e4ad09d8b14a5cd4a6f53233b2b5f8840506`  
		Last Modified: Thu, 16 Nov 2017 10:34:56 GMT  
		Size: 477.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df14a9611fc3588546a3cbc5a736d9397b9ae6e922a7adbad80ec3ffc5a6246c`  
		Last Modified: Thu, 16 Nov 2017 10:34:56 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f5937c3383e1dbe6a9e3bf7b048f6d13f3c02d427e2043fcf2bb384f84b8650`  
		Last Modified: Thu, 16 Nov 2017 10:34:56 GMT  
		Size: 519.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7beba9903250642aa3f63c21e54ac46055e1699757eb40609a55869194c25cd`  
		Last Modified: Thu, 16 Nov 2017 10:34:55 GMT  
		Size: 12.4 MB (12429965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86717eff74f55a9f93e00694504719e63f9cc7013fd3aa2354c6cddf2c97905c`  
		Last Modified: Thu, 16 Nov 2017 10:34:53 GMT  
		Size: 502.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b51d6096ec2078de4aaacf4dab432503e83dc1c7e52973736202c7791814533c`  
		Last Modified: Thu, 16 Nov 2017 10:34:57 GMT  
		Size: 14.1 MB (14107368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ed16358a624b3c14216414c91ccb5c4786873a97e27dfabdeec9c975acc1682`  
		Last Modified: Thu, 16 Nov 2017 10:34:53 GMT  
		Size: 2.2 KB (2182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:839a3c052bc2bcfc3c45516b2cb9f7a4355acf1da65ff75d9789fe58e6246033`  
		Last Modified: Thu, 16 Nov 2017 10:34:53 GMT  
		Size: 905.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
