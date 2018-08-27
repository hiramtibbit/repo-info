## `nextcloud:rc-fpm-alpine`

```console
$ docker pull nextcloud@sha256:95d9c5890c3629e666ef7b19da66665a0db3afaf3126cf7dbadcd19eed5e61fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nextcloud:rc-fpm-alpine` - linux; amd64

```console
$ docker pull nextcloud@sha256:fbddaf22e3f46aa3023713b8e901c1662386a8d396cb3ccbcfcae24ca7136b38
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.3 MB (108264129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2750ca4eb0dc7e8a0789ee9c078c8a91ba97bab6e83e95ffdb6a7ccd92f1049`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:45 GMT
ADD file:6ee19b92d5cb1bf143947fe2e2481cb3b353d42e1e54888a8ba48c03dd4155f2 in / 
# Fri, 06 Jul 2018 14:13:45 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 16:18:38 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 06 Jul 2018 16:18:40 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		libressl
# Fri, 06 Jul 2018 16:18:41 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 06 Jul 2018 16:18:41 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 06 Jul 2018 16:18:42 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Fri, 06 Jul 2018 16:23:55 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Fri, 06 Jul 2018 16:23:55 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 06 Jul 2018 16:23:56 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 06 Jul 2018 16:23:56 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Fri, 06 Jul 2018 16:23:56 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Thu, 23 Aug 2018 00:31:07 GMT
ENV PHP_VERSION=7.2.9
# Thu, 23 Aug 2018 00:31:07 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.9.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.9.tar.xz.asc/from/this/mirror
# Thu, 23 Aug 2018 00:31:07 GMT
ENV PHP_SHA256=3585c1222e00494efee4f5a65a8e03a1e6eca3dfb834814236ee7f02c5248ae0 PHP_MD5=
# Thu, 23 Aug 2018 00:31:16 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Thu, 23 Aug 2018 00:31:17 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 23 Aug 2018 00:34:36 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libsodium-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 23 Aug 2018 00:34:38 GMT
COPY multi:af8a06a5cfc82b17b169c6d1e48630a516582fa7ce00d8e59e5a378e100d064a in /usr/local/bin/ 
# Thu, 23 Aug 2018 00:34:40 GMT
RUN docker-php-ext-enable sodium
# Thu, 23 Aug 2018 00:34:40 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 23 Aug 2018 00:34:40 GMT
WORKDIR /var/www/html
# Thu, 23 Aug 2018 00:34:41 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Thu, 23 Aug 2018 00:34:41 GMT
EXPOSE 9000/tcp
# Thu, 23 Aug 2018 00:34:41 GMT
CMD ["php-fpm"]
# Thu, 23 Aug 2018 05:30:33 GMT
RUN set -ex;         apk add --no-cache         rsync     ;         rm /var/spool/cron/crontabs/root;     echo '*/15 * * * * php -f /var/www/html/cron.php' > /var/spool/cron/crontabs/www-data
# Thu, 23 Aug 2018 05:34:26 GMT
RUN set -ex;         apk add --no-cache --virtual .build-deps         $PHPIZE_DEPS         autoconf         freetype-dev         icu-dev         libjpeg-turbo-dev         libmcrypt-dev         libpng-dev         libmemcached-dev         libxml2-dev         openldap-dev         pcre-dev         postgresql-dev     ;         docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr;     docker-php-ext-configure ldap;     docker-php-ext-install         exif         gd         intl         ldap         opcache         pcntl         pdo_mysql         pdo_pgsql         zip     ;         pecl install APCu-5.1.12;     pecl install memcached-3.0.4;     pecl install redis-4.1.1;         docker-php-ext-enable         apcu         memcached         redis     ;         runDeps="$(         scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions             | tr ',' '\n'             | sort -u             | awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }'     )";     apk add --virtual .nextcloud-phpext-rundeps $runDeps;     apk del .build-deps
# Thu, 23 Aug 2018 05:34:27 GMT
RUN {         echo 'opcache.enable=1';         echo 'opcache.enable_cli=1';         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=128';         echo 'opcache.save_comments=1';         echo 'opcache.revalidate_freq=1';     } > /usr/local/etc/php/conf.d/opcache-recommended.ini;         echo 'apc.enable_cli=1' >> /usr/local/etc/php/conf.d/docker-php-ext-apcu.ini;         mkdir /var/www/data;     chown -R www-data:root /var/www;     chmod -R g=u /var/www
# Thu, 23 Aug 2018 05:34:27 GMT
VOLUME [/var/www/html]
# Mon, 27 Aug 2018 20:55:22 GMT
ENV NEXTCLOUD_VERSION=14.0.0RC1
# Mon, 27 Aug 2018 20:55:49 GMT
RUN set -ex;     apk add --no-cache --virtual .fetch-deps         bzip2         gnupg     ;         curl -fsSL -o nextcloud.tar.bz2         "https://download.nextcloud.com/server/prereleases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2";     curl -fsSL -o nextcloud.tar.bz2.asc         "https://download.nextcloud.com/server/prereleases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A;     gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2;     tar -xjf nextcloud.tar.bz2 -C /usr/src/;     gpgconf --kill all;     rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc nextcloud.tar.bz2;     rm -rf /usr/src/nextcloud/updater;     mkdir -p /usr/src/nextcloud/data;     mkdir -p /usr/src/nextcloud/custom_apps;     chmod +x /usr/src/nextcloud/occ;     apk del .fetch-deps
# Mon, 27 Aug 2018 20:55:51 GMT
COPY multi:f33934cfb9da2d432252f25123e4239ab0550f895400c104c4593506cd83b53b in / 
# Mon, 27 Aug 2018 20:56:11 GMT
COPY multi:55b88fcd3d6a1a8ca5ef52e5d2c9e27370c13cdc4c5e94d159f82a32979740ff in /usr/src/nextcloud/config/ 
# Mon, 27 Aug 2018 20:56:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 27 Aug 2018 20:56:11 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:911c6d0c7995e5d9763c1864d54fb6deccda04a55d7955123a8e22dd9d44c497`  
		Last Modified: Fri, 06 Jul 2018 14:16:43 GMT  
		Size: 2.1 MB (2103553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2527cc05836df8b883384a19f35597b62f1e1ef30211c870fb5527e3080a6f58`  
		Last Modified: Fri, 06 Jul 2018 18:03:03 GMT  
		Size: 1.3 MB (1256023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3299172a2d6d097e545dc05d7704c6a14168c66aa3e250a41ab825f94ab90b63`  
		Last Modified: Fri, 06 Jul 2018 18:03:01 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05782106624fe89fa24d92965e55266bc688607d27223c74ced4be2fcaedb024`  
		Last Modified: Fri, 06 Jul 2018 18:03:01 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c4aac05a7c8962b6234be423a79023c8068e0dc57ef124f9b4e45dbd6448b64`  
		Last Modified: Thu, 23 Aug 2018 03:11:43 GMT  
		Size: 13.4 MB (13367870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d53e20051c6d477ca7871587f2dc6149d400b0d843788b88d36c6779f398b28`  
		Last Modified: Thu, 23 Aug 2018 03:11:41 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6aedfadf0d069bd86a448bd26a4afd5588f7dbd374b1bc8dad5f7b91f06912b`  
		Last Modified: Thu, 23 Aug 2018 03:11:45 GMT  
		Size: 16.0 MB (15986856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f65a80d64f5e37394abb32ac2170ebf3cd58863a3a19cf4da4ea12081669155`  
		Last Modified: Thu, 23 Aug 2018 03:11:38 GMT  
		Size: 2.2 KB (2171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fee1b253c254fbc19c6696dacd2601eed9c45061804efc27ce0561ff750dcdc8`  
		Last Modified: Thu, 23 Aug 2018 03:11:38 GMT  
		Size: 70.9 KB (70910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:735cb890a5c81dd5da402a69b85338baeb51c9d47774d876c13abc3b626a3ec1`  
		Last Modified: Thu, 23 Aug 2018 03:11:38 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:407481c6ea8cdb3925d6d921a58fd311499de16ce06900e61d818409c4c97b28`  
		Last Modified: Thu, 23 Aug 2018 03:11:38 GMT  
		Size: 7.8 KB (7780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1479805b9ec00c7be814f307322f2bce6c0fe0e9428c63ef1e921b25c1e4fd1c`  
		Last Modified: Thu, 23 Aug 2018 06:00:22 GMT  
		Size: 335.1 KB (335085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d673cce1f3404afd7f05b171ce73a4a820fcdc5ff71ab4661056655df4dfd155`  
		Last Modified: Thu, 23 Aug 2018 06:00:26 GMT  
		Size: 19.2 MB (19221566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67e1be7f5c259cddc9340b53d7ad34cf6db06b52e3bffc16457fc4191fe3f8d2`  
		Last Modified: Thu, 23 Aug 2018 06:00:20 GMT  
		Size: 459.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9803dc94fa238a7e11986f9ea52b9257e9f47f7d93106b20c534e56a2d8a8df3`  
		Last Modified: Mon, 27 Aug 2018 21:02:55 GMT  
		Size: 55.9 MB (55908022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7859fb5bb149a44d6e4bceeb7a72577d8c809197e71f3bd9fbafa5345eeb805`  
		Last Modified: Mon, 27 Aug 2018 21:02:36 GMT  
		Size: 998.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc4b706a6443c0b82e66062eaf83d5e849cf7554d56b6d98c620a4e687fab348`  
		Last Modified: Mon, 27 Aug 2018 21:02:36 GMT  
		Size: 790.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
