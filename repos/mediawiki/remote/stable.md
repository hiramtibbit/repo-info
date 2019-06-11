## `mediawiki:stable`

```console
$ docker pull mediawiki@sha256:0e435b1ed3470fff43825d35d296e1efe735b6268f73ff62d1263e21f492cf64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `mediawiki:stable` - linux; amd64

```console
$ docker pull mediawiki@sha256:c4316689d30e9e8814bd91d3745239efdd7c4931d4e945ca9a2754a82b8eca90
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.3 MB (204318916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f07b968264c347bfb5e4666ac5edd0160cedc77050e3780b779982f89d4956f6`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 02:29:59 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 08 May 2019 02:29:59 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 08 May 2019 02:30:20 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 08 May 2019 02:30:21 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 08 May 2019 02:30:21 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 08 May 2019 02:37:00 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 08 May 2019 02:37:00 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 08 May 2019 02:37:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Wed, 08 May 2019 02:37:13 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 08 May 2019 02:37:14 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 08 May 2019 02:37:15 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 08 May 2019 02:37:15 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 08 May 2019 02:37:16 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 02:37:16 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 02:37:17 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 08 May 2019 03:02:10 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Sat, 01 Jun 2019 00:53:27 GMT
ENV PHP_VERSION=7.2.19
# Sat, 01 Jun 2019 00:53:27 GMT
ENV PHP_URL=https://www.php.net/get/php-7.2.19.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.2.19.tar.xz.asc/from/this/mirror
# Sat, 01 Jun 2019 00:53:27 GMT
ENV PHP_SHA256=4ffa2404a88d60e993a9fe69f829ebec3eb1e006de41b6048ce5e91bbeaa9282 PHP_MD5=
# Sat, 01 Jun 2019 00:53:41 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 01 Jun 2019 00:53:42 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 01 Jun 2019 01:00:21 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 01 Jun 2019 01:00:22 GMT
COPY multi:0002d7d5b06fb24f987aa4b027705dc71f81957419a02be5b9014431514c25b5 in /usr/local/bin/ 
# Sat, 01 Jun 2019 01:00:24 GMT
RUN docker-php-ext-enable sodium
# Sat, 01 Jun 2019 01:00:24 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 01 Jun 2019 01:00:24 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Sat, 01 Jun 2019 01:00:25 GMT
WORKDIR /var/www/html
# Sat, 01 Jun 2019 01:00:25 GMT
EXPOSE 80
# Sat, 01 Jun 2019 01:00:25 GMT
CMD ["apache2-foreground"]
# Sat, 01 Jun 2019 05:03:24 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		git 		imagemagick 		python3 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 05:06:47 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libicu-dev 	; 		docker-php-ext-install 		intl 		mbstring 		mysqli 		opcache 	; 		pecl install apcu-5.1.16; 	docker-php-ext-enable 		apcu 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 05:06:49 GMT
RUN a2enmod rewrite   && {       echo '<Directory /var/www/html>';       echo '  RewriteEngine On';       echo '  RewriteCond %{REQUEST_FILENAME} !-f';       echo '  RewriteCond %{REQUEST_FILENAME} !-d';       echo '  RewriteRule ^ %{DOCUMENT_ROOT}/index.php [L]';       echo '</Directory>';     } > "$APACHE_CONFDIR/conf-available/short-url.conf"   && a2enconf short-url
# Sat, 01 Jun 2019 05:06:50 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 01 Jun 2019 05:06:51 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 01 Jun 2019 05:06:52 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.32
# Sat, 01 Jun 2019 05:06:52 GMT
ENV MEDIAWIKI_BRANCH=REL1_32
# Thu, 06 Jun 2019 23:19:47 GMT
ENV MEDIAWIKI_VERSION=1.32.2
# Thu, 06 Jun 2019 23:19:47 GMT
ENV MEDIAWIKI_SHA512=79f13245fe2a8851780ac9f38c3f439a4911f6760e810712922b18c577e3ee6e4b0f3e336c567f6115258aebd5fc5e7c6c1045f43b5d0f615bfdcfb54fd16335
# Thu, 06 Jun 2019 23:19:55 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6307e89982cc66cd480a6f5cfe17fabddae5e6ae4e735d8f0bf857892d299772`  
		Last Modified: Wed, 08 May 2019 04:41:06 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:807218e72ce2aeb1df368e9757482e7304772ccf439962eb68d1731a0b023802`  
		Last Modified: Wed, 08 May 2019 04:41:20 GMT  
		Size: 67.4 MB (67447543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5108df1d03f88b91e3a940361ab6bc2d60d60a6f52a1ba29d8283a00d71cb0c8`  
		Last Modified: Wed, 08 May 2019 04:41:06 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:901e0b6a7fe58d5615158528d37602cd806ecab9718a880d76f85d609742f5ea`  
		Last Modified: Wed, 08 May 2019 04:41:48 GMT  
		Size: 17.1 MB (17124934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ffe11e7ab2c09aa7e0167044fe111b6a03a5e93f517405f4c416e3220e0b197`  
		Last Modified: Wed, 08 May 2019 04:41:43 GMT  
		Size: 429.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da5f7a5079567ba0d853934f7275591bd53f6740d13e4499a15a9a109982f7e8`  
		Last Modified: Wed, 08 May 2019 04:41:43 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be114a9a8114d85ac24e7794e70b6ab0ef0e6788ab82fe9c849eff124a254559`  
		Last Modified: Sat, 01 Jun 2019 04:31:11 GMT  
		Size: 12.5 MB (12526344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45dc2aeacf0f52f70131189926257e6ca0c2fc5ec8cff815473cc9f6e3fdb445`  
		Last Modified: Sat, 01 Jun 2019 04:31:09 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61f4890ae9e0c2490cf31a8909cd9552e063e6fd1f9193fe26e075ad803018ce`  
		Last Modified: Sat, 01 Jun 2019 04:31:13 GMT  
		Size: 15.3 MB (15259008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78c584710fa3159d41346edef68edfb7e2e0c80dc94f4dcd8ce2be74d370aefc`  
		Last Modified: Sat, 01 Jun 2019 04:31:09 GMT  
		Size: 2.2 KB (2202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2e96665ef7b9c32b74d9f0add865cdefae8b51c66510228ae3c79fec7af6520`  
		Last Modified: Sat, 01 Jun 2019 04:31:09 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dea12204f19ee7f308ac00a4668875068e43da7a40e294f87cbbfbb77fec6ad`  
		Last Modified: Sat, 01 Jun 2019 04:31:09 GMT  
		Size: 903.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd8fd450dd050d23884978a7c382bb650c3d1f0fc5fc28653760fc8072ace603`  
		Last Modified: Sat, 01 Jun 2019 05:12:11 GMT  
		Size: 30.2 MB (30222378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624abe142985dfe4224957e2e204b64bfc94986c1f8cce3edbe74a30d89507cc`  
		Last Modified: Sat, 01 Jun 2019 05:12:03 GMT  
		Size: 2.6 MB (2553518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:def3c79b5e2eed7d1b3c1fa6d7ee3dd3c2a65d14b0dbce73f4f73e4c2b8aa75a`  
		Last Modified: Sat, 01 Jun 2019 05:12:03 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7df716375f63c36d762996f2b26e52d7c6c4ba65abb9d74a8a875710e2adeabf`  
		Last Modified: Sat, 01 Jun 2019 05:12:03 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45ab8b528cc91b4aadff0072af7b37a871e1dadcaa88a715b02552f21df2416f`  
		Last Modified: Sat, 01 Jun 2019 05:12:03 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f9216b95f12cff673d9ffdb6cc87d34ed66ed4ae0f8b7a0a79acba08216858b`  
		Last Modified: Thu, 06 Jun 2019 23:20:36 GMT  
		Size: 36.7 MB (36689526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:stable` - linux; arm variant v5

```console
$ docker pull mediawiki@sha256:9ff7ed0dd6f42d32ba8d82d94807df64cc923dabcf1f84925e01e6e3f947cf27
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.3 MB (190303249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bddd6596522766134d83d6e59a6203a0ae71fd81518214a67b4bdd20bd0f6d3e`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 08 May 2019 08:53:38 GMT
ADD file:d9cc007a953434e1439cc534f397967f4f0f1bf149f1288a52f6209eca436852 in / 
# Wed, 08 May 2019 08:53:39 GMT
CMD ["bash"]
# Wed, 08 May 2019 09:48:37 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 08 May 2019 09:48:38 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 08 May 2019 09:49:17 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 08 May 2019 09:49:18 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 08 May 2019 09:49:20 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 08 May 2019 09:53:54 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 08 May 2019 09:53:54 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 08 May 2019 09:54:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Wed, 08 May 2019 09:54:17 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 08 May 2019 09:54:18 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 08 May 2019 09:54:19 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 08 May 2019 09:54:19 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 08 May 2019 09:54:20 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 09:54:20 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 09:54:21 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 08 May 2019 10:11:33 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Sat, 01 Jun 2019 00:13:37 GMT
ENV PHP_VERSION=7.2.19
# Sat, 01 Jun 2019 00:13:38 GMT
ENV PHP_URL=https://www.php.net/get/php-7.2.19.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.2.19.tar.xz.asc/from/this/mirror
# Sat, 01 Jun 2019 00:13:38 GMT
ENV PHP_SHA256=4ffa2404a88d60e993a9fe69f829ebec3eb1e006de41b6048ce5e91bbeaa9282 PHP_MD5=
# Sat, 01 Jun 2019 00:13:58 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 01 Jun 2019 00:13:58 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 01 Jun 2019 00:17:32 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 01 Jun 2019 00:17:33 GMT
COPY multi:0002d7d5b06fb24f987aa4b027705dc71f81957419a02be5b9014431514c25b5 in /usr/local/bin/ 
# Sat, 01 Jun 2019 00:17:35 GMT
RUN docker-php-ext-enable sodium
# Sat, 01 Jun 2019 00:17:35 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 01 Jun 2019 00:17:36 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Sat, 01 Jun 2019 00:17:36 GMT
WORKDIR /var/www/html
# Sat, 01 Jun 2019 00:17:37 GMT
EXPOSE 80
# Sat, 01 Jun 2019 00:17:37 GMT
CMD ["apache2-foreground"]
# Sat, 01 Jun 2019 02:26:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		git 		imagemagick 		python3 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 02:30:08 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libicu-dev 	; 		docker-php-ext-install 		intl 		mbstring 		mysqli 		opcache 	; 		pecl install apcu-5.1.16; 	docker-php-ext-enable 		apcu 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 02:30:10 GMT
RUN a2enmod rewrite   && {       echo '<Directory /var/www/html>';       echo '  RewriteEngine On';       echo '  RewriteCond %{REQUEST_FILENAME} !-f';       echo '  RewriteCond %{REQUEST_FILENAME} !-d';       echo '  RewriteRule ^ %{DOCUMENT_ROOT}/index.php [L]';       echo '</Directory>';     } > "$APACHE_CONFDIR/conf-available/short-url.conf"   && a2enconf short-url
# Sat, 01 Jun 2019 02:30:12 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 01 Jun 2019 02:30:13 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 01 Jun 2019 02:30:14 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.32
# Sat, 01 Jun 2019 02:30:14 GMT
ENV MEDIAWIKI_BRANCH=REL1_32
# Thu, 06 Jun 2019 22:48:26 GMT
ENV MEDIAWIKI_VERSION=1.32.2
# Thu, 06 Jun 2019 22:48:26 GMT
ENV MEDIAWIKI_SHA512=79f13245fe2a8851780ac9f38c3f439a4911f6760e810712922b18c577e3ee6e4b0f3e336c567f6115258aebd5fc5e7c6c1045f43b5d0f615bfdcfb54fd16335
# Thu, 06 Jun 2019 22:48:43 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:f23f9ce99dc288927adafc8d503252a16b6ea2b40c9cb0dca688223c56bd0235`  
		Last Modified: Wed, 08 May 2019 08:59:29 GMT  
		Size: 21.2 MB (21155863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:375098c17606cf891dc6c2de639c2d9b69384583b36d1f12394d245cb131e539`  
		Last Modified: Wed, 08 May 2019 11:06:12 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:091ccac4f8817d1ccf73efd2fd3d421caaea5daab5cf6c0574ba160a012728d2`  
		Last Modified: Wed, 08 May 2019 11:06:33 GMT  
		Size: 57.5 MB (57477758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:825181d9c853e494b46e5d4a8d3eb39bb10ec9f0c5cab11f274faec90f876cef`  
		Last Modified: Wed, 08 May 2019 11:06:12 GMT  
		Size: 286.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:099d1d7d4434733003b46ad3c7824ce4e924bc48db25b33413a65c77ad3dfe2d`  
		Last Modified: Wed, 08 May 2019 11:07:08 GMT  
		Size: 16.7 MB (16651726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15629ed4b2662d162ebc33e2d122007c635a7254b4b55d0edf277dec13d74c9a`  
		Last Modified: Wed, 08 May 2019 11:07:03 GMT  
		Size: 474.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:560f7cc5ef807ab6fb5da234ac471e25d0aa2a5aa7015801be27d254ff521db0`  
		Last Modified: Wed, 08 May 2019 11:07:03 GMT  
		Size: 511.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df32f7a9b2f08479016d154d91afd1b2fa0ff2e4a352257c4fb51a63aaf8b02d`  
		Last Modified: Sat, 01 Jun 2019 01:15:28 GMT  
		Size: 12.5 MB (12524431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0c68434605bf878852626807456ff6d8ea9dd6471ea09f260e236c3497e8613`  
		Last Modified: Sat, 01 Jun 2019 01:15:24 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e09142a09324552b0e51e19a715ce31a622fa1225e6feaf11aae256e89ddb70`  
		Last Modified: Sat, 01 Jun 2019 01:15:31 GMT  
		Size: 14.4 MB (14437073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b345e81f1997c48b7694506985bef3dffbc597da936e526362af3ee8a1b2951`  
		Last Modified: Sat, 01 Jun 2019 01:15:24 GMT  
		Size: 2.2 KB (2204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f6d6e11b4d848ecda0d319dddf54d8583afb48316414071064f949575b56443`  
		Last Modified: Sat, 01 Jun 2019 01:15:25 GMT  
		Size: 262.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afc689b77a160847dc5ed98756528ee5349e02cb23547352fa1f14a44a3419c2`  
		Last Modified: Sat, 01 Jun 2019 01:15:24 GMT  
		Size: 905.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f75d84530645037cc8070cec1c647561afb6fbab0c800c9172f6965839633b48`  
		Last Modified: Sat, 01 Jun 2019 02:36:19 GMT  
		Size: 28.9 MB (28888933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd82164e306b36d62658e5f7b318b79e0b6976810962e695b86d617abf21e236`  
		Last Modified: Sat, 01 Jun 2019 02:36:08 GMT  
		Size: 2.5 MB (2471333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28f61e9b5ff034b4b44f72937ecfc9962293b52028fd95c9d1b144deda0813b9`  
		Last Modified: Sat, 01 Jun 2019 02:36:08 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7bdf3367ac37433a3a333c1022eca2c0a14a1ccf216ba724e02b41c6c79e847`  
		Last Modified: Sat, 01 Jun 2019 02:36:08 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cdf0a48a56b8ea00b669fc1605f4b9cb25c1e5df18925b9519869ca3f92b543`  
		Last Modified: Sat, 01 Jun 2019 02:36:08 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb337b10a92632b0ef94f82b592c8dbd8e84f4a50729c89f08f853d60e690325`  
		Last Modified: Thu, 06 Jun 2019 22:50:02 GMT  
		Size: 36.7 MB (36689658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:stable` - linux; arm variant v7

```console
$ docker pull mediawiki@sha256:77bef90c74fe24e0ba7618e621898bd7910510dbb92418180581f0d97de9342d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.1 MB (181077857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b7b24f10df098f680024e5a15cfb93aeccd2734b443fbc5d178ecad42439ef2`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 08 May 2019 12:03:54 GMT
ADD file:7813549b5e7862c4d5ecec9e7d8da27b520dd2cc1433e66637c57bb695d4f55a in / 
# Wed, 08 May 2019 12:03:54 GMT
CMD ["bash"]
# Wed, 08 May 2019 14:37:05 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 08 May 2019 14:37:06 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 08 May 2019 14:37:37 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 08 May 2019 14:37:39 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 08 May 2019 14:37:40 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 08 May 2019 14:42:38 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 08 May 2019 14:42:39 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 08 May 2019 14:42:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Wed, 08 May 2019 14:42:58 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 08 May 2019 14:42:59 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 08 May 2019 14:43:00 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 08 May 2019 14:43:00 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 08 May 2019 14:43:01 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 14:43:01 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 14:43:02 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 08 May 2019 14:59:32 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Sat, 01 Jun 2019 00:34:09 GMT
ENV PHP_VERSION=7.2.19
# Sat, 01 Jun 2019 00:34:09 GMT
ENV PHP_URL=https://www.php.net/get/php-7.2.19.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.2.19.tar.xz.asc/from/this/mirror
# Sat, 01 Jun 2019 00:34:10 GMT
ENV PHP_SHA256=4ffa2404a88d60e993a9fe69f829ebec3eb1e006de41b6048ce5e91bbeaa9282 PHP_MD5=
# Sat, 01 Jun 2019 00:34:26 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 01 Jun 2019 00:34:26 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 01 Jun 2019 00:37:25 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 01 Jun 2019 00:37:26 GMT
COPY multi:0002d7d5b06fb24f987aa4b027705dc71f81957419a02be5b9014431514c25b5 in /usr/local/bin/ 
# Sat, 01 Jun 2019 00:37:28 GMT
RUN docker-php-ext-enable sodium
# Sat, 01 Jun 2019 00:37:29 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 01 Jun 2019 00:37:29 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Sat, 01 Jun 2019 00:37:29 GMT
WORKDIR /var/www/html
# Sat, 01 Jun 2019 00:37:30 GMT
EXPOSE 80
# Sat, 01 Jun 2019 00:37:30 GMT
CMD ["apache2-foreground"]
# Sat, 01 Jun 2019 02:31:28 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		git 		imagemagick 		python3 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 02:35:07 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libicu-dev 	; 		docker-php-ext-install 		intl 		mbstring 		mysqli 		opcache 	; 		pecl install apcu-5.1.16; 	docker-php-ext-enable 		apcu 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 02:35:09 GMT
RUN a2enmod rewrite   && {       echo '<Directory /var/www/html>';       echo '  RewriteEngine On';       echo '  RewriteCond %{REQUEST_FILENAME} !-f';       echo '  RewriteCond %{REQUEST_FILENAME} !-d';       echo '  RewriteRule ^ %{DOCUMENT_ROOT}/index.php [L]';       echo '</Directory>';     } > "$APACHE_CONFDIR/conf-available/short-url.conf"   && a2enconf short-url
# Sat, 01 Jun 2019 02:35:11 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 01 Jun 2019 02:35:12 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 01 Jun 2019 02:35:13 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.32
# Sat, 01 Jun 2019 02:35:13 GMT
ENV MEDIAWIKI_BRANCH=REL1_32
# Thu, 06 Jun 2019 22:57:31 GMT
ENV MEDIAWIKI_VERSION=1.32.2
# Thu, 06 Jun 2019 22:57:31 GMT
ENV MEDIAWIKI_SHA512=79f13245fe2a8851780ac9f38c3f439a4911f6760e810712922b18c577e3ee6e4b0f3e336c567f6115258aebd5fc5e7c6c1045f43b5d0f615bfdcfb54fd16335
# Thu, 06 Jun 2019 22:57:46 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:b0727b1ec48ef8920082aec023c050c83b563ae08080d9951d68fba55934bbd6`  
		Last Modified: Wed, 08 May 2019 12:10:01 GMT  
		Size: 19.3 MB (19276216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e208b62bc2ef8e00c39842047e209f0ee05486c604af8359d624ad326285642`  
		Last Modified: Wed, 08 May 2019 15:56:06 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b654776010960d429044df18c3d563b768a92d765adb835d874503dbc872672`  
		Last Modified: Wed, 08 May 2019 15:56:28 GMT  
		Size: 53.6 MB (53589670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0718556bb7e27c667cb22749130f30d651e5cb73cc88535d3cbb2f7a4fe6224e`  
		Last Modified: Wed, 08 May 2019 15:56:05 GMT  
		Size: 286.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21d279750d7c2122da564efb42a89a55b0a6cba5f6a2ac0f7a97191db4ae4fe6`  
		Last Modified: Wed, 08 May 2019 15:57:12 GMT  
		Size: 16.2 MB (16159683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a060b1fb5eab7537b954cc199873b54c44dcbddbfab9c2bb3e8bfdc8c51ec2ce`  
		Last Modified: Wed, 08 May 2019 15:57:03 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56397f3718603009afb913087c72dc6bb3b6465bb82f8f00c6bc4550aec76747`  
		Last Modified: Wed, 08 May 2019 15:57:02 GMT  
		Size: 516.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faa05c80ed7e7320a3d5d347517275b340e34b2f06c5e65f435e621ba0cbb2d3`  
		Last Modified: Sat, 01 Jun 2019 01:56:19 GMT  
		Size: 12.5 MB (12524432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdd8dbbffa7e7154464a5c254ad80d02317c8bb91c11a44e2c9297bae25d1fcd`  
		Last Modified: Sat, 01 Jun 2019 01:56:16 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1438d8a59ecaa26b06a9e60ed3ecc703c52a63336a9e437519c7143534a8726`  
		Last Modified: Sat, 01 Jun 2019 01:56:20 GMT  
		Size: 13.6 MB (13602981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77e049fa064e154f28c8acae37128f5a95ed4af0d03f6e007f376710dcaf0a8e`  
		Last Modified: Sat, 01 Jun 2019 01:56:16 GMT  
		Size: 2.2 KB (2201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1a62d3145013a434f0acaf723805b3e94cfa9e183f349b48fd89ce97b56ad40`  
		Last Modified: Sat, 01 Jun 2019 01:56:16 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5432c4c59238dfc901afc53a70b515fd76da212265f2f658254faef604ef5ab9`  
		Last Modified: Sat, 01 Jun 2019 01:56:16 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c0f414ae38167acfdcd5910440f50358bf101593555d7643cd8d7cf06632c2a`  
		Last Modified: Sat, 01 Jun 2019 02:40:50 GMT  
		Size: 26.8 MB (26812739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80632ac31b9ea95cf32141f80a93560c47359fab89617e59a254ced1a64c1819`  
		Last Modified: Sat, 01 Jun 2019 02:40:40 GMT  
		Size: 2.4 MB (2415904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abddbceecf4bf79fd704b1ce7f27060c7d9c493c5e2a996800c746ac3afb3a48`  
		Last Modified: Sat, 01 Jun 2019 02:40:40 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13f7ed3fab048057f79b2c3d84d91b369f1e74f1d927dba83a7b1c0b82301159`  
		Last Modified: Sat, 01 Jun 2019 02:40:39 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50b629d78aedf3ca8d3bc31615443dabc218b02752f8de53fdcebedad0a40c80`  
		Last Modified: Sat, 01 Jun 2019 02:40:39 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a186d5f7b25cb479e0b033c236d1c534a377a4d871be19d7e80755876c2a7aab`  
		Last Modified: Thu, 06 Jun 2019 22:59:07 GMT  
		Size: 36.7 MB (36689765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:stable` - linux; arm64 variant v8

```console
$ docker pull mediawiki@sha256:ad60cf847c9b77017ee6b65fd448290fba88ae75cad9f7a24d9b300809abc65e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.0 MB (188004220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aeb4fb46778df43e5653f1c21846367a89d7ef69501d3026d83a6258b6ad2892`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 08 May 2019 08:49:02 GMT
ADD file:fadb1563a7cd043d96e76895bb1bb3920f9a9262206eb9bcd4ef4b5aec8d9b35 in / 
# Wed, 08 May 2019 08:49:03 GMT
CMD ["bash"]
# Fri, 31 May 2019 23:39:59 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Fri, 31 May 2019 23:40:00 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 31 May 2019 23:40:35 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Fri, 31 May 2019 23:40:36 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 31 May 2019 23:40:38 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Fri, 31 May 2019 23:45:01 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 31 May 2019 23:45:01 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Fri, 31 May 2019 23:45:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Fri, 31 May 2019 23:45:18 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Fri, 31 May 2019 23:45:19 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Fri, 31 May 2019 23:45:19 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Fri, 31 May 2019 23:45:19 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Fri, 31 May 2019 23:45:20 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 31 May 2019 23:45:20 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Fri, 31 May 2019 23:45:20 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 01 Jun 2019 00:28:21 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Sat, 01 Jun 2019 00:28:22 GMT
ENV PHP_VERSION=7.2.19
# Sat, 01 Jun 2019 00:28:22 GMT
ENV PHP_URL=https://www.php.net/get/php-7.2.19.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.2.19.tar.xz.asc/from/this/mirror
# Sat, 01 Jun 2019 00:28:23 GMT
ENV PHP_SHA256=4ffa2404a88d60e993a9fe69f829ebec3eb1e006de41b6048ce5e91bbeaa9282 PHP_MD5=
# Sat, 01 Jun 2019 00:28:37 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 01 Jun 2019 00:28:38 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 01 Jun 2019 00:31:50 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 01 Jun 2019 00:31:51 GMT
COPY multi:0002d7d5b06fb24f987aa4b027705dc71f81957419a02be5b9014431514c25b5 in /usr/local/bin/ 
# Sat, 01 Jun 2019 00:31:54 GMT
RUN docker-php-ext-enable sodium
# Sat, 01 Jun 2019 00:31:55 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 01 Jun 2019 00:31:56 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Sat, 01 Jun 2019 00:31:56 GMT
WORKDIR /var/www/html
# Sat, 01 Jun 2019 00:31:57 GMT
EXPOSE 80
# Sat, 01 Jun 2019 00:31:57 GMT
CMD ["apache2-foreground"]
# Thu, 06 Jun 2019 23:40:06 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		git 		imagemagick 		python3 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 06 Jun 2019 23:43:51 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libicu-dev 	; 		docker-php-ext-install 		intl 		mbstring 		mysqli 		opcache 	; 		pecl install apcu-5.1.16; 	docker-php-ext-enable 		apcu 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Thu, 06 Jun 2019 23:43:53 GMT
RUN a2enmod rewrite   && {       echo '<Directory /var/www/html>';       echo '  RewriteEngine On';       echo '  RewriteCond %{REQUEST_FILENAME} !-f';       echo '  RewriteCond %{REQUEST_FILENAME} !-d';       echo '  RewriteRule ^ %{DOCUMENT_ROOT}/index.php [L]';       echo '</Directory>';     } > "$APACHE_CONFDIR/conf-available/short-url.conf"   && a2enconf short-url
# Thu, 06 Jun 2019 23:43:54 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Thu, 06 Jun 2019 23:43:55 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Thu, 06 Jun 2019 23:43:56 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.32
# Thu, 06 Jun 2019 23:43:56 GMT
ENV MEDIAWIKI_BRANCH=REL1_32
# Thu, 06 Jun 2019 23:43:56 GMT
ENV MEDIAWIKI_VERSION=1.32.2
# Thu, 06 Jun 2019 23:43:57 GMT
ENV MEDIAWIKI_SHA512=79f13245fe2a8851780ac9f38c3f439a4911f6760e810712922b18c577e3ee6e4b0f3e336c567f6115258aebd5fc5e7c6c1045f43b5d0f615bfdcfb54fd16335
# Thu, 06 Jun 2019 23:44:08 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:29b80961214d7f0c89081fe8134e6e8e14ccfa1afe001357539f59930ff9e3ef`  
		Last Modified: Wed, 08 May 2019 08:55:12 GMT  
		Size: 20.3 MB (20333815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7997e7a2b66512cf6e65f0065c597851730a5b718d62e341efd845d3dd794304`  
		Last Modified: Sat, 01 Jun 2019 01:46:51 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5306c48a95defb7bdac9ac032934e3717d2609b97e63ea1c31b35e5697bf4f0f`  
		Last Modified: Sat, 01 Jun 2019 01:47:10 GMT  
		Size: 57.6 MB (57617764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b13c362a21699da6ae29f1fd3e9284487341626b434fac8dad5fc91c0efac4b`  
		Last Modified: Sat, 01 Jun 2019 01:46:50 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81105763d75bb9c0add057ac3fde6b18543d7c53ac4c1e875a5293593cb1a158`  
		Last Modified: Sat, 01 Jun 2019 01:47:55 GMT  
		Size: 16.7 MB (16710277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e570e4ebac92c685876d35bef8eb5c0e8242b9525f1f1d10a02d6b7c02019762`  
		Last Modified: Sat, 01 Jun 2019 01:47:50 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:013b2232b8f6d55c09476e32e434c86a8da31e5e9f82d9a8343f281cdcfe05ce`  
		Last Modified: Sat, 01 Jun 2019 01:47:50 GMT  
		Size: 514.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6875c746bd9979f07ba524c3c08607c28e979b214a249a0df9d95bb84166eb71`  
		Last Modified: Sat, 01 Jun 2019 01:51:58 GMT  
		Size: 12.5 MB (12524308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d744335fa365e0b8daea07c6c95dc4191d3dd42a443c371de2c72c141a91e286`  
		Last Modified: Sat, 01 Jun 2019 01:51:53 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce342ad4af3d2698b3e05219065cadc76e1ad0d307f0789edd52211fed246158`  
		Last Modified: Sat, 01 Jun 2019 01:51:58 GMT  
		Size: 14.2 MB (14241641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dff4661db794797950921af5be8f99557de2ffb959d0154a1fdeaf04b92be8f`  
		Last Modified: Sat, 01 Jun 2019 01:51:53 GMT  
		Size: 2.2 KB (2204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54f7d88e5bebcc1409dce1a61f6b29775457b14e9669d08087353812c8f0cb78`  
		Last Modified: Sat, 01 Jun 2019 01:51:53 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03b1fd10269724ae084ae5ab10ff5c7e571b12194e19a9bd124980c02df1453a`  
		Last Modified: Sat, 01 Jun 2019 01:51:53 GMT  
		Size: 905.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d2e53fabccab9664bca2be49eca2e5a3de1971074d896baf4749d977d391e38`  
		Last Modified: Thu, 06 Jun 2019 23:49:24 GMT  
		Size: 27.4 MB (27404401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ef6cfd1e6c4dfb93f58b582111c2baef43e243b3ef497246d820820ca4adac0`  
		Last Modified: Thu, 06 Jun 2019 23:49:15 GMT  
		Size: 2.5 MB (2475860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d6785ccb71e8a8f4993ff86229b5cafde47df66a506de4341b81f85e08c02dd`  
		Last Modified: Thu, 06 Jun 2019 23:49:14 GMT  
		Size: 583.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:381e6d2d930f005e964ad303efd5dd5f6f26931327344bc4e1663d4dc849acb5`  
		Last Modified: Thu, 06 Jun 2019 23:49:14 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c138d592c0102a2b775289d6f11383fc88603aceb99733969871f7a37a32d673`  
		Last Modified: Thu, 06 Jun 2019 23:49:14 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64000d19fb174ef1ae6563810446b2b27397b3097aeada0056a31710d01fe7d3`  
		Last Modified: Thu, 06 Jun 2019 23:49:32 GMT  
		Size: 36.7 MB (36689677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:stable` - linux; 386

```console
$ docker pull mediawiki@sha256:e0f8940b2e43e8160fc4f645fa36673b375d0524a67de2311aa62c3c4543578c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.6 MB (211553743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:689d0e28c0ed420e39153925bb2b0eeeb4072b9fd45c1a8812f28434c0ca4940`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 08 May 2019 10:49:55 GMT
ADD file:32d77a56ac954d1cd433a660591f374200929db022f1d0cfcf99eb6ab9e1679c in / 
# Wed, 08 May 2019 10:49:55 GMT
CMD ["bash"]
# Wed, 08 May 2019 16:35:40 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Wed, 08 May 2019 16:35:40 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 08 May 2019 16:36:06 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Wed, 08 May 2019 16:36:06 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 08 May 2019 16:36:07 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Wed, 08 May 2019 16:41:56 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 08 May 2019 16:41:57 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 08 May 2019 16:42:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Wed, 08 May 2019 16:42:09 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Wed, 08 May 2019 16:42:09 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Wed, 08 May 2019 16:42:10 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Wed, 08 May 2019 16:42:10 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Wed, 08 May 2019 16:42:10 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 16:42:10 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Wed, 08 May 2019 16:42:10 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Wed, 08 May 2019 17:04:19 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Sat, 01 Jun 2019 01:28:48 GMT
ENV PHP_VERSION=7.2.19
# Sat, 01 Jun 2019 01:28:48 GMT
ENV PHP_URL=https://www.php.net/get/php-7.2.19.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.2.19.tar.xz.asc/from/this/mirror
# Sat, 01 Jun 2019 01:28:48 GMT
ENV PHP_SHA256=4ffa2404a88d60e993a9fe69f829ebec3eb1e006de41b6048ce5e91bbeaa9282 PHP_MD5=
# Sat, 01 Jun 2019 01:29:02 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 01 Jun 2019 01:29:02 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Sat, 01 Jun 2019 01:35:05 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 01 Jun 2019 01:35:06 GMT
COPY multi:0002d7d5b06fb24f987aa4b027705dc71f81957419a02be5b9014431514c25b5 in /usr/local/bin/ 
# Sat, 01 Jun 2019 01:35:07 GMT
RUN docker-php-ext-enable sodium
# Sat, 01 Jun 2019 01:35:07 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 01 Jun 2019 01:35:07 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Sat, 01 Jun 2019 01:35:07 GMT
WORKDIR /var/www/html
# Sat, 01 Jun 2019 01:35:07 GMT
EXPOSE 80
# Sat, 01 Jun 2019 01:35:08 GMT
CMD ["apache2-foreground"]
# Sat, 01 Jun 2019 07:42:25 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		git 		imagemagick 		python3 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 07:44:33 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libicu-dev 	; 		docker-php-ext-install 		intl 		mbstring 		mysqli 		opcache 	; 		pecl install apcu-5.1.16; 	docker-php-ext-enable 		apcu 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 07:44:34 GMT
RUN a2enmod rewrite   && {       echo '<Directory /var/www/html>';       echo '  RewriteEngine On';       echo '  RewriteCond %{REQUEST_FILENAME} !-f';       echo '  RewriteCond %{REQUEST_FILENAME} !-d';       echo '  RewriteRule ^ %{DOCUMENT_ROOT}/index.php [L]';       echo '</Directory>';     } > "$APACHE_CONFDIR/conf-available/short-url.conf"   && a2enconf short-url
# Sat, 01 Jun 2019 07:44:35 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Sat, 01 Jun 2019 07:44:36 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Sat, 01 Jun 2019 07:44:36 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.32
# Sat, 01 Jun 2019 07:44:36 GMT
ENV MEDIAWIKI_BRANCH=REL1_32
# Thu, 06 Jun 2019 23:38:32 GMT
ENV MEDIAWIKI_VERSION=1.32.2
# Thu, 06 Jun 2019 23:38:32 GMT
ENV MEDIAWIKI_SHA512=79f13245fe2a8851780ac9f38c3f439a4911f6760e810712922b18c577e3ee6e4b0f3e336c567f6115258aebd5fc5e7c6c1045f43b5d0f615bfdcfb54fd16335
# Thu, 06 Jun 2019 23:38:42 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:3cf56ed221cf05f73233419fcc3a71b0afd424761fc83037e3a5cf101af5df46`  
		Last Modified: Wed, 08 May 2019 10:57:50 GMT  
		Size: 23.1 MB (23120843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2e394799d7fd8bb494dd3068fa793d651e7ccb426989bd27defd081a6bcc12f`  
		Last Modified: Wed, 08 May 2019 18:38:36 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d053425c85d9196337b5a25e4b3194f8f91c7540e201df765bb55f179df390d`  
		Last Modified: Wed, 08 May 2019 18:38:54 GMT  
		Size: 71.5 MB (71518824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:375ceda7fc26c2edccb175b8a009dd8db8b6159d82b589045c749fc2a90b409c`  
		Last Modified: Wed, 08 May 2019 18:38:35 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcee9f239c4761d5fb6def94e207d25f66b6dd1b06aca20ef921f0b7cec5fd2b`  
		Last Modified: Wed, 08 May 2019 18:39:23 GMT  
		Size: 17.6 MB (17559084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f37941543cfc620e1f153eec1e6627f09d2995dc4e11881df4b2fec57d024fc`  
		Last Modified: Wed, 08 May 2019 18:39:18 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e81f09a18a1e21c876bdb2b93ab40c2d32294938c8c14da1306afc78c85dc5b`  
		Last Modified: Wed, 08 May 2019 18:39:18 GMT  
		Size: 488.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41a8ee6d49ee15ad08031f938929528047a9fd927d69d035f5ca66ed7e355b04`  
		Last Modified: Sat, 01 Jun 2019 05:16:50 GMT  
		Size: 12.5 MB (12525761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2322e67ac4d769391bdf7e0313998a112493d463951d7a700ed0e832adae361f`  
		Last Modified: Sat, 01 Jun 2019 05:16:47 GMT  
		Size: 501.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:941f1ae54d4db38b37a1cda53ae74a769adb65a8984fd2a41a01756b32ae2ebe`  
		Last Modified: Sat, 01 Jun 2019 05:16:54 GMT  
		Size: 15.7 MB (15698331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df5f11979bda3bf30c40aab446a5eff8c5f9b326d1645b64318d5a04b671baf9`  
		Last Modified: Sat, 01 Jun 2019 05:16:47 GMT  
		Size: 2.2 KB (2206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b02437654527bb433476fe45e5abd19a77d841dd3978b2228b3ef888673b51ae`  
		Last Modified: Sat, 01 Jun 2019 05:16:47 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90e4dc140986a90303ccd1354e90e771fbfc3449ff350ea920191db77423ab1c`  
		Last Modified: Sat, 01 Jun 2019 05:16:47 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f27cd56e95bdef6674eef5f82343509acc63e7e871bc2b837d5484e61e8c847e`  
		Last Modified: Sat, 01 Jun 2019 07:48:01 GMT  
		Size: 31.9 MB (31894677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1347ff7d2467d9910d9c2e3fadfc42f428f0e6896f5ff56ddb941261c5790ba`  
		Last Modified: Sat, 01 Jun 2019 07:47:52 GMT  
		Size: 2.5 MB (2540363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b5cee4f460df98b1fa70f4af0a91a40f5d162ced89f1e926ce8aec19978f131`  
		Last Modified: Sat, 01 Jun 2019 07:47:51 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:feb0dad0c33133ecbf81914bbf114d6052374940f53c7e0a951a5882df220a31`  
		Last Modified: Sat, 01 Jun 2019 07:47:51 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:493401b0e5c372573773fb153ede25c663e00f87bc72f6d4dce23b4ca6bce5e7`  
		Last Modified: Sat, 01 Jun 2019 07:47:51 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9994366743ddf46b8d742ad5752da3d88636d48431dafe4f82133e3ff5d5e7c`  
		Last Modified: Thu, 06 Jun 2019 23:39:30 GMT  
		Size: 36.7 MB (36689541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mediawiki:stable` - linux; ppc64le

```console
$ docker pull mediawiki@sha256:3dd25065d52c86be04244abaf48f21935f8335111ff935ee0bdca41626562e03
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.7 MB (198742864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffe69bb46f242a37609a30db702272a72e152613c5301eb6c2225c79cff10feb`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 10 Jun 2019 23:18:56 GMT
ADD file:cbe9750f9a223a6cdc02ae93dd729d2261ce439e1c7be255cd3a688eebfe62ba in / 
# Mon, 10 Jun 2019 23:18:59 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:28:09 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Tue, 11 Jun 2019 00:28:11 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 11 Jun 2019 00:30:37 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:30:42 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 11 Jun 2019 00:30:50 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 777 /var/www/html
# Tue, 11 Jun 2019 00:38:29 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 11 Jun 2019 00:38:33 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 11 Jun 2019 00:39:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR"
# Tue, 11 Jun 2019 00:40:06 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Tue, 11 Jun 2019 00:40:17 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Tue, 11 Jun 2019 00:40:20 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Tue, 11 Jun 2019 00:40:24 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2 --disable-cgi
# Tue, 11 Jun 2019 00:40:27 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 11 Jun 2019 00:40:30 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Tue, 11 Jun 2019 00:40:33 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Tue, 11 Jun 2019 01:15:14 GMT
ENV GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F
# Tue, 11 Jun 2019 01:15:17 GMT
ENV PHP_VERSION=7.2.19
# Tue, 11 Jun 2019 01:15:23 GMT
ENV PHP_URL=https://www.php.net/get/php-7.2.19.tar.xz/from/this/mirror PHP_ASC_URL=https://www.php.net/get/php-7.2.19.tar.xz.asc/from/this/mirror
# Tue, 11 Jun 2019 01:15:29 GMT
ENV PHP_SHA256=4ffa2404a88d60e993a9fe69f829ebec3eb1e006de41b6048ce5e91bbeaa9282 PHP_MD5=
# Tue, 11 Jun 2019 01:16:29 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		command -v gpgconf > /dev/null && gpgconf --kill all; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Tue, 11 Jun 2019 01:16:31 GMT
COPY file:ce57c04b70896f77cc11eb2766417d8a1240fcffe5bba92179ec78c458844110 in /usr/local/bin/ 
# Tue, 11 Jun 2019 01:21:54 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	sed -e 's/stretch/buster/g' /etc/apt/sources.list > /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libargon2*'; 		echo 'Pin: release n=buster'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/argon2-buster; 	apt-get update; 	apt-get install -y --no-install-recommends libargon2-dev; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Tue, 11 Jun 2019 01:21:57 GMT
COPY multi:0002d7d5b06fb24f987aa4b027705dc71f81957419a02be5b9014431514c25b5 in /usr/local/bin/ 
# Tue, 11 Jun 2019 01:22:04 GMT
RUN docker-php-ext-enable sodium
# Tue, 11 Jun 2019 01:22:09 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 11 Jun 2019 01:22:10 GMT
COPY file:e3123fcb6566efa979f945bfac1c94c854a559d7b82723e42118882a8ac4de66 in /usr/local/bin/ 
# Tue, 11 Jun 2019 01:22:14 GMT
WORKDIR /var/www/html
# Tue, 11 Jun 2019 01:22:17 GMT
EXPOSE 80
# Tue, 11 Jun 2019 01:22:19 GMT
CMD ["apache2-foreground"]
# Tue, 11 Jun 2019 05:53:12 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		git 		imagemagick 		python3 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 05:57:02 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libicu-dev 	; 		docker-php-ext-install 		intl 		mbstring 		mysqli 		opcache 	; 		pecl install apcu-5.1.16; 	docker-php-ext-enable 		apcu 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { print $3 }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 05:57:07 GMT
RUN a2enmod rewrite   && {       echo '<Directory /var/www/html>';       echo '  RewriteEngine On';       echo '  RewriteCond %{REQUEST_FILENAME} !-f';       echo '  RewriteCond %{REQUEST_FILENAME} !-d';       echo '  RewriteRule ^ %{DOCUMENT_ROOT}/index.php [L]';       echo '</Directory>';     } > "$APACHE_CONFDIR/conf-available/short-url.conf"   && a2enconf short-url
# Tue, 11 Jun 2019 05:57:11 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 		echo 'opcache.fast_shutdown=1'; 		echo 'opcache.enable_cli=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# Tue, 11 Jun 2019 05:57:16 GMT
RUN mkdir -p /var/www/data 	&& chown -R www-data:www-data /var/www/data
# Tue, 11 Jun 2019 05:57:18 GMT
ENV MEDIAWIKI_MAJOR_VERSION=1.32
# Tue, 11 Jun 2019 05:57:20 GMT
ENV MEDIAWIKI_BRANCH=REL1_32
# Tue, 11 Jun 2019 05:57:23 GMT
ENV MEDIAWIKI_VERSION=1.32.2
# Tue, 11 Jun 2019 05:57:25 GMT
ENV MEDIAWIKI_SHA512=79f13245fe2a8851780ac9f38c3f439a4911f6760e810712922b18c577e3ee6e4b0f3e336c567f6115258aebd5fc5e7c6c1045f43b5d0f615bfdcfb54fd16335
# Tue, 11 Jun 2019 05:57:56 GMT
RUN curl -fSL "https://releases.wikimedia.org/mediawiki/${MEDIAWIKI_MAJOR_VERSION}/mediawiki-${MEDIAWIKI_VERSION}.tar.gz" -o mediawiki.tar.gz 	&& echo "${MEDIAWIKI_SHA512} *mediawiki.tar.gz" | sha512sum -c - 	&& tar -xz --strip-components=1 -f mediawiki.tar.gz 	&& rm mediawiki.tar.gz 	&& chown -R www-data:www-data extensions skins cache images
```

-	Layers:
	-	`sha256:d41f2b4ffc1e666af1af85c808fc5e2c1f81602da89d9e81911a402a3e1e69b5`  
		Last Modified: Mon, 10 Jun 2019 23:24:17 GMT  
		Size: 22.7 MB (22744910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1b6e5574bd2cd035a3336cc3b8f5b333a20ffbccab045455da0228bab0c1ba5`  
		Last Modified: Tue, 11 Jun 2019 02:03:15 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e927325137c49c14f11fe0043e8b00c0752c407cd1e1dfb5f295b28036ccb9a5`  
		Last Modified: Tue, 11 Jun 2019 02:03:50 GMT  
		Size: 61.8 MB (61833544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cd6161db9f298f2195c7171c084406f44551f48daec89a6ebe6dd51d2a519cb`  
		Last Modified: Tue, 11 Jun 2019 02:03:15 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6157c171d9135c78b2d721c228e7b239dd870978b27cb266a0a3f01e2ed5aa44`  
		Last Modified: Tue, 11 Jun 2019 02:04:54 GMT  
		Size: 17.3 MB (17345895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb4582358bc93d74ded9816dca173336c68db84ca19f5c04d1233eff4f215e95`  
		Last Modified: Tue, 11 Jun 2019 02:04:47 GMT  
		Size: 480.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3896e4bdda263a57b48d56091b357990b044071740846f1b6a3dbf8ca545adac`  
		Last Modified: Tue, 11 Jun 2019 02:04:47 GMT  
		Size: 520.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5f99aa8243cf9b1a29f9d6b1b0b079520ca7199cc10fa383c7a2b6feead7b61`  
		Last Modified: Tue, 11 Jun 2019 02:07:51 GMT  
		Size: 12.5 MB (12525247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:994ca72a0e7c1b34b00f95df23db4cff748ac0c28fc1870915eecf61bdaf8c6f`  
		Last Modified: Tue, 11 Jun 2019 02:07:46 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c906bdc5aabf2ef9fb63d93452886a11f9d63c668f287a558e793a16674a6a6`  
		Last Modified: Tue, 11 Jun 2019 02:07:51 GMT  
		Size: 15.1 MB (15050768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34469d1658ed000d50153e060277b0ce42d8d4176e3435c1a96a70c591c4f107`  
		Last Modified: Tue, 11 Jun 2019 02:07:46 GMT  
		Size: 2.2 KB (2203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081abeb40f0380a8af9a380009f6a4c7de559c0f297c67a4a96a3d44b863f1b3`  
		Last Modified: Tue, 11 Jun 2019 02:07:46 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fca3a95da9c0934ea29a82cbef41334b94c578a8adc346021549d61e00cbb172`  
		Last Modified: Tue, 11 Jun 2019 02:07:46 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3931036972a6fa9e059255ed477ea3636d7d04994f812dbeec83b6827c857f10`  
		Last Modified: Tue, 11 Jun 2019 06:06:31 GMT  
		Size: 30.0 MB (30008672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e84919972eaa422f39edebe860b2ffe1a446e1134c44866011707be9891106af`  
		Last Modified: Tue, 11 Jun 2019 06:06:19 GMT  
		Size: 2.5 MB (2536615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dee040263fa3fcd5fa30d9886a8ae947bcd04a2bc2331eb3c5df5f2c244e605`  
		Last Modified: Tue, 11 Jun 2019 06:06:19 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3d7a753e6b560e0ca54ac88dea828a91972dd357910eed994beafa4b5068061`  
		Last Modified: Tue, 11 Jun 2019 06:06:19 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2663fe8467ec840214516862c6d235937feca51c974df32d46915770f94b89e3`  
		Last Modified: Tue, 11 Jun 2019 06:06:19 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d10ca31df0eb46569e34c513878057a06780b5c7a0063f456e36a2aef858dec`  
		Last Modified: Tue, 11 Jun 2019 06:06:34 GMT  
		Size: 36.7 MB (36690734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
