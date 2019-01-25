## `httpd:latest`

```console
$ docker pull httpd@sha256:44daa8e932a32ab6e50636d769ca9a60ad412124653707e5ed59c0209c72f9b3
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

### `httpd:latest` - linux; amd64

```console
$ docker pull httpd@sha256:f3d37ac44680fdb30939790e82fb32745be6d1173b6df4fec5087729b5497ed5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.4 MB (49385044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e40405f80704cfe84030bd19d7cef3c35c4d8b68e5ad6570a16d4cee34e90207`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:32 GMT
ADD file:a65337a57a064a79ad8a3f42e8282b3e01710cb4684ccd880463cc8d2e051fa5 in / 
# Tue, 22 Jan 2019 19:30:32 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 23:13:29 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 22 Jan 2019 23:13:30 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Jan 2019 23:13:31 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 22 Jan 2019 23:13:32 GMT
WORKDIR /usr/local/apache2
# Tue, 22 Jan 2019 23:13:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libapr1-dev 		libaprutil1-dev 		libaprutil1-ldap 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 23:13:42 GMT
ENV HTTPD_VERSION=2.4.38
# Tue, 22 Jan 2019 23:13:42 GMT
ENV HTTPD_SHA256=7dc65857a994c98370dc4334b260101a7a04be60e6e74a5c57a6dee1bc8f394a
# Tue, 22 Jan 2019 23:13:43 GMT
ENV HTTPD_PATCHES=
# Tue, 22 Jan 2019 23:13:43 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Tue, 22 Jan 2019 23:15:40 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		dirmngr 		dpkg-dev 		gcc 		gnupg 		liblua5.2-dev 		libnghttp2-dev 		libpcre3-dev 		libssl-dev 		libxml2-dev 		make 		wget 		zlib1g-dev 	; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		httpd -v
# Tue, 22 Jan 2019 23:15:40 GMT
COPY file:8b68ac010cb13f58ebe31c3015d15c988625d2fde7339dca8a84c3c914493323 in /usr/local/bin/ 
# Tue, 22 Jan 2019 23:15:41 GMT
EXPOSE 80
# Tue, 22 Jan 2019 23:15:41 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:5e6ec7f28fb77f84f64b8c29fcb0a746260563f5858315e3e9fcc4aee2844840`  
		Last Modified: Tue, 22 Jan 2019 19:37:02 GMT  
		Size: 22.5 MB (22500707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:566e675a8212959df3473dde9412855332f9fb24b9c16ecb1e2b69c1623ea446`  
		Last Modified: Tue, 22 Jan 2019 23:16:06 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef5a8026039b7115f1c5bf8bbcb9c5eff2efb008d7411a5799d4085ef22b5788`  
		Last Modified: Tue, 22 Jan 2019 23:16:09 GMT  
		Size: 10.3 MB (10334882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ecb0106557c87ca999eb436244f86e30770409461907a16bee85b3f229a9a7`  
		Last Modified: Tue, 22 Jan 2019 23:16:09 GMT  
		Size: 16.5 MB (16549004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91cc511c603e74454a590a9724c2bbf0b949c6e3b8af943744220d4ead2dce9e`  
		Last Modified: Tue, 22 Jan 2019 23:16:06 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:latest` - linux; arm variant v5

```console
$ docker pull httpd@sha256:7bf0e145b2ed8f89b6608e23423ae735800f23a891c3dbaabb59e61e1818c751
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.4 MB (46353958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:806dd698c82ad669b13081772eb095550ca5f3b22142a07a1bf5cbbfd45444e8`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Wed, 23 Jan 2019 09:54:53 GMT
ADD file:dc26e428c2cc58c087582281cf61d570f0393114b5402cff1118ca6b35ed53d7 in / 
# Wed, 23 Jan 2019 09:54:54 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 10:19:34 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Wed, 23 Jan 2019 10:19:34 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 10:19:35 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Wed, 23 Jan 2019 10:19:36 GMT
WORKDIR /usr/local/apache2
# Wed, 23 Jan 2019 10:19:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libapr1-dev 		libaprutil1-dev 		libaprutil1-ldap 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:19:57 GMT
ENV HTTPD_VERSION=2.4.38
# Wed, 23 Jan 2019 10:19:57 GMT
ENV HTTPD_SHA256=7dc65857a994c98370dc4334b260101a7a04be60e6e74a5c57a6dee1bc8f394a
# Wed, 23 Jan 2019 10:19:58 GMT
ENV HTTPD_PATCHES=
# Wed, 23 Jan 2019 10:19:58 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Wed, 23 Jan 2019 10:22:22 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		dirmngr 		dpkg-dev 		gcc 		gnupg 		liblua5.2-dev 		libnghttp2-dev 		libpcre3-dev 		libssl-dev 		libxml2-dev 		make 		wget 		zlib1g-dev 	; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		httpd -v
# Wed, 23 Jan 2019 10:22:22 GMT
COPY file:8b68ac010cb13f58ebe31c3015d15c988625d2fde7339dca8a84c3c914493323 in /usr/local/bin/ 
# Wed, 23 Jan 2019 10:22:23 GMT
EXPOSE 80
# Wed, 23 Jan 2019 10:22:23 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:583fbf7ac56f75b30837306fc2d7ea455e87b6dd8eed4573d37b90971861e219`  
		Last Modified: Wed, 23 Jan 2019 10:02:22 GMT  
		Size: 21.2 MB (21181826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af3a34032781fd2c2ac47a66e5a256ca04e0f4dd2a0a555b63c0422974de3171`  
		Last Modified: Wed, 23 Jan 2019 10:22:38 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:622f44b8fdf035a6274fef97fa23aebc002a577e8f8267fd5c83f2777753dc12`  
		Last Modified: Wed, 23 Jan 2019 10:22:42 GMT  
		Size: 9.0 MB (8959037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bd3cf02ffe1c7dca8a2644dd307250950ca49cfd97589a34186615377533fe8`  
		Last Modified: Wed, 23 Jan 2019 10:22:43 GMT  
		Size: 16.2 MB (16212611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a9b6f409a237231b596887f4d46b1695c54e038a483ea2d9445e0be4536b136`  
		Last Modified: Wed, 23 Jan 2019 10:22:38 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:latest` - linux; arm variant v7

```console
$ docker pull httpd@sha256:c40ec604ff3df451cfc08db74d4980f65cf1b439bc8ee1cc6e56286d7314733c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.6 MB (43597034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64ff8c05475c4dcc5e9c7173e42f92f48f00d802947ce6bea9f6621a7b834a0d`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:55 GMT
ADD file:c712096b02de85275a955c0292b6e143730d8506009ecc32436b1bd44789dcd1 in / 
# Wed, 23 Jan 2019 13:04:56 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:42:17 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Wed, 23 Jan 2019 13:42:18 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 13:42:19 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Wed, 23 Jan 2019 13:42:20 GMT
WORKDIR /usr/local/apache2
# Wed, 23 Jan 2019 13:42:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libapr1-dev 		libaprutil1-dev 		libaprutil1-ldap 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:42:41 GMT
ENV HTTPD_VERSION=2.4.38
# Wed, 23 Jan 2019 13:42:45 GMT
ENV HTTPD_SHA256=7dc65857a994c98370dc4334b260101a7a04be60e6e74a5c57a6dee1bc8f394a
# Wed, 23 Jan 2019 13:42:45 GMT
ENV HTTPD_PATCHES=
# Wed, 23 Jan 2019 13:42:46 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Wed, 23 Jan 2019 13:45:05 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		dirmngr 		dpkg-dev 		gcc 		gnupg 		liblua5.2-dev 		libnghttp2-dev 		libpcre3-dev 		libssl-dev 		libxml2-dev 		make 		wget 		zlib1g-dev 	; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		httpd -v
# Wed, 23 Jan 2019 13:45:06 GMT
COPY file:8b68ac010cb13f58ebe31c3015d15c988625d2fde7339dca8a84c3c914493323 in /usr/local/bin/ 
# Wed, 23 Jan 2019 13:45:07 GMT
EXPOSE 80
# Wed, 23 Jan 2019 13:45:07 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:433444f4a04d4a68d83dfe1e90ccfe3d02ce163939e9b79dd87136d956b49408`  
		Last Modified: Wed, 23 Jan 2019 13:12:25 GMT  
		Size: 19.3 MB (19290286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61849317c9fbc46707e0fa39452ec7afe31e326846e4b36876fa5c43eed87792`  
		Last Modified: Wed, 23 Jan 2019 13:45:23 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d03bf76106a545778490763b0fbba2c9217cd0a6099d274fa825c9e73b9c31d1`  
		Last Modified: Wed, 23 Jan 2019 13:45:29 GMT  
		Size: 8.5 MB (8458140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a21bda9680e92a3e9d36411cae4bad49aaf6a3e7d8b6d350a6aed9b37e273724`  
		Last Modified: Wed, 23 Jan 2019 13:45:29 GMT  
		Size: 15.8 MB (15848123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9815c7417de835d797edb37a5df6afc51648c020aba4e364b483cd752bd593bb`  
		Last Modified: Wed, 23 Jan 2019 13:45:23 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:latest` - linux; arm64 variant v8

```console
$ docker pull httpd@sha256:9141fee351a5de6f2eddae70916672a75a7629f916d7b19aea92b95e6c05de48
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.7 MB (45706499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a47581f877bad314ca50900b909396e97ed668764dc9b72a95599eb7adbf1f8b`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Wed, 23 Jan 2019 10:04:38 GMT
ADD file:64db5736cabe52ff81a1eb31101c1afa1e4a04374e84ae717532a88286d01784 in / 
# Wed, 23 Jan 2019 10:04:39 GMT
CMD ["bash"]
# Fri, 25 Jan 2019 00:41:56 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Fri, 25 Jan 2019 00:41:58 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Jan 2019 00:42:23 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Fri, 25 Jan 2019 00:42:36 GMT
WORKDIR /usr/local/apache2
# Fri, 25 Jan 2019 00:43:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libapr1-dev 		libaprutil1-dev 		libaprutil1-ldap 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 25 Jan 2019 00:43:58 GMT
ENV HTTPD_VERSION=2.4.38
# Fri, 25 Jan 2019 00:43:59 GMT
ENV HTTPD_SHA256=7dc65857a994c98370dc4334b260101a7a04be60e6e74a5c57a6dee1bc8f394a
# Fri, 25 Jan 2019 00:44:01 GMT
ENV HTTPD_PATCHES=
# Fri, 25 Jan 2019 00:44:03 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Fri, 25 Jan 2019 00:50:31 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		dirmngr 		dpkg-dev 		gcc 		gnupg 		liblua5.2-dev 		libnghttp2-dev 		libpcre3-dev 		libssl-dev 		libxml2-dev 		make 		wget 		zlib1g-dev 	; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		httpd -v
# Fri, 25 Jan 2019 00:50:33 GMT
COPY file:8b68ac010cb13f58ebe31c3015d15c988625d2fde7339dca8a84c3c914493323 in /usr/local/bin/ 
# Fri, 25 Jan 2019 00:50:35 GMT
EXPOSE 80
# Fri, 25 Jan 2019 00:50:37 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:711c3a2baeda87a6b9816cb812388d62d17396034e595a68d8ee5f938f9d77b3`  
		Last Modified: Wed, 23 Jan 2019 10:11:36 GMT  
		Size: 20.4 MB (20350180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cd2c4f90d94294dfde82a5e03ea7f76d76326b0358bb9c95cf5423206ff152e`  
		Last Modified: Fri, 25 Jan 2019 00:51:21 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92440fdce767f3998d0cd4435a5318e6fb0288e72b9ca89a4161ba828deef9d6`  
		Last Modified: Fri, 25 Jan 2019 00:51:26 GMT  
		Size: 9.2 MB (9160750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb494055fe027093fcf4c58db2496c16eabfcc4a069c3113aebede1609623192`  
		Last Modified: Fri, 25 Jan 2019 00:51:28 GMT  
		Size: 16.2 MB (16195115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:759e39afda325f5be165124395217389c206bffbc0f0a373f6edf6aacfe83865`  
		Last Modified: Fri, 25 Jan 2019 00:51:21 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:latest` - linux; 386

```console
$ docker pull httpd@sha256:f65d6c801d7a5655515eecf1ec1aadda18329c859781f97323854a1d02f41203
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.7 MB (53735631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fb196456cefb282ea4390b97340291382eba655320bfdec74c42db6e9459ce1`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Wed, 23 Jan 2019 11:53:14 GMT
ADD file:33ade62bc2e01bcde808effab0eb8a419e852a98f00d20aa90921b4ab336f065 in / 
# Wed, 23 Jan 2019 11:53:15 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:53:50 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Wed, 23 Jan 2019 13:53:50 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 13:53:50 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Wed, 23 Jan 2019 13:53:51 GMT
WORKDIR /usr/local/apache2
# Wed, 23 Jan 2019 13:54:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libapr1-dev 		libaprutil1-dev 		libaprutil1-ldap 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:54:02 GMT
ENV HTTPD_VERSION=2.4.38
# Wed, 23 Jan 2019 13:54:02 GMT
ENV HTTPD_SHA256=7dc65857a994c98370dc4334b260101a7a04be60e6e74a5c57a6dee1bc8f394a
# Wed, 23 Jan 2019 13:54:02 GMT
ENV HTTPD_PATCHES=
# Wed, 23 Jan 2019 13:54:02 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Wed, 23 Jan 2019 13:55:51 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		dirmngr 		dpkg-dev 		gcc 		gnupg 		liblua5.2-dev 		libnghttp2-dev 		libpcre3-dev 		libssl-dev 		libxml2-dev 		make 		wget 		zlib1g-dev 	; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		httpd -v
# Wed, 23 Jan 2019 13:55:51 GMT
COPY file:8b68ac010cb13f58ebe31c3015d15c988625d2fde7339dca8a84c3c914493323 in /usr/local/bin/ 
# Wed, 23 Jan 2019 13:55:51 GMT
EXPOSE 80
# Wed, 23 Jan 2019 13:55:52 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:7900f805f4cf31befea34795a27462a91c7e89405b1016d7762ebda023f3cf21`  
		Last Modified: Wed, 23 Jan 2019 12:02:40 GMT  
		Size: 23.1 MB (23147117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b42f94bd1e334d63cb054878d552220a8722a2f9ed7e8ee2cbd1db8ced737072`  
		Last Modified: Wed, 23 Jan 2019 13:56:10 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c88197cbe7edd29842338ab07e5f87087e231cbb6585ddd81181643df85d5b2`  
		Last Modified: Wed, 23 Jan 2019 13:56:15 GMT  
		Size: 13.9 MB (13901534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc3c508bba76b3566630dc4c065d48cd23720820b1b252669932368fa2d9b128`  
		Last Modified: Wed, 23 Jan 2019 13:56:15 GMT  
		Size: 16.7 MB (16686529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4adb48a177371799536df514189c4032b3f78131ec989bc3fcc4b5e765831200`  
		Last Modified: Wed, 23 Jan 2019 13:56:10 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:latest` - linux; ppc64le

```console
$ docker pull httpd@sha256:fb029aaccf96664c8686628f85cc1cb5fe768e640a5a441aee9b4f50ad707244
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.4 MB (49366507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7a72462f942bfa1e23a4b474cc51daded29bcd6d4fe9b5429057b9cb83d0fb4`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Wed, 23 Jan 2019 09:27:25 GMT
ADD file:0319b2e5714eb9ca36cdff43e04c2bfeef2d75df874454b811aea2ca19689f38 in / 
# Wed, 23 Jan 2019 09:27:28 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 10:59:32 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Wed, 23 Jan 2019 10:59:35 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 10:59:44 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Wed, 23 Jan 2019 10:59:47 GMT
WORKDIR /usr/local/apache2
# Wed, 23 Jan 2019 11:00:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libapr1-dev 		libaprutil1-dev 		libaprutil1-ldap 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 11:00:54 GMT
ENV HTTPD_VERSION=2.4.38
# Wed, 23 Jan 2019 11:00:56 GMT
ENV HTTPD_SHA256=7dc65857a994c98370dc4334b260101a7a04be60e6e74a5c57a6dee1bc8f394a
# Wed, 23 Jan 2019 11:00:59 GMT
ENV HTTPD_PATCHES=
# Wed, 23 Jan 2019 11:01:02 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Wed, 23 Jan 2019 11:04:51 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		dirmngr 		dpkg-dev 		gcc 		gnupg 		liblua5.2-dev 		libnghttp2-dev 		libpcre3-dev 		libssl-dev 		libxml2-dev 		make 		wget 		zlib1g-dev 	; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		httpd -v
# Wed, 23 Jan 2019 11:04:54 GMT
COPY file:8b68ac010cb13f58ebe31c3015d15c988625d2fde7339dca8a84c3c914493323 in /usr/local/bin/ 
# Wed, 23 Jan 2019 11:04:56 GMT
EXPOSE 80
# Wed, 23 Jan 2019 11:05:00 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:6c5a75a07494bd17f6469a546426663557e2f61d5e776afb51fd406a92082ef1`  
		Last Modified: Wed, 23 Jan 2019 09:33:42 GMT  
		Size: 22.8 MB (22755331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec46f427f519ff7b6fdb098d98e7120305e2ee1edc43b291cc37c2756574acfc`  
		Last Modified: Wed, 23 Jan 2019 11:05:22 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f4ced01fe066a0220e37a4755ae87ff1f0326a17cb162924592c5a6ebe0c747`  
		Last Modified: Wed, 23 Jan 2019 11:05:26 GMT  
		Size: 9.9 MB (9869247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7fa46f9c8d4cb7ec87b9dfcfc73ed31e640ebf2a1daee1ce86e0d18a0fa4017`  
		Last Modified: Wed, 23 Jan 2019 11:05:27 GMT  
		Size: 16.7 MB (16741446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef92c46df012a2f275aad9e50a0edbd6a3980b954c5b7711a830441270023021`  
		Last Modified: Wed, 23 Jan 2019 11:05:22 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:latest` - linux; s390x

```console
$ docker pull httpd@sha256:e8e64b08ec4936062c973a7318c96f8468110e4a79e17dc63580ea4352a0302f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.1 MB (50080965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72f28a49a773865755555ec1e06367cd3cd10d09c698c511bf9f8728820a88a8`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Wed, 23 Jan 2019 12:44:35 GMT
ADD file:9ec2f952473b440ce27a29c354764178258274d4f97e1b3490238eb594dddf16 in / 
# Wed, 23 Jan 2019 12:44:35 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:36:34 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Wed, 23 Jan 2019 13:36:34 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 13:36:35 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Wed, 23 Jan 2019 13:36:35 GMT
WORKDIR /usr/local/apache2
# Wed, 23 Jan 2019 13:36:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libapr1-dev 		libaprutil1-dev 		libaprutil1-ldap 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:36:47 GMT
ENV HTTPD_VERSION=2.4.38
# Wed, 23 Jan 2019 13:36:47 GMT
ENV HTTPD_SHA256=7dc65857a994c98370dc4334b260101a7a04be60e6e74a5c57a6dee1bc8f394a
# Wed, 23 Jan 2019 13:36:47 GMT
ENV HTTPD_PATCHES=
# Wed, 23 Jan 2019 13:36:48 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Wed, 23 Jan 2019 13:38:18 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		dirmngr 		dpkg-dev 		gcc 		gnupg 		liblua5.2-dev 		libnghttp2-dev 		libpcre3-dev 		libssl-dev 		libxml2-dev 		make 		wget 		zlib1g-dev 	; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		httpd -v
# Wed, 23 Jan 2019 13:38:18 GMT
COPY file:8b68ac010cb13f58ebe31c3015d15c988625d2fde7339dca8a84c3c914493323 in /usr/local/bin/ 
# Wed, 23 Jan 2019 13:38:18 GMT
EXPOSE 80
# Wed, 23 Jan 2019 13:38:18 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:99e7bb47d7df9eb7625dccfcacd2c4e8a458ac70850b46efa85d64fac11c6bd2`  
		Last Modified: Wed, 23 Jan 2019 12:48:55 GMT  
		Size: 22.4 MB (22353499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b21657d80c3ec7e71bec5ae2890880bccdb0314bff2b16a0c1de83ad2d6d6cba`  
		Last Modified: Wed, 23 Jan 2019 13:38:52 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f3c6176acaefb4c1403adce3501923acda1a38e694e5d39b852d39a51a3cf1c`  
		Last Modified: Wed, 23 Jan 2019 13:38:56 GMT  
		Size: 11.0 MB (11005672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e55b63698d6483ddee59387bad56fc3b0da2e745dd7f88a0999a379554724d52`  
		Last Modified: Wed, 23 Jan 2019 13:38:56 GMT  
		Size: 16.7 MB (16721342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5dc64b2c824929cdc16e6628701bf195adf53f4ecc9d34bdf3db8f317793269`  
		Last Modified: Wed, 23 Jan 2019 13:38:52 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
