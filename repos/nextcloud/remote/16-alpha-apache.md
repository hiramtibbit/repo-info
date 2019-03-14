## `nextcloud:16-alpha-apache`

```console
$ docker pull nextcloud@sha256:e74ff3098ac9e96cd81b5750ab3c4056ed4f0fe08cb74b5b265f0b97c5036b6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `nextcloud:16-alpha-apache` - linux; amd64

```console
$ docker pull nextcloud@sha256:f6108379dcaa5a5cae3103a09941d85446567ad09e87d7acb9c136f63a25f5bd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.2 MB (214162140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fc74bea964f6d8da4a849784cc134a452075f842c5e0feacf9fb7a1abd410d9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 01:21:14 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 05 Mar 2019 01:21:14 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 05 Mar 2019 01:21:44 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 05 Mar 2019 01:21:44 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 05 Mar 2019 01:21:46 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Tue, 05 Mar 2019 01:29:33 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 05 Mar 2019 01:29:34 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 05 Mar 2019 01:29:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Tue, 05 Mar 2019 01:29:51 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 05 Mar 2019 01:29:52 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 05 Mar 2019 01:29:53 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 05 Mar 2019 01:29:53 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Tue, 05 Mar 2019 01:29:53 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 05 Mar 2019 01:29:53 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 05 Mar 2019 01:29:54 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 05 Mar 2019 02:02:12 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Sat, 09 Mar 2019 01:45:38 GMT
ENV PHP_VERSION=7.2.16
# Sat, 09 Mar 2019 01:45:38 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.16.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.16.tar.xz.asc/from/this/mirror
# Sat, 09 Mar 2019 01:45:39 GMT
ENV PHP_SHA256=7d91ed3c1447c6358a3d53f84599ef854aca4c3622de7435e2df115bf196e482 PHP_MD5=
# Sat, 09 Mar 2019 01:45:47 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 09 Mar 2019 01:45:47 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Mar 2019 01:50:01 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Mar 2019 01:50:02 GMT
COPY multi:0002d7d5b06fb24f987aa4b027705dc71f81957419a02be5b9014431514c25b5 in /usr/local/bin/ 
# Sat, 09 Mar 2019 01:50:03 GMT
RUN docker-php-ext-enable sodium
# Sat, 09 Mar 2019 01:50:03 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Mar 2019 01:50:04 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Sat, 09 Mar 2019 01:50:04 GMT
WORKDIR /var/www/html
# Sat, 09 Mar 2019 01:50:04 GMT
EXPOSE 80
# Sat, 09 Mar 2019 01:50:05 GMT
CMD ["apache2-foreground"]
# Sat, 09 Mar 2019 04:34:15 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         rsync         bzip2         busybox-static     ;     rm -rf /var/lib/apt/lists/*;         mkdir -p /var/spool/cron/crontabs;     echo '*/15 * * * * php -f /var/www/html/cron.php' > /var/spool/cron/crontabs/www-data
# Thu, 14 Mar 2019 21:46:05 GMT
RUN set -ex;         savedAptMark="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         libcurl4-openssl-dev         libevent-dev         libfreetype6-dev         libicu-dev         libjpeg-dev         libldap2-dev         libmcrypt-dev         libmemcached-dev         libpng-dev         libpq-dev         libxml2-dev         libmagickwand-dev     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";     docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr;     docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch";     docker-php-ext-install         exif         gd         intl         ldap         opcache         pcntl         pdo_mysql         pdo_pgsql         zip     ;         pecl install APCu-5.1.17;     pecl install memcached-3.1.3;     pecl install redis-4.3.0;     pecl install imagick-3.4.3;         docker-php-ext-enable         apcu         memcached         redis         imagick     ;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { print $3 }'         | sort -u         | xargs -r dpkg-query -S         | cut -d: -f1         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 21:46:06 GMT
RUN {         echo 'opcache.enable=1';         echo 'opcache.enable_cli=1';         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=128';         echo 'opcache.save_comments=1';         echo 'opcache.revalidate_freq=1';     } > /usr/local/etc/php/conf.d/opcache-recommended.ini;         echo 'apc.enable_cli=1' >> /usr/local/etc/php/conf.d/docker-php-ext-apcu.ini;         echo 'memory_limit=512M' > /usr/local/etc/php/conf.d/memory-limit.ini;         mkdir /var/www/data;     chown -R www-data:root /var/www;     chmod -R g=u /var/www
# Thu, 14 Mar 2019 21:46:06 GMT
VOLUME [/var/www/html]
# Thu, 14 Mar 2019 21:46:07 GMT
RUN a2enmod rewrite remoteip ;    {     echo RemoteIPHeader X-Real-IP ;     echo RemoteIPTrustedProxy 10.0.0.0/8 ;     echo RemoteIPTrustedProxy 172.16.0.0/12 ;     echo RemoteIPTrustedProxy 192.168.0.0/16 ;    } > /etc/apache2/conf-available/remoteip.conf;    a2enconf remoteip
# Thu, 14 Mar 2019 21:59:35 GMT
ENV NEXTCLOUD_VERSION=16.0.0alpha1
# Thu, 14 Mar 2019 22:00:07 GMT
RUN set -ex;     fetchDeps="         gnupg         dirmngr     ";     apt-get update;     apt-get install -y --no-install-recommends $fetchDeps;         curl -fsSL -o nextcloud.tar.bz2         "https://download.nextcloud.com/server/prereleases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2";     curl -fsSL -o nextcloud.tar.bz2.asc         "https://download.nextcloud.com/server/prereleases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A;     gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2;     tar -xjf nextcloud.tar.bz2 -C /usr/src/;     gpgconf --kill all;     rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc nextcloud.tar.bz2;     rm -rf /usr/src/nextcloud/updater;     mkdir -p /usr/src/nextcloud/data;     mkdir -p /usr/src/nextcloud/custom_apps;     chmod +x /usr/src/nextcloud/occ;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps;     rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 22:00:08 GMT
COPY multi:5ccd74024c795c246cbd9cdc108de31e6dba873dd783f90af54ceb6d82a2692e in / 
# Thu, 14 Mar 2019 22:00:08 GMT
COPY multi:99ef5f8cff1e4ea70df1acc5f5f5da22fd63ce35761265628aa6550bb64b164c in /usr/src/nextcloud/config/ 
# Thu, 14 Mar 2019 22:00:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 14 Mar 2019 22:00:09 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:744aedb7995c4cdfa910eed9f3035bdfe6c1670cb8c34b155955961d4123ca79`  
		Last Modified: Tue, 05 Mar 2019 03:25:56 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07afe22f8a5850183a444ea563d5b16a0218245dda6ee319c286f72c3e8ea552`  
		Last Modified: Tue, 05 Mar 2019 03:26:12 GMT  
		Size: 67.4 MB (67447190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7bf4f31c4a4525e2fb402df85bfbd733cd3bfb13560584e4d4ce08b019bb86c`  
		Last Modified: Tue, 05 Mar 2019 03:25:56 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b528e75732cc2db8e3a6d66b13717930f34e079efdfe5184da66848842a72c6f`  
		Last Modified: Tue, 05 Mar 2019 03:26:31 GMT  
		Size: 17.1 MB (17124675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27e7d214ded21411ee7ddaf176b4449d75fa93693be7735ad851a31c83ab9791`  
		Last Modified: Tue, 05 Mar 2019 03:26:27 GMT  
		Size: 435.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:894549c23c16e6495ae2b32dc9fd0ff842a2745e7f81ae19223dca2bf5d9756f`  
		Last Modified: Tue, 05 Mar 2019 03:26:27 GMT  
		Size: 489.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aa6d55932b29af9a065f1094399fd7aeb2230ae8166500923e470e5a7dbfe16`  
		Last Modified: Sat, 09 Mar 2019 04:13:53 GMT  
		Size: 12.5 MB (12515124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b27fd7479e67c9f47efc7002cf36a47037c74cef6f8fbb8ff743e46ac97034d`  
		Last Modified: Sat, 09 Mar 2019 04:13:51 GMT  
		Size: 502.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eacdac7d65c9bdb72149a3aded7d3b7eb43abb15c7cc98d92e3a2496574df824`  
		Last Modified: Sat, 09 Mar 2019 04:13:54 GMT  
		Size: 15.3 MB (15257303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66f1bd2ad7cf3070387f5da5437760880ab1213270aebbc4d207f327778b76b7`  
		Last Modified: Sat, 09 Mar 2019 04:13:51 GMT  
		Size: 2.2 KB (2204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee6444380c1857f2b733d3bf2d348bc049700f88537601ecd6de6ca5b9bd7728`  
		Last Modified: Sat, 09 Mar 2019 04:13:51 GMT  
		Size: 261.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1500f6dd9b69b61d2f9df76c43bf6de59a7fcb3d58f18d82918ff04c4cb731fa`  
		Last Modified: Sat, 09 Mar 2019 04:13:51 GMT  
		Size: 906.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18560f19c8c40e821acdfdbf9358cca530d7e0188131d1f84817efcbc8251053`  
		Last Modified: Sat, 09 Mar 2019 04:49:40 GMT  
		Size: 1.6 MB (1612667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bddc5d1da8e75c788fad086c2ca559be71afbff0c2cd5fec02dd1c5b678cd7fd`  
		Last Modified: Thu, 14 Mar 2019 22:04:09 GMT  
		Size: 12.4 MB (12358547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e33450d197c57e33ed6701415c1aa1418c2e4e3763fd593d3b0caad942346e4`  
		Last Modified: Thu, 14 Mar 2019 22:04:04 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f195f51537c11d3e78b38389ea500643bbd52086773b4ee80a0fdb0cc84316c`  
		Last Modified: Thu, 14 Mar 2019 22:04:04 GMT  
		Size: 540.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1b532461a177377eae6202dbaeae3a4a3a6d2e1d4f57659cc0453427bbccd09`  
		Last Modified: Thu, 14 Mar 2019 22:08:54 GMT  
		Size: 65.3 MB (65341433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:552f56ea1d71fb0a353fe09775f62959c537fa8060b662671c9c0883074f34fd`  
		Last Modified: Thu, 14 Mar 2019 22:08:33 GMT  
		Size: 1.9 KB (1921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25698418fd7c8922b1c021b35e7125dfd5403133b6ede3392f6bb9284792a516`  
		Last Modified: Thu, 14 Mar 2019 22:08:33 GMT  
		Size: 919.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nextcloud:16-alpha-apache` - linux; arm variant v5

```console
$ docker pull nextcloud@sha256:613ee76c1e9f60c13d788dd89386a4cc677302343839f6890db61908d5be3029
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.1 MB (201118712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:601213d932a8b167075f80a3bec8ecde6cd41b671473b215560b818f3eca61b9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 05 Mar 2019 09:55:08 GMT
ADD file:2526a4ee90bfd47bff3ab8ba2594e49465df9aa258daf8426e7d38166f4fecc2 in / 
# Tue, 05 Mar 2019 09:55:09 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 10:54:34 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 05 Mar 2019 10:54:34 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 05 Mar 2019 10:55:15 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 05 Mar 2019 10:55:16 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 05 Mar 2019 10:55:17 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Tue, 05 Mar 2019 10:59:50 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 05 Mar 2019 10:59:50 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 05 Mar 2019 11:00:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Tue, 05 Mar 2019 11:00:11 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 05 Mar 2019 11:00:12 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 05 Mar 2019 11:00:13 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 05 Mar 2019 11:00:13 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Tue, 05 Mar 2019 11:00:13 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 05 Mar 2019 11:00:14 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 05 Mar 2019 11:00:14 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 05 Mar 2019 11:17:10 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Sat, 09 Mar 2019 10:11:10 GMT
ENV PHP_VERSION=7.2.16
# Sat, 09 Mar 2019 10:11:10 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.16.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.16.tar.xz.asc/from/this/mirror
# Sat, 09 Mar 2019 10:11:10 GMT
ENV PHP_SHA256=7d91ed3c1447c6358a3d53f84599ef854aca4c3622de7435e2df115bf196e482 PHP_MD5=
# Sat, 09 Mar 2019 10:11:27 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 09 Mar 2019 10:11:27 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Mar 2019 10:14:27 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Mar 2019 10:14:28 GMT
COPY multi:0002d7d5b06fb24f987aa4b027705dc71f81957419a02be5b9014431514c25b5 in /usr/local/bin/ 
# Sat, 09 Mar 2019 10:14:30 GMT
RUN docker-php-ext-enable sodium
# Sat, 09 Mar 2019 10:14:30 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Mar 2019 10:14:31 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Sat, 09 Mar 2019 10:14:31 GMT
WORKDIR /var/www/html
# Sat, 09 Mar 2019 10:14:31 GMT
EXPOSE 80
# Sat, 09 Mar 2019 10:14:32 GMT
CMD ["apache2-foreground"]
# Sat, 09 Mar 2019 11:44:00 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         rsync         bzip2         busybox-static     ;     rm -rf /var/lib/apt/lists/*;         mkdir -p /var/spool/cron/crontabs;     echo '*/15 * * * * php -f /var/www/html/cron.php' > /var/spool/cron/crontabs/www-data
# Sat, 09 Mar 2019 11:50:43 GMT
RUN set -ex;         savedAptMark="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         libcurl4-openssl-dev         libevent-dev         libfreetype6-dev         libicu-dev         libjpeg-dev         libldap2-dev         libmcrypt-dev         libmemcached-dev         libpng-dev         libpq-dev         libxml2-dev         libmagickwand-dev     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";     docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr;     docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch";     docker-php-ext-install         exif         gd         intl         ldap         opcache         pcntl         pdo_mysql         pdo_pgsql         zip     ;         pecl install APCu-5.1.17;     pecl install memcached-3.1.3;     pecl install redis-4.2.0;     pecl install imagick-3.4.3;         docker-php-ext-enable         apcu         memcached         redis         imagick     ;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { print $3 }'         | sort -u         | xargs -r dpkg-query -S         | cut -d: -f1         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*
# Sat, 09 Mar 2019 11:50:45 GMT
RUN {         echo 'opcache.enable=1';         echo 'opcache.enable_cli=1';         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=128';         echo 'opcache.save_comments=1';         echo 'opcache.revalidate_freq=1';     } > /usr/local/etc/php/conf.d/opcache-recommended.ini;         echo 'apc.enable_cli=1' >> /usr/local/etc/php/conf.d/docker-php-ext-apcu.ini;         echo 'memory_limit=512M' > /usr/local/etc/php/conf.d/memory-limit.ini;         mkdir /var/www/data;     chown -R www-data:root /var/www;     chmod -R g=u /var/www
# Sat, 09 Mar 2019 11:50:45 GMT
VOLUME [/var/www/html]
# Sat, 09 Mar 2019 11:50:46 GMT
RUN a2enmod rewrite remoteip ;    {     echo RemoteIPHeader X-Real-IP ;     echo RemoteIPTrustedProxy 10.0.0.0/8 ;     echo RemoteIPTrustedProxy 172.16.0.0/12 ;     echo RemoteIPTrustedProxy 192.168.0.0/16 ;    } > /etc/apache2/conf-available/remoteip.conf;    a2enconf remoteip
# Thu, 14 Mar 2019 08:48:48 GMT
ENV NEXTCLOUD_VERSION=16.0.0alpha1
# Thu, 14 Mar 2019 08:50:11 GMT
RUN set -ex;     fetchDeps="         gnupg         dirmngr     ";     apt-get update;     apt-get install -y --no-install-recommends $fetchDeps;         curl -fsSL -o nextcloud.tar.bz2         "https://download.nextcloud.com/server/prereleases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2";     curl -fsSL -o nextcloud.tar.bz2.asc         "https://download.nextcloud.com/server/prereleases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A;     gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2;     tar -xjf nextcloud.tar.bz2 -C /usr/src/;     gpgconf --kill all;     rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc nextcloud.tar.bz2;     rm -rf /usr/src/nextcloud/updater;     mkdir -p /usr/src/nextcloud/data;     mkdir -p /usr/src/nextcloud/custom_apps;     chmod +x /usr/src/nextcloud/occ;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps;     rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 08:50:13 GMT
COPY multi:e3ee4b7af51dcf3ed52441ed3dff61bf962f6e147370b5b9bbbc163fc54eb8f6 in / 
# Thu, 14 Mar 2019 08:50:14 GMT
COPY multi:99ef5f8cff1e4ea70df1acc5f5f5da22fd63ce35761265628aa6550bb64b164c in /usr/src/nextcloud/config/ 
# Thu, 14 Mar 2019 08:50:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 14 Mar 2019 08:50:14 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:c5b53d864e73b66292b38bbea137ab84443437d4a8a51ea774f4af661bdfa126`  
		Last Modified: Tue, 05 Mar 2019 10:02:45 GMT  
		Size: 21.2 MB (21160548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56bb111e6d30f6962769c731a357e77d4cbce28782f63ef9b9a93f603122aed7`  
		Last Modified: Tue, 05 Mar 2019 12:11:41 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a645b4516166dc6223166f16e9c3d9f1a370e7d311138675101a03e1a75f32ea`  
		Last Modified: Tue, 05 Mar 2019 12:12:01 GMT  
		Size: 57.5 MB (57471972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97305798dbcbf1ea8b85c5da1cd2df1a30ae86a31067de38b3be5fe7e61d37ee`  
		Last Modified: Tue, 05 Mar 2019 12:11:41 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f8b4a5ce5eea2a68ce308f238a699b5b64134864105f7999a9beb88ec6bddc6`  
		Last Modified: Tue, 05 Mar 2019 12:12:33 GMT  
		Size: 16.7 MB (16652200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bb2ac1d535d964b1d3db67e6dbb31a9b94d4c610f1f3e8bf1f36267c4b43bc5`  
		Last Modified: Tue, 05 Mar 2019 12:12:28 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b97112b68c24c01fc1af29dd73e1b5e3676cca111bc51cebcabe031efa68eee5`  
		Last Modified: Tue, 05 Mar 2019 12:12:28 GMT  
		Size: 517.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:638d44b5196ef63d0a5da5d0ee03348ae7c55cb6fddd6fbfaa78a02ca22e31b9`  
		Last Modified: Sat, 09 Mar 2019 11:06:51 GMT  
		Size: 12.5 MB (12513230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f23d1e9ff91cdb50d0b1f43a814c19ed8d2fc91adb3e2d7aec72e48ab6d9519d`  
		Last Modified: Sat, 09 Mar 2019 11:06:48 GMT  
		Size: 502.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52cef6d4422326dd7eac8053413b94c34a5d7b0a8a12b9cf5213c01ff7f4f43d`  
		Last Modified: Sat, 09 Mar 2019 11:06:54 GMT  
		Size: 14.4 MB (14434513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:453932760e410fc32c1bc48b1d4627a608a8b9819499dec470da95691db905fb`  
		Last Modified: Sat, 09 Mar 2019 11:06:48 GMT  
		Size: 2.2 KB (2203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11fae9b55c034e7d010b8470e72603f95dd56b0f15a0627b7317d69dc6185ed7`  
		Last Modified: Sat, 09 Mar 2019 11:06:48 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01b7be3b28ec4318d735371b9b1260de04795d1a055f47e029f03b9031a789bc`  
		Last Modified: Sat, 09 Mar 2019 11:06:48 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:babd2662ce325cf938e8dd9ebdb910e65d5601f92bd4f3cdd5a844b7f5cc0fe2`  
		Last Modified: Sat, 09 Mar 2019 12:07:11 GMT  
		Size: 1.6 MB (1583045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d3caaaec9541641d12ad45326bea3539e458979b8a5ca16f93d7af08ced3ded`  
		Last Modified: Sat, 09 Mar 2019 12:07:14 GMT  
		Size: 12.0 MB (11954115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efd024a3b4903c264ef2a5df363a4662ac79f7ec5d113ed28043701ec1de506b`  
		Last Modified: Sat, 09 Mar 2019 12:07:09 GMT  
		Size: 553.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9edaa51fa89d7bc04e92f5fa6fdf5dbc65ee51906662a3655198f11709aaeb7d`  
		Last Modified: Sat, 09 Mar 2019 12:07:09 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2b038b785084528227e10544535d86ebdfc0fe03648b786381f310d452cb12c`  
		Last Modified: Thu, 14 Mar 2019 08:53:19 GMT  
		Size: 65.3 MB (65339792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1645a63af25e37cd2568b13ba5b43e734748bcc286f6ea9cc2bc44f850c9ceb9`  
		Last Modified: Thu, 14 Mar 2019 08:52:52 GMT  
		Size: 1.9 KB (1908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:160f0f6fecba038d399fd062e214eacbeaa20d62ce91259cc36160a2ac174fe4`  
		Last Modified: Thu, 14 Mar 2019 08:52:52 GMT  
		Size: 920.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nextcloud:16-alpha-apache` - linux; arm variant v7

```console
$ docker pull nextcloud@sha256:a3b2921a7738d8301100348756c1679a5c21bf59d85f243a905243e01e0b1708
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.1 MB (193080939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c88d9cef434db73e9383a72c0bcb08bfeb390b3344034087336c7a20d61e7b0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 05 Mar 2019 13:11:01 GMT
ADD file:5d43d39fbe853e1f4c9f89be2ddc937fb88624889c511b9a75d6389c2b67918a in / 
# Tue, 05 Mar 2019 13:11:03 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 14:44:37 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 05 Mar 2019 14:44:37 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 05 Mar 2019 14:45:09 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 05 Mar 2019 14:45:18 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 05 Mar 2019 14:45:20 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Tue, 05 Mar 2019 14:49:53 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 05 Mar 2019 14:49:54 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 05 Mar 2019 14:50:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Tue, 05 Mar 2019 14:50:17 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 05 Mar 2019 14:50:20 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 05 Mar 2019 14:50:21 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 05 Mar 2019 14:50:21 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Tue, 05 Mar 2019 14:50:22 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 05 Mar 2019 14:50:23 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 05 Mar 2019 14:50:23 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 05 Mar 2019 15:07:45 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Sat, 09 Mar 2019 13:31:38 GMT
ENV PHP_VERSION=7.2.16
# Sat, 09 Mar 2019 13:31:38 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.16.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.16.tar.xz.asc/from/this/mirror
# Sat, 09 Mar 2019 13:31:39 GMT
ENV PHP_SHA256=7d91ed3c1447c6358a3d53f84599ef854aca4c3622de7435e2df115bf196e482 PHP_MD5=
# Sat, 09 Mar 2019 13:31:52 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 09 Mar 2019 13:31:52 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Mar 2019 13:34:35 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Mar 2019 13:34:36 GMT
COPY multi:0002d7d5b06fb24f987aa4b027705dc71f81957419a02be5b9014431514c25b5 in /usr/local/bin/ 
# Sat, 09 Mar 2019 13:34:37 GMT
RUN docker-php-ext-enable sodium
# Sat, 09 Mar 2019 13:34:38 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Mar 2019 13:34:38 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Sat, 09 Mar 2019 13:34:38 GMT
WORKDIR /var/www/html
# Sat, 09 Mar 2019 13:34:39 GMT
EXPOSE 80
# Sat, 09 Mar 2019 13:34:39 GMT
CMD ["apache2-foreground"]
# Sat, 09 Mar 2019 15:11:31 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         rsync         bzip2         busybox-static     ;     rm -rf /var/lib/apt/lists/*;         mkdir -p /var/spool/cron/crontabs;     echo '*/15 * * * * php -f /var/www/html/cron.php' > /var/spool/cron/crontabs/www-data
# Sat, 09 Mar 2019 15:17:37 GMT
RUN set -ex;         savedAptMark="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         libcurl4-openssl-dev         libevent-dev         libfreetype6-dev         libicu-dev         libjpeg-dev         libldap2-dev         libmcrypt-dev         libmemcached-dev         libpng-dev         libpq-dev         libxml2-dev         libmagickwand-dev     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";     docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr;     docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch";     docker-php-ext-install         exif         gd         intl         ldap         opcache         pcntl         pdo_mysql         pdo_pgsql         zip     ;         pecl install APCu-5.1.17;     pecl install memcached-3.1.3;     pecl install redis-4.2.0;     pecl install imagick-3.4.3;         docker-php-ext-enable         apcu         memcached         redis         imagick     ;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { print $3 }'         | sort -u         | xargs -r dpkg-query -S         | cut -d: -f1         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*
# Sat, 09 Mar 2019 15:17:38 GMT
RUN {         echo 'opcache.enable=1';         echo 'opcache.enable_cli=1';         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=128';         echo 'opcache.save_comments=1';         echo 'opcache.revalidate_freq=1';     } > /usr/local/etc/php/conf.d/opcache-recommended.ini;         echo 'apc.enable_cli=1' >> /usr/local/etc/php/conf.d/docker-php-ext-apcu.ini;         echo 'memory_limit=512M' > /usr/local/etc/php/conf.d/memory-limit.ini;         mkdir /var/www/data;     chown -R www-data:root /var/www;     chmod -R g=u /var/www
# Sat, 09 Mar 2019 15:17:39 GMT
VOLUME [/var/www/html]
# Sat, 09 Mar 2019 15:17:40 GMT
RUN a2enmod rewrite remoteip ;    {     echo RemoteIPHeader X-Real-IP ;     echo RemoteIPTrustedProxy 10.0.0.0/8 ;     echo RemoteIPTrustedProxy 172.16.0.0/12 ;     echo RemoteIPTrustedProxy 192.168.0.0/16 ;    } > /etc/apache2/conf-available/remoteip.conf;    a2enconf remoteip
# Thu, 14 Mar 2019 11:58:51 GMT
ENV NEXTCLOUD_VERSION=16.0.0alpha1
# Thu, 14 Mar 2019 12:00:12 GMT
RUN set -ex;     fetchDeps="         gnupg         dirmngr     ";     apt-get update;     apt-get install -y --no-install-recommends $fetchDeps;         curl -fsSL -o nextcloud.tar.bz2         "https://download.nextcloud.com/server/prereleases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2";     curl -fsSL -o nextcloud.tar.bz2.asc         "https://download.nextcloud.com/server/prereleases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A;     gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2;     tar -xjf nextcloud.tar.bz2 -C /usr/src/;     gpgconf --kill all;     rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc nextcloud.tar.bz2;     rm -rf /usr/src/nextcloud/updater;     mkdir -p /usr/src/nextcloud/data;     mkdir -p /usr/src/nextcloud/custom_apps;     chmod +x /usr/src/nextcloud/occ;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps;     rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 12:00:14 GMT
COPY multi:e3ee4b7af51dcf3ed52441ed3dff61bf962f6e147370b5b9bbbc163fc54eb8f6 in / 
# Thu, 14 Mar 2019 12:00:15 GMT
COPY multi:99ef5f8cff1e4ea70df1acc5f5f5da22fd63ce35761265628aa6550bb64b164c in /usr/src/nextcloud/config/ 
# Thu, 14 Mar 2019 12:00:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 14 Mar 2019 12:00:16 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:ecad9bd7ef0cc879127c92e50db573b75c643910463a12affaa5be77c7960bda`  
		Last Modified: Tue, 05 Mar 2019 13:18:41 GMT  
		Size: 19.3 MB (19282494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4edb4ba5dc88babfee394986a3231217bd7e8f735fd7b69f66aea960bd0546ad`  
		Last Modified: Tue, 05 Mar 2019 16:04:12 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebc2006cb0a28268e52932894df96fdc768957ecea340df9edc237c48e7445c2`  
		Last Modified: Tue, 05 Mar 2019 16:04:28 GMT  
		Size: 53.6 MB (53588935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2c78b4c148941d5582a947905d3b81e3686c3eebfbe03f67cd65ece41357bed`  
		Last Modified: Tue, 05 Mar 2019 16:04:11 GMT  
		Size: 286.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e34750388b88aa43b7fcfbffbd89511bf186537788e09ecf34a68339d50233e`  
		Last Modified: Tue, 05 Mar 2019 16:05:01 GMT  
		Size: 16.2 MB (16159614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfe68c09d8627508fac9d772ec21b35c54db9962759f8af44a4dd7ac864c3a41`  
		Last Modified: Tue, 05 Mar 2019 16:04:56 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3256865575fec21405a010bfd27fd5c384338bd1dd78defa59d2e6fbeec89f3`  
		Last Modified: Tue, 05 Mar 2019 16:04:56 GMT  
		Size: 520.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cf690841341fe2f21639d5401ca50b41b8f8a1072190a30166c79f87e9ea597`  
		Last Modified: Sat, 09 Mar 2019 14:45:27 GMT  
		Size: 12.5 MB (12513264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2675bd9f7f897805b72de0725245860552bb3b7dcd469ef99b7d00060d6a3b67`  
		Last Modified: Sat, 09 Mar 2019 14:45:24 GMT  
		Size: 502.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb0ff5b29e047e7f9a55a90431fefdf3802ff04dbccf00c0885f824617b8ba81`  
		Last Modified: Sat, 09 Mar 2019 14:45:29 GMT  
		Size: 13.6 MB (13601670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03ff8ca0cb71afd5a9ab200ff93964b6cd113bc6c52440b14338017196530669`  
		Last Modified: Sat, 09 Mar 2019 14:45:24 GMT  
		Size: 2.2 KB (2204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15d4fa20e1058ec013e2bd04793ca36d45bbcaadfb98d3546ba536be07b7a779`  
		Last Modified: Sat, 09 Mar 2019 14:45:24 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bddd8b46b9dcc9f762ff9bfc0d3851a9053b307ab6d63f1abd3cf71f2e8d51d5`  
		Last Modified: Sat, 09 Mar 2019 14:45:24 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:465f142ed43499dcccac584658b9e30b81b41f3ca9e9863cfa195c7a684b0de7`  
		Last Modified: Sat, 09 Mar 2019 15:32:59 GMT  
		Size: 1.4 MB (1431095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a8e690faa455d4ce6b6ca4812cce70f48ec7bab393dd167f2ea4a6b56a578f2`  
		Last Modified: Sat, 09 Mar 2019 15:33:02 GMT  
		Size: 11.2 MB (11154790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c233d79b70d24f3d32eb56fec48be3b6c0ff91e78f23e9b3466f1bf65d9fc5b3`  
		Last Modified: Sat, 09 Mar 2019 15:32:57 GMT  
		Size: 553.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e097fd286a41d8e3cf96b3eb99769524a86f95682bd67abbf0abb9f6a4c15fb4`  
		Last Modified: Sat, 09 Mar 2019 15:32:58 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:beb7faeb2d5f53af852ed05b0a56a7cc0c06698e173c84d8f69ed0da10ed1786`  
		Last Modified: Thu, 14 Mar 2019 12:05:28 GMT  
		Size: 65.3 MB (65339774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cc6a4266266e0b87e47b9ae3622fbb76c56cbde5f127dcfebf14c1eb9388706`  
		Last Modified: Thu, 14 Mar 2019 12:05:04 GMT  
		Size: 1.9 KB (1908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72e0e79988f9c6d0b22404076bab414c23b95b61a7954d2e7d8622b62d9e98ae`  
		Last Modified: Thu, 14 Mar 2019 12:05:04 GMT  
		Size: 921.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nextcloud:16-alpha-apache` - linux; arm64 variant v8

```console
$ docker pull nextcloud@sha256:c7367c5c7c112ac7dc21b30a717536c4068592a4be2d40f1522b5433ad3dc857
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.8 MB (199848233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6571b702e472fb748f616a6b14c0768b8b3daf186d5900c7e636551f262f74ac`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 12:24:58 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 06 Feb 2019 12:24:59 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 06 Feb 2019 12:31:31 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 06 Feb 2019 12:31:38 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 06 Feb 2019 12:31:48 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 06 Feb 2019 12:45:35 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 06 Feb 2019 12:45:35 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 06 Feb 2019 12:46:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Wed, 06 Feb 2019 12:46:15 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 06 Feb 2019 12:46:17 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 06 Feb 2019 12:46:18 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 06 Feb 2019 12:46:19 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 06 Feb 2019 12:46:19 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 12:46:20 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 06 Feb 2019 12:46:21 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 06 Feb 2019 14:20:04 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Sat, 09 Mar 2019 12:03:08 GMT
ENV PHP_VERSION=7.2.16
# Sat, 09 Mar 2019 12:03:09 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.16.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.16.tar.xz.asc/from/this/mirror
# Sat, 09 Mar 2019 12:03:10 GMT
ENV PHP_SHA256=7d91ed3c1447c6358a3d53f84599ef854aca4c3622de7435e2df115bf196e482 PHP_MD5=
# Sat, 09 Mar 2019 12:03:45 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 09 Mar 2019 12:03:46 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Mar 2019 12:12:22 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Mar 2019 12:12:24 GMT
COPY multi:0002d7d5b06fb24f987aa4b027705dc71f81957419a02be5b9014431514c25b5 in /usr/local/bin/ 
# Sat, 09 Mar 2019 12:12:29 GMT
RUN docker-php-ext-enable sodium
# Sat, 09 Mar 2019 12:12:30 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Mar 2019 12:12:31 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Sat, 09 Mar 2019 12:12:32 GMT
WORKDIR /var/www/html
# Sat, 09 Mar 2019 12:12:34 GMT
EXPOSE 80
# Sat, 09 Mar 2019 12:12:35 GMT
CMD ["apache2-foreground"]
# Sat, 09 Mar 2019 15:51:31 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         rsync         bzip2         busybox-static     ;     rm -rf /var/lib/apt/lists/*;         mkdir -p /var/spool/cron/crontabs;     echo '*/15 * * * * php -f /var/www/html/cron.php' > /var/spool/cron/crontabs/www-data
# Sat, 09 Mar 2019 16:05:36 GMT
RUN set -ex;         savedAptMark="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         libcurl4-openssl-dev         libevent-dev         libfreetype6-dev         libicu-dev         libjpeg-dev         libldap2-dev         libmcrypt-dev         libmemcached-dev         libpng-dev         libpq-dev         libxml2-dev         libmagickwand-dev     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";     docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr;     docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch";     docker-php-ext-install         exif         gd         intl         ldap         opcache         pcntl         pdo_mysql         pdo_pgsql         zip     ;         pecl install APCu-5.1.17;     pecl install memcached-3.1.3;     pecl install redis-4.2.0;     pecl install imagick-3.4.3;         docker-php-ext-enable         apcu         memcached         redis         imagick     ;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { print $3 }'         | sort -u         | xargs -r dpkg-query -S         | cut -d: -f1         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*
# Sat, 09 Mar 2019 16:05:39 GMT
RUN {         echo 'opcache.enable=1';         echo 'opcache.enable_cli=1';         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=128';         echo 'opcache.save_comments=1';         echo 'opcache.revalidate_freq=1';     } > /usr/local/etc/php/conf.d/opcache-recommended.ini;         echo 'apc.enable_cli=1' >> /usr/local/etc/php/conf.d/docker-php-ext-apcu.ini;         echo 'memory_limit=512M' > /usr/local/etc/php/conf.d/memory-limit.ini;         mkdir /var/www/data;     chown -R www-data:root /var/www;     chmod -R g=u /var/www
# Sat, 09 Mar 2019 16:05:40 GMT
VOLUME [/var/www/html]
# Sat, 09 Mar 2019 16:05:44 GMT
RUN a2enmod rewrite remoteip ;    {     echo RemoteIPHeader X-Real-IP ;     echo RemoteIPTrustedProxy 10.0.0.0/8 ;     echo RemoteIPTrustedProxy 172.16.0.0/12 ;     echo RemoteIPTrustedProxy 192.168.0.0/16 ;    } > /etc/apache2/conf-available/remoteip.conf;    a2enconf remoteip
# Thu, 14 Mar 2019 09:08:57 GMT
ENV NEXTCLOUD_VERSION=16.0.0alpha1
# Thu, 14 Mar 2019 09:10:28 GMT
RUN set -ex;     fetchDeps="         gnupg         dirmngr     ";     apt-get update;     apt-get install -y --no-install-recommends $fetchDeps;         curl -fsSL -o nextcloud.tar.bz2         "https://download.nextcloud.com/server/prereleases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2";     curl -fsSL -o nextcloud.tar.bz2.asc         "https://download.nextcloud.com/server/prereleases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A;     gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2;     tar -xjf nextcloud.tar.bz2 -C /usr/src/;     gpgconf --kill all;     rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc nextcloud.tar.bz2;     rm -rf /usr/src/nextcloud/updater;     mkdir -p /usr/src/nextcloud/data;     mkdir -p /usr/src/nextcloud/custom_apps;     chmod +x /usr/src/nextcloud/occ;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps;     rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:10:30 GMT
COPY multi:e3ee4b7af51dcf3ed52441ed3dff61bf962f6e147370b5b9bbbc163fc54eb8f6 in / 
# Thu, 14 Mar 2019 09:10:32 GMT
COPY multi:99ef5f8cff1e4ea70df1acc5f5f5da22fd63ce35761265628aa6550bb64b164c in /usr/src/nextcloud/config/ 
# Thu, 14 Mar 2019 09:10:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 14 Mar 2019 09:10:33 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:518eb52b4a3a860bcfc922331cd0ea8bf6ad47f75ec667caa307e16d8baa5410`  
		Last Modified: Wed, 06 Feb 2019 17:19:36 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:996a35cea3e961a42a63f257f109b89005fb0360237f57be674793657965908d`  
		Last Modified: Wed, 06 Feb 2019 17:20:23 GMT  
		Size: 57.6 MB (57606807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aa19ab4f7638b5f56fd0000504a9c8fd568d1d332b33f2741aff68aeb62ce1d`  
		Last Modified: Wed, 06 Feb 2019 17:19:36 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40403e48c6ebda8a16186ba4b1356fd0bfa1247f3bc48ae149c060faf36484e1`  
		Last Modified: Wed, 06 Feb 2019 17:21:32 GMT  
		Size: 16.7 MB (16708644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc59b699be357473e8059d5364a6e6d4c96360e70e7fabce4511d31e2db5222e`  
		Last Modified: Wed, 06 Feb 2019 17:21:11 GMT  
		Size: 436.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00a301fc2c088be620d5e812ee777c938024a64cf08722bc5883503f8a80dc8f`  
		Last Modified: Wed, 06 Feb 2019 17:21:11 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c245ba49aa970d2545ad89b12d50f39d6f4fec5a53397e650110785ed0c4901`  
		Last Modified: Sat, 09 Mar 2019 14:58:47 GMT  
		Size: 12.5 MB (12513778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc1514e1ef0cb5d7a67217adc905ae1910bb98e031baaf8887288153b6373af3`  
		Last Modified: Sat, 09 Mar 2019 14:58:43 GMT  
		Size: 502.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45396fe9be086f4347b843c89994758fc9025b8d5d307fb263e656026fb67f8e`  
		Last Modified: Sat, 09 Mar 2019 14:58:49 GMT  
		Size: 14.6 MB (14581701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73401b631b5e35b7095cbd94f15c1cf381f72564bb96bb5c2bd6f653e7755864`  
		Last Modified: Sat, 09 Mar 2019 14:58:44 GMT  
		Size: 2.2 KB (2205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e90c531fe4738b1d608296c758804cb8e89ff72e469673a669375e3ee2343968`  
		Last Modified: Sat, 09 Mar 2019 14:58:43 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0f1bbf18396e65ea22a9455c6ec3af48a7d3b4a33df7e9fb5dfee268fd0bd44`  
		Last Modified: Sat, 09 Mar 2019 14:58:43 GMT  
		Size: 906.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33080ea4e523b49a0bb83bca05ec7e2600c1b53f377a0e2a9f1818204c81ed56`  
		Last Modified: Sat, 09 Mar 2019 16:41:53 GMT  
		Size: 1.5 MB (1525516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86289a4e15ad278ce3086a0b8a8f28837fd9f7c2e02cda5d26f5f200f2e887d1`  
		Last Modified: Sat, 09 Mar 2019 16:41:57 GMT  
		Size: 11.2 MB (11209999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03556f19ec9bdf79f247f3c393bfcc8f5bbf6426f614ae7e1dbc95ab32f51c1a`  
		Last Modified: Sat, 09 Mar 2019 16:41:51 GMT  
		Size: 522.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06b45ae8d8045ecc5601a4d21d7b7cf30bd4f8a4b8f4847eaecf937c7719ad4f`  
		Last Modified: Sat, 09 Mar 2019 16:41:51 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:456f7c47ae4a77c140abb8a5d07b406a06c319a785e52b11ffc0b66884366c70`  
		Last Modified: Thu, 14 Mar 2019 09:15:18 GMT  
		Size: 65.3 MB (65342470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:449ec2433e3f643f9ead2981b21c6aeccb93e02792ce5ae9fa1ef04953f0fc27`  
		Last Modified: Thu, 14 Mar 2019 09:14:45 GMT  
		Size: 1.9 KB (1906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8437668659c7c5d5b40e91a9b95cef1b35a01213599bd1877962b95279fc9e50`  
		Last Modified: Thu, 14 Mar 2019 09:14:45 GMT  
		Size: 920.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nextcloud:16-alpha-apache` - linux; 386

```console
$ docker pull nextcloud@sha256:b6222bd71fed481bd4918e76c527c9deea0b1b5b013e95b87a79765dbeae1881
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.6 MB (219623505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29fe9195a5f82a854ae56b0bf4cbd61f40d1bbaaf85d12488d136e7a680d37cd`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 05 Mar 2019 11:45:43 GMT
ADD file:25fe90430e63a83798c7fa241ebe3a89591a059654422474b19d5610b104a639 in / 
# Tue, 05 Mar 2019 11:45:44 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 17:52:21 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 05 Mar 2019 17:52:21 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 05 Mar 2019 17:52:44 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 05 Mar 2019 17:52:44 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 05 Mar 2019 17:52:45 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Tue, 05 Mar 2019 17:58:37 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 05 Mar 2019 17:58:37 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 05 Mar 2019 17:58:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Tue, 05 Mar 2019 17:58:48 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 05 Mar 2019 17:58:49 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 05 Mar 2019 17:58:49 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 05 Mar 2019 17:58:49 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Tue, 05 Mar 2019 17:58:50 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 05 Mar 2019 17:58:50 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 05 Mar 2019 17:58:50 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 05 Mar 2019 18:20:58 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Sat, 09 Mar 2019 14:41:16 GMT
ENV PHP_VERSION=7.2.16
# Sat, 09 Mar 2019 14:41:16 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.16.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.16.tar.xz.asc/from/this/mirror
# Sat, 09 Mar 2019 14:41:16 GMT
ENV PHP_SHA256=7d91ed3c1447c6358a3d53f84599ef854aca4c3622de7435e2df115bf196e482 PHP_MD5=
# Sat, 09 Mar 2019 14:41:27 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 09 Mar 2019 14:41:27 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Mar 2019 14:44:55 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Mar 2019 14:44:55 GMT
COPY multi:0002d7d5b06fb24f987aa4b027705dc71f81957419a02be5b9014431514c25b5 in /usr/local/bin/ 
# Sat, 09 Mar 2019 14:44:56 GMT
RUN docker-php-ext-enable sodium
# Sat, 09 Mar 2019 14:44:56 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Mar 2019 14:44:56 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Sat, 09 Mar 2019 14:44:57 GMT
WORKDIR /var/www/html
# Sat, 09 Mar 2019 14:44:57 GMT
EXPOSE 80
# Sat, 09 Mar 2019 14:44:57 GMT
CMD ["apache2-foreground"]
# Sat, 09 Mar 2019 18:35:15 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         rsync         bzip2         busybox-static     ;     rm -rf /var/lib/apt/lists/*;         mkdir -p /var/spool/cron/crontabs;     echo '*/15 * * * * php -f /var/www/html/cron.php' > /var/spool/cron/crontabs/www-data
# Sat, 09 Mar 2019 18:39:08 GMT
RUN set -ex;         savedAptMark="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         libcurl4-openssl-dev         libevent-dev         libfreetype6-dev         libicu-dev         libjpeg-dev         libldap2-dev         libmcrypt-dev         libmemcached-dev         libpng-dev         libpq-dev         libxml2-dev         libmagickwand-dev     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";     docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr;     docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch";     docker-php-ext-install         exif         gd         intl         ldap         opcache         pcntl         pdo_mysql         pdo_pgsql         zip     ;         pecl install APCu-5.1.17;     pecl install memcached-3.1.3;     pecl install redis-4.2.0;     pecl install imagick-3.4.3;         docker-php-ext-enable         apcu         memcached         redis         imagick     ;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { print $3 }'         | sort -u         | xargs -r dpkg-query -S         | cut -d: -f1         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*
# Sat, 09 Mar 2019 18:39:09 GMT
RUN {         echo 'opcache.enable=1';         echo 'opcache.enable_cli=1';         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=128';         echo 'opcache.save_comments=1';         echo 'opcache.revalidate_freq=1';     } > /usr/local/etc/php/conf.d/opcache-recommended.ini;         echo 'apc.enable_cli=1' >> /usr/local/etc/php/conf.d/docker-php-ext-apcu.ini;         echo 'memory_limit=512M' > /usr/local/etc/php/conf.d/memory-limit.ini;         mkdir /var/www/data;     chown -R www-data:root /var/www;     chmod -R g=u /var/www
# Sat, 09 Mar 2019 18:39:09 GMT
VOLUME [/var/www/html]
# Sat, 09 Mar 2019 18:39:10 GMT
RUN a2enmod rewrite remoteip ;    {     echo RemoteIPHeader X-Real-IP ;     echo RemoteIPTrustedProxy 10.0.0.0/8 ;     echo RemoteIPTrustedProxy 172.16.0.0/12 ;     echo RemoteIPTrustedProxy 192.168.0.0/16 ;    } > /etc/apache2/conf-available/remoteip.conf;    a2enconf remoteip
# Thu, 14 Mar 2019 11:19:24 GMT
ENV NEXTCLOUD_VERSION=16.0.0alpha1
# Thu, 14 Mar 2019 11:19:58 GMT
RUN set -ex;     fetchDeps="         gnupg         dirmngr     ";     apt-get update;     apt-get install -y --no-install-recommends $fetchDeps;         curl -fsSL -o nextcloud.tar.bz2         "https://download.nextcloud.com/server/prereleases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2";     curl -fsSL -o nextcloud.tar.bz2.asc         "https://download.nextcloud.com/server/prereleases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A;     gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2;     tar -xjf nextcloud.tar.bz2 -C /usr/src/;     gpgconf --kill all;     rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc nextcloud.tar.bz2;     rm -rf /usr/src/nextcloud/updater;     mkdir -p /usr/src/nextcloud/data;     mkdir -p /usr/src/nextcloud/custom_apps;     chmod +x /usr/src/nextcloud/occ;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps;     rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 11:19:59 GMT
COPY multi:e3ee4b7af51dcf3ed52441ed3dff61bf962f6e147370b5b9bbbc163fc54eb8f6 in / 
# Thu, 14 Mar 2019 11:20:00 GMT
COPY multi:99ef5f8cff1e4ea70df1acc5f5f5da22fd63ce35761265628aa6550bb64b164c in /usr/src/nextcloud/config/ 
# Thu, 14 Mar 2019 11:20:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 14 Mar 2019 11:20:00 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:14de7d5deca96a0d1b115104a4375816794d85fc365ada5173b5a806f0d8dbcf`  
		Last Modified: Tue, 05 Mar 2019 11:55:10 GMT  
		Size: 23.1 MB (23125680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63213c0ecba3bcf801c043de08405df1f08eff7223230c1e93ce299814156a9a`  
		Last Modified: Tue, 05 Mar 2019 19:54:25 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb58d27f17810e06fa358b9c0528c3fcca254284107a72c87606489b096ef55a`  
		Last Modified: Tue, 05 Mar 2019 19:54:43 GMT  
		Size: 71.5 MB (71515728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0df0dd6517a9c22e9bc50360a86757ca3f545b03528664a5fd69a3ff137e0c2f`  
		Last Modified: Tue, 05 Mar 2019 19:54:24 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70272210b6ed6de6295c5ae90ed24a11b5521480ab71d463a757625ab8af964a`  
		Last Modified: Tue, 05 Mar 2019 19:55:05 GMT  
		Size: 17.6 MB (17558787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be0647b90a7ce64880e865575bfa6335f1c605e2b4b6ac2b505672203c96b30c`  
		Last Modified: Tue, 05 Mar 2019 19:55:01 GMT  
		Size: 431.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9d856b8381a7b6e7914604075c03705f9d558539161b826ec24102c66dfed3c`  
		Last Modified: Tue, 05 Mar 2019 19:55:00 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74454c9d9846fff284842be9750013191d23cec65a3f902c08db67ab1e3b5211`  
		Last Modified: Sat, 09 Mar 2019 17:20:57 GMT  
		Size: 12.5 MB (12514549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07174952656f84f52ccaee4dd47d30b177b35c1b56150c4b46ef6e054ef1387b`  
		Last Modified: Sat, 09 Mar 2019 17:20:55 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d2e472d49f6e0bf9afab1e88b335bf5d3a0c1f60be923d3ac1b273acfb50103`  
		Last Modified: Sat, 09 Mar 2019 17:20:59 GMT  
		Size: 15.7 MB (15694867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:373ee5ead730f049990da8748436f45342e2118e48d5abfa38de88b53c13d341`  
		Last Modified: Sat, 09 Mar 2019 17:20:55 GMT  
		Size: 2.2 KB (2203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8e7eed042e982e59554f4e869607b1eb8a6544af1322174aca6aaef75829503`  
		Last Modified: Sat, 09 Mar 2019 17:20:55 GMT  
		Size: 261.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f03d11b1160890317fcdf03f35f63e7902130c642ede5214a3bd957e1e0fa629`  
		Last Modified: Sat, 09 Mar 2019 17:20:55 GMT  
		Size: 903.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:495d20695b2b0b2625cae03cb13a57ddd503bdabb920f7c09231ce45e341030e`  
		Last Modified: Sat, 09 Mar 2019 18:51:10 GMT  
		Size: 1.6 MB (1613595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9323b03f96d014a5746ab64ee935e562f6a1e07a932922bcaec972919a30f71a`  
		Last Modified: Sat, 09 Mar 2019 18:51:13 GMT  
		Size: 12.3 MB (12250309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d61d0930842d4665b17011854ce667d6e589836a93f5bd2fef021393d1f6fd2`  
		Last Modified: Sat, 09 Mar 2019 18:51:09 GMT  
		Size: 525.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35ed9c8d1d875a2adc4edc9b82cf320c7af9139b97e9703ad616ad445a84efd4`  
		Last Modified: Sat, 09 Mar 2019 18:51:09 GMT  
		Size: 540.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7c06cac7286ae4d78026e57fc2295cc10391e9864327e70cdb5f32da560cb4d`  
		Last Modified: Thu, 14 Mar 2019 11:21:55 GMT  
		Size: 65.3 MB (65340844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4d5acbb4255247fd1608839d561239cd1cc4a836ecb0493f4d29d5a00ee5767`  
		Last Modified: Thu, 14 Mar 2019 11:21:39 GMT  
		Size: 1.9 KB (1908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddd7849fd1a64e7efe03cbed4c1f1688daefa8e3196af27eb1e6a85f4b7d4289`  
		Last Modified: Thu, 14 Mar 2019 11:21:39 GMT  
		Size: 920.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nextcloud:16-alpha-apache` - linux; ppc64le

```console
$ docker pull nextcloud@sha256:d3d38b33c472d65266e1f60e235d0c7cd3ce4964066c1efa596b60c09bad23c5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.4 MB (208427407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4859b41b457e5734a40b079c749b1bb6933c3eaeddd12f3166a0e244693ebcfb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 05 Mar 2019 09:25:57 GMT
ADD file:499a43a96e8ab3c7c8ab9d1c3260d34bb2b955e9751ada2b98194e42f9578be3 in / 
# Tue, 05 Mar 2019 09:26:02 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 14:19:44 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 05 Mar 2019 14:19:47 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 05 Mar 2019 14:22:29 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 05 Mar 2019 14:22:35 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 05 Mar 2019 14:22:47 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Tue, 05 Mar 2019 14:29:40 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 05 Mar 2019 14:29:42 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 05 Mar 2019 14:30:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Tue, 05 Mar 2019 14:30:40 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 05 Mar 2019 14:30:44 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 05 Mar 2019 14:30:46 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 05 Mar 2019 14:30:48 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Tue, 05 Mar 2019 14:30:50 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 05 Mar 2019 14:30:53 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 05 Mar 2019 14:30:54 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 05 Mar 2019 14:55:53 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Sat, 09 Mar 2019 10:25:49 GMT
ENV PHP_VERSION=7.2.16
# Sat, 09 Mar 2019 10:25:53 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.2.16.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.2.16.tar.xz.asc/from/this/mirror
# Sat, 09 Mar 2019 10:25:56 GMT
ENV PHP_SHA256=7d91ed3c1447c6358a3d53f84599ef854aca4c3622de7435e2df115bf196e482 PHP_MD5=
# Sat, 09 Mar 2019 10:27:00 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 09 Mar 2019 10:27:02 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 09 Mar 2019 10:32:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 09 Mar 2019 10:32:10 GMT
COPY multi:0002d7d5b06fb24f987aa4b027705dc71f81957419a02be5b9014431514c25b5 in /usr/local/bin/ 
# Sat, 09 Mar 2019 10:32:17 GMT
RUN docker-php-ext-enable sodium
# Sat, 09 Mar 2019 10:32:19 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 09 Mar 2019 10:32:22 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Sat, 09 Mar 2019 10:32:25 GMT
WORKDIR /var/www/html
# Sat, 09 Mar 2019 10:32:27 GMT
EXPOSE 80
# Sat, 09 Mar 2019 10:32:30 GMT
CMD ["apache2-foreground"]
# Sat, 09 Mar 2019 13:09:58 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         rsync         bzip2         busybox-static     ;     rm -rf /var/lib/apt/lists/*;         mkdir -p /var/spool/cron/crontabs;     echo '*/15 * * * * php -f /var/www/html/cron.php' > /var/spool/cron/crontabs/www-data
# Sat, 09 Mar 2019 13:20:08 GMT
RUN set -ex;         savedAptMark="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         libcurl4-openssl-dev         libevent-dev         libfreetype6-dev         libicu-dev         libjpeg-dev         libldap2-dev         libmcrypt-dev         libmemcached-dev         libpng-dev         libpq-dev         libxml2-dev         libmagickwand-dev     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";     docker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr;     docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch";     docker-php-ext-install         exif         gd         intl         ldap         opcache         pcntl         pdo_mysql         pdo_pgsql         zip     ;         pecl install APCu-5.1.17;     pecl install memcached-3.1.3;     pecl install redis-4.2.0;     pecl install imagick-3.4.3;         docker-php-ext-enable         apcu         memcached         redis         imagick     ;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { print $3 }'         | sort -u         | xargs -r dpkg-query -S         | cut -d: -f1         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*
# Sat, 09 Mar 2019 13:20:16 GMT
RUN {         echo 'opcache.enable=1';         echo 'opcache.enable_cli=1';         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=128';         echo 'opcache.save_comments=1';         echo 'opcache.revalidate_freq=1';     } > /usr/local/etc/php/conf.d/opcache-recommended.ini;         echo 'apc.enable_cli=1' >> /usr/local/etc/php/conf.d/docker-php-ext-apcu.ini;         echo 'memory_limit=512M' > /usr/local/etc/php/conf.d/memory-limit.ini;         mkdir /var/www/data;     chown -R www-data:root /var/www;     chmod -R g=u /var/www
# Sat, 09 Mar 2019 13:20:19 GMT
VOLUME [/var/www/html]
# Sat, 09 Mar 2019 13:20:27 GMT
RUN a2enmod rewrite remoteip ;    {     echo RemoteIPHeader X-Real-IP ;     echo RemoteIPTrustedProxy 10.0.0.0/8 ;     echo RemoteIPTrustedProxy 172.16.0.0/12 ;     echo RemoteIPTrustedProxy 192.168.0.0/16 ;    } > /etc/apache2/conf-available/remoteip.conf;    a2enconf remoteip
# Thu, 14 Mar 2019 08:21:40 GMT
ENV NEXTCLOUD_VERSION=16.0.0alpha1
# Thu, 14 Mar 2019 08:23:20 GMT
RUN set -ex;     fetchDeps="         gnupg         dirmngr     ";     apt-get update;     apt-get install -y --no-install-recommends $fetchDeps;         curl -fsSL -o nextcloud.tar.bz2         "https://download.nextcloud.com/server/prereleases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2";     curl -fsSL -o nextcloud.tar.bz2.asc         "https://download.nextcloud.com/server/prereleases/nextcloud-${NEXTCLOUD_VERSION}.tar.bz2.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 28806A878AE423A28372792ED75899B9A724937A;     gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2;     tar -xjf nextcloud.tar.bz2 -C /usr/src/;     gpgconf --kill all;     rm -r "$GNUPGHOME" nextcloud.tar.bz2.asc nextcloud.tar.bz2;     rm -rf /usr/src/nextcloud/updater;     mkdir -p /usr/src/nextcloud/data;     mkdir -p /usr/src/nextcloud/custom_apps;     chmod +x /usr/src/nextcloud/occ;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps;     rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 08:23:23 GMT
COPY multi:e3ee4b7af51dcf3ed52441ed3dff61bf962f6e147370b5b9bbbc163fc54eb8f6 in / 
# Thu, 14 Mar 2019 08:23:24 GMT
COPY multi:99ef5f8cff1e4ea70df1acc5f5f5da22fd63ce35761265628aa6550bb64b164c in /usr/src/nextcloud/config/ 
# Thu, 14 Mar 2019 08:23:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 14 Mar 2019 08:23:29 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:1a1c20c0e1fe9ea9a7ae86ac61ed89ee8cf01dccfb363d582cb8c910510c06fb`  
		Last Modified: Tue, 05 Mar 2019 09:32:10 GMT  
		Size: 22.8 MB (22751497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53a64583b8600298db46917e031f985839162e11f98a8d10a50dd49257df26b1`  
		Last Modified: Tue, 05 Mar 2019 15:47:12 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe3fb84f58dbd1ee39fcf39d6dbf5a55dcae5f21a0225fc3a08e1fc44f3507b1`  
		Last Modified: Tue, 05 Mar 2019 15:47:36 GMT  
		Size: 61.8 MB (61832970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baf73effcf62d2b34eda9d6fdce5dab5343e30e063c5ab7556c8df95b73dd53a`  
		Last Modified: Tue, 05 Mar 2019 15:47:11 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93960c49903b7f804082184e3d38a97cd202299916f879fe12f14dad9418f0c3`  
		Last Modified: Tue, 05 Mar 2019 15:48:38 GMT  
		Size: 17.3 MB (17345442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:492eed5353ab4f899710bc4b2d7ab8cc70821c4aaff1c48318d5c5c6c3830cb2`  
		Last Modified: Tue, 05 Mar 2019 15:48:31 GMT  
		Size: 476.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee3ccae8b6196e7930e1f2138f01fc3d7d6f5948caa7a7b7ef184260a42426d1`  
		Last Modified: Tue, 05 Mar 2019 15:48:30 GMT  
		Size: 518.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a2fd1dd904c9bb6bb9b615ca2d8963231e813249b11d69f34f7ae2b76a967d3`  
		Last Modified: Sat, 09 Mar 2019 12:13:15 GMT  
		Size: 12.5 MB (12513863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7e5a6c7b1442e7deb3e979257235f123e1f5f29317af67ea65b4b370b04e4a7`  
		Last Modified: Sat, 09 Mar 2019 12:13:10 GMT  
		Size: 503.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f46dc605cea1290baed7c707b7c8e607069edd097ecb9762a87e9f63eb3482f`  
		Last Modified: Sat, 09 Mar 2019 12:13:17 GMT  
		Size: 15.0 MB (15047676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abbd9ebde0301b85ecc7fc2dc5a1db022dddf9cf166773434d67fdeba01ccc77`  
		Last Modified: Sat, 09 Mar 2019 12:13:10 GMT  
		Size: 2.2 KB (2206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7911ddf475a8f77925eaf0e9caf245bc7545330ee324f4d04c7677fc0a79386`  
		Last Modified: Sat, 09 Mar 2019 12:13:10 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca06c6e7f8df73fa8657ed69c40ef56056f67aab58e7436bf11c200f0e588956`  
		Last Modified: Sat, 09 Mar 2019 12:13:10 GMT  
		Size: 906.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0c697029c603a5e71006d24c9a6a38c51862c3e2d43105d8960be003cae1823`  
		Last Modified: Sat, 09 Mar 2019 13:44:45 GMT  
		Size: 1.6 MB (1635971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cc778687c5e09a7a1de00644e2c760763e42423e9c69cf5af64d27ee6c89eab`  
		Last Modified: Sat, 09 Mar 2019 13:44:50 GMT  
		Size: 11.9 MB (11948558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5e26af7cfb627091f243fa3c910779d0688b6312f152d7c43e47fd5b56c0721`  
		Last Modified: Sat, 09 Mar 2019 13:44:41 GMT  
		Size: 552.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abcfba8e6e9543cb9ad745559433ea4a5980013ec07d64770c34cd0ef4011faa`  
		Last Modified: Sat, 09 Mar 2019 13:44:42 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b337921ea219258f2f6d513b5190897acd04f77f4778c1c54c82fb7060ca881b`  
		Last Modified: Thu, 14 Mar 2019 08:28:24 GMT  
		Size: 65.3 MB (65342123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7453ac3773a84652df883187df9df26b7351dc7dfa682a205fcc51d2c81c1f5`  
		Last Modified: Thu, 14 Mar 2019 08:28:07 GMT  
		Size: 1.9 KB (1908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcf24fb6f6bedff370940300ca802de0486ff4a5ba0faa14acc1b3ea962ce473`  
		Last Modified: Thu, 14 Mar 2019 08:28:07 GMT  
		Size: 917.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
