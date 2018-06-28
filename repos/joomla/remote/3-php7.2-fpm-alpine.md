## `joomla:3-php7.2-fpm-alpine`

```console
$ docker pull joomla@sha256:48e65d3bf118c8a9c10c6b69577e9bb34fc751a3a65c90b4b0fb5f09ecf22931
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `joomla:3-php7.2-fpm-alpine` - linux; amd64

```console
$ docker pull joomla@sha256:597461695c5ccc5ee197b3c4a41b71acfd92d60a4dc06601e73924a5153991bd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.4 MB (47369548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:877a8979b9a5af7365b7c26d25da7388c0018323422f5b2308344bb82b65c14a`
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
# Wed, 27 Jun 2018 23:30:35 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Wed, 27 Jun 2018 23:30:35 GMT
ENV PHP_VERSION=7.2.7
# Wed, 27 Jun 2018 23:30:35 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.7.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.7.tar.xz.asc/from/this/mirror
# Wed, 27 Jun 2018 23:30:36 GMT
ENV PHP_SHA256=eb01c0153b3baf1f64b8b044013ce414b52fede222df3f509e8ff209478f31f0 PHP_MD5=
# Wed, 27 Jun 2018 23:30:42 GMT
RUN set -xe; 		apk add --no-cache --virtual .fetch-deps 		gnupg 		wget 	; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apk del .fetch-deps
# Wed, 27 Jun 2018 23:30:43 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 27 Jun 2018 23:35:05 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		coreutils 		curl-dev 		libedit-dev 		libressl-dev 		libsodium-dev 		libxml2-dev 		sqlite-dev 		&& export CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	&& docker-php-source extract 	&& cd /usr/src/php 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 				$PHP_EXTRA_CONFIGURE_ARGS 	&& make -j "$(nproc)" 	&& make install 	&& { find /usr/local/bin /usr/local/sbin -type f -perm +0111 -exec strip --strip-all '{}' + || true; } 	&& make clean 	&& cd / 	&& docker-php-source delete 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .php-rundeps $runDeps 		&& apk del .build-deps 		&& pecl update-channels 	&& rm -rf /tmp/pear ~/.pearrc
# Wed, 27 Jun 2018 23:35:06 GMT
COPY multi:af8a06a5cfc82b17b169c6d1e48630a516582fa7ce00d8e59e5a378e100d064a in /usr/local/bin/ 
# Wed, 27 Jun 2018 23:35:07 GMT
RUN docker-php-ext-enable sodium
# Wed, 27 Jun 2018 23:35:07 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 27 Jun 2018 23:35:07 GMT
WORKDIR /var/www/html
# Wed, 27 Jun 2018 23:35:08 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Wed, 27 Jun 2018 23:35:08 GMT
EXPOSE 9000/tcp
# Wed, 27 Jun 2018 23:35:08 GMT
CMD ["php-fpm"]
# Thu, 28 Jun 2018 07:15:46 GMT
LABEL maintainer=Michael Babker <michael.babker@joomla.org> (@mbabker)
# Thu, 28 Jun 2018 07:15:46 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Thu, 28 Jun 2018 07:15:48 GMT
RUN apk add --no-cache 	bash
# Thu, 28 Jun 2018 07:17:13 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		alpine-sdk 		autoconf 		bzip2-dev 		libjpeg-turbo-dev 		libpng-dev 		libmemcached-dev 		openldap-dev 		pcre-dev 		postgresql-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	docker-php-ext-configure ldap; 	docker-php-ext-install 		bz2 		gd 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 	pecl install 		APCu-5.1.11 		memcached-3.0.4 		redis-3.1.6 	; 	docker-php-ext-enable 		apcu 		memcached 		redis 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		)"; 	apk add --virtual .joomla-phpext-rundeps $runDeps; 	apk del .build-deps
# Thu, 28 Jun 2018 07:17:13 GMT
VOLUME [/var/www/html]
# Thu, 28 Jun 2018 07:17:13 GMT
ENV JOOMLA_VERSION=3.8.8
# Thu, 28 Jun 2018 07:17:14 GMT
ENV JOOMLA_SHA1=d905327bee0cd5b4806ef34f74cbd5214fc9da2c
# Thu, 28 Jun 2018 07:17:19 GMT
RUN curl -o joomla.tar.bz2 -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.tar.bz2 	&& echo "$JOOMLA_SHA1 *joomla.tar.bz2" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& tar -xf joomla.tar.bz2 -C /usr/src/joomla 	&& rm joomla.tar.bz2 	&& chown -R www-data:www-data /usr/src/joomla
# Thu, 28 Jun 2018 07:17:20 GMT
COPY file:c1e8bebe69e832de6ba85a02864e7d24ff9e6b5232ea62a31e27a5769c662116 in /entrypoint.sh 
# Thu, 28 Jun 2018 07:17:20 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Thu, 28 Jun 2018 07:17:20 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 28 Jun 2018 07:17:21 GMT
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
	-	`sha256:2ffa2200859bca31b53971573fdd56647c6ef4e798848ac827e8e0bd096e2e46`  
		Last Modified: Thu, 28 Jun 2018 05:31:07 GMT  
		Size: 12.1 MB (12134510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bba89656402e3bd0acd968c35104719bca80fef745e3ecf51419ceff05ede996`  
		Last Modified: Thu, 28 Jun 2018 05:31:06 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f98696151130d4f0cad954d979428a21f2bedd686dbd079a6e4450b1da35ebe`  
		Last Modified: Thu, 28 Jun 2018 05:31:09 GMT  
		Size: 17.5 MB (17492918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca6f4c22bb7eff2137649c78b3b083915241c3e03aa8229ebbe58ab348988630`  
		Last Modified: Thu, 28 Jun 2018 05:31:03 GMT  
		Size: 2.2 KB (2169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6e670a031394afe603a1b7fda9c82958513ca769f82764a3278e04f23173d64`  
		Last Modified: Thu, 28 Jun 2018 05:31:03 GMT  
		Size: 71.1 KB (71054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d68194d4a9198543457090ff070d89208f5d44c2139a29ee451e365711f419c4`  
		Last Modified: Thu, 28 Jun 2018 05:31:04 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3886fecfffe3e436461fd223ff79e085655ec5b0af51ca409067574094c640af`  
		Last Modified: Thu, 28 Jun 2018 05:31:03 GMT  
		Size: 7.8 KB (7781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eb57542ac95c6249dfd6ad63832f68675ed92d4350f84ac913e0b6546b3aa1c`  
		Last Modified: Thu, 28 Jun 2018 07:24:01 GMT  
		Size: 689.5 KB (689469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e62633747c55ce768c6c3d797687004556aafdef620e8617180da613d41a7a51`  
		Last Modified: Thu, 28 Jun 2018 07:24:02 GMT  
		Size: 4.2 MB (4238452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c33d5e17e5651439105e05170f65b6d2182e8fe57d9cb11ac291124ef7e5d897`  
		Last Modified: Thu, 28 Jun 2018 07:24:03 GMT  
		Size: 9.4 MB (9402512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdaaa6fa9307411d53fae9e6dfc869feb1d5be8ee3b2a6ca6a7fbcb8dd4fbc6b`  
		Last Modified: Thu, 28 Jun 2018 07:24:01 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd05776e897ccb71e3e43f513bd492019e324eabbe2555552ec853827c55779e`  
		Last Modified: Thu, 28 Jun 2018 07:24:01 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
