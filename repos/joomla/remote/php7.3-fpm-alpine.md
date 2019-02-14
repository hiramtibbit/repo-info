## `joomla:php7.3-fpm-alpine`

```console
$ docker pull joomla@sha256:3ca5257b275733dcf056d5e569b6e93d09543c09c873737023d367069a00096d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `joomla:php7.3-fpm-alpine` - linux; amd64

```console
$ docker pull joomla@sha256:4f886487bbfa63d00ec3cde00149efd04b9fed2b9039bd69c1e0eeb267c2105c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.8 MB (48794859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fb343ac278a1d1a75b7e0134ed9a4d7c486af73607cadf20a79ec5796d98baa`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:52 GMT
ADD file:2a1fc9351afe35698918545b2d466d9805c2e8afcec52f916785ee65bbafeced in / 
# Wed, 30 Jan 2019 22:19:52 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 01:34:35 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 06 Feb 2019 01:34:36 GMT
RUN apk add --no-cache --virtual .persistent-deps 		ca-certificates 		curl 		tar 		xz 		openssl
# Wed, 06 Feb 2019 01:34:37 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 06 Feb 2019 01:34:37 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 06 Feb 2019 01:34:38 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 06 Feb 2019 01:41:37 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Wed, 06 Feb 2019 01:41:37 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 01:41:37 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 01:41:37 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 06 Feb 2019 01:41:38 GMT
ENV GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
# Sat, 09 Feb 2019 02:06:09 GMT
ENV PHP_VERSION=7.3.2
# Sat, 09 Feb 2019 02:06:10 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.3.2.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.3.2.tar.xz.asc/from/this/mirror
# Sat, 09 Feb 2019 02:06:10 GMT
ENV PHP_SHA256=010b868b4456644ae227d05ad236c8b0a1f57dc6320e7e5ad75e86c5baf0a9a8 PHP_MD5=
# Sat, 09 Feb 2019 02:06:12 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Sat, 09 Feb 2019 02:06:13 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Feb 2019 02:12:59 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		libedit-dev 		libsodium-dev 		libxml2-dev 		openssl-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 		&& cp -v php.ini-* "$PHP_INI_DIR/" 		&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Feb 2019 02:13:00 GMT
COPY multi:cbc68fef2c8554b9a23fee7eee16ffda927235f929048638240f97172562665c in /usr/local/bin/ 
# Sat, 09 Feb 2019 02:13:01 GMT
RUN docker-php-ext-enable sodium
# Sat, 09 Feb 2019 02:13:01 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Feb 2019 02:13:01 GMT
WORKDIR /var/www/html
# Sat, 09 Feb 2019 02:13:02 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Sat, 09 Feb 2019 02:13:02 GMT
EXPOSE 9000
# Sat, 09 Feb 2019 02:13:02 GMT
CMD ["php-fpm"]
# Sat, 09 Feb 2019 04:08:47 GMT
LABEL maintainer=Michael Babker <michael.babker@joomla.org> (@mbabker)
# Sat, 09 Feb 2019 04:08:47 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Sat, 09 Feb 2019 04:08:48 GMT
RUN apk add --no-cache 	bash
# Wed, 13 Feb 2019 21:44:06 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		autoconf 		bzip2-dev 		libjpeg-turbo-dev 		libmemcached-dev 		libpng-dev 		libzip-dev 		openldap-dev 		pcre-dev 		postgresql-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-configure ldap; 	docker-php-ext-install 		bz2 		gd 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 		pecl install APCu-5.1.17; 	pecl install memcached-3.1.3; 	pecl install redis-4.2.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		)"; 	apk add --virtual .joomla-phpext-rundeps $runDeps; 	apk del .build-deps
# Wed, 13 Feb 2019 21:44:06 GMT
VOLUME [/var/www/html]
# Wed, 13 Feb 2019 21:44:07 GMT
ENV JOOMLA_VERSION=3.9.3
# Wed, 13 Feb 2019 21:44:07 GMT
ENV JOOMLA_SHA512=333554c0ce784c540b5a184c728c4d516103fe09fa66316accf537cdfc74ef2632a8972cb8fe665c20798817e454bc5156e1a0b1a6bfc8e70c63e3c4f698dee9
# Wed, 13 Feb 2019 21:44:11 GMT
RUN curl -o joomla.tar.bz2 -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.tar.bz2 	&& echo "$JOOMLA_SHA512 *joomla.tar.bz2" | sha512sum -c - 	&& mkdir /usr/src/joomla 	&& tar -xf joomla.tar.bz2 -C /usr/src/joomla 	&& rm joomla.tar.bz2 	&& chown -R www-data:www-data /usr/src/joomla
# Wed, 13 Feb 2019 21:44:11 GMT
COPY file:fcc18c5b9c2d514cfb965bab84e10b4f924a39a5f202055df75d7990da099d8f in /entrypoint.sh 
# Wed, 13 Feb 2019 21:44:11 GMT
COPY file:5a85d779aaae74cfa3ab6228df0f24236d4d5ad9097e2a1b277e3daea0d6d3dc in /makedb.php 
# Wed, 13 Feb 2019 21:44:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 13 Feb 2019 21:44:12 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:6c40cc604d8e4c121adcb6b0bfe8bb038815c350980090e74aa5a6423f8f82c0`  
		Last Modified: Wed, 30 Jan 2019 22:21:08 GMT  
		Size: 2.8 MB (2754728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4af09669d6bc8dab39672c4c1ed2a997384de66938916cfe3710fef6de246d4`  
		Last Modified: Wed, 06 Feb 2019 03:34:41 GMT  
		Size: 1.4 MB (1434376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba64579e88cb1f6b3766ef916cc497ad1f0374d5a58418bcbad70c890a1f5152`  
		Last Modified: Wed, 06 Feb 2019 03:34:41 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d54458d46b379418e5080ced2c6ac09dae496ad6528c04e57c787e20ebaec32`  
		Last Modified: Wed, 06 Feb 2019 03:34:40 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83b3ebf15fbb655fc69b4a0bef9f6d4b9c560ae57bf504340ff16b8083cb0581`  
		Last Modified: Sat, 09 Feb 2019 03:36:59 GMT  
		Size: 12.0 MB (11986391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdfd02670318417e288103805b2947105792f6e1c252a515b49d2c8fb675f74e`  
		Last Modified: Sat, 09 Feb 2019 03:36:58 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:364f3e82fc414785ed043613237737f782f6695fafd1f36616a5ae7f08ee944f`  
		Last Modified: Sat, 09 Feb 2019 03:37:01 GMT  
		Size: 16.4 MB (16431115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a0789e77b288bf3db87d95005d479047b5738282cf80dfe3f86da0c051c9e25`  
		Last Modified: Sat, 09 Feb 2019 03:36:57 GMT  
		Size: 2.2 KB (2177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cf595c3b701e2d5ac1dbaf16bf534444a688db754dfd887e12a398ca661e572`  
		Last Modified: Sat, 09 Feb 2019 03:36:57 GMT  
		Size: 72.1 KB (72094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0db216cb55060af5744ac10251199494d2432b859183228af2a35022e05ac029`  
		Last Modified: Sat, 09 Feb 2019 03:36:57 GMT  
		Size: 8.3 KB (8267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:291e390d9b6ec5a060992053a2fd280fb5137b0cf79b1b9f2cc6cdc47220d010`  
		Last Modified: Sat, 09 Feb 2019 04:11:49 GMT  
		Size: 583.3 KB (583323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81340fbde743cf6170f34783bfd7ba0526b1f0b299f9e4bbdf479238083ae803`  
		Last Modified: Wed, 13 Feb 2019 21:46:18 GMT  
		Size: 5.9 MB (5941582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f579819b73904dd3b64187dc37510bea4c6366b91e7f70e099dcdb02b72cd67`  
		Last Modified: Wed, 13 Feb 2019 21:46:20 GMT  
		Size: 9.6 MB (9577053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d34e3ee2f1474925615756310ba8e028603191f44803304444cfb89aebc4fb85`  
		Last Modified: Wed, 13 Feb 2019 21:46:17 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69c81a88daafdb1d8d8be352e3af7a895c2248668299224ca57870e0abe388c0`  
		Last Modified: Wed, 13 Feb 2019 21:46:17 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
