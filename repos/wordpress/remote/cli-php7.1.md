## `wordpress:cli-php7.1`

```console
$ docker pull wordpress@sha256:67e2937faaadff02cc603d41a05117b901780fb40fb01eb84309010a07346355
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; ppc64le

### `wordpress:cli-php7.1` - linux; ppc64le

```console
$ docker pull wordpress@sha256:c6717e8a09226018e0082b621d11844fbe7fa9fc6f934d961d1ac339b002bc5b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.2 MB (43222936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:deaea5505d4f9924875d82710cdfa129557c101d9a40beb35a883adf3d418572`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Fri, 06 Jul 2018 08:18:09 GMT
ADD file:4ff20d593b16518d45b1b1d6efdab141199316dba7a53ce7459249f5de690dfd in / 
# Fri, 06 Jul 2018 08:18:10 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:18:11 GMT
CMD ["/bin/sh"]
# Thu, 23 Aug 2018 09:31:22 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 23 Aug 2018 09:31:25 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Thu, 23 Aug 2018 09:31:29 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Thu, 23 Aug 2018 09:31:29 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 23 Aug 2018 09:31:31 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 23 Aug 2018 09:31:31 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 23 Aug 2018 09:31:33 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 23 Aug 2018 09:31:38 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 23 Aug 2018 11:20:24 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Thu, 23 Aug 2018 11:20:28 GMT
ENV PHP_VERSION=7.1.21
# Thu, 23 Aug 2018 11:20:33 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.21.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.21.tar.xz.asc/from/this/mirror
# Thu, 23 Aug 2018 11:20:36 GMT
ENV PHP_SHA256=d4da6dc69d3fe1e6b2b80f16b262f391037bfeb21213c966e026bd45d7ca2813 PHP_MD5=
# Thu, 23 Aug 2018 11:20:49 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Thu, 23 Aug 2018 11:20:50 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 23 Aug 2018 11:24:01 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 23 Aug 2018 11:24:02 GMT
COPY multi:2cdcedabcf5a3b9ae610fab7848e94bc2f64b4d85710d55fd6f79e44dacf73d8 in /usr/local/bin/ 
# Thu, 23 Aug 2018 11:24:04 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 23 Aug 2018 11:24:05 GMT
CMD ["php" "-a"]
# Thu, 23 Aug 2018 15:08:12 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Thu, 23 Aug 2018 15:08:15 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 23 Aug 2018 15:08:19 GMT
RUN apk add --no-cache 		less 		mysql-client
# Thu, 23 Aug 2018 15:08:21 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html
# Thu, 23 Aug 2018 15:08:22 GMT
WORKDIR /var/www/html
# Thu, 23 Aug 2018 15:08:23 GMT
VOLUME [/var/www/html]
# Thu, 23 Aug 2018 15:08:24 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Tue, 28 Aug 2018 09:05:08 GMT
ENV WORDPRESS_CLI_VERSION=2.0.1
# Tue, 28 Aug 2018 09:05:09 GMT
ENV WORDPRESS_CLI_SHA512=21b9c1d65993f88bf81cc73c0a832532cc424bea8c15563a77af1905d0dc4714f2af679dfadedd3b683f3968902b4b6be4c6cf94285da9f5582b30c1dac5397f
# Tue, 28 Aug 2018 09:05:17 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fSL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del .fetch-deps; 		wp --allow-root --version
# Tue, 28 Aug 2018 09:05:17 GMT
COPY file:6439ebdee069987b41eac0b67f3829c60f8dc168426dc92872b5e95a5f4d8213 in /usr/local/bin/ 
# Tue, 28 Aug 2018 09:05:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 28 Aug 2018 09:05:20 GMT
USER [www-data]
# Tue, 28 Aug 2018 09:05:22 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:e642bcb5b1890a07dd2fc8be2bc35edf5e2b651d4993e71caef03b4b43ace970`  
		Last Modified: Fri, 06 Jul 2018 08:18:44 GMT  
		Size: 2.2 MB (2194861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e09410b1fce4c4630b3bc57c6ee158ee9821ec415d0acaa1607b9e0bcf76d91`  
		Last Modified: Fri, 06 Jul 2018 08:18:43 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ed9ca568fbc1657942b30a2bd41aeb43f38f4b24d9a2dcb8e517b8c2e1e3812`  
		Last Modified: Thu, 23 Aug 2018 12:10:41 GMT  
		Size: 1.3 MB (1320688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e701b5b7480bed8ca3587df70a25fe60675a65a24090afe87f3e8ea85a0a69a`  
		Last Modified: Thu, 23 Aug 2018 12:10:39 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78ac1385573db761f0e54326a6db3ce9be52efc97a1d9cdc528eb4dde3248983`  
		Last Modified: Thu, 23 Aug 2018 12:10:39 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39a6f1a010db4da92b58d572b1fb67f51d8fdbad8e4463223f0984f77913c889`  
		Last Modified: Thu, 23 Aug 2018 12:36:39 GMT  
		Size: 13.5 MB (13498245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7fd07d61c2042b7f14a14ed1e78426f7842d8fe250aac651ae0cc8ec02c631d`  
		Last Modified: Thu, 23 Aug 2018 12:36:09 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50117a8933c717c83a14a4310bc9edac290f1b5d9815423d10782d916ee91431`  
		Last Modified: Thu, 23 Aug 2018 12:37:02 GMT  
		Size: 14.4 MB (14413642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90e090317610f4cdf5c0a677afde9b6a53159b8053545551e00e6f5fc4700f4b`  
		Last Modified: Thu, 23 Aug 2018 12:36:09 GMT  
		Size: 2.2 KB (2166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5592ae12fa65a1baf31ecdfeb46946f3ae4b7eb76af620c98c16973917ee1450`  
		Last Modified: Thu, 23 Aug 2018 15:20:41 GMT  
		Size: 897.7 KB (897724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:719046d26caabf893fc231056f79cd793ba5ae356eccec822e9ea92569afa86c`  
		Last Modified: Thu, 23 Aug 2018 15:20:37 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8112cdc4007e07f97d231a094eef4ec0594a63dc4d21173089e4c530fb7bb4d8`  
		Last Modified: Thu, 23 Aug 2018 15:20:40 GMT  
		Size: 8.4 MB (8440309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6089f40ce713dfe1a4ba9736d38421db02ab2e549914e7f3b77bd39e36fc6d6c`  
		Last Modified: Thu, 23 Aug 2018 15:20:38 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9af32150f5c1832798ebeaea3a1e5a06021a21cd54a7e3bd972260983817a3fd`  
		Last Modified: Tue, 28 Aug 2018 09:19:53 GMT  
		Size: 2.5 MB (2452221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b28088cadf8df98416804f22bd12cad5dec6d9ba0b22ba786b677372dd23f60`  
		Last Modified: Tue, 28 Aug 2018 09:19:53 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
