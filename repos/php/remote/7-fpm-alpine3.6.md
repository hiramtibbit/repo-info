## `php:7-fpm-alpine3.6`

```console
$ docker pull php@sha256:0232fd867169df42206bec7fdc55bb4eff1c02ffc3acab95f1f5fd340659a655
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php:7-fpm-alpine3.6` - linux; amd64

```console
$ docker pull php@sha256:cbe5405b0a17540bdda1837be6ae4b0685f820baa4c52fe1f5722e6895ff600e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.7 MB (31713538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db0d7f2895f8ae0798398c901a51aa9c336e36cef8b6b677f421fbdd759defc8`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:25 GMT
ADD file:eceadb32d029164d23db918d14c88df7186b6ee9645fa2f0c0a7e3e046a6a129 in / 
# Fri, 06 Jul 2018 14:13:25 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 16:32:15 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 06 Jul 2018 16:32:16 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Fri, 06 Jul 2018 16:32:17 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 06 Jul 2018 16:32:17 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 06 Jul 2018 16:32:18 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 06 Jul 2018 16:36:26 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Fri, 06 Jul 2018 16:36:26 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 06 Jul 2018 16:36:27 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 06 Jul 2018 16:36:27 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 06 Jul 2018 16:36:27 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Sat, 21 Jul 2018 08:21:26 GMT
ENV PHP_VERSION=7.2.8
# Sat, 21 Jul 2018 08:21:26 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.8.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.8.tar.xz.asc/from/this/mirror
# Sat, 21 Jul 2018 08:21:26 GMT
ENV PHP_SHA256=53ba0708be8a7db44256e3ae9fcecc91b811e5b5119e6080c951ffe7910ffb0f PHP_MD5=
# Sat, 21 Jul 2018 08:21:33 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 21 Jul 2018 08:21:42 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 21 Jul 2018 08:25:00 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libsodium-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 21 Jul 2018 08:25:02 GMT
COPY multi:af8a06a5cfc82b17b169c6d1e48630a516582fa7ce00d8e59e5a378e100d064a in /usr/local/bin/ 
# Sat, 21 Jul 2018 08:25:03 GMT
RUN docker-php-ext-enable sodium
# Sat, 21 Jul 2018 08:25:03 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 21 Jul 2018 08:25:04 GMT
WORKDIR /var/www/html
# Sat, 21 Jul 2018 08:25:05 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Sat, 21 Jul 2018 08:25:05 GMT
EXPOSE 9000/tcp
# Sat, 21 Jul 2018 08:25:05 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:a073c86ecf9e0f29180e80e9638d4c741970695851ea48247276c32c57e40282`  
		Last Modified: Fri, 06 Jul 2018 14:16:26 GMT  
		Size: 2.0 MB (2014658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6515022efbf747d43dc1475b08ab54f8890431237f2068af082f120bc6b4d10f`  
		Last Modified: Fri, 06 Jul 2018 18:12:44 GMT  
		Size: 1.4 MB (1373936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe5cb7bfffe42de3770e4b28b1114fafe1c57855166ad15832edc2fc2ca8d370`  
		Last Modified: Fri, 06 Jul 2018 18:12:43 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b5215b3a6690d157a751170530698bb65ef954f68c311dbe6d147c7b10b7b03`  
		Last Modified: Fri, 06 Jul 2018 18:12:43 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87b803a17928741b4203af6e4bcf952f4a873e7ebb060063babcab41d67f319f`  
		Last Modified: Sat, 21 Jul 2018 11:20:36 GMT  
		Size: 12.2 MB (12173231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eeff88e2b3a994ce62bba43e595778c25d7f1a790f8530daeffe8a0ef0de895`  
		Last Modified: Sat, 21 Jul 2018 11:20:34 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0ee0de0cdf776aafae0554ac2c499498d54f09fc7e5650f642691aba4c3d040`  
		Last Modified: Sat, 21 Jul 2018 11:20:41 GMT  
		Size: 16.1 MB (16068507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da31797dd0f8bc6b3218bfe9511e4ac2d3f2e59c631f2e303994a1be453e0d6b`  
		Last Modified: Sat, 21 Jul 2018 11:20:32 GMT  
		Size: 2.2 KB (2168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48be16fefa4b4c5f14b8c313282d908597b7a74f442b18e58bfc191746faebff`  
		Last Modified: Sat, 21 Jul 2018 11:20:32 GMT  
		Size: 71.2 KB (71210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69cff9c166434d539f0129c7ca02a8ccc1cc1351e30f8fd08d1bd16322e7d373`  
		Last Modified: Sat, 21 Jul 2018 11:20:32 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ca932f72507b9266d6dade9363c19792b2748225e238c7cc5f281c3e56e071e`  
		Last Modified: Sat, 21 Jul 2018 11:20:32 GMT  
		Size: 7.8 KB (7780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
