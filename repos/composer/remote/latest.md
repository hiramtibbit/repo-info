## `composer:latest`

```console
$ docker pull composer@sha256:9eb36a38dbfb8bc6f24e18830adf774c3075a1ff8162f63239dd5a7e29216f42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `composer:latest` - linux; amd64

```console
$ docker pull composer@sha256:9d2932452770e5f1fb745fd66d35630281b054743e9096f6c0e187eb2786ba15
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.0 MB (55973360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51038e6b7a55deac2666418b37cf8d05b39409dfd82606215ef8c8fe93860a4d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

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
# Wed, 10 Jan 2018 01:29:57 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Fri, 27 Apr 2018 01:29:29 GMT
ENV PHP_VERSION=7.2.5
# Fri, 27 Apr 2018 01:29:29 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.5.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.5.tar.xz.asc/from/this/mirror
# Fri, 27 Apr 2018 01:29:30 GMT
ENV PHP_SHA256=af70a33b3f7a51510467199b39af151333fbbe4cc21923bad9c7cf64268cddb2 PHP_MD5=
# Fri, 27 Apr 2018 01:29:40 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Fri, 27 Apr 2018 01:29:40 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 27 Apr 2018 01:34:00 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libsodium-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Fri, 27 Apr 2018 01:34:01 GMT
COPY multi:2cdcedabcf5a3b9ae610fab7848e94bc2f64b4d85710d55fd6f79e44dacf73d8 in /usr/local/bin/ 
# Fri, 27 Apr 2018 01:34:02 GMT
RUN docker-php-ext-enable sodium
# Fri, 27 Apr 2018 01:34:02 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 27 Apr 2018 01:34:03 GMT
CMD ["php" "-a"]
# Fri, 27 Apr 2018 17:35:15 GMT
RUN apk --no-cache add curl git subversion openssh openssl mercurial tini bash zlib-dev
# Fri, 27 Apr 2018 17:35:16 GMT
RUN echo "memory_limit=-1" > "$PHP_INI_DIR/conf.d/memory-limit.ini"  && echo "date.timezone=${PHP_TIMEZONE:-UTC}" > "$PHP_INI_DIR/conf.d/date_timezone.ini"
# Fri, 27 Apr 2018 17:35:38 GMT
RUN docker-php-ext-install zip
# Fri, 27 Apr 2018 17:35:38 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Fri, 27 Apr 2018 17:35:39 GMT
ENV COMPOSER_HOME=/tmp
# Fri, 27 Apr 2018 17:35:39 GMT
ENV COMPOSER_VERSION=1.6.4
# Fri, 27 Apr 2018 17:35:41 GMT
RUN curl -s -f -L -o /tmp/installer.php https://raw.githubusercontent.com/composer/getcomposer.org/b107d959a5924af895807021fcef4ffec5a76aa9/web/installer  && php -r "     \$signature = '544e09ee996cdf60ece3804abc52599c22b1f40f4323403c44d44fdfdd586475ca9813a858088ffbc1f233e9b180f061';     \$hash = hash('SHA384', file_get_contents('/tmp/installer.php'));     if (!hash_equals(\$signature, \$hash)) {         unlink('/tmp/installer.php');         echo 'Integrity check failed, installer is either corrupt or worse.' . PHP_EOL;         exit(1);     }"  && php /tmp/installer.php --no-ansi --install-dir=/usr/bin --filename=composer --version=${COMPOSER_VERSION}  && composer --ansi --version --no-interaction  && rm -rf /tmp/* /tmp/.htaccess
# Fri, 27 Apr 2018 17:35:42 GMT
COPY file:295943a303e8f27de4302b6aa3687bce4b1d1392335efaaab9ecd37bec5ab4c5 in /docker-entrypoint.sh 
# Fri, 27 Apr 2018 17:35:42 GMT
WORKDIR /app
# Fri, 27 Apr 2018 17:35:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 27 Apr 2018 17:35:42 GMT
CMD ["composer"]
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
	-	`sha256:f35e2d57731d99b2e5a9deae4f73750681ecf74b7f0f8bfbf9af4bdff32dccdb`  
		Last Modified: Fri, 27 Apr 2018 04:57:12 GMT  
		Size: 12.1 MB (12053928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65ccebaf1dcb39eeb7a1f1a1090b1a9552c32ad7d781d4ac545d9572a54b48e6`  
		Last Modified: Fri, 27 Apr 2018 04:57:11 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de69650797f78cf34dbadce51e280b999aaf7d7acdf508ec11573e85b49499b1`  
		Last Modified: Fri, 27 Apr 2018 04:57:15 GMT  
		Size: 12.2 MB (12196238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:649d982d6b0084fae816957c055bc25701e39228386c4bd7cbd89c7f1bece297`  
		Last Modified: Fri, 27 Apr 2018 04:57:11 GMT  
		Size: 2.2 KB (2168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15154f574921931d138e72faf2df869b70dc1167e516b97ece709f902498ff8d`  
		Last Modified: Fri, 27 Apr 2018 04:57:11 GMT  
		Size: 70.9 KB (70919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:923e75d8ec1d6b94fa33d140c72a9451832eb8f9d5d09fa75695be7dafb5ee11`  
		Last Modified: Fri, 27 Apr 2018 17:59:17 GMT  
		Size: 27.6 MB (27621275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:536b6f507db896da2960428b507e82b9b39b2ad97cc7e5d34763596f571365f9`  
		Last Modified: Fri, 27 Apr 2018 17:59:11 GMT  
		Size: 284.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a2735154f422dd4b94311e333f319255a5091440056ba91738b057486fd3902`  
		Last Modified: Fri, 27 Apr 2018 17:59:10 GMT  
		Size: 227.1 KB (227059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bdc9844c037db1e0a64eea31ab0c72b023a2fd5d6188f9cea343b761d4ee0a6`  
		Last Modified: Fri, 27 Apr 2018 17:59:11 GMT  
		Size: 472.1 KB (472113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee2bd65b558ed8d0d561bb4c53897f41f56e6ab5b5f9ca6992084c5530195d3d`  
		Last Modified: Fri, 27 Apr 2018 17:59:11 GMT  
		Size: 534.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10f16edf477925b2c10d0cd2dca014ba06036a2aeeb8b45f36a9d275b3e90cf9`  
		Last Modified: Fri, 27 Apr 2018 17:59:10 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
