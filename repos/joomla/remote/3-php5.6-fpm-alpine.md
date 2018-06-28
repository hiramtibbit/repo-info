## `joomla:3-php5.6-fpm-alpine`

```console
$ docker pull joomla@sha256:ed8ef8c4e9d18c0b1bda53afa15a2228cbaef064f2bd2a6b076e20e0fa15d6ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `joomla:3-php5.6-fpm-alpine` - linux; amd64

```console
$ docker pull joomla@sha256:0d03b6b0b0b00b3152121df7dd3448f098cc48bfdbf43b490b8f52d28bd3781f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.2 MB (42165256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3f0223c2a3628d9c6985c34a541ac1ef9c8de1df0373b6b984aef67c7eea300`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

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
# Wed, 27 Jun 2018 23:30:34 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi
# Wed, 27 Jun 2018 23:30:34 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 27 Jun 2018 23:30:34 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 27 Jun 2018 23:30:35 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 28 Jun 2018 05:11:05 GMT
ENV GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Thu, 28 Jun 2018 05:11:06 GMT
ENV PHP_VERSION=5.6.36
# Thu, 28 Jun 2018 05:11:06 GMT
ENV PHP_URL=https://secure.php.net/get/php-5.6.36.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-5.6.36.tar.xz.asc/from/this/mirror
# Thu, 28 Jun 2018 05:11:06 GMT
ENV PHP_SHA256=18f536bf548e909b4e980379d0c4e56d024b2b1eb1c9768fd169360491f1d6dd PHP_MD5=
# Thu, 28 Jun 2018 05:11:13 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Thu, 28 Jun 2018 05:11:13 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 28 Jun 2018 05:14:35 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 28 Jun 2018 05:14:36 GMT
COPY multi:af8a06a5cfc82b17b169c6d1e48630a516582fa7ce00d8e59e5a378e100d064a in /usr/local/bin/ 
# Thu, 28 Jun 2018 05:14:36 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 28 Jun 2018 05:14:36 GMT
WORKDIR /var/www/html
# Thu, 28 Jun 2018 05:14:37 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Thu, 28 Jun 2018 05:14:37 GMT
EXPOSE 9000/tcp
# Thu, 28 Jun 2018 05:14:37 GMT
CMD ["php-fpm"]
# Thu, 28 Jun 2018 06:28:45 GMT
LABEL maintainer=Michael Babker <michael.babker@joomla.org> (@mbabker)
# Thu, 28 Jun 2018 06:28:45 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Thu, 28 Jun 2018 06:28:46 GMT
RUN apk add --no-cache 	bash
# Thu, 28 Jun 2018 06:30:11 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		alpine-sdk 		autoconf 		bzip2-dev 		libjpeg-turbo-dev 		libmcrypt-dev 		libpng-dev 		libmemcached-dev 		openldap-dev 		pcre-dev 		postgresql-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-configure ldap; 	docker-php-ext-install 		bz2 		gd 		ldap 		mcrypt 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 	pecl install 		APCu-4.0.11 		memcached-2.2.0 		redis-3.1.6 	; 	docker-php-ext-enable 		apcu 		memcached 		redis 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		)"; 	apk add --virtual .joomla-phpext-rundeps $runDeps; 	apk del .build-deps
# Thu, 28 Jun 2018 06:30:12 GMT
VOLUME [/var/www/html]
# Thu, 28 Jun 2018 06:30:12 GMT
ENV JOOMLA_VERSION=3.8.8
# Thu, 28 Jun 2018 06:30:12 GMT
ENV JOOMLA_SHA1=d905327bee0cd5b4806ef34f74cbd5214fc9da2c
# Thu, 28 Jun 2018 06:30:18 GMT
RUN curl -o joomla.tar.bz2 -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.tar.bz2 	&& echo "$JOOMLA_SHA1 *joomla.tar.bz2" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& tar -xf joomla.tar.bz2 -C /usr/src/joomla 	&& rm joomla.tar.bz2 	&& chown -R www-data:www-data /usr/src/joomla
# Thu, 28 Jun 2018 06:30:18 GMT
COPY file:c1e8bebe69e832de6ba85a02864e7d24ff9e6b5232ea62a31e27a5769c662116 in /entrypoint.sh 
# Thu, 28 Jun 2018 06:30:19 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Thu, 28 Jun 2018 06:30:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 28 Jun 2018 06:30:19 GMT
CMD ["php-fpm"]
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
	-	`sha256:b37807fc25484e4e769d1f1bdebceb6858e2fbc7a4301b447abb337c6e6496c1`  
		Last Modified: Thu, 28 Jun 2018 06:09:37 GMT  
		Size: 12.5 MB (12486470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f638b81d31db556f2fa32afc8281452fcc23c7bf7cf963c416803a489575bd9d`  
		Last Modified: Thu, 28 Jun 2018 06:09:34 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e06e60e66679560756613386bff665c027a364cb80109124448a239dc3f41f77`  
		Last Modified: Thu, 28 Jun 2018 06:09:38 GMT  
		Size: 11.9 MB (11893111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80af6085253659f5bb267974b5cede00debf87a0445eee7476b25b29d0639855`  
		Last Modified: Thu, 28 Jun 2018 06:09:33 GMT  
		Size: 2.2 KB (2171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6b8c54324b8e41b9336767e70cd8166896633e8385b1067262460ce02899f18`  
		Last Modified: Thu, 28 Jun 2018 06:09:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ab44913a8a37c29b2f43a80fafa75f08f3488e61d3f5ff9dc5a8f0be07aca0b`  
		Last Modified: Thu, 28 Jun 2018 06:09:34 GMT  
		Size: 7.7 KB (7691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1053505395aa61ba828de8e71e17650d422459b5c3162fe342683dd2e54c1c8e`  
		Last Modified: Thu, 28 Jun 2018 07:17:51 GMT  
		Size: 689.2 KB (689249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cfe3f072b8530589af8c24114ab10e9a1f2761b0bbd8cf14fb4f9d2fcaa60fd`  
		Last Modified: Thu, 28 Jun 2018 07:17:52 GMT  
		Size: 4.4 MB (4353471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d66972950ac4ba1d83914f0aea69de405706557a2f328ee592b8b1b30aca912`  
		Last Modified: Thu, 28 Jun 2018 07:17:58 GMT  
		Size: 9.4 MB (9402414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dab79d76aac2e97f880d6d6ab86bd34fcfca4461b4466dc838cb2da04c7270b6`  
		Last Modified: Thu, 28 Jun 2018 07:17:50 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa38239ea4f3b9c112fd6d1785ac4117626d0155b93b12888b016c556c932fc2`  
		Last Modified: Thu, 28 Jun 2018 07:17:50 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
