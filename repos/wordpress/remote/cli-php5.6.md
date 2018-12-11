## `wordpress:cli-php5.6`

```console
$ docker pull wordpress@sha256:f45b7789252035f764a3f18f0af363943e79ae62733aa3f844ad7550b4a576e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `wordpress:cli-php5.6` - linux; amd64

```console
$ docker pull wordpress@sha256:7c23b9f57c02154d13cce178a6768ada273d70ab90f6920874e1d930d16b83dd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.8 MB (38783215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48470152ab6d13c79fb2cf3142c941621fd8fd27f9bb1b15416689dc349d9a57`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 00:14:06 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 12 Sep 2018 00:14:08 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Wed, 12 Sep 2018 00:14:09 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 12 Sep 2018 00:14:09 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 12 Sep 2018 00:14:10 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 12 Sep 2018 00:14:10 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 12 Sep 2018 00:14:11 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 12 Sep 2018 00:14:11 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 12 Sep 2018 03:32:53 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Mon, 10 Dec 2018 18:26:22 GMT
ENV PHP_VERSION=5.6.39
# Mon, 10 Dec 2018 18:26:22 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.39.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.39.tar.xz.asc/from/this/mirror
# Mon, 10 Dec 2018 18:26:22 GMT
ENV PHP_SHA256=8147576001a832ff3d03cb2980caa2d6b584a10624f87ac459fcd3948c6e4a10 PHP_MD5=
# Mon, 10 Dec 2018 18:26:26 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Mon, 10 Dec 2018 18:26:27 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Mon, 10 Dec 2018 18:30:14 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Mon, 10 Dec 2018 18:30:15 GMT
COPY multi:bea61589f5a3f8f99b5cfe1d774a1d3e55f2589d6c15a6fd6696601525640b39 in /usr/local/bin/ 
# Mon, 10 Dec 2018 18:30:15 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 10 Dec 2018 18:30:15 GMT
CMD ["php" "-a"]
# Mon, 10 Dec 2018 20:36:47 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Mon, 10 Dec 2018 20:36:51 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Mon, 10 Dec 2018 20:36:52 GMT
RUN apk add --no-cache 		bash 		less 		mysql-client
# Mon, 10 Dec 2018 20:37:07 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html
# Mon, 10 Dec 2018 20:37:08 GMT
WORKDIR /var/www/html
# Mon, 10 Dec 2018 20:37:23 GMT
VOLUME [/var/www/html]
# Mon, 10 Dec 2018 20:37:23 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Mon, 10 Dec 2018 20:37:24 GMT
ENV WORDPRESS_CLI_VERSION=2.0.1
# Mon, 10 Dec 2018 20:37:24 GMT
ENV WORDPRESS_CLI_SHA512=21b9c1d65993f88bf81cc73c0a832532cc424bea8c15563a77af1905d0dc4714f2af679dfadedd3b683f3968902b4b6be4c6cf94285da9f5582b30c1dac5397f
# Mon, 10 Dec 2018 20:37:28 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fSL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del .fetch-deps; 		wp --allow-root --version
# Mon, 10 Dec 2018 20:37:40 GMT
COPY file:6439ebdee069987b41eac0b67f3829c60f8dc168426dc92872b5e95a5f4d8213 in /usr/local/bin/ 
# Mon, 10 Dec 2018 20:37:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 10 Dec 2018 20:37:40 GMT
USER [www-data]
# Mon, 10 Dec 2018 20:37:41 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cf60c0c0763e6e5b51f7b06d1a681fbc422c4feadba6e28e0354de32fe18743`  
		Last Modified: Wed, 12 Sep 2018 04:09:17 GMT  
		Size: 1.4 MB (1353668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:468219aa46893af0196f1629ab668d8120e76afb69af0c3cc51a0c0caeff594e`  
		Last Modified: Wed, 12 Sep 2018 04:09:16 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a8b1a3b9e510caf57ea183cacd59ad9f85a026dac10eb86f68fec44d0dfda14`  
		Last Modified: Wed, 12 Sep 2018 04:09:19 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eef96f8029d1367103c97d549e4ffac3dd595a1fb98070d1813c5c26ec5bfad`  
		Last Modified: Mon, 10 Dec 2018 19:50:31 GMT  
		Size: 12.5 MB (12486387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27a3bb32a9ff69ecc7c7eff9a46e03769cdae05db19f6832910f538dac148f2e`  
		Last Modified: Mon, 10 Dec 2018 19:50:29 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60718ffb74ea5174acbad2992842adc25e613300a04d841ef1ec82c12428c16c`  
		Last Modified: Mon, 10 Dec 2018 19:50:31 GMT  
		Size: 10.4 MB (10390086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:730118b84cd18960b1e556760e2aaae9c16ff8fccd9e9be153195b3a06e5c129`  
		Last Modified: Mon, 10 Dec 2018 19:50:29 GMT  
		Size: 2.2 KB (2174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cc2d20173f037f058e011d3df7255aa7ea7be8b64683eebb80db5070557207d`  
		Last Modified: Mon, 10 Dec 2018 21:18:16 GMT  
		Size: 2.1 MB (2069113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40d86bf4a0b2388a37f5ff5d165bb74e7b2ea466d26a769a51e71968c240cfe8`  
		Last Modified: Mon, 10 Dec 2018 21:18:15 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53cf65ef053ca3213afec777208435d3cf9b3080181eb81a54a2c174448f869f`  
		Last Modified: Mon, 10 Dec 2018 21:18:17 GMT  
		Size: 9.1 MB (9070598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dae490047b68f9a33f7fcb1f1d320ed641cc69f800d801e55052501fe16ff2b9`  
		Last Modified: Mon, 10 Dec 2018 21:18:15 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5557129b910a033ed764dceedc77766bae98b8a11a07bd0d45872782ef5c988`  
		Last Modified: Mon, 10 Dec 2018 21:18:15 GMT  
		Size: 1.2 MB (1201454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82da1b6b3b982845a05f6179b48b26353731f94060fbb747e20bcfcc71f4a6bd`  
		Last Modified: Mon, 10 Dec 2018 21:18:15 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:cli-php5.6` - linux; arm variant v6

```console
$ docker pull wordpress@sha256:84f2f481a5f0e6ffd6c266c449f2e713f3407424ba4f288cc591998461ea72b5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 MB (37610073 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae8467aa6a99350b00b3f2eb5dbb0267a55f38573fa6f3881b99b03d7bb19b63`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 08:04:38 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 12 Sep 2018 08:04:39 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Wed, 12 Sep 2018 08:04:40 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 12 Sep 2018 08:04:40 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 12 Sep 2018 08:04:41 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 12 Sep 2018 08:04:41 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 12 Sep 2018 08:04:41 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 12 Sep 2018 08:04:41 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 12 Sep 2018 08:13:42 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 11 Dec 2018 09:31:05 GMT
ENV PHP_VERSION=5.6.39
# Tue, 11 Dec 2018 09:31:05 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.39.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.39.tar.xz.asc/from/this/mirror
# Tue, 11 Dec 2018 09:31:06 GMT
ENV PHP_SHA256=8147576001a832ff3d03cb2980caa2d6b584a10624f87ac459fcd3948c6e4a10 PHP_MD5=
# Tue, 11 Dec 2018 09:31:11 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Tue, 11 Dec 2018 09:31:12 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 11 Dec 2018 09:33:50 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Tue, 11 Dec 2018 09:33:51 GMT
COPY multi:bea61589f5a3f8f99b5cfe1d774a1d3e55f2589d6c15a6fd6696601525640b39 in /usr/local/bin/ 
# Tue, 11 Dec 2018 09:33:51 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 11 Dec 2018 09:33:51 GMT
CMD ["php" "-a"]
# Tue, 11 Dec 2018 10:28:55 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Tue, 11 Dec 2018 10:28:56 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 11 Dec 2018 10:28:59 GMT
RUN apk add --no-cache 		bash 		less 		mysql-client
# Tue, 11 Dec 2018 10:29:00 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html
# Tue, 11 Dec 2018 10:29:01 GMT
WORKDIR /var/www/html
# Tue, 11 Dec 2018 10:29:01 GMT
VOLUME [/var/www/html]
# Tue, 11 Dec 2018 10:29:01 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Tue, 11 Dec 2018 10:29:02 GMT
ENV WORDPRESS_CLI_VERSION=2.0.1
# Tue, 11 Dec 2018 10:29:02 GMT
ENV WORDPRESS_CLI_SHA512=21b9c1d65993f88bf81cc73c0a832532cc424bea8c15563a77af1905d0dc4714f2af679dfadedd3b683f3968902b4b6be4c6cf94285da9f5582b30c1dac5397f
# Tue, 11 Dec 2018 10:29:08 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fSL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del .fetch-deps; 		wp --allow-root --version
# Tue, 11 Dec 2018 10:29:09 GMT
COPY file:6439ebdee069987b41eac0b67f3829c60f8dc168426dc92872b5e95a5f4d8213 in /usr/local/bin/ 
# Tue, 11 Dec 2018 10:29:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Dec 2018 10:29:10 GMT
USER [www-data]
# Tue, 11 Dec 2018 10:29:10 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:905674ea9d9448b14f15ae82e3c34138680bac1ef4fc29088aae8c9639b502fe`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 2.1 MB (2146453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91fe322e1690c8fb3f2b684fd85335d36a45e509b1568683232aede6d8a5e2b`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ec04dbd9ec82b38fae009bdfadd7f0fb7bee63c5bb0e5097a0cd58f0cceceb1`  
		Last Modified: Sat, 15 Sep 2018 09:56:47 GMT  
		Size: 1.3 MB (1315120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b5cc2b10f5d05dc75db927902404c769345f28262497e2a81b5d772e452f55`  
		Last Modified: Sat, 15 Sep 2018 09:56:46 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:652b4cff16833433471b4d932fb39c78c844f379cc8e2f073bc1b83a6d0c7fb6`  
		Last Modified: Sat, 15 Sep 2018 09:56:46 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d2a4416fab1df236d0aae88e51a5eb893b6e3967bc235eee6a9f5763a74b2e3`  
		Last Modified: Tue, 11 Dec 2018 09:48:40 GMT  
		Size: 12.5 MB (12486404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68aecb31eda223eab266141e65ae4b89679f6915b86cfc427fda9694a168eb99`  
		Last Modified: Tue, 11 Dec 2018 09:48:39 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:575a3b204f817abcdf0ac7831803e7430d7c2ed02a8a5f4efad51cf9aab19563`  
		Last Modified: Tue, 11 Dec 2018 09:48:42 GMT  
		Size: 9.8 MB (9831392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f11bfd69167f62d3258f9cce6487fe00594b12f330d74eb98c323523ae6a11e`  
		Last Modified: Tue, 11 Dec 2018 09:48:38 GMT  
		Size: 2.2 KB (2175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:307ba8b39858c90600642f7a04f823a21ae40b1c2a2c87e133f0ea12e0406745`  
		Last Modified: Tue, 11 Dec 2018 10:38:54 GMT  
		Size: 2.0 MB (1970862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cccbe9bfd4b16fc01fab87b78c16fc3ce24488b4c9277b1a9dbb628c68eebbcf`  
		Last Modified: Tue, 11 Dec 2018 10:38:52 GMT  
		Size: 337.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbe56f5f3602679b60bcd118bc0ed173d18ecd2f202fec698521e4b8ec968d1d`  
		Last Modified: Tue, 11 Dec 2018 10:38:56 GMT  
		Size: 8.7 MB (8653609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7750a4c89f7cbc9448627025894116f9aa46289e47ec62f0712014f25acb9e4a`  
		Last Modified: Tue, 11 Dec 2018 10:38:52 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bb67ab5135178f136899fcd389860b8f80e8a159472d55afbc1e1adbbaa2fb5`  
		Last Modified: Tue, 11 Dec 2018 10:38:53 GMT  
		Size: 1.2 MB (1200990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73689ec9c0baeca2a14d8ce17a4e79164b916cd6c0e145702f8fff6bdb788616`  
		Last Modified: Tue, 11 Dec 2018 10:38:52 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:cli-php5.6` - linux; arm64 variant v8

```console
$ docker pull wordpress@sha256:a92f09771a9e5d43e4ec3dcfa47df08e7a6cf3bd4de9d2c2a22f20688a692ed7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.5 MB (37528840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b705a7aa5c1c396716e90f7f9a1492f4183df75d311bf580e3f3a31688edee0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Wed, 12 Sep 2018 08:42:24 GMT
ADD file:a4b53e2a2e207c5107a76c16d91b99cb1ed4ecb90b363913798e663426137d45 in / 
# Wed, 12 Sep 2018 08:42:24 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:42:25 GMT
CMD ["/bin/sh"]
# Fri, 14 Sep 2018 16:18:25 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 14 Sep 2018 20:08:17 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Fri, 14 Sep 2018 20:08:19 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 14 Sep 2018 20:08:20 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 14 Sep 2018 20:08:21 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 14 Sep 2018 20:08:22 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 14 Sep 2018 20:08:22 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 14 Sep 2018 20:08:23 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 15 Sep 2018 00:40:59 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Sat, 15 Sep 2018 17:16:47 GMT
ENV PHP_VERSION=5.6.38
# Sat, 15 Sep 2018 17:16:47 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.38.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.38.tar.xz.asc/from/this/mirror
# Sat, 15 Sep 2018 17:16:48 GMT
ENV PHP_SHA256=c2fac47dc6316bd230f0ea91d8a5498af122fb6a3eb43f796c9ea5f59b04aa1e PHP_MD5=
# Fri, 16 Nov 2018 18:52:25 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 16 Nov 2018 18:52:26 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 16 Nov 2018 18:58:46 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 16 Nov 2018 18:58:47 GMT
COPY multi:bea61589f5a3f8f99b5cfe1d774a1d3e55f2589d6c15a6fd6696601525640b39 in /usr/local/bin/ 
# Fri, 16 Nov 2018 18:58:48 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 16 Nov 2018 18:58:49 GMT
CMD ["php" "-a"]
# Sat, 17 Nov 2018 00:51:23 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Sat, 17 Nov 2018 00:51:36 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 17 Nov 2018 00:51:39 GMT
RUN apk add --no-cache 		bash 		less 		mysql-client
# Sat, 17 Nov 2018 00:51:41 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html
# Sat, 17 Nov 2018 00:51:42 GMT
WORKDIR /var/www/html
# Sat, 17 Nov 2018 00:51:43 GMT
VOLUME [/var/www/html]
# Sat, 17 Nov 2018 00:51:44 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Sat, 17 Nov 2018 00:51:45 GMT
ENV WORDPRESS_CLI_VERSION=2.0.1
# Sat, 17 Nov 2018 00:51:46 GMT
ENV WORDPRESS_CLI_SHA512=21b9c1d65993f88bf81cc73c0a832532cc424bea8c15563a77af1905d0dc4714f2af679dfadedd3b683f3968902b4b6be4c6cf94285da9f5582b30c1dac5397f
# Sat, 17 Nov 2018 00:51:54 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fSL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del .fetch-deps; 		wp --allow-root --version
# Sat, 17 Nov 2018 00:51:55 GMT
COPY file:6439ebdee069987b41eac0b67f3829c60f8dc168426dc92872b5e95a5f4d8213 in /usr/local/bin/ 
# Sat, 17 Nov 2018 00:51:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Nov 2018 00:52:01 GMT
USER [www-data]
# Sat, 17 Nov 2018 00:52:05 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:9941776d74c9129fd585b6f0434ba48bd3a7112d6736bc02e6d12f41153cab26`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 2.1 MB (2099762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae94b3cb7a1b2cef0ceffe3303cd03f83434d283aab43389e586b42bea00b358`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e5d5b62245e8bd9b245068e83382734295b3d4cb9ca04771d79c339cdc4e5b8`  
		Last Modified: Sat, 15 Sep 2018 01:27:06 GMT  
		Size: 1.3 MB (1273934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:186c22e7722871e7a01dcb303698a0114f084259f51352de3601bb74ef6b3169`  
		Last Modified: Sat, 15 Sep 2018 01:27:06 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:089d847fcef0e6a77d8f66872ce91022501ba8c4b6b7bc8028e7af971ea15298`  
		Last Modified: Sat, 15 Sep 2018 01:27:06 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3462a1db65ec7bc7e522bdff19a668daacff1c2fdf7959b542de5d5ab253b3f4`  
		Last Modified: Fri, 16 Nov 2018 20:26:12 GMT  
		Size: 12.5 MB (12486459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87351d5e6c40eb85626fa4e8c06948a95129258847488a4131c5edb6878755ce`  
		Last Modified: Fri, 16 Nov 2018 20:26:10 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c22fa993ad0cfbd1b4ce6b721fb5a85688362fee548ae28e92b47ce672ddd91`  
		Last Modified: Fri, 16 Nov 2018 20:26:15 GMT  
		Size: 9.7 MB (9688735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47e3eebbda2a910bedf77397fe185951c827edd9e7135bb0221ffc55a447d510`  
		Last Modified: Fri, 16 Nov 2018 20:26:10 GMT  
		Size: 2.2 KB (2174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb2fe06f94de165a269e9b3648463d5d0dcd1c9f09949c3553e349609fcca598`  
		Last Modified: Sat, 17 Nov 2018 01:35:28 GMT  
		Size: 2.0 MB (1970838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:467ad21c66ed3caa3f8a0aab465956f8396fd6a803b2312d4ae303de3b5e5803`  
		Last Modified: Sat, 17 Nov 2018 01:35:25 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ca9b6ef64fd83720100717e75735047ffcbb076555de6cec31a0f18acc81318`  
		Last Modified: Sat, 17 Nov 2018 01:35:28 GMT  
		Size: 8.8 MB (8803471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:850363fcaf9f3f80ca4eb850782f67cd13962e7bf03538c9ff344b74c976c285`  
		Last Modified: Sat, 17 Nov 2018 01:35:25 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98c7341af1595f77b99f22c542956ce8feca20c789689819b47b4e8248fa5968`  
		Last Modified: Sat, 17 Nov 2018 01:35:25 GMT  
		Size: 1.2 MB (1200490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fc932b79a613aa7fa939574965ed541724fa02c26c7562815fde80f26f357f4`  
		Last Modified: Sat, 17 Nov 2018 01:35:25 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:cli-php5.6` - linux; 386

```console
$ docker pull wordpress@sha256:a63cec22c3cce44e690c3f1e5e20e9768a37b1a3a6184a4df89ea2bf57051ac5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.6 MB (39589120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c88d1658157992c2fa9070211e9d443b190d0c8aa70dd04efce2c61d80fa88a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Wed, 12 Sep 2018 10:38:54 GMT
ADD file:b789aca08d6985c0bf373a2ca5f2a263d45e3a789aa6bbcd1fe1d47133f985d2 in / 
# Wed, 12 Sep 2018 10:38:54 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 10:38:54 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 12:37:34 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 12 Sep 2018 12:37:35 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Wed, 12 Sep 2018 12:37:35 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 12 Sep 2018 12:37:35 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 12 Sep 2018 12:37:36 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 12 Sep 2018 12:37:36 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 12 Sep 2018 12:37:36 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 12 Sep 2018 12:37:37 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 12 Sep 2018 14:57:57 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Sat, 15 Sep 2018 15:47:25 GMT
ENV PHP_VERSION=5.6.38
# Sat, 15 Sep 2018 15:47:25 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.38.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.38.tar.xz.asc/from/this/mirror
# Sat, 15 Sep 2018 15:47:25 GMT
ENV PHP_SHA256=c2fac47dc6316bd230f0ea91d8a5498af122fb6a3eb43f796c9ea5f59b04aa1e PHP_MD5=
# Sat, 17 Nov 2018 01:08:57 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 17 Nov 2018 01:08:57 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 17 Nov 2018 01:15:08 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 17 Nov 2018 01:15:09 GMT
COPY multi:bea61589f5a3f8f99b5cfe1d774a1d3e55f2589d6c15a6fd6696601525640b39 in /usr/local/bin/ 
# Sat, 17 Nov 2018 01:15:09 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 17 Nov 2018 01:15:09 GMT
CMD ["php" "-a"]
# Sat, 17 Nov 2018 10:14:53 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Sat, 17 Nov 2018 10:14:54 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 17 Nov 2018 10:14:57 GMT
RUN apk add --no-cache 		bash 		less 		mysql-client
# Sat, 17 Nov 2018 10:14:57 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html
# Sat, 17 Nov 2018 10:14:58 GMT
WORKDIR /var/www/html
# Sat, 17 Nov 2018 10:14:58 GMT
VOLUME [/var/www/html]
# Sat, 17 Nov 2018 10:14:58 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Sat, 17 Nov 2018 10:14:58 GMT
ENV WORDPRESS_CLI_VERSION=2.0.1
# Sat, 17 Nov 2018 10:14:59 GMT
ENV WORDPRESS_CLI_SHA512=21b9c1d65993f88bf81cc73c0a832532cc424bea8c15563a77af1905d0dc4714f2af679dfadedd3b683f3968902b4b6be4c6cf94285da9f5582b30c1dac5397f
# Sat, 17 Nov 2018 10:15:04 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fSL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del .fetch-deps; 		wp --allow-root --version
# Sat, 17 Nov 2018 10:15:04 GMT
COPY file:6439ebdee069987b41eac0b67f3829c60f8dc168426dc92872b5e95a5f4d8213 in /usr/local/bin/ 
# Sat, 17 Nov 2018 10:15:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Nov 2018 10:15:04 GMT
USER [www-data]
# Sat, 17 Nov 2018 10:15:05 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:6b5c2e9bbf9885ccefe772a5a1f471d7da4315b7bf43ec3b4c014a65d04073b1`  
		Last Modified: Wed, 12 Sep 2018 10:39:28 GMT  
		Size: 2.3 MB (2271460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d99e807699886f28203b3284584d7b093a61a84c40230f7094513bb2f84cd2`  
		Last Modified: Wed, 12 Sep 2018 10:39:28 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33d4abd9cb4c79c6416ce455ee2493d28f7a114950d8f4396d08b79ad55cc24f`  
		Last Modified: Wed, 12 Sep 2018 15:33:01 GMT  
		Size: 1.5 MB (1452991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c88d2bb459bda03d7dd027aabfa163a3736e158569f1fffbb07ab53ecf02ec91`  
		Last Modified: Wed, 12 Sep 2018 15:33:00 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:998bc629b0e38631ba000bc16dd2fe77dc82e42852090c93177e58eaf779abd8`  
		Last Modified: Wed, 12 Sep 2018 15:33:00 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0bd2c5313f53050e11dd97283091744667b5ab244564d529850ed99b719e8bb`  
		Last Modified: Sat, 17 Nov 2018 02:56:19 GMT  
		Size: 12.5 MB (12486457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1211bdef327238a54ede59d5d2b017ec03b1ae3013f5b3f2800679f39e7468d`  
		Last Modified: Sat, 17 Nov 2018 02:56:16 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:037fa20b4a22b0137e91158529e7eb3a0486d9baa34960048549ec0a1bbd226c`  
		Last Modified: Sat, 17 Nov 2018 02:56:22 GMT  
		Size: 10.9 MB (10850551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b82acd21d01f66b587084a3c96725d8a6af86dc938e46b0f14de54f99b303174`  
		Last Modified: Sat, 17 Nov 2018 02:56:16 GMT  
		Size: 2.2 KB (2171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03c832575b04583cf53e0806eedd8bf2b867709a18be5b0f899104938c5e808a`  
		Last Modified: Sat, 17 Nov 2018 10:53:28 GMT  
		Size: 2.1 MB (2098774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad3e3090f5267249ae2c1ed62cee8314a21276f2227e84823e44a648d100eeea`  
		Last Modified: Sat, 17 Nov 2018 10:53:26 GMT  
		Size: 335.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6cf7bbf3692144f9241ef2359490ef6d61c6d3fe8c399e1700eac5702b7ca6f`  
		Last Modified: Sat, 17 Nov 2018 10:53:32 GMT  
		Size: 9.2 MB (9223101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bbea88b54b6e504607695423a4e8b69cb5402c1945acafcde1c358830089670`  
		Last Modified: Sat, 17 Nov 2018 10:53:26 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa127b4ea3a8cd7b1b9cbf50d630f65dc93c6c4fa3eac1c1f677408477901f91`  
		Last Modified: Sat, 17 Nov 2018 10:53:27 GMT  
		Size: 1.2 MB (1200634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fcc6c630a6721ba4acd68ef9ba97077969c6233dbeb5483468158b3dd734f51`  
		Last Modified: Sat, 17 Nov 2018 10:53:26 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:cli-php5.6` - linux; ppc64le

```console
$ docker pull wordpress@sha256:3b1d288b23483e4f14a8ebd912a69ff5f619ea24071106e896d838a87d738557
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.4 MB (38370369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63a19a25a1162556da7f89e475843a6056a0fbf537e7edfee41cc8ee0d212cb1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 10:47:32 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 12 Sep 2018 10:47:35 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Wed, 12 Sep 2018 10:47:45 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 12 Sep 2018 10:47:54 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 12 Sep 2018 10:48:04 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 12 Sep 2018 10:48:05 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 12 Sep 2018 10:48:13 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 12 Sep 2018 10:48:14 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 12 Sep 2018 13:10:57 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Sat, 15 Sep 2018 12:36:42 GMT
ENV PHP_VERSION=5.6.38
# Sat, 15 Sep 2018 12:36:43 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.38.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.38.tar.xz.asc/from/this/mirror
# Sat, 15 Sep 2018 12:36:44 GMT
ENV PHP_SHA256=c2fac47dc6316bd230f0ea91d8a5498af122fb6a3eb43f796c9ea5f59b04aa1e PHP_MD5=
# Fri, 16 Nov 2018 16:23:44 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 16 Nov 2018 16:23:45 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 16 Nov 2018 16:26:41 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 16 Nov 2018 16:26:43 GMT
COPY multi:bea61589f5a3f8f99b5cfe1d774a1d3e55f2589d6c15a6fd6696601525640b39 in /usr/local/bin/ 
# Fri, 16 Nov 2018 16:26:45 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 16 Nov 2018 16:26:46 GMT
CMD ["php" "-a"]
# Fri, 16 Nov 2018 18:19:11 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Fri, 16 Nov 2018 18:19:15 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Fri, 16 Nov 2018 18:19:20 GMT
RUN apk add --no-cache 		bash 		less 		mysql-client
# Fri, 16 Nov 2018 18:19:25 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html
# Fri, 16 Nov 2018 18:19:28 GMT
WORKDIR /var/www/html
# Fri, 16 Nov 2018 18:19:30 GMT
VOLUME [/var/www/html]
# Fri, 16 Nov 2018 18:19:31 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Fri, 16 Nov 2018 18:19:33 GMT
ENV WORDPRESS_CLI_VERSION=2.0.1
# Fri, 16 Nov 2018 18:19:35 GMT
ENV WORDPRESS_CLI_SHA512=21b9c1d65993f88bf81cc73c0a832532cc424bea8c15563a77af1905d0dc4714f2af679dfadedd3b683f3968902b4b6be4c6cf94285da9f5582b30c1dac5397f
# Fri, 16 Nov 2018 18:19:43 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fSL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del .fetch-deps; 		wp --allow-root --version
# Fri, 16 Nov 2018 18:19:45 GMT
COPY file:6439ebdee069987b41eac0b67f3829c60f8dc168426dc92872b5e95a5f4d8213 in /usr/local/bin/ 
# Fri, 16 Nov 2018 18:19:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 18:19:50 GMT
USER [www-data]
# Fri, 16 Nov 2018 18:19:55 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:d6201b52ea9b908d4d6e950e2a79ded27be48979d6f0f63bd3a57b16b621f188`  
		Last Modified: Wed, 12 Sep 2018 08:19:46 GMT  
		Size: 2.2 MB (2195226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5cedde51de1c8ffccd5521fd02fc1efc1cc44ece2d5dccb1e550a65366cd80`  
		Last Modified: Wed, 12 Sep 2018 08:19:44 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2065b998114051b7b227afdf3beaf87ddb601622e26d66a153bda4a465c0dd4d`  
		Last Modified: Wed, 12 Sep 2018 13:55:29 GMT  
		Size: 1.3 MB (1322110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aeb3707e07380790bc01a39b06ae1a0d8e055a505ede356982b61829e58312f`  
		Last Modified: Wed, 12 Sep 2018 13:55:28 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e1992446f59e7d0ec448fc0276afa9cdc55467e5ce7ae99d4a0567c9b8e7ce3`  
		Last Modified: Wed, 12 Sep 2018 13:55:27 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7738fea3d58fd688724ba921689841c2659b79b94cfdf2d9f0a914789c8f135b`  
		Last Modified: Fri, 16 Nov 2018 17:39:49 GMT  
		Size: 12.5 MB (12486468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:426e8491cf57f8f7d6328fed4fc5a23d04934cd5812fd79bac1619ed47c48dd5`  
		Last Modified: Fri, 16 Nov 2018 17:39:47 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2c670fa8ed0d34f59537d087f2efd2b86f90be4a1508fb77006a83e8a7b4fd7`  
		Last Modified: Fri, 16 Nov 2018 17:39:58 GMT  
		Size: 10.1 MB (10141448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ded40cbb68000c5a9d6a95912859e4a7c3ac84bff7135e6b1e26123969186286`  
		Last Modified: Fri, 16 Nov 2018 17:39:47 GMT  
		Size: 2.2 KB (2175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c368bd4846706e5de71829e242b300845e3783072aaaa3c0ee62cee0ac69f72`  
		Last Modified: Fri, 16 Nov 2018 18:48:22 GMT  
		Size: 2.0 MB (2046401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba73ea4537353dd6ff39d420829f9305b7a18d494fba2f8c6729bfdaf5c12a09`  
		Last Modified: Fri, 16 Nov 2018 18:48:18 GMT  
		Size: 336.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90db0583852fdc9b9e25eb0c836a9e5b61c3f626d0662960673b5e95c0df82f3`  
		Last Modified: Fri, 16 Nov 2018 18:48:22 GMT  
		Size: 9.0 MB (8972202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecf98c48e190486aa380b64f341c7d51da0863c2a4e1d17e78c41c6e1be0350b`  
		Last Modified: Fri, 16 Nov 2018 18:48:18 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fa0f28ab8514184340148f3137698a5240779aee22b2bb863372e69df47d58f`  
		Last Modified: Fri, 16 Nov 2018 18:48:19 GMT  
		Size: 1.2 MB (1201265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93c831dcc57a1ae6c6d96390056037bd78a1b3fefa1492fa67dab0220f9f5dcc`  
		Last Modified: Fri, 16 Nov 2018 18:48:18 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
