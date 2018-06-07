## `joomla:php7.2-fpm`

```console
$ docker pull joomla@sha256:0cb45a27dfb98a3afe29b7b4a454b0ea1919dc64358fd02480c177b7ab1b3549
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `joomla:php7.2-fpm` - linux; amd64

```console
$ docker pull joomla@sha256:930474af239b4d9716714c3bb2a033942d9dc219459d6d16ead765941cf132aa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.3 MB (143255917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c7542a99b2cf1f99eaf03d4c0b70a4d3e3ac9862f03cdd726dcc6556b929dbe`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Sat, 28 Apr 2018 07:09:59 GMT
ADD file:ec5be7eec56a749752ca284359ece04f5eb0b981eac08b8855454c6b16e3893c in / 
# Sat, 28 Apr 2018 07:09:59 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 18:49:50 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 06 Jun 2018 18:49:50 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 06 Jun 2018 18:50:28 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 06 Jun 2018 18:50:29 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 06 Jun 2018 18:50:29 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 06 Jun 2018 19:01:39 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data
# Wed, 06 Jun 2018 19:01:40 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Jun 2018 19:01:40 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Jun 2018 19:01:40 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 06 Jun 2018 19:01:40 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Wed, 06 Jun 2018 19:01:40 GMT
ENV PHP_VERSION=7.2.6
# Wed, 06 Jun 2018 19:01:40 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.6.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.6.tar.xz.asc/from/this/mirror
# Wed, 06 Jun 2018 19:01:41 GMT
ENV PHP_SHA256=1f004e049788a3effc89ef417f06a6cf704c95ae2a718b2175185f2983381ae7 PHP_MD5=
# Wed, 06 Jun 2018 19:02:14 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Wed, 06 Jun 2018 19:02:14 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Wed, 06 Jun 2018 19:06:33 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-0-dev 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--disable-cgi 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Wed, 06 Jun 2018 19:06:34 GMT
COPY multi:af8a06a5cfc82b17b169c6d1e48630a516582fa7ce00d8e59e5a378e100d064a in /usr/local/bin/ 
# Wed, 06 Jun 2018 19:06:35 GMT
RUN docker-php-ext-enable sodium
# Wed, 06 Jun 2018 19:06:35 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 06 Jun 2018 19:06:35 GMT
WORKDIR /var/www/html
# Wed, 06 Jun 2018 19:06:36 GMT
RUN set -ex 	&& cd /usr/local/etc 	&& if [ -d php-fpm.d ]; then 		sed 's!=NONE/!=!g' php-fpm.conf.default | tee php-fpm.conf > /dev/null; 		cp php-fpm.d/www.conf.default php-fpm.d/www.conf; 	else 		mkdir php-fpm.d; 		cp php-fpm.conf.default php-fpm.d/www.conf; 		{ 			echo '[global]'; 			echo 'include=etc/php-fpm.d/*.conf'; 		} | tee php-fpm.conf; 	fi 	&& { 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; 		echo '[www]'; 		echo '; if we send this to /proc/self/fd/1, it never appears'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 	} | tee php-fpm.d/docker.conf 	&& { 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '[www]'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/zz-docker.conf
# Wed, 06 Jun 2018 19:06:36 GMT
EXPOSE 9000/tcp
# Wed, 06 Jun 2018 19:06:36 GMT
CMD ["php-fpm"]
# Thu, 07 Jun 2018 03:36:49 GMT
LABEL maintainer=Michael Babker <michael.babker@joomla.org> (@mbabker)
# Thu, 07 Jun 2018 03:36:49 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Thu, 07 Jun 2018 03:38:23 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libbz2-dev 		libjpeg-dev 		libldap2-dev 		libmemcached-dev 		libpng-dev 		libpq-dev 	; 		docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install 		bz2 		gd 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 		pecl install 		APCu-5.1.11 		memcached-3.0.4 		redis-3.1.6 	; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Thu, 07 Jun 2018 03:38:23 GMT
VOLUME [/var/www/html]
# Thu, 07 Jun 2018 03:38:23 GMT
ENV JOOMLA_VERSION=3.8.8
# Thu, 07 Jun 2018 03:38:24 GMT
ENV JOOMLA_SHA1=d905327bee0cd5b4806ef34f74cbd5214fc9da2c
# Thu, 07 Jun 2018 03:38:30 GMT
RUN curl -o joomla.tar.bz2 -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.tar.bz2 	&& echo "$JOOMLA_SHA1 *joomla.tar.bz2" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& tar -xf joomla.tar.bz2 -C /usr/src/joomla 	&& rm joomla.tar.bz2 	&& chown -R www-data:www-data /usr/src/joomla
# Thu, 07 Jun 2018 03:38:30 GMT
COPY file:c1e8bebe69e832de6ba85a02864e7d24ff9e6b5232ea62a31e27a5769c662116 in /entrypoint.sh 
# Thu, 07 Jun 2018 03:38:31 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Thu, 07 Jun 2018 03:38:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 07 Jun 2018 03:38:31 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:f2aa67a397c49232112953088506d02074a1fe577f65dc2052f158a3e5da52e8`  
		Last Modified: Sat, 28 Apr 2018 09:31:20 GMT  
		Size: 22.5 MB (22496029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c3122805fd6b61aedc41ea32477bdf861be02f3560440251bd911932e488a9d`  
		Last Modified: Wed, 06 Jun 2018 21:59:44 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98ce407ee18ac151a8512a105ca584f4b200ec3ec35c88ed9435e2840cbdf4d5`  
		Last Modified: Wed, 06 Jun 2018 22:00:13 GMT  
		Size: 67.5 MB (67458085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a56b8f1ca720c6f5d40d35bd3e56b39d9f42373fc6f8fdfb47b6b0352ed10dd`  
		Last Modified: Wed, 06 Jun 2018 21:59:43 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2452cf602351e9ceaf51f66849f944e694c55ae523c6459d701d8b74132b50a`  
		Last Modified: Wed, 06 Jun 2018 22:03:38 GMT  
		Size: 12.4 MB (12441530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:163c775922ef0020875057559dc2edcb9058cd25754d8ea87da2ca6bed322028`  
		Last Modified: Wed, 06 Jun 2018 22:03:25 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bc7dc1ca9ffae18963c0e680326ea2f6304043a3973ffda955fd6e253dfbac6`  
		Last Modified: Wed, 06 Jun 2018 22:03:39 GMT  
		Size: 28.7 MB (28658862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69bca190dff787332a5eb32bb69df54ab3670b9afc1460896e965e74009a5719`  
		Last Modified: Wed, 06 Jun 2018 22:03:23 GMT  
		Size: 2.2 KB (2189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9998d7fd730bc33064905ee8cb413380902e52f1e40b5b28d06eca3d60282789`  
		Last Modified: Wed, 06 Jun 2018 22:03:20 GMT  
		Size: 265.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc4a00b56151180637707b61cd12df8e1e14ef0dc991ef685abc4ef4f39a0836`  
		Last Modified: Wed, 06 Jun 2018 22:03:18 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45387e51ce857c12dd74d369e056296bbb78df7a7fca8ebd44ab5b831a5f86c6`  
		Last Modified: Wed, 06 Jun 2018 22:03:18 GMT  
		Size: 7.8 KB (7802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae42e05bd751718b68e174538242dabef6a676333e43941699c8d744aa30b57b`  
		Last Modified: Thu, 07 Jun 2018 03:47:15 GMT  
		Size: 2.8 MB (2785912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef5c04ab788be980792246c8e04ce331197d1104a65c266d56fe35e4486529f8`  
		Last Modified: Thu, 07 Jun 2018 03:47:17 GMT  
		Size: 9.4 MB (9402399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f3bd52536391ffea2ed67b7175ec7309be2a457adae0db2d80ed20ccbed9ac0`  
		Last Modified: Thu, 07 Jun 2018 03:47:16 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6853cea40039291d1755f4c2c1fb28676092d2ae456ff857fba2caf9521e031`  
		Last Modified: Thu, 07 Jun 2018 03:47:15 GMT  
		Size: 612.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
