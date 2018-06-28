## `wordpress:cli-php5.6`

```console
$ docker pull wordpress@sha256:309a7b2d5390aa384c32617f92e1d4947904d57da93796ad1601c493b5b41f18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `wordpress:cli-php5.6` - linux; amd64

```console
$ docker pull wordpress@sha256:9f4bf6ff55c723d14c32fbbaef2eb699e02aac3e03df560847dda6e273575e27
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.3 MB (37297810 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc66faa444911756b7b621c8705a45d0a19dd743170f92ac1ca000b6546f8bcc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 01:29:48 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 10 Jan 2018 01:29:53 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Wed, 10 Jan 2018 01:29:54 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 10 Jan 2018 01:29:55 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 10 Jan 2018 01:29:56 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 10 Jan 2018 01:29:56 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 10 Jan 2018 01:29:56 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 10 Jan 2018 01:29:56 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 24 May 2018 00:14:15 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Thu, 24 May 2018 00:14:16 GMT
ENV PHP_VERSION=5.6.36
# Thu, 24 May 2018 00:14:16 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.36.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.36.tar.xz.asc/from/this/mirror
# Thu, 24 May 2018 00:14:16 GMT
ENV PHP_SHA256=18f536bf548e909b4e980379d0c4e56d024b2b1eb1c9768fd169360491f1d6dd PHP_MD5=
# Thu, 28 Jun 2018 05:06:38 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Thu, 28 Jun 2018 05:06:38 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 28 Jun 2018 05:09:58 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 28 Jun 2018 05:09:59 GMT
COPY multi:2cdcedabcf5a3b9ae610fab7848e94bc2f64b4d85710d55fd6f79e44dacf73d8 in /usr/local/bin/ 
# Thu, 28 Jun 2018 05:09:59 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 28 Jun 2018 05:09:59 GMT
CMD ["php" "-a"]
# Thu, 28 Jun 2018 07:27:07 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Thu, 28 Jun 2018 07:27:08 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 28 Jun 2018 07:27:10 GMT
RUN apk add --no-cache 		less 		mysql-client
# Thu, 28 Jun 2018 07:27:11 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html
# Thu, 28 Jun 2018 07:27:11 GMT
WORKDIR /var/www/html
# Thu, 28 Jun 2018 07:27:12 GMT
VOLUME [/var/www/html]
# Thu, 28 Jun 2018 07:27:12 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Thu, 28 Jun 2018 07:27:12 GMT
ENV WORDPRESS_CLI_VERSION=1.5.1
# Thu, 28 Jun 2018 07:27:12 GMT
ENV WORDPRESS_CLI_SHA512=8dd68c98c6fa00e1acc5e036f9393c8b052937045b5232e4aa0eb4f15773908eae48760607bc853a4f951bd5ba69e5050337e5d9dcfa48df87a12cebb1de3432
# Thu, 28 Jun 2018 07:27:28 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fSL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del .fetch-deps; 		wp --allow-root --version
# Thu, 28 Jun 2018 07:27:28 GMT
COPY file:6439ebdee069987b41eac0b67f3829c60f8dc168426dc92872b5e95a5f4d8213 in /usr/local/bin/ 
# Thu, 28 Jun 2018 07:27:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Jun 2018 07:27:29 GMT
USER [www-data]
# Thu, 28 Jun 2018 07:27:29 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ca736d3a2d38cd2e07c36bc54d58900d5e7aa1229dfca485476d6a5ab4bfcc1`  
		Last Modified: Wed, 10 Jan 2018 04:26:36 GMT  
		Size: 1.3 MB (1261295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed01bffbd8ba5a08144d65a0ca5f2c2540ee6d7b400d134c410e8c4431590eba`  
		Last Modified: Wed, 10 Jan 2018 04:26:35 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86a241b7142ffbfe2bec506914b86dff073238208b39a08a6c6f36e19a92fdd3`  
		Last Modified: Wed, 10 Jan 2018 04:26:33 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88f82005ef4fa5ca4e2248c2d4d7ea6afc8eafe07d6ff2e164ef0af1c9d9c1e4`  
		Last Modified: Thu, 28 Jun 2018 06:07:17 GMT  
		Size: 12.5 MB (12486466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:757460639634be279ea4057f55f0cbde0af03e08a27b21f3d287f8c8ca687693`  
		Last Modified: Thu, 28 Jun 2018 06:07:17 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8f8451c57fba35c1544b4f1b29a4ab9a471d10e01cec4b9b242eabefd90df78`  
		Last Modified: Thu, 28 Jun 2018 06:07:21 GMT  
		Size: 11.8 MB (11839808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b56d7c8e3f84c762484a5e5a1367648f336f428a9f0c7dee2068daaa1f69a9b0`  
		Last Modified: Thu, 28 Jun 2018 06:07:16 GMT  
		Size: 2.2 KB (2167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e4bdd927f9e5268beb963205aeeb276511e8083d8cbbab05e2eb701d0d34a2e`  
		Last Modified: Thu, 28 Jun 2018 07:55:29 GMT  
		Size: 784.7 KB (784742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:805eb467063a5045eb5e25e5e0dbd2a27fbda9f6c792e7c4c3d0483b5fd5d5f3`  
		Last Modified: Thu, 28 Jun 2018 07:55:25 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da8c70407f38bece90a565b4de23ddbe33a51d6846e1d09d16d715b882d2a064`  
		Last Modified: Thu, 28 Jun 2018 07:55:29 GMT  
		Size: 7.8 MB (7771485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37795ee1d6329fc676b9b204b8c88846ea5e242a749e413ca3d3e49e6f7687fe`  
		Last Modified: Thu, 28 Jun 2018 07:55:25 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:413e12d68e20d1162703afd9b640495e28feb6b90bdf3c67dc2fbacc30431734`  
		Last Modified: Thu, 28 Jun 2018 07:55:26 GMT  
		Size: 1.1 MB (1083501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4b4c7d3df745b1d992541868c77d859fddc7ae8d4f2ff98c2a57ef52c158f19`  
		Last Modified: Thu, 28 Jun 2018 07:55:25 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:cli-php5.6` - linux; arm64 variant v8

```console
$ docker pull wordpress@sha256:defd9323c3718e585db84b2d23ba5d04f2a30fc5dcd3a5d2ab5ddbe599b59623
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.2 MB (36150280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d725b1584cfec47f8bf45c10872b4439f0631e31b0c6c489e45cc836d11c8a65`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Thu, 14 Dec 2017 03:34:23 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 14 Dec 2017 03:34:29 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Thu, 14 Dec 2017 03:34:31 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Thu, 14 Dec 2017 03:34:32 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 14 Dec 2017 03:34:34 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 14 Dec 2017 03:34:34 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 14 Dec 2017 03:34:35 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 14 Dec 2017 03:34:35 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 25 May 2018 12:27:47 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 25 May 2018 12:27:47 GMT
ENV PHP_VERSION=5.6.36
# Fri, 25 May 2018 12:27:48 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.36.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.36.tar.xz.asc/from/this/mirror
# Fri, 25 May 2018 12:27:49 GMT
ENV PHP_SHA256=18f536bf548e909b4e980379d0c4e56d024b2b1eb1c9768fd169360491f1d6dd PHP_MD5=
# Thu, 21 Jun 2018 14:36:24 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Thu, 21 Jun 2018 14:36:25 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 21 Jun 2018 14:42:25 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 21 Jun 2018 14:42:26 GMT
COPY multi:2cdcedabcf5a3b9ae610fab7848e94bc2f64b4d85710d55fd6f79e44dacf73d8 in /usr/local/bin/ 
# Thu, 21 Jun 2018 14:42:27 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 21 Jun 2018 14:42:28 GMT
CMD ["php" "-a"]
# Thu, 21 Jun 2018 18:08:01 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Thu, 21 Jun 2018 18:08:03 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 21 Jun 2018 18:08:07 GMT
RUN apk add --no-cache 		less 		mysql-client
# Thu, 21 Jun 2018 18:08:09 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html
# Thu, 21 Jun 2018 18:08:10 GMT
WORKDIR /var/www/html
# Thu, 21 Jun 2018 18:08:11 GMT
VOLUME [/var/www/html]
# Thu, 21 Jun 2018 18:08:12 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Thu, 21 Jun 2018 18:08:12 GMT
ENV WORDPRESS_CLI_VERSION=1.5.1
# Thu, 21 Jun 2018 18:08:13 GMT
ENV WORDPRESS_CLI_SHA512=8dd68c98c6fa00e1acc5e036f9393c8b052937045b5232e4aa0eb4f15773908eae48760607bc853a4f951bd5ba69e5050337e5d9dcfa48df87a12cebb1de3432
# Thu, 21 Jun 2018 18:08:21 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fSL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del .fetch-deps; 		wp --allow-root --version
# Thu, 21 Jun 2018 18:08:22 GMT
COPY file:6439ebdee069987b41eac0b67f3829c60f8dc168426dc92872b5e95a5f4d8213 in /usr/local/bin/ 
# Thu, 21 Jun 2018 18:08:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 21 Jun 2018 18:08:24 GMT
USER [www-data]
# Thu, 21 Jun 2018 18:08:25 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:b78042c299ad99d1e646b18762d4bc22a84c4f88e5bb491ea6293a10f53ddf79`  
		Last Modified: Fri, 01 Dec 2017 18:43:42 GMT  
		Size: 2.0 MB (1988857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd45b97b6c2a3ac869ae5c99e087e97bc29714b165180e06f0c9116f400f2dd`  
		Last Modified: Fri, 01 Dec 2017 18:43:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3fd85926acf4e07a36e9605843329449387bbfc1c1550485a341b4f87bfe40c`  
		Last Modified: Sat, 16 Dec 2017 16:37:16 GMT  
		Size: 1.2 MB (1214054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cbd52b402d6ede87c727a4c39eca929bb27c7d5873fadd61ad1fc86752cc164`  
		Last Modified: Sat, 16 Dec 2017 16:37:15 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a1ea5fa010452e4ef78628eebe6459b693eee1ec67ce04afd2ef50a2edee5fb`  
		Last Modified: Sat, 16 Dec 2017 16:37:15 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc45beed4780bafea0d1f2ab390c424acac1457a0834693519f42559292d2d7a`  
		Last Modified: Thu, 21 Jun 2018 15:37:04 GMT  
		Size: 12.5 MB (12486443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d945e145bb353ef201baf673ab743068e796aa479ce05eed23a25c548c0cf83d`  
		Last Modified: Thu, 21 Jun 2018 15:37:02 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c6ac7bd9a31ffcd272bcb8a932828bea3b0866d663791bcc90f481f3520ae6d`  
		Last Modified: Thu, 21 Jun 2018 15:37:07 GMT  
		Size: 11.0 MB (11040666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:951d97702234596610c80d0a3035f50ff56750ecc4c01e6a5232737d66fa29ad`  
		Last Modified: Thu, 21 Jun 2018 15:37:02 GMT  
		Size: 2.2 KB (2169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc12e278b18e399456ffc183c01e9cd6722ac3f49e975e8027c210d16873dee3`  
		Last Modified: Thu, 21 Jun 2018 18:32:09 GMT  
		Size: 720.5 KB (720459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24a5fb87266e0e57e87e6efedb1bb9c5a7a093be932ede11eaa964524fe03069`  
		Last Modified: Thu, 21 Jun 2018 18:32:07 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe707a1ed0db9ca812b4baf32b429f227d52b5b3c7984bf876d1b3a4b2ec8e35`  
		Last Modified: Thu, 21 Jun 2018 18:32:10 GMT  
		Size: 7.6 MB (7611907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9defefd7c4f6f8e32ad706bf4509e757bea40bba1995a9786e52c6aa606b42dd`  
		Last Modified: Thu, 21 Jun 2018 18:32:07 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c20f8125487ab4468c38d19be49128c9c9043a19cc225626ce50aa8009d20e60`  
		Last Modified: Thu, 21 Jun 2018 18:32:07 GMT  
		Size: 1.1 MB (1082744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:044be11f596b6d91e6ba7a9cca61a8a9a31589d920b4e661f0428c136bba41c6`  
		Last Modified: Thu, 21 Jun 2018 18:32:07 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:cli-php5.6` - linux; 386

```console
$ docker pull wordpress@sha256:f90262c9ba73a35bc023103bb4cf412c01d98d58d3fb5fdea83294e2088d704e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.0 MB (37951133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdfbb73fbcc437d24392c39099cc1297edcd286b1254fc71b755c77fd44dab74`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Fri, 01 Jun 2018 06:57:26 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Jun 2018 06:57:26 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Jun 2018 06:57:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Jun 2018 10:46:28 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 01 Jun 2018 10:46:29 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Fri, 01 Jun 2018 10:46:30 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 01 Jun 2018 10:46:30 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 01 Jun 2018 10:46:30 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 01 Jun 2018 10:46:31 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 01 Jun 2018 10:46:31 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 01 Jun 2018 10:46:31 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 01 Jun 2018 11:32:15 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 01 Jun 2018 11:32:15 GMT
ENV PHP_VERSION=5.6.36
# Fri, 01 Jun 2018 11:32:15 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.36.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.36.tar.xz.asc/from/this/mirror
# Fri, 01 Jun 2018 11:32:16 GMT
ENV PHP_SHA256=18f536bf548e909b4e980379d0c4e56d024b2b1eb1c9768fd169360491f1d6dd PHP_MD5=
# Thu, 21 Jun 2018 13:43:10 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Thu, 21 Jun 2018 13:43:10 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 21 Jun 2018 13:45:59 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 21 Jun 2018 13:45:59 GMT
COPY multi:2cdcedabcf5a3b9ae610fab7848e94bc2f64b4d85710d55fd6f79e44dacf73d8 in /usr/local/bin/ 
# Thu, 21 Jun 2018 13:45:59 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 21 Jun 2018 13:46:00 GMT
CMD ["php" "-a"]
# Thu, 21 Jun 2018 15:32:04 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Thu, 21 Jun 2018 15:32:05 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 21 Jun 2018 15:32:09 GMT
RUN apk add --no-cache 		less 		mysql-client
# Thu, 21 Jun 2018 15:32:10 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html
# Thu, 21 Jun 2018 15:32:10 GMT
WORKDIR /var/www/html
# Thu, 21 Jun 2018 15:32:10 GMT
VOLUME [/var/www/html]
# Thu, 21 Jun 2018 15:32:10 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Thu, 21 Jun 2018 15:32:10 GMT
ENV WORDPRESS_CLI_VERSION=1.5.1
# Thu, 21 Jun 2018 15:32:11 GMT
ENV WORDPRESS_CLI_SHA512=8dd68c98c6fa00e1acc5e036f9393c8b052937045b5232e4aa0eb4f15773908eae48760607bc853a4f951bd5ba69e5050337e5d9dcfa48df87a12cebb1de3432
# Thu, 21 Jun 2018 15:32:17 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fSL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del .fetch-deps; 		wp --allow-root --version
# Thu, 21 Jun 2018 15:32:18 GMT
COPY file:6439ebdee069987b41eac0b67f3829c60f8dc168426dc92872b5e95a5f4d8213 in /usr/local/bin/ 
# Thu, 21 Jun 2018 15:32:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 21 Jun 2018 15:32:18 GMT
USER [www-data]
# Thu, 21 Jun 2018 15:32:18 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:061a9db3c9e4f3bc32618a5f1a7e2b8aefb20fcc48f8be709bc7f7eabe61d003`  
		Last Modified: Fri, 01 Jun 2018 06:57:51 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9362910160aaa343ca8dc990efe62fff5a14089c10259744982d255c0638cb55`  
		Last Modified: Fri, 01 Jun 2018 11:43:26 GMT  
		Size: 1.4 MB (1368704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:978adc59089609682b6befe63f957c0e68bd015afa73c26179064798a98bccfd`  
		Last Modified: Fri, 01 Jun 2018 11:43:25 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13520db38890805ee92c3c897f635d68fe93da65b7a2fd8b9d15270589cba60c`  
		Last Modified: Fri, 01 Jun 2018 11:43:25 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf77cbf6d51f487ee550d7d1ca5a0ba9ce1f61a6f8c25b352de0bb158a1e7b5d`  
		Last Modified: Thu, 21 Jun 2018 14:39:43 GMT  
		Size: 12.5 MB (12486499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:827297299ff305c3824fa799aed81d332c1ccf250ebce1e251d910ac4dd6b56f`  
		Last Modified: Thu, 21 Jun 2018 14:39:41 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:918d9807cd45b0640d689520e0ddbc0f8a4fe3364948c31319051dc7d8471649`  
		Last Modified: Thu, 21 Jun 2018 14:39:47 GMT  
		Size: 12.1 MB (12110012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8249d644bb14ef0e3379dfc50adbd0b2293e0ff46aad459142d15872509649f`  
		Last Modified: Thu, 21 Jun 2018 14:39:41 GMT  
		Size: 2.2 KB (2170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2295caa3e398ef8d15fed17a1539c0cc515dd21ea8740e42526ce3a4fc34c8bc`  
		Last Modified: Thu, 21 Jun 2018 15:58:03 GMT  
		Size: 841.4 KB (841406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5313bd5fdc228ce6fa1f3e0e3a64f60e0ada41e873246f075a12b25980364470`  
		Last Modified: Thu, 21 Jun 2018 15:58:02 GMT  
		Size: 339.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ef9d39b832b2bc7dc6653c94187bbda6ca205b5e0e5fb1068df0b49fcb9dec2`  
		Last Modified: Thu, 21 Jun 2018 15:58:04 GMT  
		Size: 7.9 MB (7930221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:642978da0bc0f6acfa1c899153686ce4dcbd062f662e07580d5df2389065dc18`  
		Last Modified: Thu, 21 Jun 2018 15:58:00 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d2825e8d0d390aa3d208b704a0a2ebab6dfc2243eab177465efbc0eac43994f`  
		Last Modified: Thu, 21 Jun 2018 15:58:03 GMT  
		Size: 1.1 MB (1082922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90d7176856376bde16f2a8b28b3ed8e5bfc19dd5467d236b480f312f41a83bbe`  
		Last Modified: Thu, 21 Jun 2018 15:58:00 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `wordpress:cli-php5.6` - linux; ppc64le

```console
$ docker pull wordpress@sha256:cd5e55bf013c85af26d6cff2f32968a23a8b4af3462038ab25e96539c5d6fda4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.9 MB (36909869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6227726c1b7b92c9121fb777fa03e7fcf6efb4e3e7512bbbe908bf86be711864`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Thu, 14 Dec 2017 09:49:48 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 14 Dec 2017 09:50:02 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Thu, 14 Dec 2017 09:50:06 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Thu, 14 Dec 2017 09:50:08 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 14 Dec 2017 09:50:10 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 14 Dec 2017 09:50:11 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 14 Dec 2017 09:50:12 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 14 Dec 2017 09:50:13 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 24 May 2018 10:01:50 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Thu, 24 May 2018 10:01:52 GMT
ENV PHP_VERSION=5.6.36
# Thu, 24 May 2018 10:01:54 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.36.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.36.tar.xz.asc/from/this/mirror
# Thu, 24 May 2018 10:01:56 GMT
ENV PHP_SHA256=18f536bf548e909b4e980379d0c4e56d024b2b1eb1c9768fd169360491f1d6dd PHP_MD5=
# Thu, 21 Jun 2018 11:52:17 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Thu, 21 Jun 2018 11:52:18 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 21 Jun 2018 11:55:11 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 21 Jun 2018 11:55:16 GMT
COPY multi:2cdcedabcf5a3b9ae610fab7848e94bc2f64b4d85710d55fd6f79e44dacf73d8 in /usr/local/bin/ 
# Thu, 21 Jun 2018 11:55:18 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 21 Jun 2018 11:55:19 GMT
CMD ["php" "-a"]
# Thu, 21 Jun 2018 13:29:59 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		libjpeg-turbo-dev 		libpng-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-install gd mysqli opcache zip; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del .build-deps
# Thu, 21 Jun 2018 13:30:02 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 21 Jun 2018 13:30:07 GMT
RUN apk add --no-cache 		less 		mysql-client
# Thu, 21 Jun 2018 13:30:11 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html
# Thu, 21 Jun 2018 13:30:12 GMT
WORKDIR /var/www/html
# Thu, 21 Jun 2018 13:30:13 GMT
VOLUME [/var/www/html]
# Thu, 21 Jun 2018 13:30:14 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Thu, 21 Jun 2018 13:30:16 GMT
ENV WORDPRESS_CLI_VERSION=1.5.1
# Thu, 21 Jun 2018 13:30:17 GMT
ENV WORDPRESS_CLI_SHA512=8dd68c98c6fa00e1acc5e036f9393c8b052937045b5232e4aa0eb4f15773908eae48760607bc853a4f951bd5ba69e5050337e5d9dcfa48df87a12cebb1de3432
# Thu, 21 Jun 2018 13:30:26 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fSL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del .fetch-deps; 		wp --allow-root --version
# Thu, 21 Jun 2018 13:30:32 GMT
COPY file:6439ebdee069987b41eac0b67f3829c60f8dc168426dc92872b5e95a5f4d8213 in /usr/local/bin/ 
# Thu, 21 Jun 2018 13:30:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 21 Jun 2018 13:30:34 GMT
USER [www-data]
# Thu, 21 Jun 2018 13:30:35 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:0da653ea85b50d280ec56ca2eafb7e8b37590630356e043fa9ff162d55732a23`  
		Last Modified: Fri, 01 Dec 2017 18:42:14 GMT  
		Size: 2.1 MB (2081469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd90b777cc38b5b6ca1b2407e647fdc22ef31b57ef98e924e7e0635adffc385`  
		Last Modified: Fri, 01 Dec 2017 18:42:15 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bcb39b8c697dd02c12a952dcc63b609d7c7bf9d66e93e5e4913d2eeeaf894d3`  
		Last Modified: Thu, 14 Dec 2017 10:14:08 GMT  
		Size: 1.3 MB (1256438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a484a708d295b3464c467d2a9bd8343046d4f4905c5776958832b3f6754c2f6`  
		Last Modified: Thu, 14 Dec 2017 10:14:07 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b360613871987866ea7defe9eb40283e850669f1475e97eb519e25f1f522df28`  
		Last Modified: Thu, 14 Dec 2017 10:14:05 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b466b517a72a0b50b3b6f7ca33e0bcee6bbc0abe308e7a236771d73c131c533`  
		Last Modified: Thu, 21 Jun 2018 12:41:10 GMT  
		Size: 12.5 MB (12486501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f47930f9d667f859fecd28eb91e7be334d0629bbaafbce7bb9abc1c3f97c6115`  
		Last Modified: Thu, 21 Jun 2018 12:41:08 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f966682cb9be8f62c88e459497bd93382482674d61c6f5c159415175d45b8eec`  
		Last Modified: Thu, 21 Jun 2018 12:41:12 GMT  
		Size: 11.6 MB (11551551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3916b88808924547a716e11be9f4c55ed509db3cd29ab89229eb187862aacebe`  
		Last Modified: Thu, 21 Jun 2018 12:41:08 GMT  
		Size: 2.2 KB (2167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e8da5536a6cae0732cc45faa44a8e4be8222f94899a0615a20cce8b9d257631`  
		Last Modified: Thu, 21 Jun 2018 13:51:18 GMT  
		Size: 790.8 KB (790756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c9c465203e71dd8353cfcf0172742ec866b69aeb25feed59cde6044d25051fa`  
		Last Modified: Thu, 21 Jun 2018 13:51:15 GMT  
		Size: 339.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a223475c87c4c4bf8fd6b0be0306d14668b124985334a7c75a4fc11b9edbda00`  
		Last Modified: Thu, 21 Jun 2018 13:51:18 GMT  
		Size: 7.7 MB (7654472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b77ffe24532a7efad5590674314ebc4445f22a4df82d76580f5a8cfc4b82379`  
		Last Modified: Thu, 21 Jun 2018 13:51:14 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:102bd601ff4a083a915e9f7015d99843e1ac77cc928eb2e7a886e41a834c3d9d`  
		Last Modified: Thu, 21 Jun 2018 13:51:15 GMT  
		Size: 1.1 MB (1083444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e83a3672b713bfaef12ab7557bbd7dec10048ec04129204059b5d9c8f535e158`  
		Last Modified: Thu, 21 Jun 2018 13:51:14 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
