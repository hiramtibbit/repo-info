## `wordpress:cli-php7.0`

```console
$ docker pull wordpress@sha256:a2450f63121d2e0985bbb14bc3f33e9e309f70e61c0edb35b0c66463e6f485c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `wordpress:cli-php7.0` - linux; amd64

```console
$ docker pull wordpress@sha256:1e6045800bc52e52a1965e843ed27d69f6eea995fc75b7b4603f5c46255a8a89
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.5 MB (36514903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3571d3b168365724e6bc3c96fdca289b6639195c9c37f155b0b4f5c8f3e5f055`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Tue, 09 Jan 2018 21:12:40 GMT
ADD file:69848cb51056edaf120230b6f218a79968ac797295c2cef6728332e1801357be in / 
# Tue, 09 Jan 2018 21:12:40 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 03:00:23 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 10 Jan 2018 03:00:28 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		openssl
# Wed, 10 Jan 2018 03:00:35 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 10 Jan 2018 03:00:35 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 10 Jan 2018 03:00:36 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 10 Jan 2018 03:00:36 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 10 Jan 2018 03:00:36 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 10 Jan 2018 03:00:37 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 10 Jan 2018 03:40:31 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Thu, 05 Apr 2018 05:55:35 GMT
ENV PHP_VERSION=7.0.29
# Thu, 05 Apr 2018 05:55:36 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.29.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.29.tar.xz.asc/from/this/mirror
# Thu, 05 Apr 2018 05:55:36 GMT
ENV PHP_SHA256=ca79d3ecc123bff4b623d4a1bbf5ad53ad39f5f2f5912fecc0ea97e95eba21cc PHP_MD5=
# Thu, 05 Apr 2018 05:55:49 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Thu, 05 Apr 2018 05:55:49 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 05 Apr 2018 05:59:24 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		openssl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 24 Apr 2018 02:15:58 GMT
COPY multi:2cdcedabcf5a3b9ae610fab7848e94bc2f64b4d85710d55fd6f79e44dacf73d8 in /usr/local/bin/ 
# Tue, 24 Apr 2018 02:15:58 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 24 Apr 2018 02:15:58 GMT
CMD ["php" "-a"]
# Tue, 24 Apr 2018 08:15:23 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Tue, 24 Apr 2018 08:15:24 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 24 Apr 2018 08:15:27 GMT
RUN apk add --no-cache 		less 		mysql-client
# Tue, 24 Apr 2018 08:15:28 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html
# Tue, 24 Apr 2018 08:15:28 GMT
WORKDIR /var/www/html
# Tue, 24 Apr 2018 08:15:29 GMT
VOLUME [/var/www/html]
# Tue, 24 Apr 2018 08:15:29 GMT
ENV WORDPRESS_CLI_GPG_KEY=3B9191625F3B1F1BF5DD3B47673A02042F6B6B7F
# Tue, 24 Apr 2018 08:15:29 GMT
ENV WORDPRESS_CLI_VERSION=1.5.1
# Tue, 24 Apr 2018 08:15:29 GMT
ENV WORDPRESS_CLI_SHA512=8693cdbc06cca37be9976c4f76aa81c111095f88bb121277cbdfa85f8a2ada3b9133cd9641c439e6f5579d3469a1a44488e872ecbff3d3eba0488bbc8033d6d8
# Tue, 24 Apr 2018 08:15:46 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fSL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del .fetch-deps; 		wp --allow-root --version
# Tue, 24 Apr 2018 08:15:47 GMT
COPY file:6439ebdee069987b41eac0b67f3829c60f8dc168426dc92872b5e95a5f4d8213 in /usr/local/bin/ 
# Tue, 24 Apr 2018 08:15:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Apr 2018 08:15:47 GMT
USER [www-data]
# Tue, 24 Apr 2018 08:15:48 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:81033e7c1d6a5b44a94bb6b40033a6e589f50fd6b61578da6fc809e61f83898d`  
		Last Modified: Tue, 09 Jan 2018 21:15:04 GMT  
		Size: 2.4 MB (2387570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:347280e4401ec27a2af6bcded9c9fe28c0acbe751f69f1d47c4fd6d2c82ba034`  
		Last Modified: Wed, 10 Jan 2018 04:40:03 GMT  
		Size: 1.3 MB (1324983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:575b1e17046fe1c06043ae027f4599ed64f34196604a884d74c8942cdf71873e`  
		Last Modified: Wed, 10 Jan 2018 04:40:02 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b26c263d6f029c4ccdfe4f8da176f53cbf3870d7d83f852d8b05ec3a606374d9`  
		Last Modified: Wed, 10 Jan 2018 04:40:00 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0467f5f615d58eb444bcbe2517a3b0606f6f7e0a43c9166bcd59bfeb45cd899`  
		Last Modified: Thu, 05 Apr 2018 08:20:36 GMT  
		Size: 12.4 MB (12418855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10260925db6d33277791c295a2420ac6511b5a46fe997d6e663e071ddb586200`  
		Last Modified: Thu, 05 Apr 2018 08:20:35 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17c5226da24d2f8ea3b7981050327bc0c9b1fd633bc41c28e89d36a807e7b87c`  
		Last Modified: Thu, 05 Apr 2018 08:20:40 GMT  
		Size: 10.8 MB (10794681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdb85879c7b86ee26e8a1063725f8f1976d8965ee1dd3fbe2c8dace4e1b8c7e4`  
		Last Modified: Tue, 24 Apr 2018 04:06:57 GMT  
		Size: 2.2 KB (2172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d595444a1834f0a039f0c2e049bd42191d0682fe33c4bfcebc5b06e89268be69`  
		Last Modified: Tue, 24 Apr 2018 09:16:25 GMT  
		Size: 745.4 KB (745429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:129a0a773e2157dd019a5cddc386cb850bcdae96625251d78847fa3f61fe6ffb`  
		Last Modified: Tue, 24 Apr 2018 09:16:23 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ec931f0a4a78009663a0983e75b40285fb56747e6f3e5629679f5e501e14d7d`  
		Last Modified: Tue, 24 Apr 2018 09:16:25 GMT  
		Size: 7.8 MB (7758779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a38e6b321235170056fcb2911efaffda57be168c371b9099266276b5c7681f0`  
		Last Modified: Tue, 24 Apr 2018 09:16:23 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9155d32580b2ff4a1859267ec0bf9cdc21736927577f977c2ec69a33febff7e`  
		Last Modified: Tue, 24 Apr 2018 09:16:23 GMT  
		Size: 1.1 MB (1079602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc8a2f7756f5140ceccd9801a3aaf7c45680b35aaeca028c47db2b4940f78c23`  
		Last Modified: Tue, 24 Apr 2018 09:16:22 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
