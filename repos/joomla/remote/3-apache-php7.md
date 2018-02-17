## `joomla:3-apache-php7`

```console
$ docker pull joomla@sha256:f2bf355021f0f7b7bcbe44d78e9b5a0e67c4fd3f361cace4e05e99cf71cb49e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `joomla:3-apache-php7` - linux; amd64

```console
$ docker pull joomla@sha256:8b566edd4ca5521970603f204c6e48c013b485414e6230a529ce2bb7789f3322
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.1 MB (176071817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c819ba7e797930b36c95056f9de58e55d5b7b035ab8dc2a77811d517b903db9f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Thu, 15 Feb 2018 01:42:14 GMT
ADD file:f1509ab9c2cd3810736e26739fa0f78ee1ba942e14498ba5f266d8a78e664acc in / 
# Thu, 15 Feb 2018 01:42:14 GMT
CMD ["bash"]
# Sat, 17 Feb 2018 00:13:55 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php
# Sat, 17 Feb 2018 00:13:55 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Sat, 17 Feb 2018 00:14:23 GMT
RUN apt-get update && apt-get install -y 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	--no-install-recommends && rm -r /var/lib/apt/lists/*
# Sat, 17 Feb 2018 00:14:24 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 17 Feb 2018 00:14:25 GMT
RUN mkdir -p $PHP_INI_DIR/conf.d
# Sat, 17 Feb 2018 00:31:00 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		apache2 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 00:31:01 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Sat, 17 Feb 2018 00:31:01 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Sat, 17 Feb 2018 00:31:14 GMT
RUN set -ex 		&& sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS" 		&& . "$APACHE_ENVVARS" 	&& for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		/var/www/html 	; do 		rm -rvf "$dir" 		&& mkdir -p "$dir" 		&& chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 	done
# Sat, 17 Feb 2018 00:31:15 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork
# Sat, 17 Feb 2018 00:31:16 GMT
RUN set -ex 	&& . "$APACHE_ENVVARS" 	&& ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log" 	&& ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"
# Sat, 17 Feb 2018 00:31:16 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php
# Sat, 17 Feb 2018 00:31:17 GMT
ENV PHP_EXTRA_BUILD_DEPS=apache2-dev
# Sat, 17 Feb 2018 00:31:17 GMT
ENV PHP_EXTRA_CONFIGURE_ARGS=--with-apxs2
# Sat, 17 Feb 2018 00:31:17 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 17 Feb 2018 00:31:17 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2
# Sat, 17 Feb 2018 00:31:18 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
# Sat, 17 Feb 2018 01:50:46 GMT
ENV GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3
# Sat, 17 Feb 2018 01:50:47 GMT
ENV PHP_VERSION=7.0.27
# Sat, 17 Feb 2018 01:50:47 GMT
ENV PHP_URL=https://secure.php.net/get/php-7.0.27.tar.xz/from/this/mirror PHP_ASC_URL=https://secure.php.net/get/php-7.0.27.tar.xz.asc/from/this/mirror
# Sat, 17 Feb 2018 01:50:47 GMT
ENV PHP_SHA256=4b2bc823e806dbf7b62fe0b92b0d14b0c6e03f88c3fc5d96278416c54ce11f6c PHP_MD5=
# Sat, 17 Feb 2018 01:51:06 GMT
RUN set -xe; 		fetchDeps=' 		wget 	'; 	if ! command -v gpg > /dev/null; then 		fetchDeps="$fetchDeps 			dirmngr 			gnupg 		"; 	fi; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		wget -O php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 	if [ -n "$PHP_MD5" ]; then 		echo "$PHP_MD5 *php.tar.xz" | md5sum -c -; 	fi; 		if [ -n "$PHP_ASC_URL" ]; then 		wget -O php.tar.xz.asc "$PHP_ASC_URL"; 		export GNUPGHOME="$(mktemp -d)"; 		for key in $GPG_KEYS; do 			gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 		done; 		gpg --batch --verify php.tar.xz.asc php.tar.xz; 		rm -rf "$GNUPGHOME"; 	fi; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps
# Sat, 17 Feb 2018 01:51:14 GMT
COPY file:207c686e3fed4f71f8a7b245d8dcae9c9048d276a326d82b553c12a90af0c0ca in /usr/local/bin/ 
# Sat, 17 Feb 2018 01:54:03 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libcurl4-openssl-dev 		libedit-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 		${PHP_EXTRA_BUILD_DEPS:-} 	; 	rm -rf /var/lib/apt/lists/*; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	./configure 		--build="$gnuArch" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--disable-cgi 				--enable-ftp 		--enable-mbstring 		--enable-mysqlnd 				--with-curl 		--with-libedit 		--with-openssl 		--with-zlib 				$(test "$gnuArch" = 's390x-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				${PHP_EXTRA_CONFIGURE_ARGS:-} 	; 	make -j "$(nproc)"; 	make install; 	find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; 	make clean; 	cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		php --version; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc
# Sat, 17 Feb 2018 02:00:44 GMT
COPY multi:cb6c9a453a971f0ed6bdf30b12bc250bbe068005b3c3b084f5048cbf9787fb8d in /usr/local/bin/ 
# Sat, 17 Feb 2018 02:00:45 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 17 Feb 2018 02:07:12 GMT
COPY file:24613ecbb1ce6a09f683b0753da9c26a1af07547326e8a02f6eec80ad6f2774a in /usr/local/bin/ 
# Sat, 17 Feb 2018 02:07:12 GMT
WORKDIR /var/www/html
# Sat, 17 Feb 2018 02:07:12 GMT
EXPOSE 80/tcp
# Sat, 17 Feb 2018 02:07:13 GMT
CMD ["apache2-foreground"]
# Sat, 17 Feb 2018 06:23:00 GMT
LABEL maintainer=Michael Babker <michael.babker@joomla.org> (@mbabker)
# Sat, 17 Feb 2018 06:23:00 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Sat, 17 Feb 2018 06:23:02 GMT
RUN a2enmod rewrite
# Sat, 17 Feb 2018 06:23:33 GMT
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev zip unzip && rm -rf /var/lib/apt/lists/* 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr 	&& docker-php-ext-install gd
# Sat, 17 Feb 2018 06:23:41 GMT
RUN docker-php-ext-install mysqli
# Sat, 17 Feb 2018 06:23:46 GMT
RUN docker-php-ext-install mcrypt
# Sat, 17 Feb 2018 06:29:30 GMT
RUN docker-php-ext-install zip
# Sat, 17 Feb 2018 06:29:41 GMT
VOLUME [/var/www/html]
# Sat, 17 Feb 2018 06:29:41 GMT
ENV JOOMLA_VERSION=3.8.4
# Sat, 17 Feb 2018 06:29:42 GMT
ENV JOOMLA_SHA1=3d8a321e626cdf3823fc6bd62aee222fd12c19ec
# Sat, 17 Feb 2018 06:29:53 GMT
RUN curl -o joomla.zip -SL https://github.com/joomla/joomla-cms/releases/download/${JOOMLA_VERSION}/Joomla_${JOOMLA_VERSION}-Stable-Full_Package.zip 	&& echo "$JOOMLA_SHA1 *joomla.zip" | sha1sum -c - 	&& mkdir /usr/src/joomla 	&& unzip joomla.zip -d /usr/src/joomla 	&& rm joomla.zip 	&& chown -R www-data:www-data /usr/src/joomla
# Sat, 17 Feb 2018 06:29:57 GMT
COPY file:c1e8bebe69e832de6ba85a02864e7d24ff9e6b5232ea62a31e27a5769c662116 in /entrypoint.sh 
# Sat, 17 Feb 2018 06:29:57 GMT
COPY file:7328ebe063e26f7b7716dfd8778bb7d46b90702ea38b23b9147ba2fd837ac2c1 in /makedb.php 
# Sat, 17 Feb 2018 06:29:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 17 Feb 2018 06:29:58 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:4176fe04cefee66d80f83003fd4166373f83cb552d1d01bb3b29a0ac45a48c50`  
		Last Modified: Thu, 15 Feb 2018 02:17:07 GMT  
		Size: 52.6 MB (52608285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68183217183fd3c036888ae07d87a7644d4bc95f2834573a85d1438a71954c14`  
		Last Modified: Sat, 17 Feb 2018 04:49:54 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecf543bebf498c198aa11a3182defa1ca2755c23cf53df04d822d68fe74e7c09`  
		Last Modified: Sat, 17 Feb 2018 04:50:16 GMT  
		Size: 80.2 MB (80245806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4009289aa349a9afbbb2f2200dfebd98034075c5f55c4bf22190fd4c3428f4c2`  
		Last Modified: Sat, 17 Feb 2018 04:49:51 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77ffaad61dbdeea7186c3669ba764ec38be2ec30cc771682ea5f0ad1a762f69d`  
		Last Modified: Sat, 17 Feb 2018 05:08:30 GMT  
		Size: 4.5 MB (4466505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01a0b17969feef12ca422e57521a505b49ae88e5e0caf8a763b2ec67b469299f`  
		Last Modified: Sat, 17 Feb 2018 05:08:27 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8df080430d3662db140146b88411bf5f21906672cfbabd6ca13e07d23290e311`  
		Last Modified: Sat, 17 Feb 2018 05:08:25 GMT  
		Size: 428.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43c2454bf1cdb15352157928c0201b143339deea1d7c227b19c4bf34cad05ae1`  
		Last Modified: Sat, 17 Feb 2018 05:08:25 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99b26992a14baa842a11b21f4b2c8f04529cc44aab142144fa3b77919e217fef`  
		Last Modified: Sat, 17 Feb 2018 05:08:25 GMT  
		Size: 481.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17eb0c9ca4c047f5f4c404062bd7e0548aaaa1b5ffd80039c78779d680d6dddb`  
		Last Modified: Sat, 17 Feb 2018 06:01:09 GMT  
		Size: 12.3 MB (12269438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1fb844f7030b86d013640eced4ff792ec26b00034ba2ead7d40e0ec7bbe719b`  
		Last Modified: Sat, 17 Feb 2018 06:01:05 GMT  
		Size: 499.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32002ac2ffb670337dc12fa8edc5cc0affe2df11e256469722a57e11a53a83f3`  
		Last Modified: Sat, 17 Feb 2018 06:01:10 GMT  
		Size: 13.9 MB (13886244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a894f305c69d3fa4a46a15a334502cb072d4aae4332eb3d8975912cbb95c65ef`  
		Last Modified: Sat, 17 Feb 2018 06:01:06 GMT  
		Size: 2.2 KB (2190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:470f7a164fb05c01f840d6620ff3a22e81a42d6bee6572e57d0717492a9f6f08`  
		Last Modified: Sat, 17 Feb 2018 06:01:05 GMT  
		Size: 906.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e4d705a9444a90ef280a35f82050002dc6c6b987757bcb9eb8095077c3e9ac8`  
		Last Modified: Sat, 17 Feb 2018 06:33:20 GMT  
		Size: 314.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b21a901b8ea34a9097bb1177066caaf81d7e618b0d4da6bd6201ba3053a0ba75`  
		Last Modified: Sat, 17 Feb 2018 06:33:20 GMT  
		Size: 3.0 MB (2996229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbefd2b8b9ff376ea90107556cef557807e8e354d966948f1e016d11236679d9`  
		Last Modified: Sat, 17 Feb 2018 06:33:19 GMT  
		Size: 56.4 KB (56406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5f8d323cdf30ea4525f0a1fc2bb4cbbf64c071c54a5159473d0f6e11613faaa`  
		Last Modified: Sat, 17 Feb 2018 06:33:17 GMT  
		Size: 18.3 KB (18292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24cf390d49b3a225eb168781c8d5777a46bcac6824ae98482978b9fd30392e66`  
		Last Modified: Sat, 17 Feb 2018 06:33:18 GMT  
		Size: 72.8 KB (72765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4c2b93a7a6c9bdeffec932122c5e64406b227a5accdc14c62c3435ef4cadf4e`  
		Last Modified: Sat, 17 Feb 2018 06:33:22 GMT  
		Size: 9.4 MB (9443337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d2becb8750458669633667770e8dcdb033eae289cb7d5ef1ea0bbe9be197db7`  
		Last Modified: Sat, 17 Feb 2018 06:33:17 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77799d798261014b58e9d6086f4939bd6f0eb8badc6009c7a1b75fa94fc5b109`  
		Last Modified: Sat, 17 Feb 2018 06:33:17 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
