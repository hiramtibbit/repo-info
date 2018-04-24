## `owncloud:9-apache`

```console
$ docker pull owncloud@sha256:9820ed75c324a0c53f8c1d41e13a63d08df799b6c19a52979c9e3a5e1195561d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `owncloud:9-apache` - linux; amd64

```console
$ docker pull owncloud@sha256:15a3205d67cde53bdddc4e139c6d7c4f0ad9df2f05ec387ac5bd7be2f2bd9df4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.4 MB (231360278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa6521b17fb49b1cae0f97ca039970d9a735b41fa626f51ffef5e4e026df5f65`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 13 Mar 2018 21:57:21 GMT
ADD file:bc844c4763367b5f0ac7b9aebf7d43900d98f2aca101b886f185347b24973dbe in / 
# Tue, 13 Mar 2018 21:57:22 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 14:55:44 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 14 Mar 2018 14:55:44 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 14 Mar 2018 14:56:24 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 14 Mar 2018 14:56:24 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 14 Mar 2018 14:56:25 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 14 Mar 2018 15:16:42 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 15:16:42 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 14 Mar 2018 15:16:42 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 14 Mar 2018 15:16:43 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 14 Mar 2018 15:16:44 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 14 Mar 2018 15:16:45 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 14 Mar 2018 15:16:45 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 14 Mar 2018 15:16:45 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 14 Mar 2018 15:16:46 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 14 Mar 2018 15:16:46 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 14 Mar 2018 15:16:46 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 14 Mar 2018 15:16:46 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 14 Mar 2018 15:46:24 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Thu, 05 Apr 2018 05:35:37 GMT
ENV PHP_VERSION=7.0.29
# Thu, 05 Apr 2018 05:35:37 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.29.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.29.tar.xz.asc/from/this/mirror
# Thu, 05 Apr 2018 05:35:37 GMT
ENV PHP_SHA256=ca79d3ecc123bff4b623d4a1bbf5ad53ad39f5f2f5912fecc0ea97e95eba21cc PHP_MD5=
# Thu, 05 Apr 2018 05:36:05 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Thu, 05 Apr 2018 05:36:05 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Thu, 05 Apr 2018 05:38:54 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 24 Apr 2018 02:01:54 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Tue, 24 Apr 2018 02:01:55 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 24 Apr 2018 02:01:55 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 24 Apr 2018 02:01:56 GMT
WORKDIR /var/www/html
# Tue, 24 Apr 2018 02:01:56 GMT
EXPOSE 80/tcp
# Tue, 24 Apr 2018 02:01:56 GMT
CMD ["apache2-foreground"]
# Tue, 24 Apr 2018 11:46:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		libcurl4-openssl-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libldap2-dev 		libmcrypt-dev 		libmemcached-dev 		libpng12-dev 		libpq-dev 		libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 24 Apr 2018 11:47:50 GMT
RUN set -ex; 	docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install -j "$(nproc)" 		exif 		gd 		intl 		ldap 		mbstring 		mcrypt 		opcache 		pcntl 		pdo_mysql 		pdo_pgsql 		pgsql 		zip
# Tue, 24 Apr 2018 11:47:51 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 24 Apr 2018 11:47:52 GMT
RUN a2enmod rewrite
# Tue, 24 Apr 2018 11:48:26 GMT
RUN set -ex 	&& pecl install APCu-5.1.8 	&& pecl install memcached-3.0.3 	&& pecl install redis-3.1.2 	&& docker-php-ext-enable apcu memcached redis
# Tue, 24 Apr 2018 12:12:33 GMT
ENV OWNCLOUD_VERSION=9.1.8
# Tue, 24 Apr 2018 12:12:34 GMT
ENV OWNCLOUD_SHA256=2b688327a2f986236e14b81dffcf684f730f61946d8035e99a6d032083c1ef19
# Tue, 24 Apr 2018 12:12:34 GMT
VOLUME [/var/www/html]
# Tue, 24 Apr 2018 12:12:46 GMT
RUN set -eux; 	curl -fL -o owncloud.tar.bz2 "https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2"; 	curl -fL -o owncloud.tar.bz2.asc "https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc"; 	echo "$OWNCLOUD_SHA256 *owncloud.tar.bz2" | sha256sum -c -; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26; 	gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2; 	rm -r "$GNUPGHOME" owncloud.tar.bz2.asc; 	tar -xjf owncloud.tar.bz2 -C /usr/src/; 	rm owncloud.tar.bz2
# Tue, 24 Apr 2018 12:12:47 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /usr/local/bin/ 
# Tue, 24 Apr 2018 12:12:47 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 24 Apr 2018 12:12:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Apr 2018 12:12:48 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:f2b6b4884fc8b2f1fcef843f92f7c82c9c149df85ac77e5f0de7a342ae442412`  
		Last Modified: Tue, 13 Mar 2018 22:43:41 GMT  
		Size: 52.6 MB (52608519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8db887c458002053abb80fe7da3ed9071bad3ba45e982f07779927d7baf62bad`  
		Last Modified: Wed, 14 Mar 2018 16:28:53 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e0e41c52c70a0be891e3c033156b95b2b3183dadfd9f725f93f45e25e35bc73`  
		Last Modified: Wed, 14 Mar 2018 16:29:09 GMT  
		Size: 76.3 MB (76346297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbc9ac078c49076a62b6a3c52b26b4af4537e8bb2b315f8c15d26061d58f99b4`  
		Last Modified: Wed, 14 Mar 2018 16:28:57 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4c6f6be74883f5e84dc330d067c90524b189a7b5259aa9666411eea6c6928cd`  
		Last Modified: Wed, 14 Mar 2018 16:32:36 GMT  
		Size: 4.5 MB (4466582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a28db8adaf05e1ae06e8838612042869200e3f983f9be2777cb1e10f24a33baf`  
		Last Modified: Wed, 14 Mar 2018 16:32:33 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61afa9c0aff1a84d4399f4ab1f210d5152d0f738b7637e820d31c7ab061b1a86`  
		Last Modified: Wed, 14 Mar 2018 16:32:32 GMT  
		Size: 427.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a30b1659c04663754eea845c8a9d9ab3fe69a9836cda20dce45d4297a8564b41`  
		Last Modified: Wed, 14 Mar 2018 16:32:31 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b04c4f5caef73449ee33b950e6a0d372bb117c197cec0a620cf5348c2cde0385`  
		Last Modified: Wed, 14 Mar 2018 16:32:31 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65bf36d0f11a3edaf1c306f38868c7eca4c8ea7f808910b0df1a948b953dde4c`  
		Last Modified: Thu, 05 Apr 2018 08:16:16 GMT  
		Size: 12.8 MB (12752324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44dd1a564e374322b2a74ded908f5cb4b0b08629cafa34e8d219dd289dd6a32c`  
		Last Modified: Thu, 05 Apr 2018 08:16:15 GMT  
		Size: 502.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b315bef458ba58d12321c93dba29c0290e05593de987ecda814008edb9ac178`  
		Last Modified: Thu, 05 Apr 2018 08:16:20 GMT  
		Size: 15.7 MB (15715638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d23251c2562cb3695b62fcba8e9476aba83ca4d9df5f22e1ce1f1d896ac666e8`  
		Last Modified: Tue, 24 Apr 2018 03:36:37 GMT  
		Size: 2.2 KB (2197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da622c8ca8f5fe7071f92c3befb1ece6d5ca0411ea350a1a3715af0782720334`  
		Last Modified: Tue, 24 Apr 2018 03:36:37 GMT  
		Size: 907.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6171eeb8599d4b8677267d5fb385e831030a5020ec04b4e2c3f961daedd0d6cd`  
		Last Modified: Tue, 24 Apr 2018 12:14:08 GMT  
		Size: 34.3 MB (34345182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11a6bd1b706a4ded121fd4db9147d6e56774b06172e86175538390871ab83d3b`  
		Last Modified: Tue, 24 Apr 2018 12:14:00 GMT  
		Size: 1.8 MB (1769569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89c42685599538556e30f2253365f7488b4541da772c66be894b94d57d2dacc9`  
		Last Modified: Tue, 24 Apr 2018 12:13:57 GMT  
		Size: 355.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81d84b5c75e59115debab68ba47f86527b040eb619bb6b945adcae18eebe1d08`  
		Last Modified: Tue, 24 Apr 2018 12:13:57 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:182ed44fb105a4b42cf8d6560cf43e340337b2986be3401d2ca6b605c59c0ec2`  
		Last Modified: Tue, 24 Apr 2018 12:13:58 GMT  
		Size: 1.3 MB (1328119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2c81347a4ad97b9fbca495705af2a6b3f9038d6b1b7a480d65921119c92892d`  
		Last Modified: Tue, 24 Apr 2018 12:38:33 GMT  
		Size: 32.0 MB (32020511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c650227005850016f96dbf1633b86e30789db888859a3e16441a10d066c7ade`  
		Last Modified: Tue, 24 Apr 2018 12:38:14 GMT  
		Size: 336.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30a531a440a6e345b7c3ccbe5127ae0e1f22b4a474e6659c90e240c4cbda514f`  
		Last Modified: Tue, 24 Apr 2018 12:38:14 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `owncloud:9-apache` - linux; arm variant v5

```console
$ docker pull owncloud@sha256:1a466b01dc7f16eec4ffafdc70b494c60069306db81e39b9a216e2cfecc4044f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.0 MB (213003648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19b42b55d926f67c11a56ce933a72432acd5b0923602862b29ccb223b9d3f4dd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 14 Mar 2018 19:55:39 GMT
ADD file:4e1092328fe0aabf46bb091fe0fbee6bf44c434f8d0d262902005bbecb69c5cc in / 
# Wed, 14 Mar 2018 19:55:39 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 21:22:39 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 14 Mar 2018 21:22:40 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 14 Mar 2018 21:23:28 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 14 Mar 2018 21:23:29 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 14 Mar 2018 21:23:30 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 14 Mar 2018 21:28:39 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 21:28:40 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 14 Mar 2018 21:28:40 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 14 Mar 2018 21:28:41 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 14 Mar 2018 21:28:42 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 14 Mar 2018 21:28:43 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 14 Mar 2018 21:28:44 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 14 Mar 2018 21:28:44 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 14 Mar 2018 21:28:45 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 14 Mar 2018 21:28:45 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 14 Mar 2018 21:28:45 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 14 Mar 2018 21:28:46 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 14 Mar 2018 21:46:11 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 06 Apr 2018 18:36:15 GMT
ENV PHP_VERSION=7.0.29
# Fri, 06 Apr 2018 18:36:15 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.29.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.29.tar.xz.asc/from/this/mirror
# Fri, 06 Apr 2018 18:36:16 GMT
ENV PHP_SHA256=ca79d3ecc123bff4b623d4a1bbf5ad53ad39f5f2f5912fecc0ea97e95eba21cc PHP_MD5=
# Fri, 06 Apr 2018 18:36:52 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 06 Apr 2018 18:36:53 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 06 Apr 2018 18:40:07 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 24 Apr 2018 08:57:26 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Tue, 24 Apr 2018 08:57:27 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 24 Apr 2018 08:57:27 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 24 Apr 2018 08:57:27 GMT
WORKDIR /var/www/html
# Tue, 24 Apr 2018 08:57:28 GMT
EXPOSE 80/tcp
# Tue, 24 Apr 2018 08:57:28 GMT
CMD ["apache2-foreground"]
# Tue, 24 Apr 2018 09:29:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		libcurl4-openssl-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libldap2-dev 		libmcrypt-dev 		libmemcached-dev 		libpng12-dev 		libpq-dev 		libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 24 Apr 2018 09:31:10 GMT
RUN set -ex; 	docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install -j "$(nproc)" 		exif 		gd 		intl 		ldap 		mbstring 		mcrypt 		opcache 		pcntl 		pdo_mysql 		pdo_pgsql 		pgsql 		zip
# Tue, 24 Apr 2018 09:31:11 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 24 Apr 2018 09:31:12 GMT
RUN a2enmod rewrite
# Tue, 24 Apr 2018 09:32:03 GMT
RUN set -ex 	&& pecl install APCu-5.1.8 	&& pecl install memcached-3.0.3 	&& pecl install redis-3.1.2 	&& docker-php-ext-enable apcu memcached redis
# Tue, 24 Apr 2018 09:35:32 GMT
ENV OWNCLOUD_VERSION=9.1.8
# Tue, 24 Apr 2018 09:35:32 GMT
ENV OWNCLOUD_SHA256=2b688327a2f986236e14b81dffcf684f730f61946d8035e99a6d032083c1ef19
# Tue, 24 Apr 2018 09:35:32 GMT
VOLUME [/var/www/html]
# Tue, 24 Apr 2018 09:35:49 GMT
RUN set -eux; 	curl -fL -o owncloud.tar.bz2 "https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2"; 	curl -fL -o owncloud.tar.bz2.asc "https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc"; 	echo "$OWNCLOUD_SHA256 *owncloud.tar.bz2" | sha256sum -c -; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26; 	gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2; 	rm -r "$GNUPGHOME" owncloud.tar.bz2.asc; 	tar -xjf owncloud.tar.bz2 -C /usr/src/; 	rm owncloud.tar.bz2
# Tue, 24 Apr 2018 09:35:50 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /usr/local/bin/ 
# Tue, 24 Apr 2018 09:35:51 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 24 Apr 2018 09:35:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Apr 2018 09:35:52 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:d6c8df84f6d163cc0438ee1b71ec7d86a796a60b2c010df85016296ce8991655`  
		Last Modified: Wed, 14 Mar 2018 20:06:36 GMT  
		Size: 50.9 MB (50890011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d5b5e8352d4ea65bd094bafa8919d813adfa2d6a56fe3d3091fe2e746b2616c`  
		Last Modified: Wed, 14 Mar 2018 22:22:16 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:489e4ea4bdaba1ccfed948b117b92a4d33cf9bb0b961d93250eaade6bb5e9e0d`  
		Last Modified: Wed, 14 Mar 2018 22:22:34 GMT  
		Size: 61.4 MB (61424114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c3dd865c9209907af51f054beaf1544d393c845cb5d2834cc2be116b2fdf02`  
		Last Modified: Wed, 14 Mar 2018 22:22:15 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5a6b33ecf91f30a7d3a3200a9601cf61b66843315f1563d570919db76f24687`  
		Last Modified: Wed, 14 Mar 2018 22:23:54 GMT  
		Size: 4.2 MB (4183000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:091eee1dfaabb2caf71d1b46479add00af431d351f1044e68df431cc408fb28c`  
		Last Modified: Wed, 14 Mar 2018 22:23:53 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d789de7eec1215dfeebfc8c2e9e73d8be4ffbe9d8f759dc6a5ad4893917297f`  
		Last Modified: Wed, 14 Mar 2018 22:23:53 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5863bbaf2868f4a45f9e6512512f8e37e71f56dc42b4985179c93712c0f50825`  
		Last Modified: Wed, 14 Mar 2018 22:23:52 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd67c27b0bfcd1808232bd81ed0883349cb193764d8a189a3d529506a82341ed`  
		Last Modified: Wed, 14 Mar 2018 22:23:52 GMT  
		Size: 505.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48b70e65bf024656ed6534158cc55d28c895dfb422ed921323d6ef0c71e69feb`  
		Last Modified: Fri, 06 Apr 2018 19:15:06 GMT  
		Size: 12.8 MB (12750634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f13058f617f1cc3227967586ecfb47bf68857bcfed83628ac86474267efc55e`  
		Last Modified: Fri, 06 Apr 2018 19:15:04 GMT  
		Size: 502.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49992da3110f0d3d450e546ef58737a5a3285497729c8fca47e931b1f5c30194`  
		Last Modified: Fri, 06 Apr 2018 19:15:08 GMT  
		Size: 14.4 MB (14379288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecb83b6a3ae138a6891c98af42e7d20c2903d16d8b8a5fdcd9e482c7776bfc82`  
		Last Modified: Tue, 24 Apr 2018 09:05:07 GMT  
		Size: 2.2 KB (2197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a263450fc9777e7094d17abfad20e2bee261523be70c5a06735eca7dd17f5899`  
		Last Modified: Tue, 24 Apr 2018 09:05:07 GMT  
		Size: 907.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f99fb080c9dbb083d2d568fba91b769d802946b4fc7f96af739a9d3eff2d45e`  
		Last Modified: Tue, 24 Apr 2018 09:36:47 GMT  
		Size: 34.3 MB (34263608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d03102d64d589513a762d6b97b760469e49e6a9403cd4e7ec0b062c1d15638b`  
		Last Modified: Tue, 24 Apr 2018 09:36:36 GMT  
		Size: 1.7 MB (1703591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e77ff83af077352d2f7a4014ffbb1eb52bd1ce748e19170ef78c91d3b9544f71`  
		Last Modified: Tue, 24 Apr 2018 09:36:34 GMT  
		Size: 355.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57d0fcb26b41d646d7f4120453041eb28eeffbe2dcdfcfaa5810a024f2bbc7e`  
		Last Modified: Tue, 24 Apr 2018 09:36:34 GMT  
		Size: 317.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09d1148dec3e8ae670a8aae7fcd9ce646bacc140cfeeac6f57163245fd920e41`  
		Last Modified: Tue, 24 Apr 2018 09:36:34 GMT  
		Size: 1.4 MB (1381246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98e23bc66b7dcc19706dd557c1141a6f55b6d5a35bd5f7be67c6070625d1d045`  
		Last Modified: Tue, 24 Apr 2018 09:38:22 GMT  
		Size: 32.0 MB (32020500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e546d587075037a94a9fc6bc51da7968399d9628fdc097a684b3ba492ff09bb`  
		Last Modified: Tue, 24 Apr 2018 09:38:11 GMT  
		Size: 339.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccff1cda7530f974ca7d208004f57d9a6c159d617b96f98176778f20b1928e5c`  
		Last Modified: Tue, 24 Apr 2018 09:38:11 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `owncloud:9-apache` - linux; arm variant v7

```console
$ docker pull owncloud@sha256:11d1029f720440873aa63075d9db310f1944c72190f86905c56cc364f8ecd807
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.0 MB (209010898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f0ece8e8eca741b0815f3b7a1b87895f888889d9d277841f430c859b3ec4143`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 14 Mar 2018 12:26:45 GMT
ADD file:61187374d52790eaf655b56fcca85d392ef4a9d0844161f18ea519a8f6acb1bb in / 
# Wed, 14 Mar 2018 12:26:46 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 14:15:10 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 14 Mar 2018 14:15:11 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 14 Mar 2018 14:16:00 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 14 Mar 2018 14:16:00 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 14 Mar 2018 14:16:01 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 14 Mar 2018 14:20:53 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 14:20:53 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 14 Mar 2018 14:20:54 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 14 Mar 2018 14:20:55 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 14 Mar 2018 14:20:56 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 14 Mar 2018 14:20:57 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 14 Mar 2018 14:20:58 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 14 Mar 2018 14:20:59 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 14 Mar 2018 14:20:59 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 14 Mar 2018 14:20:59 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 14 Mar 2018 14:21:00 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 14 Mar 2018 14:21:00 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 14 Mar 2018 14:39:33 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 06 Apr 2018 18:33:57 GMT
ENV PHP_VERSION=7.0.29
# Fri, 06 Apr 2018 18:33:58 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.29.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.29.tar.xz.asc/from/this/mirror
# Fri, 06 Apr 2018 18:33:58 GMT
ENV PHP_SHA256=ca79d3ecc123bff4b623d4a1bbf5ad53ad39f5f2f5912fecc0ea97e95eba21cc PHP_MD5=
# Fri, 06 Apr 2018 18:34:33 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 06 Apr 2018 18:34:34 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 06 Apr 2018 18:37:22 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 24 Apr 2018 12:03:36 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Tue, 24 Apr 2018 12:03:37 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 24 Apr 2018 12:03:37 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 24 Apr 2018 12:03:37 GMT
WORKDIR /var/www/html
# Tue, 24 Apr 2018 12:03:38 GMT
EXPOSE 80/tcp
# Tue, 24 Apr 2018 12:03:38 GMT
CMD ["apache2-foreground"]
# Tue, 24 Apr 2018 12:38:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		libcurl4-openssl-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libldap2-dev 		libmcrypt-dev 		libmemcached-dev 		libpng12-dev 		libpq-dev 		libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 24 Apr 2018 12:40:10 GMT
RUN set -ex; 	docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install -j "$(nproc)" 		exif 		gd 		intl 		ldap 		mbstring 		mcrypt 		opcache 		pcntl 		pdo_mysql 		pdo_pgsql 		pgsql 		zip
# Tue, 24 Apr 2018 12:40:11 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 24 Apr 2018 12:40:12 GMT
RUN a2enmod rewrite
# Tue, 24 Apr 2018 12:40:59 GMT
RUN set -ex 	&& pecl install APCu-5.1.8 	&& pecl install memcached-3.0.3 	&& pecl install redis-3.1.2 	&& docker-php-ext-enable apcu memcached redis
# Tue, 24 Apr 2018 12:43:26 GMT
ENV OWNCLOUD_VERSION=9.1.8
# Tue, 24 Apr 2018 12:43:27 GMT
ENV OWNCLOUD_SHA256=2b688327a2f986236e14b81dffcf684f730f61946d8035e99a6d032083c1ef19
# Tue, 24 Apr 2018 12:43:27 GMT
VOLUME [/var/www/html]
# Tue, 24 Apr 2018 12:43:44 GMT
RUN set -eux; 	curl -fL -o owncloud.tar.bz2 "https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2"; 	curl -fL -o owncloud.tar.bz2.asc "https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc"; 	echo "$OWNCLOUD_SHA256 *owncloud.tar.bz2" | sha256sum -c -; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26; 	gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2; 	rm -r "$GNUPGHOME" owncloud.tar.bz2.asc; 	tar -xjf owncloud.tar.bz2 -C /usr/src/; 	rm owncloud.tar.bz2
# Tue, 24 Apr 2018 12:43:45 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /usr/local/bin/ 
# Tue, 24 Apr 2018 12:43:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 24 Apr 2018 12:43:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Apr 2018 12:43:47 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:01f50fb86130a0959fcc95157f9f911daf27a42f88c23a55ad8ad827eb4d7124`  
		Last Modified: Wed, 14 Mar 2018 12:38:17 GMT  
		Size: 48.7 MB (48702073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf46c3bfad482d1eec31ecef5978b2eb250e9370f7d56de2cf3be94893a5b0b8`  
		Last Modified: Wed, 14 Mar 2018 15:17:18 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c704b368b34826935a7046aee0d3a120d2f51f204d21c11c80d6bc6fad97f435`  
		Last Modified: Wed, 14 Mar 2018 15:17:34 GMT  
		Size: 61.8 MB (61817865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:074d9abaadbea2d9b487f4134fc025d7b0f78f79dd4130f7c5281e65fe62984b`  
		Last Modified: Wed, 14 Mar 2018 15:17:17 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02c0fbd8c9872acc575baa1e5df8cc5856300742201582cb0413272199a4fc62`  
		Last Modified: Wed, 14 Mar 2018 15:19:20 GMT  
		Size: 3.9 MB (3937427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7aa4f4d5a2069944e676c3898ecd30633f3751793a329adacea64c454b8ccacc`  
		Last Modified: Wed, 14 Mar 2018 15:19:18 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6102ba1391c809531aa285b38569a3f28fcc423cb7499dc032bd87aa90ce06d`  
		Last Modified: Wed, 14 Mar 2018 15:19:17 GMT  
		Size: 470.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba4dbd064c465b866866bd73057ee5be0d1d84616b038ed3b3ee0bfcdda815d3`  
		Last Modified: Wed, 14 Mar 2018 15:19:18 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab6c560175e4faa181c66fad844d96519c560dca55d0618ca016b869f09f9929`  
		Last Modified: Wed, 14 Mar 2018 15:19:17 GMT  
		Size: 513.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e7611dd57484dec3e93f7413e89de0c529be1f0425f1c83f4ae59122b173fe9`  
		Last Modified: Fri, 06 Apr 2018 19:12:05 GMT  
		Size: 12.8 MB (12750612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8800fdb62bb8f3e87b251a3f43e9d63da2dd490d48c6cee20ecf5b5810f8a132`  
		Last Modified: Fri, 06 Apr 2018 19:12:03 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:913ee207fefc235650c709e7e412f01fa9dfca044e178122b93328d33bd6f13d`  
		Last Modified: Fri, 06 Apr 2018 19:12:07 GMT  
		Size: 14.1 MB (14087558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53555a252e0a7c3ba32bf654f7d3fb496a45d1c9a1eef529a7aa001e4297c356`  
		Last Modified: Tue, 24 Apr 2018 12:13:23 GMT  
		Size: 2.2 KB (2193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1342c0fee9a359f219b53254e6da675dc92c4e425299c4a76d576cecf0e1d70f`  
		Last Modified: Tue, 24 Apr 2018 12:13:18 GMT  
		Size: 907.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3228c187da6a0b630bca25330a57d9d6119979a6afac61ce1c559da520b910f4`  
		Last Modified: Tue, 24 Apr 2018 12:45:17 GMT  
		Size: 32.7 MB (32678090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf1f7a1149ad25a16a1fad7b5a0c5cb0893bb8c3ba3d1c1ecbaa8f1867914fde`  
		Last Modified: Tue, 24 Apr 2018 12:45:04 GMT  
		Size: 1.6 MB (1635909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0de4503995ef8aca10a34156d2137a38e9d95d75d65b1b73d91a75d9dd08c08`  
		Last Modified: Tue, 24 Apr 2018 12:45:02 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77c2fd33567e1bc9127af90d17b9374eddddf1551ed660490133c33e9f2410d6`  
		Last Modified: Tue, 24 Apr 2018 12:45:02 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3392c42521e52a2e5f1f65d35d579a17e57ae58e37c4028a9cf4903781904d03`  
		Last Modified: Tue, 24 Apr 2018 12:45:03 GMT  
		Size: 1.4 MB (1373208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b92e3de8a3a6890a523e9c622a5b61231224633c22f09d8f819a01233dc4264`  
		Last Modified: Tue, 24 Apr 2018 12:48:01 GMT  
		Size: 32.0 MB (32020499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cd30975debbe16c902a2d59959cf06935063fc98e8defd6bb0f2085a39710e7`  
		Last Modified: Tue, 24 Apr 2018 12:47:48 GMT  
		Size: 339.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9feeb6507a7b37a318196ca0513a7ba73e9408ca7cd32246b7242e78cb8aa62`  
		Last Modified: Tue, 24 Apr 2018 12:47:49 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `owncloud:9-apache` - linux; arm64 variant v8

```console
$ docker pull owncloud@sha256:8509015fac6573663801cfa3bd02dc85c5a55b82dea4be5340ad95e61d20f627
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.6 MB (212569072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85b50d207fc19c284d8aa7162df6974c985743bb626621f3472ec27da742e911`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 14 Mar 2018 17:24:26 GMT
ADD file:bcd41493879aaeeecb9c960b91c9954b1e0229e91b7a070cb6b2dfdadc8c52b8 in / 
# Wed, 14 Mar 2018 17:24:27 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 22:03:39 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 14 Mar 2018 22:03:43 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 14 Mar 2018 22:07:57 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 14 Mar 2018 22:08:01 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 14 Mar 2018 22:08:09 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 14 Mar 2018 22:18:26 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 22:18:27 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 14 Mar 2018 22:18:28 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 14 Mar 2018 22:18:30 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 14 Mar 2018 22:18:32 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 14 Mar 2018 22:18:33 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 14 Mar 2018 22:18:35 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 14 Mar 2018 22:18:51 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 14 Mar 2018 22:18:52 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 14 Mar 2018 22:18:53 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 14 Mar 2018 22:18:54 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 14 Mar 2018 22:19:09 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 14 Mar 2018 22:58:04 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 06 Apr 2018 20:03:14 GMT
ENV PHP_VERSION=7.0.29
# Fri, 06 Apr 2018 20:03:15 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.29.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.29.tar.xz.asc/from/this/mirror
# Fri, 06 Apr 2018 20:03:16 GMT
ENV PHP_SHA256=ca79d3ecc123bff4b623d4a1bbf5ad53ad39f5f2f5912fecc0ea97e95eba21cc PHP_MD5=
# Fri, 06 Apr 2018 20:03:56 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 06 Apr 2018 20:03:57 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 06 Apr 2018 20:09:16 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 24 Apr 2018 10:31:57 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Tue, 24 Apr 2018 10:31:57 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 24 Apr 2018 10:31:58 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 24 Apr 2018 10:31:59 GMT
WORKDIR /var/www/html
# Tue, 24 Apr 2018 10:31:59 GMT
EXPOSE 80/tcp
# Tue, 24 Apr 2018 10:32:00 GMT
CMD ["apache2-foreground"]
# Tue, 24 Apr 2018 13:07:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		libcurl4-openssl-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libldap2-dev 		libmcrypt-dev 		libmemcached-dev 		libpng12-dev 		libpq-dev 		libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 24 Apr 2018 13:10:21 GMT
RUN set -ex; 	docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install -j "$(nproc)" 		exif 		gd 		intl 		ldap 		mbstring 		mcrypt 		opcache 		pcntl 		pdo_mysql 		pdo_pgsql 		pgsql 		zip
# Tue, 24 Apr 2018 13:10:37 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 24 Apr 2018 13:10:38 GMT
RUN a2enmod rewrite
# Tue, 24 Apr 2018 13:12:10 GMT
RUN set -ex 	&& pecl install APCu-5.1.8 	&& pecl install memcached-3.0.3 	&& pecl install redis-3.1.2 	&& docker-php-ext-enable apcu memcached redis
# Tue, 24 Apr 2018 13:20:18 GMT
ENV OWNCLOUD_VERSION=9.1.8
# Tue, 24 Apr 2018 13:20:18 GMT
ENV OWNCLOUD_SHA256=2b688327a2f986236e14b81dffcf684f730f61946d8035e99a6d032083c1ef19
# Tue, 24 Apr 2018 13:20:19 GMT
VOLUME [/var/www/html]
# Tue, 24 Apr 2018 13:20:40 GMT
RUN set -eux; 	curl -fL -o owncloud.tar.bz2 "https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2"; 	curl -fL -o owncloud.tar.bz2.asc "https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc"; 	echo "$OWNCLOUD_SHA256 *owncloud.tar.bz2" | sha256sum -c -; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26; 	gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2; 	rm -r "$GNUPGHOME" owncloud.tar.bz2.asc; 	tar -xjf owncloud.tar.bz2 -C /usr/src/; 	rm owncloud.tar.bz2
# Tue, 24 Apr 2018 13:20:41 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /usr/local/bin/ 
# Tue, 24 Apr 2018 13:20:43 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 24 Apr 2018 13:20:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Apr 2018 13:20:44 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:21ccda36f02cc1214a990aa0c90bf9e705d50f6bf9844bffa71a8fbff898df30`  
		Last Modified: Wed, 14 Mar 2018 17:37:55 GMT  
		Size: 49.9 MB (49933463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad3c098251aa535d662f00d3a664d542881e8583b8cd05e36375c40bbd087a3f`  
		Last Modified: Thu, 15 Mar 2018 00:24:16 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d15c494975db0268fc099db75fc0376f384d99a90e99d1213c82319a7e9ecb9`  
		Last Modified: Thu, 15 Mar 2018 00:24:36 GMT  
		Size: 62.5 MB (62514108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcd59d3493e449128921ace9e39cf4eb8c1a98564dbd5dc35659c7b8460b8712`  
		Last Modified: Thu, 15 Mar 2018 00:24:14 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a73e26df886cec8ce697905e4f14df953f555965aaeaf08a7e51e4e1c365352`  
		Last Modified: Thu, 15 Mar 2018 00:28:44 GMT  
		Size: 4.1 MB (4124824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e06a4bb921c09dc643171c98ddcfb94a9612b6df2d80b61e260001e13aed011`  
		Last Modified: Thu, 15 Mar 2018 00:28:43 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab76ba209d69d21d30eb53dc085e5ac491a231b73a3b78e082ed05d2ae98be56`  
		Last Modified: Thu, 15 Mar 2018 00:28:41 GMT  
		Size: 435.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db615f6ce2a4b3e94bdf205cd1a2723e53a78522c7354cadf58868f28e1628d6`  
		Last Modified: Thu, 15 Mar 2018 00:28:41 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12192482c22dcc72ad9335f053f6fafa733abdba88af0f427824d6062c60daa9`  
		Last Modified: Thu, 15 Mar 2018 00:28:40 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db1cd22cd00c69a632b267e04d14af0bf45ae110f9197c99afc5dc84d9d229eb`  
		Last Modified: Fri, 06 Apr 2018 21:44:28 GMT  
		Size: 12.8 MB (12750667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cbbcf445139930b775e186db3f1f941f1336053ada16e5276193a353f54268a`  
		Last Modified: Fri, 06 Apr 2018 21:44:27 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e753ea6795860512e1a6f3f682a33606a47eca193f77a349e88c6a678a11582`  
		Last Modified: Fri, 06 Apr 2018 21:44:31 GMT  
		Size: 14.1 MB (14131688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ac5285946ccbaaaf17e7fcc7c4cb80a4dfc1c65afdfe2a37ae21b875f57ac1b`  
		Last Modified: Tue, 24 Apr 2018 11:32:52 GMT  
		Size: 2.2 KB (2197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00f88c74885a851ec6210ec80ab844eb341308885dc57a4629aaa50fd97ba702`  
		Last Modified: Tue, 24 Apr 2018 11:32:52 GMT  
		Size: 908.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:776dd758a764e31627a363dc4e5019fc6721b82c01c90161e2439db006079490`  
		Last Modified: Tue, 24 Apr 2018 13:22:34 GMT  
		Size: 34.0 MB (34011655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c47443098872efaa499ce02eaa6b4f7cb98a618b39176a6215a7ad1d3aea4457`  
		Last Modified: Tue, 24 Apr 2018 13:22:22 GMT  
		Size: 1.7 MB (1672559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40c8cb3f80c3d621e70fc79c883e58116aa75aa9b7063d9545bf4fc6e9919ed0`  
		Last Modified: Tue, 24 Apr 2018 13:22:20 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b55e7394aef6c4ca9472d82e76dfdf080ea608aa4a702e0223cb1b42e515fc6`  
		Last Modified: Tue, 24 Apr 2018 13:22:21 GMT  
		Size: 317.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d26bbff90358620f8864f22c51b085c6daea96ab66c57cc55acbbbf608aa0822`  
		Last Modified: Tue, 24 Apr 2018 13:22:21 GMT  
		Size: 1.4 MB (1402037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b6c7b386baeecba9c82c57ed69f020dff8d2d2ab5f2616c096cde633dfefcd5`  
		Last Modified: Tue, 24 Apr 2018 13:28:01 GMT  
		Size: 32.0 MB (32020512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a154e0a8ce3ee14318512a4b28f4835889aca1578c4956aa71e0ee1344d68d53`  
		Last Modified: Tue, 24 Apr 2018 13:27:49 GMT  
		Size: 337.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eacf7c65546ef0f4f55002d870285a8bf71b6577d899567b7b708f916e00a9f`  
		Last Modified: Tue, 24 Apr 2018 13:27:49 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `owncloud:9-apache` - linux; 386

```console
$ docker pull owncloud@sha256:fdc4f9fc38ea366e26f8fa3e98283d0ef100f896d957249daa7c9d07638fcedf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.5 MB (237548052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:187e1289660ac22f7e5e79f423435fb58fdb00410a91f2378faab28f3fdf8459`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 27 Mar 2018 14:05:26 GMT
ADD file:8683f1cd44868aa69e4e8fce74caa88badfe317f49380ffa594640a48e4a5f1a in / 
# Tue, 27 Mar 2018 14:05:27 GMT
CMD ["bash"]
# Tue, 24 Apr 2018 12:32:02 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 24 Apr 2018 12:32:02 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 24 Apr 2018 12:32:57 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 24 Apr 2018 12:32:58 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 24 Apr 2018 12:32:58 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Tue, 24 Apr 2018 12:38:55 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Tue, 24 Apr 2018 12:38:55 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 24 Apr 2018 12:38:55 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 24 Apr 2018 12:38:56 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Tue, 24 Apr 2018 12:38:56 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 24 Apr 2018 12:38:57 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Tue, 24 Apr 2018 12:38:58 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 24 Apr 2018 12:38:58 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 24 Apr 2018 12:38:58 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Tue, 24 Apr 2018 12:38:58 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 24 Apr 2018 12:38:58 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 24 Apr 2018 12:38:59 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 24 Apr 2018 12:59:29 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Tue, 24 Apr 2018 12:59:29 GMT
ENV PHP_VERSION=7.0.29
# Tue, 24 Apr 2018 12:59:29 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.29.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.29.tar.xz.asc/from/this/mirror
# Tue, 24 Apr 2018 12:59:30 GMT
ENV PHP_SHA256=ca79d3ecc123bff4b623d4a1bbf5ad53ad39f5f2f5912fecc0ea97e95eba21cc PHP_MD5=
# Tue, 24 Apr 2018 13:00:11 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 24 Apr 2018 13:00:11 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Tue, 24 Apr 2018 13:03:27 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 24 Apr 2018 13:03:27 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Tue, 24 Apr 2018 13:03:28 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 24 Apr 2018 13:03:28 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 24 Apr 2018 13:03:28 GMT
WORKDIR /var/www/html
# Tue, 24 Apr 2018 13:03:28 GMT
EXPOSE 80/tcp
# Tue, 24 Apr 2018 13:03:28 GMT
CMD ["apache2-foreground"]
# Tue, 24 Apr 2018 14:20:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		libcurl4-openssl-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libldap2-dev 		libmcrypt-dev 		libmemcached-dev 		libpng12-dev 		libpq-dev 		libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 24 Apr 2018 14:22:07 GMT
RUN set -ex; 	docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install -j "$(nproc)" 		exif 		gd 		intl 		ldap 		mbstring 		mcrypt 		opcache 		pcntl 		pdo_mysql 		pdo_pgsql 		pgsql 		zip
# Tue, 24 Apr 2018 14:22:07 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 24 Apr 2018 14:22:08 GMT
RUN a2enmod rewrite
# Tue, 24 Apr 2018 14:22:45 GMT
RUN set -ex 	&& pecl install APCu-5.1.8 	&& pecl install memcached-3.0.3 	&& pecl install redis-3.1.2 	&& docker-php-ext-enable apcu memcached redis
# Tue, 24 Apr 2018 14:27:29 GMT
ENV OWNCLOUD_VERSION=9.1.8
# Tue, 24 Apr 2018 14:27:29 GMT
ENV OWNCLOUD_SHA256=2b688327a2f986236e14b81dffcf684f730f61946d8035e99a6d032083c1ef19
# Tue, 24 Apr 2018 14:27:29 GMT
VOLUME [/var/www/html]
# Tue, 24 Apr 2018 14:27:43 GMT
RUN set -eux; 	curl -fL -o owncloud.tar.bz2 "https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2"; 	curl -fL -o owncloud.tar.bz2.asc "https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc"; 	echo "$OWNCLOUD_SHA256 *owncloud.tar.bz2" | sha256sum -c -; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26; 	gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2; 	rm -r "$GNUPGHOME" owncloud.tar.bz2.asc; 	tar -xjf owncloud.tar.bz2 -C /usr/src/; 	rm owncloud.tar.bz2
# Tue, 24 Apr 2018 14:27:43 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /usr/local/bin/ 
# Tue, 24 Apr 2018 14:27:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 24 Apr 2018 14:27:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Apr 2018 14:27:44 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:9f151777f4a2473f74fd28d3d07fb57e7ce14f486a67f2f364a27bee629048c9`  
		Last Modified: Thu, 15 Mar 2018 01:00:02 GMT  
		Size: 52.8 MB (52787625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a383fa695b96caa235b425073db6752bd6ee341c57ebcdd7ee5293fa5b525c0`  
		Last Modified: Tue, 24 Apr 2018 13:40:05 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7aa261f249d15bb881ad89107419af673a70242e053329592e0ac31840ff4a9d`  
		Last Modified: Tue, 24 Apr 2018 13:40:31 GMT  
		Size: 83.3 MB (83318477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6ea81d767da8ae6f321454b2bfeb4c9ec0a92bf013daee10ab56d0623325857`  
		Last Modified: Tue, 24 Apr 2018 13:40:05 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55fc4502a49dd0c356ec0c00fe39492542c8a740e61f3559cc83497f4d2847af`  
		Last Modified: Tue, 24 Apr 2018 13:41:10 GMT  
		Size: 4.7 MB (4651416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b01c7ca835971546a9b3385212c872f4492265e6bab036985842a21ff7ac1e8`  
		Last Modified: Tue, 24 Apr 2018 13:41:07 GMT  
		Size: 1.2 KB (1243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dd56f0ddc16a0bad79381817c09b70ce449c645c3e142a5b57212edd69d560a`  
		Last Modified: Tue, 24 Apr 2018 13:41:07 GMT  
		Size: 431.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49d37f0101fa63199dcaecafcf2fee4a9f20478dfcb7bafcf74a04cd22a27b00`  
		Last Modified: Tue, 24 Apr 2018 13:41:07 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0cea9655a2381f0ec61cbc5eb408f3b0709103463c68da09a357f0b93acec2d`  
		Last Modified: Tue, 24 Apr 2018 13:41:08 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c867efe614f5a21b0e30a79d7f6bf3b0a10ce33616bc19c804464a2bbd258cfb`  
		Last Modified: Tue, 24 Apr 2018 13:43:01 GMT  
		Size: 12.8 MB (12751929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84da3df3f34392ede45ba9296207ae297e34372e405bb45b75baea94ce2d102f`  
		Last Modified: Tue, 24 Apr 2018 13:42:57 GMT  
		Size: 502.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47d48a47a555c8a3c7461da8b1347f2808592e7108637fbb89865b23948bdbba`  
		Last Modified: Tue, 24 Apr 2018 13:43:03 GMT  
		Size: 14.3 MB (14344412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d5bfa92975bbb784ca24154c2b2a16db1768689b0bab791ff3ab1211029ece2`  
		Last Modified: Tue, 24 Apr 2018 13:42:57 GMT  
		Size: 2.2 KB (2192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0de0b07f956c7d4d543502f2f2eddc2f8871ed2e153e3ae663376a1621cceda`  
		Last Modified: Tue, 24 Apr 2018 13:42:57 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:985d91742049f722604fc620b9f2c78601f5866217a38dd11439103bb4ebedb6`  
		Last Modified: Tue, 24 Apr 2018 14:28:34 GMT  
		Size: 34.6 MB (34589559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7162f4b1655b0b5dfa81fd744fffc518d0c17c18a85e07805f8f607567d3834`  
		Last Modified: Tue, 24 Apr 2018 14:28:23 GMT  
		Size: 1.8 MB (1793458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43898c995f5a6a75af161c395345b18e53f38bd7aff8e0c7337416f94b73304d`  
		Last Modified: Tue, 24 Apr 2018 14:28:22 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4319f6270c9558d37845c6d46a43adbb0b48238acec738848c43f388f560a347`  
		Last Modified: Tue, 24 Apr 2018 14:28:22 GMT  
		Size: 312.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:582ae3803c4f6aaf8aebecc283f3197b7a7856d0f79217b600f977b9744a43f8`  
		Last Modified: Tue, 24 Apr 2018 14:28:23 GMT  
		Size: 1.3 MB (1283140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c513c1c6124a6cb245af748febb1bbc392377e56a46d0391b0f01e17b8140e5`  
		Last Modified: Tue, 24 Apr 2018 14:30:02 GMT  
		Size: 32.0 MB (32020519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2b9a4dd81031e9af34602d0dcd110919a6c42ac0579199a6192d9e70a1d25af`  
		Last Modified: Tue, 24 Apr 2018 14:29:55 GMT  
		Size: 336.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df32cdde2f30ee760067c2e074407f7d73ae648d01f345cafe70f159d260eb55`  
		Last Modified: Tue, 24 Apr 2018 14:29:55 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `owncloud:9-apache` - linux; ppc64le

```console
$ docker pull owncloud@sha256:ff4a77fdfd5edc3fae318e56f2766a7f16bccefe1febcec3929b81ce1a1ff0bd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.8 MB (221784800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd85faf6d0c059bb29260219cea7aa11f399379fec491743519ac37e4497f21a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 14 Mar 2018 00:32:18 GMT
ADD file:a6ce5f76128adbe25d645aecee3745170f8a75a73a0e40d65b4198b322025f61 in / 
# Wed, 14 Mar 2018 00:32:19 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 06:58:39 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Thu, 15 Mar 2018 06:58:41 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 15 Mar 2018 07:03:50 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Thu, 15 Mar 2018 07:03:52 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 15 Mar 2018 07:03:55 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Thu, 15 Mar 2018 07:14:00 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 07:14:02 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 15 Mar 2018 07:14:04 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 15 Mar 2018 07:14:08 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Thu, 15 Mar 2018 07:14:11 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Thu, 15 Mar 2018 07:14:16 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Thu, 15 Mar 2018 07:14:19 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Thu, 15 Mar 2018 07:14:21 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Thu, 15 Mar 2018 07:14:23 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Thu, 15 Mar 2018 07:14:24 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 15 Mar 2018 07:14:26 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Thu, 15 Mar 2018 07:14:27 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Thu, 15 Mar 2018 07:46:46 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 06 Apr 2018 19:41:32 GMT
ENV PHP_VERSION=7.0.29
# Fri, 06 Apr 2018 19:41:34 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.29.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.29.tar.xz.asc/from/this/mirror
# Fri, 06 Apr 2018 19:41:35 GMT
ENV PHP_SHA256=ca79d3ecc123bff4b623d4a1bbf5ad53ad39f5f2f5912fecc0ea97e95eba21cc PHP_MD5=
# Fri, 06 Apr 2018 19:43:08 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 06 Apr 2018 19:43:10 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 06 Apr 2018 19:48:27 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 24 Apr 2018 09:18:01 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Tue, 24 Apr 2018 09:18:02 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 24 Apr 2018 09:18:04 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 24 Apr 2018 09:18:06 GMT
WORKDIR /var/www/html
# Tue, 24 Apr 2018 09:18:07 GMT
EXPOSE 80/tcp
# Tue, 24 Apr 2018 09:18:08 GMT
CMD ["apache2-foreground"]
# Tue, 24 Apr 2018 10:25:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		libcurl4-openssl-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libldap2-dev 		libmcrypt-dev 		libmemcached-dev 		libpng12-dev 		libpq-dev 		libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 24 Apr 2018 10:27:41 GMT
RUN set -ex; 	docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install -j "$(nproc)" 		exif 		gd 		intl 		ldap 		mbstring 		mcrypt 		opcache 		pcntl 		pdo_mysql 		pdo_pgsql 		pgsql 		zip
# Tue, 24 Apr 2018 10:27:43 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 24 Apr 2018 10:27:44 GMT
RUN a2enmod rewrite
# Tue, 24 Apr 2018 10:28:32 GMT
RUN set -ex 	&& pecl install APCu-5.1.8 	&& pecl install memcached-3.0.3 	&& pecl install redis-3.1.2 	&& docker-php-ext-enable apcu memcached redis
# Tue, 24 Apr 2018 10:34:13 GMT
ENV OWNCLOUD_VERSION=9.1.8
# Tue, 24 Apr 2018 10:34:13 GMT
ENV OWNCLOUD_SHA256=2b688327a2f986236e14b81dffcf684f730f61946d8035e99a6d032083c1ef19
# Tue, 24 Apr 2018 10:34:15 GMT
VOLUME [/var/www/html]
# Tue, 24 Apr 2018 10:35:05 GMT
RUN set -eux; 	curl -fL -o owncloud.tar.bz2 "https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2"; 	curl -fL -o owncloud.tar.bz2.asc "https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc"; 	echo "$OWNCLOUD_SHA256 *owncloud.tar.bz2" | sha256sum -c -; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26; 	gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2; 	rm -r "$GNUPGHOME" owncloud.tar.bz2.asc; 	tar -xjf owncloud.tar.bz2 -C /usr/src/; 	rm owncloud.tar.bz2
# Tue, 24 Apr 2018 10:35:06 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /usr/local/bin/ 
# Tue, 24 Apr 2018 10:35:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 24 Apr 2018 10:35:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Apr 2018 10:35:10 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:a87bd2b531300d02e0cb399797953ca9c847bd638a0a3d7f9c3adcfb967f32ce`  
		Last Modified: Wed, 14 Mar 2018 00:38:38 GMT  
		Size: 51.8 MB (51817165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b12afeed72b4b5801d2c4d4528dd71c5081ed9af8727481420acaea71c283eeb`  
		Last Modified: Thu, 15 Mar 2018 08:51:15 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fecf808e67709f204c88ba901a7c44cc3c04b02a56de3c11122c2246f1e72ae`  
		Last Modified: Thu, 15 Mar 2018 08:51:35 GMT  
		Size: 67.8 MB (67847417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0465374ceef2253ccf3bc08978e4bbe9337256ba1a38991ec50b5ca46de0479`  
		Last Modified: Thu, 15 Mar 2018 08:51:12 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e8e5752669ded8687821ef8b60171575253113b0d6d0be1a8d2357b2b877e19`  
		Last Modified: Thu, 15 Mar 2018 08:52:46 GMT  
		Size: 4.3 MB (4332762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb4c3e4cdb617487140aa38b825a3a18b30337200a5f4fdfbe0b376e9aeab192`  
		Last Modified: Thu, 15 Mar 2018 08:52:44 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83587815719dbc92c7b6318eb2acd7c6a397df505f778231c99d8be448f9dcb9`  
		Last Modified: Thu, 15 Mar 2018 08:52:44 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a47d15a2a654e6670e11a1ed10a362cb7027ceba200849ca1299648ebfd406d`  
		Last Modified: Thu, 15 Mar 2018 08:52:44 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6380e483a9167ed50054a2a10e5c798430a9f296140994f5a9d8ded3f36d576`  
		Last Modified: Thu, 15 Mar 2018 08:52:43 GMT  
		Size: 516.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf605600ec1dd79b3a019199b279afb0ffb0c22a542a5a693788628a1f8a2a4`  
		Last Modified: Fri, 06 Apr 2018 20:55:21 GMT  
		Size: 12.8 MB (12750903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c037bc8e81af000eb8dfdc523486c9c200b9a312d749f0e313c4ffc4587f514`  
		Last Modified: Fri, 06 Apr 2018 20:55:20 GMT  
		Size: 503.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07799ba06d0a9f1905e6df50af34708b7a195b0b14d140bc537577ff98642c60`  
		Last Modified: Fri, 06 Apr 2018 20:55:24 GMT  
		Size: 15.0 MB (15028796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eefdaf298e6353ef565151d3adda4c1af717c23794c45eccdbabb9a2c7c15e90`  
		Last Modified: Tue, 24 Apr 2018 09:34:08 GMT  
		Size: 2.2 KB (2193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6180ed9ad081bb6b72b00467f2f75aa37d09afe1db15bdf49f70f864caac21cc`  
		Last Modified: Tue, 24 Apr 2018 09:34:09 GMT  
		Size: 907.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2e4e8b6e3b0ce4c5f76317e2bf9b26e96fa4916d07b0c83d76c64c7e3948cd0`  
		Last Modified: Tue, 24 Apr 2018 10:36:52 GMT  
		Size: 34.8 MB (34784214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2fdabb00c9c36c6e27351caa81b03dde55b0eb7844c7b16039e11714d47aa9a`  
		Last Modified: Tue, 24 Apr 2018 10:36:40 GMT  
		Size: 1.8 MB (1771897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcfc379236948e16e59c7aeee6b1923b4ce8aec2faad59f5a65dde57f102048b`  
		Last Modified: Tue, 24 Apr 2018 10:36:37 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d61731c4f7060ab058780cc56d25107068b014aac27a548f5749d6df77e5d65d`  
		Last Modified: Tue, 24 Apr 2018 10:36:37 GMT  
		Size: 317.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31e350fd1f587f469f4b19a021db954b44b91891b8280df4711587c34a00f3d5`  
		Last Modified: Tue, 24 Apr 2018 10:36:38 GMT  
		Size: 1.4 MB (1423498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6135a366ea372808d8274e179b0b69d04a51f15c2205add65bc869fc1d93d28`  
		Last Modified: Tue, 24 Apr 2018 10:38:37 GMT  
		Size: 32.0 MB (32020466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:908a39815f488bc48eb945da450eeae7a6ef09c48c13c4a4f0d31f7ed98a8d18`  
		Last Modified: Tue, 24 Apr 2018 10:38:29 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45879246e1965ef4e4284019228a600849ac86b2dfd4ae26cb9525a6b902506c`  
		Last Modified: Tue, 24 Apr 2018 10:38:29 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `owncloud:9-apache` - linux; s390x

```console
$ docker pull owncloud@sha256:480c9df882811198ce9524f1b66a8274b240ec984afb03c1fd2edc21816fd289
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.1 MB (218113058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2eddedef4ea3e06224228a0c8f94db161e97ec675519cb025e39a338ab2ec0a7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 14 Mar 2018 05:21:53 GMT
ADD file:4f85a37eded7f246b2b04ad9c50b04a578b30985fa427d1ced53437a88a760f1 in / 
# Wed, 14 Mar 2018 05:21:54 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 06:22:09 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 14 Mar 2018 06:22:09 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 14 Mar 2018 06:22:39 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 14 Mar 2018 06:22:39 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 14 Mar 2018 06:22:40 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Wed, 14 Mar 2018 06:26:28 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 06:26:29 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 14 Mar 2018 06:26:29 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 14 Mar 2018 06:26:29 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Wed, 14 Mar 2018 06:26:30 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 14 Mar 2018 06:26:30 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Wed, 14 Mar 2018 06:26:31 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 14 Mar 2018 06:26:31 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 14 Mar 2018 06:26:31 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Wed, 14 Mar 2018 06:26:31 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 14 Mar 2018 06:26:32 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 14 Mar 2018 06:26:32 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 14 Mar 2018 06:39:49 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Fri, 06 Apr 2018 18:18:22 GMT
ENV PHP_VERSION=7.0.29
# Fri, 06 Apr 2018 18:18:22 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.29.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.29.tar.xz.asc/from/this/mirror
# Fri, 06 Apr 2018 18:18:22 GMT
ENV PHP_SHA256=ca79d3ecc123bff4b623d4a1bbf5ad53ad39f5f2f5912fecc0ea97e95eba21cc PHP_MD5=
# Fri, 06 Apr 2018 18:18:56 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Fri, 06 Apr 2018 18:18:56 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Fri, 06 Apr 2018 18:22:49 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 24 Apr 2018 12:05:33 GMT
COPY multi:c925dfb355ea16ba0238c8b6ca78d3cd7fe815932bf707b25bbf051070430157 in /usr/local/bin/ 
# Tue, 24 Apr 2018 12:05:33 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 24 Apr 2018 12:05:33 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Tue, 24 Apr 2018 12:05:33 GMT
WORKDIR /var/www/html
# Tue, 24 Apr 2018 12:05:33 GMT
EXPOSE 80/tcp
# Tue, 24 Apr 2018 12:05:34 GMT
CMD ["apache2-foreground"]
# Tue, 24 Apr 2018 12:49:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		libcurl4-openssl-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libldap2-dev 		libmcrypt-dev 		libmemcached-dev 		libpng12-dev 		libpq-dev 		libxml2-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 24 Apr 2018 12:50:19 GMT
RUN set -ex; 	docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install -j "$(nproc)" 		exif 		gd 		intl 		ldap 		mbstring 		mcrypt 		opcache 		pcntl 		pdo_mysql 		pdo_pgsql 		pgsql 		zip
# Tue, 24 Apr 2018 12:50:20 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 24 Apr 2018 12:50:24 GMT
RUN a2enmod rewrite
# Tue, 24 Apr 2018 12:50:49 GMT
RUN set -ex 	&& pecl install APCu-5.1.8 	&& pecl install memcached-3.0.3 	&& pecl install redis-3.1.2 	&& docker-php-ext-enable apcu memcached redis
# Tue, 24 Apr 2018 12:53:38 GMT
ENV OWNCLOUD_VERSION=9.1.8
# Tue, 24 Apr 2018 12:53:38 GMT
ENV OWNCLOUD_SHA256=2b688327a2f986236e14b81dffcf684f730f61946d8035e99a6d032083c1ef19
# Tue, 24 Apr 2018 12:53:38 GMT
VOLUME [/var/www/html]
# Tue, 24 Apr 2018 12:53:47 GMT
RUN set -eux; 	curl -fL -o owncloud.tar.bz2 "https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2"; 	curl -fL -o owncloud.tar.bz2.asc "https://download.owncloud.org/community/owncloud-${OWNCLOUD_VERSION}.tar.bz2.asc"; 	echo "$OWNCLOUD_SHA256 *owncloud.tar.bz2" | sha256sum -c -; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys E3036906AD9F30807351FAC32D5D5E97F6978A26; 	gpg --batch --verify owncloud.tar.bz2.asc owncloud.tar.bz2; 	rm -r "$GNUPGHOME" owncloud.tar.bz2.asc; 	tar -xjf owncloud.tar.bz2 -C /usr/src/; 	rm owncloud.tar.bz2
# Tue, 24 Apr 2018 12:53:48 GMT
COPY file:03fe90b626a097c27835e553f0b22ca55dc76d64d966006644b50609fffa4161 in /usr/local/bin/ 
# Tue, 24 Apr 2018 12:53:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 24 Apr 2018 12:53:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Apr 2018 12:53:49 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:ccd1a0cc23d7ab6837be3aa2f9af33195c4b20de649ee2c39e8b1a87709575ed`  
		Last Modified: Wed, 14 Mar 2018 05:26:10 GMT  
		Size: 52.8 MB (52795472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e317b7a373031776b63bc0219c144875d860a6ec69cfeb984cd954e5fbec2d9`  
		Last Modified: Wed, 14 Mar 2018 07:02:55 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:209dbbd060c442a9806924395ab4b3529925405b872d48795e514d1bcee76005`  
		Last Modified: Wed, 14 Mar 2018 07:03:06 GMT  
		Size: 61.8 MB (61784578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e445652c6b3efddd9359a1b062460817ec8f36a7bfd3141f386bd65e84756ac`  
		Last Modified: Wed, 14 Mar 2018 07:02:54 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d64309cd018f955957e67bac9f7865e8d28953061e7959058a02b1aaf9dd8a2`  
		Last Modified: Wed, 14 Mar 2018 07:03:39 GMT  
		Size: 4.5 MB (4487950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32c4292884aa88ebf1db10b9d5897b41b450f50707bbc03e10d97bc17fee337d`  
		Last Modified: Wed, 14 Mar 2018 07:03:38 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef8a99c53cb67f46f083b22dfded41833d56355ae8e8c3302108217bde050022`  
		Last Modified: Wed, 14 Mar 2018 07:03:37 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f8c53bd31f678b46829b65eee9502c0bbc5c1a17c7818a6497a879c5b0ecaec`  
		Last Modified: Wed, 14 Mar 2018 07:03:37 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e826a6d1b3c6fba5a7580e4549c8480853ef10baf086571cecff72e62da1c0de`  
		Last Modified: Wed, 14 Mar 2018 07:03:37 GMT  
		Size: 485.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e5b935d80cd9d5af2c5b3cc1755a4acc9ead14524b0aefdda0e550777b62994`  
		Last Modified: Fri, 06 Apr 2018 19:04:16 GMT  
		Size: 12.7 MB (12749868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12405a068c683f0215d26e1c8413eed23943b3dc68b8fb3c4f61341793a6c922`  
		Last Modified: Fri, 06 Apr 2018 19:04:13 GMT  
		Size: 502.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dd91ed6e207b316339f3b693d5bdf2f784071ecdf83ec286c2a6307653c410b`  
		Last Modified: Fri, 06 Apr 2018 19:04:18 GMT  
		Size: 16.0 MB (15998724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2473ed521bb34742c138d39083465ee15a6e87b1ff6a580bf0b274baa0bb23d9`  
		Last Modified: Tue, 24 Apr 2018 12:22:43 GMT  
		Size: 2.2 KB (2190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1035193a155c2a59a28ea6efd2309e48793b44f44b82f749d2c938792f560314`  
		Last Modified: Tue, 24 Apr 2018 12:22:43 GMT  
		Size: 906.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16623eb57ae352cca6f4ba0708f3ee0645e935675c060462753f8c03590f100d`  
		Last Modified: Tue, 24 Apr 2018 12:54:38 GMT  
		Size: 35.1 MB (35051362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07f4f9547126aa5068b9abaf656b73267b6744a466b164220f7feb0969d30fa0`  
		Last Modified: Tue, 24 Apr 2018 12:54:26 GMT  
		Size: 1.8 MB (1810672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6da70f70baa620b602028f36c3febebe8e48b16a66aa5a1a241cc969d825d7e`  
		Last Modified: Tue, 24 Apr 2018 12:54:25 GMT  
		Size: 353.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9048122ece5dae61c5cf8e92526b82ddd4920b71b619701e6d9e797354a125f`  
		Last Modified: Tue, 24 Apr 2018 12:54:25 GMT  
		Size: 313.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bce372939ed0651a3f11fe4987e0697a69f9c394d9b9fbc4eb4f830bc237eac9`  
		Last Modified: Tue, 24 Apr 2018 12:54:25 GMT  
		Size: 1.4 MB (1406379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6664f3a7ebe9509acd1c196cd000c3dc3298b9461b9eaab4c82479a6a4ff6072`  
		Last Modified: Tue, 24 Apr 2018 12:56:31 GMT  
		Size: 32.0 MB (32020525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a15e68b7974e5980e46a9a0c7935ceb23858ac0cf4d5d7e7f4d8ee99827dff34`  
		Last Modified: Tue, 24 Apr 2018 12:56:24 GMT  
		Size: 337.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b631cb884df7d50931bb8938aa63b0e9d9f17d6304e2718d599adadadf640d4`  
		Last Modified: Tue, 24 Apr 2018 12:56:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
