## `wordpress:cli-php5.6`

```console
$ docker pull wordpress@sha256:c075b9f2c8b35e910c09b92d733b6d235b89c99d7fad6235774765e07bca69ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `wordpress:cli-php5.6` - linux; amd64

```console
$ docker pull wordpress@sha256:dabb4823f14ba469e5d03114eb01c66f67fc83f9d0065695e737375ab1155977
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.5 MB (32454239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:595ec3fee2dbf5cdf4bbfd6f23687a6636ed84028fd43a7250b1ba02d258dca1`
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
# Wed, 10 Jan 2018 04:08:27 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Thu, 05 Apr 2018 06:42:37 GMT
ENV PHP_VERSION=5.6.35
# Thu, 05 Apr 2018 06:42:37 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.35.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.35.tar.xz.asc/from/this/mirror
# Thu, 05 Apr 2018 06:42:38 GMT
ENV PHP_SHA256=9985cb64cb8224c289effff5b34f670d14f838175f76daea0507d643eec650d2 PHP_MD5=
# Thu, 05 Apr 2018 06:42:51 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Thu, 05 Apr 2018 06:42:51 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 05 Apr 2018 06:46:10 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		openssl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 24 Apr 2018 02:19:26 GMT
COPY multi:2cdcedabcf5a3b9ae610fab7848e94bc2f64b4d85710d55fd6f79e44dacf73d8 in /usr/local/bin/ 
# Tue, 24 Apr 2018 02:19:26 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 24 Apr 2018 02:19:27 GMT
CMD ["php" "-a"]
# Tue, 24 Apr 2018 08:14:06 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Tue, 24 Apr 2018 08:14:07 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 24 Apr 2018 08:14:10 GMT
RUN apk add --no-cache 		less 		mysql-client
# Tue, 24 Apr 2018 08:14:11 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html
# Tue, 24 Apr 2018 08:14:11 GMT
WORKDIR /var/www/html
# Tue, 24 Apr 2018 08:14:11 GMT
VOLUME [/var/www/html]
# Tue, 24 Apr 2018 08:14:12 GMT
ENV WORDPRESS_CLI_GPG_KEY=3B9191625F3B1F1BF5DD3B47673A02042F6B6B7F
# Tue, 24 Apr 2018 08:14:12 GMT
ENV WORDPRESS_CLI_VERSION=1.5.1
# Tue, 24 Apr 2018 08:14:12 GMT
ENV WORDPRESS_CLI_SHA512=8693cdbc06cca37be9976c4f76aa81c111095f88bb121277cbdfa85f8a2ada3b9133cd9641c439e6f5579d3469a1a44488e872ecbff3d3eba0488bbc8033d6d8
# Tue, 24 Apr 2018 08:14:27 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fSL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del .fetch-deps; 		wp --allow-root --version
# Tue, 24 Apr 2018 08:14:27 GMT
COPY file:6439ebdee069987b41eac0b67f3829c60f8dc168426dc92872b5e95a5f4d8213 in /usr/local/bin/ 
# Tue, 24 Apr 2018 08:14:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Apr 2018 08:14:28 GMT
USER [www-data]
# Tue, 24 Apr 2018 08:14:28 GMT
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
	-	`sha256:104b3215b399edff9675c0e4a2af2da08602e65dcdfc995918317763de50d562`  
		Last Modified: Thu, 05 Apr 2018 08:36:37 GMT  
		Size: 12.5 MB (12485296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4114a79025c4520410622e341c68a924e0aaac9a8b243f2f9c42defe6ae38bd0`  
		Last Modified: Thu, 05 Apr 2018 08:36:36 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99215b035772e9892f86ad8bb52376b9e91c90000ed460d86747d7489272390a`  
		Last Modified: Thu, 05 Apr 2018 08:36:39 GMT  
		Size: 6.7 MB (6680537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:511c2258db2ab01e7c0e3f6aa188e46653e61eca76cc165edbd13204305f173d`  
		Last Modified: Tue, 24 Apr 2018 04:23:44 GMT  
		Size: 2.2 KB (2172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2fba3380550c9df8b8117acc72113f561affaa6b0c9d81b9dce1e93b2205c99`  
		Last Modified: Tue, 24 Apr 2018 09:14:54 GMT  
		Size: 732.5 KB (732473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f76428f44b0579cb0c5c0acfdbfd20b5ac43f32929ad65ea94121fd739218f60`  
		Last Modified: Tue, 24 Apr 2018 09:14:51 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cdfc89ff764669c7aa392ff84f58e3ee82b76ea75c17518c0495e242a269367`  
		Last Modified: Tue, 24 Apr 2018 09:14:54 GMT  
		Size: 7.8 MB (7758779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8db35b4fb7dba26a48d1d1d31f53fc19a17570aeaeeb9396bb4941f4f83de282`  
		Last Modified: Tue, 24 Apr 2018 09:14:51 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf44e69944970725409844039673067fe5a4374c5c082498d73419b3f5a15e53`  
		Last Modified: Tue, 24 Apr 2018 09:14:53 GMT  
		Size: 1.1 MB (1079596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05626608c7d18486671702063028efd68fdf23949ba76a7359e4d19e0f5a67da`  
		Last Modified: Tue, 24 Apr 2018 09:14:51 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
