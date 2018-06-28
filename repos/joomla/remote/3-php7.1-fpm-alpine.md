## `joomla:3-php7.1-fpm-alpine`

```console
$ docker pull joomla@sha256:6801202c0b8af5dc790ef3fd43274f62a24f7ea156bbfc822e4ae7241fc108dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `joomla:3-php7.1-fpm-alpine` - linux; amd64

```console
$ docker pull joomla@sha256:80f688a7e39072a61b95b0fd2910fbc62b6e79c35fe52d4aec9c119bf368a833
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.5 MB (46459943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bf5439c20cd306c1a8b39c109b2c47f480e16c31db182a8cacedf2ac89377bd`
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
# Thu, 28 Jun 2018 02:11:51 GMT
ENV GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172
# Thu, 28 Jun 2018 02:11:52 GMT
ENV PHP_VERSION=7.1.19
# Thu, 28 Jun 2018 02:11:52 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.1.19.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.1.19.tar.xz.asc/from/this/mirror
# Thu, 28 Jun 2018 02:11:52 GMT
ENV PHP_SHA256=7cab88f269b90a8a38dbcccf3ec0d5c6eba86122431a53eaa94405bbb60370a8 PHP_MD5=
# Thu, 28 Jun 2018 02:12:02 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Thu, 28 Jun 2018 02:12:02 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 28 Jun 2018 02:15:52 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Thu, 28 Jun 2018 02:15:53 GMT
COPY multi:af8a06a5cfc82b17b169c6d1e48630a516582fa7ce00d8e59e5a378e100d064a in /usr/local/bin/ 
# Thu, 28 Jun 2018 02:15:53 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 28 Jun 2018 02:15:54 GMT
WORKDIR /var/www/html
# Thu, 28 Jun 2018 02:15:54 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Thu, 28 Jun 2018 02:15:54 GMT
EXPOSE 9000/tcp
# Thu, 28 Jun 2018 02:15:55 GMT
CMD ["php-fpm"]
# Thu, 28 Jun 2018 06:43:43 GMT
LABEL maintainer=Michael Babker <michael.babker@joomla.org> (@mbabker)
# Thu, 28 Jun 2018 06:43:43 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Thu, 28 Jun 2018 06:43:45 GMT
RUN apk add --no-cache 	bash
# Thu, 28 Jun 2018 06:45:14 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		alpine-sdk 		autoconf 		bzip2-dev 		libjpeg-turbo-dev 		libmcrypt-dev 		libpng-dev 		libmemcached-dev 		openldap-dev 		pcre-dev 		postgresql-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-configure ldap; 	docker-php-ext-install 		bz2 		gd 		ldap 		mcrypt 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 	pecl install 		APCu-5.1.11 		memcached-3.0.4 		redis-3.1.6 	; 	docker-php-ext-enable 		apcu 		memcached 		redis 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		)"; 	apk add --virtual .joomla-phpext-rundeps $runDeps; 	apk del .build-deps
# Thu, 28 Jun 2018 06:45:14 GMT
VOLUME [/var/www/html]
# Thu, 28 Jun 2018 06:45:14 GMT
ENV JOOMLA_VERSION=3.8.8
# Thu, 28 Jun 2018 06:45:14 GMT
ENV JOOMLA_SHA1=d905327bee0cd5b4806ef34f74cbd5214fc9da2c
# Thu, 28 Jun 2018 06:45:20 GMT
RUN curl -o joomla.tar.bz2 -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.tar.bz2 	&& echo "$JOOMLA_SHA1 *joomla.tar.bz2" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& tar -xf joomla.tar.bz2 -C /usr/src/joomla 	&& rm joomla.tar.bz2 	&& chown -R www-data:www-data /usr/src/joomla
# Thu, 28 Jun 2018 06:45:21 GMT
COPY file:c1e8bebe69e832de6ba85a02864e7d24ff9e6b5232ea62a31e27a5769c662116 in /entrypoint.sh 
# Thu, 28 Jun 2018 06:45:21 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Thu, 28 Jun 2018 06:45:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 28 Jun 2018 06:45:22 GMT
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
	-	`sha256:e6e3ed72f5019b95b639975bbefa0067b21ccd2ef1b105afa268f9d4bbdf3565`  
		Last Modified: Thu, 28 Jun 2018 05:46:21 GMT  
		Size: 12.2 MB (12234134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2871e066533d261f54ff299b84ff33a09370398d25a22a7b4b4784e4138d01a`  
		Last Modified: Thu, 28 Jun 2018 05:46:18 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d0d04872242eabea5af88e74d30431ecf946940275be0ca1f3e5f24e86e9bd0`  
		Last Modified: Thu, 28 Jun 2018 05:46:25 GMT  
		Size: 16.5 MB (16479771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32075c1a9df090ea78fab9b43e9b6be4a86b01a69102bc3b9d2c6d4cdf6b726b`  
		Last Modified: Thu, 28 Jun 2018 05:46:18 GMT  
		Size: 2.2 KB (2171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97bb24ad3b861cf017d567c1cf667e5bcf4853ab8d275e1cbc950e02d9905860`  
		Last Modified: Thu, 28 Jun 2018 05:46:18 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84ea43e201355918a6605a3081ad14089289d67f8117a2dee2ca5aa4d0b16c54`  
		Last Modified: Thu, 28 Jun 2018 05:46:18 GMT  
		Size: 7.8 KB (7753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd67c7a0c29a1f90d2ceff2605586cb09412d1c8afb2e82174d0e4ae95e6e84d`  
		Last Modified: Thu, 28 Jun 2018 07:19:44 GMT  
		Size: 689.3 KB (689261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c07c2983fb954276be6ae2b3994f4177c57781598b547d0a38302c60e5ba7a96`  
		Last Modified: Thu, 28 Jun 2018 07:19:45 GMT  
		Size: 4.3 MB (4313625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e01e7db806828dfe3f139577732eac1f3004aa3e37165137d1cb9bd34570b3b6`  
		Last Modified: Thu, 28 Jun 2018 07:19:50 GMT  
		Size: 9.4 MB (9402544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8346ea4af103c4422de1a0b8fa05d8f7cdde942a1d5aeaeac4a5f3939d952417`  
		Last Modified: Thu, 28 Jun 2018 07:19:43 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4bd7ed8bf0a4e816d0ad0661b72845a718f9ca785ba76da1086d01cef5027d4`  
		Last Modified: Thu, 28 Jun 2018 07:19:44 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
