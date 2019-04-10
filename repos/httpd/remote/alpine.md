## `httpd:alpine`

```console
$ docker pull httpd@sha256:e0883303f41497653ace285791081a68181a340d6736b4ff11dfa7ae13d82ecd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `httpd:alpine` - linux; amd64

```console
$ docker pull httpd@sha256:09791352c06d59e793418f8fd80a0cbef03e6df3534de63752c07facde0c6b17
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.8 MB (40775553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d42e93b142c4e5c1043a37cce0d9aabdceb3b0df178c6de8530569fd37235d0`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Tue, 09 Apr 2019 23:52:09 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Tue, 09 Apr 2019 23:52:09 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 09 Apr 2019 23:52:09 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 09 Apr 2019 23:52:10 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 09 Apr 2019 23:52:10 GMT
WORKDIR /usr/local/apache2
# Tue, 09 Apr 2019 23:52:10 GMT
ENV HTTPD_VERSION=2.4.39
# Tue, 09 Apr 2019 23:52:10 GMT
ENV HTTPD_SHA256=b4ca9d05773aa59b54d66cd8f4744b945289f084d3be17d7981d1783a5decfa2
# Tue, 09 Apr 2019 23:52:10 GMT
ENV HTTPD_PATCHES=
# Tue, 09 Apr 2019 23:52:11 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Tue, 09 Apr 2019 23:54:20 GMT
RUN set -eux; 		runDeps=' 		apr-dev 		apr-util-dev 		apr-util-ldap 		perl 	'; 	apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		libxml2-dev 		lua-dev 		make 		nghttp2-dev 		openssl 		openssl-dev 		pcre-dev 		tar 		zlib-dev 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		-e 's!^(\s*TransferLog)\s+\S+!\1 /proc/self/fd/1!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		"$HTTPD_PREFIX/conf/extra/httpd-ssl.conf" 	; 		runDeps="$runDeps $( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .httpd-rundeps $runDeps; 	apk del .build-deps; 		httpd -v
# Tue, 09 Apr 2019 23:54:20 GMT
COPY file:8b68ac010cb13f58ebe31c3015d15c988625d2fde7339dca8a84c3c914493323 in /usr/local/bin/ 
# Tue, 09 Apr 2019 23:54:20 GMT
EXPOSE 80
# Tue, 09 Apr 2019 23:54:20 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7050d01d30561e39c018b06a3d4b01eeea5905c745b9436d6ec9d3d8d00c7e7a`  
		Last Modified: Tue, 09 Apr 2019 23:54:46 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d24d6c93d86046710816253a9a58fc68a22491e6432d422dffcf6abadf08d7a`  
		Last Modified: Tue, 09 Apr 2019 23:54:47 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dd5947c3bef88b0403e0c00846a07149c9ec346c34fea96a435942cd3df47bb`  
		Last Modified: Tue, 09 Apr 2019 23:54:58 GMT  
		Size: 38.0 MB (38016856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfeedfe004a262ed567411bcab79b38b5fb589fb834f43f8f4964fc06c3ca8c9`  
		Last Modified: Tue, 09 Apr 2019 23:54:46 GMT  
		Size: 288.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:alpine` - linux; arm variant v6

```console
$ docker pull httpd@sha256:c94f5499a9538db6687a059f7e4fdb37089ea23904eb1f4447fcd06401643462
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 MB (37682618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8ef6e5ce91239e48bedf85e140a71911d0fda075a135f327c8825da2bc59511`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Wed, 10 Apr 2019 07:49:49 GMT
ADD file:a436c215187a8aeeb53f8266f96bd40adc3856bb6dc3fe766542e69831ffa7c9 in / 
# Wed, 10 Apr 2019 07:49:49 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 08:06:14 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 10 Apr 2019 08:06:14 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Wed, 10 Apr 2019 08:06:15 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 Apr 2019 08:06:16 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Wed, 10 Apr 2019 08:06:17 GMT
WORKDIR /usr/local/apache2
# Wed, 10 Apr 2019 08:06:17 GMT
ENV HTTPD_VERSION=2.4.39
# Wed, 10 Apr 2019 08:06:18 GMT
ENV HTTPD_SHA256=b4ca9d05773aa59b54d66cd8f4744b945289f084d3be17d7981d1783a5decfa2
# Wed, 10 Apr 2019 08:06:18 GMT
ENV HTTPD_PATCHES=
# Wed, 10 Apr 2019 08:06:18 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Wed, 10 Apr 2019 08:07:37 GMT
RUN set -eux; 		runDeps=' 		apr-dev 		apr-util-dev 		apr-util-ldap 		perl 	'; 	apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		libxml2-dev 		lua-dev 		make 		nghttp2-dev 		openssl 		openssl-dev 		pcre-dev 		tar 		zlib-dev 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		-e 's!^(\s*TransferLog)\s+\S+!\1 /proc/self/fd/1!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		"$HTTPD_PREFIX/conf/extra/httpd-ssl.conf" 	; 		runDeps="$runDeps $( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .httpd-rundeps $runDeps; 	apk del .build-deps; 		httpd -v
# Wed, 10 Apr 2019 08:07:38 GMT
COPY file:8b68ac010cb13f58ebe31c3015d15c988625d2fde7339dca8a84c3c914493323 in /usr/local/bin/ 
# Wed, 10 Apr 2019 08:07:39 GMT
EXPOSE 80
# Wed, 10 Apr 2019 08:07:39 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:9d34ec1d9f3e63864b68d564a237efd2e3778f39a85961f7bdcb3937084070e1`  
		Last Modified: Wed, 10 Apr 2019 07:50:15 GMT  
		Size: 2.5 MB (2543441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbe40e309d5f1e1fa41e1b2cb19541ff0e645338a06b22ee2445a28261534951`  
		Last Modified: Wed, 10 Apr 2019 08:08:01 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06c0af9c9ec653442bba6b61fedcac4ae38cdc652e22c19668618594f00ab3f1`  
		Last Modified: Wed, 10 Apr 2019 08:08:01 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9340b5204ec3d1919455a4f624872556e6b18ff9ea36516e768956ff94fb8f60`  
		Last Modified: Wed, 10 Apr 2019 08:08:15 GMT  
		Size: 35.1 MB (35137429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:713eac2f068f163e06715515bba6399d513f14984aa24dfd9e0765c6be4fa06a`  
		Last Modified: Wed, 10 Apr 2019 08:08:01 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:alpine` - linux; arm variant v7

```console
$ docker pull httpd@sha256:fac10a7348892b1b85c54f665afabcc372c79734696066b60d71c395b96871c9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.1 MB (36094844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9efbc56e285813147922a650b814fb9cfd1568087c6fdded295b4e68b7c664e`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Wed, 10 Apr 2019 11:57:47 GMT
ADD file:1a27b74f23795a1f205247dcd6eff48ac56f0b8f2afe0c358199a0b60f694861 in / 
# Wed, 10 Apr 2019 11:57:48 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 12:43:41 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 10 Apr 2019 12:43:41 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Wed, 10 Apr 2019 12:43:42 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 Apr 2019 12:43:43 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Wed, 10 Apr 2019 12:43:43 GMT
WORKDIR /usr/local/apache2
# Wed, 10 Apr 2019 12:43:44 GMT
ENV HTTPD_VERSION=2.4.39
# Wed, 10 Apr 2019 12:43:44 GMT
ENV HTTPD_SHA256=b4ca9d05773aa59b54d66cd8f4744b945289f084d3be17d7981d1783a5decfa2
# Wed, 10 Apr 2019 12:43:45 GMT
ENV HTTPD_PATCHES=
# Wed, 10 Apr 2019 12:43:45 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Wed, 10 Apr 2019 12:45:09 GMT
RUN set -eux; 		runDeps=' 		apr-dev 		apr-util-dev 		apr-util-ldap 		perl 	'; 	apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		libxml2-dev 		lua-dev 		make 		nghttp2-dev 		openssl 		openssl-dev 		pcre-dev 		tar 		zlib-dev 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		-e 's!^(\s*TransferLog)\s+\S+!\1 /proc/self/fd/1!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		"$HTTPD_PREFIX/conf/extra/httpd-ssl.conf" 	; 		runDeps="$runDeps $( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .httpd-rundeps $runDeps; 	apk del .build-deps; 		httpd -v
# Wed, 10 Apr 2019 12:45:10 GMT
COPY file:8b68ac010cb13f58ebe31c3015d15c988625d2fde7339dca8a84c3c914493323 in /usr/local/bin/ 
# Wed, 10 Apr 2019 12:45:10 GMT
EXPOSE 80
# Wed, 10 Apr 2019 12:45:11 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:c2a5cdd4aa08146b4516cc95f6b461f2994250a819b3e6f75f23fa2a8c1b1744`  
		Last Modified: Wed, 10 Apr 2019 11:58:04 GMT  
		Size: 2.4 MB (2350757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e83ccf95a34f5f17254ac4766db7c91d60ef2739f862611fb42f7a7bbfd9849f`  
		Last Modified: Wed, 10 Apr 2019 12:45:31 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1acb1f5f866e8d2b088a60276b5a571713fa55e11562012b4c82757640db8c2c`  
		Last Modified: Wed, 10 Apr 2019 12:45:31 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f2e0e729fc6660851622e9198de129125c2690c2a08fc5bfb2e68a48d36ff42`  
		Last Modified: Wed, 10 Apr 2019 12:45:45 GMT  
		Size: 33.7 MB (33742340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d21fed054fbe359c3b349b8a77b2ee81d8e57ed1612c7fa118a472b804a5207`  
		Last Modified: Wed, 10 Apr 2019 12:45:31 GMT  
		Size: 288.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:alpine` - linux; arm64 variant v8

```console
$ docker pull httpd@sha256:c51e5bb561bd4d5c92dd8d648fbeecb6b92dc5bd8a693c6d6e3f5eacf21edef7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.4 MB (40352579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74b811dddaa20246faefe32e635db4170dc20705c5a3d64f269e9bfdcd806170`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Wed, 10 Apr 2019 08:49:11 GMT
ADD file:30e0a8ccdca70b20b8ce637f0ba5108157f4ba491447d20aafbe45d82392bd81 in / 
# Wed, 10 Apr 2019 08:49:12 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 09:26:25 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 10 Apr 2019 09:26:26 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Wed, 10 Apr 2019 09:26:27 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 Apr 2019 09:26:30 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Wed, 10 Apr 2019 09:26:31 GMT
WORKDIR /usr/local/apache2
# Wed, 10 Apr 2019 09:26:31 GMT
ENV HTTPD_VERSION=2.4.39
# Wed, 10 Apr 2019 09:26:32 GMT
ENV HTTPD_SHA256=b4ca9d05773aa59b54d66cd8f4744b945289f084d3be17d7981d1783a5decfa2
# Wed, 10 Apr 2019 09:26:33 GMT
ENV HTTPD_PATCHES=
# Wed, 10 Apr 2019 09:26:34 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Wed, 10 Apr 2019 09:29:11 GMT
RUN set -eux; 		runDeps=' 		apr-dev 		apr-util-dev 		apr-util-ldap 		perl 	'; 	apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		libxml2-dev 		lua-dev 		make 		nghttp2-dev 		openssl 		openssl-dev 		pcre-dev 		tar 		zlib-dev 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		-e 's!^(\s*TransferLog)\s+\S+!\1 /proc/self/fd/1!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		"$HTTPD_PREFIX/conf/extra/httpd-ssl.conf" 	; 		runDeps="$runDeps $( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .httpd-rundeps $runDeps; 	apk del .build-deps; 		httpd -v
# Wed, 10 Apr 2019 09:29:12 GMT
COPY file:8b68ac010cb13f58ebe31c3015d15c988625d2fde7339dca8a84c3c914493323 in /usr/local/bin/ 
# Wed, 10 Apr 2019 09:29:12 GMT
EXPOSE 80
# Wed, 10 Apr 2019 09:29:13 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:6f37394be673296a0fdc21b819c5df40431baf7d3af121bee451726dd1457493`  
		Last Modified: Wed, 10 Apr 2019 08:50:38 GMT  
		Size: 2.7 MB (2688778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb17f84eaddfcaccf77f2ae79bb7c916f8d4f230ca3bd4a21195594e8404b6cd`  
		Last Modified: Wed, 10 Apr 2019 09:29:38 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51b1a4b079073ac35c37dc9520084b4f583a5bb12641e27c9caa23a47f0fbe8e`  
		Last Modified: Wed, 10 Apr 2019 09:29:38 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b19e5eb9e6d175dead6b6023d449c9e919249951e3bae9b3da6c6e660377b57`  
		Last Modified: Wed, 10 Apr 2019 09:29:57 GMT  
		Size: 37.7 MB (37662117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06a4b5c2a061d1ed1d922e77a5c2a2e63dde9817f1afbb962697f202d7492ae3`  
		Last Modified: Wed, 10 Apr 2019 09:29:39 GMT  
		Size: 288.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:alpine` - linux; 386

```console
$ docker pull httpd@sha256:4de8732995800e2af6cf77c95aaa23699f5ef5171fbf83ff4c5adddf3216c638
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.0 MB (39994497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2e65c956a782fab1e0633a6210577484f8a9f032c33bd66445e7b3fcc7b85e7`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Wed, 10 Apr 2019 10:38:55 GMT
ADD file:51f7bb95ef6cc3519317dcb7abbf6155e6bb7b73a17ad7d90cad7911e8a8933c in / 
# Wed, 10 Apr 2019 10:38:55 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 11:53:57 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 10 Apr 2019 11:53:57 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Wed, 10 Apr 2019 11:53:57 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 Apr 2019 11:53:58 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Wed, 10 Apr 2019 11:53:58 GMT
WORKDIR /usr/local/apache2
# Wed, 10 Apr 2019 11:53:58 GMT
ENV HTTPD_VERSION=2.4.39
# Wed, 10 Apr 2019 11:53:58 GMT
ENV HTTPD_SHA256=b4ca9d05773aa59b54d66cd8f4744b945289f084d3be17d7981d1783a5decfa2
# Wed, 10 Apr 2019 11:53:59 GMT
ENV HTTPD_PATCHES=
# Wed, 10 Apr 2019 11:53:59 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Wed, 10 Apr 2019 11:55:08 GMT
RUN set -eux; 		runDeps=' 		apr-dev 		apr-util-dev 		apr-util-ldap 		perl 	'; 	apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		libxml2-dev 		lua-dev 		make 		nghttp2-dev 		openssl 		openssl-dev 		pcre-dev 		tar 		zlib-dev 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		-e 's!^(\s*TransferLog)\s+\S+!\1 /proc/self/fd/1!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		"$HTTPD_PREFIX/conf/extra/httpd-ssl.conf" 	; 		runDeps="$runDeps $( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .httpd-rundeps $runDeps; 	apk del .build-deps; 		httpd -v
# Wed, 10 Apr 2019 11:55:08 GMT
COPY file:8b68ac010cb13f58ebe31c3015d15c988625d2fde7339dca8a84c3c914493323 in /usr/local/bin/ 
# Wed, 10 Apr 2019 11:55:09 GMT
EXPOSE 80
# Wed, 10 Apr 2019 11:55:09 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:9a81e6a1a3b4f174d22173a96692c9aeffaefcd00f40607d508951a2b14d6f1f`  
		Last Modified: Wed, 10 Apr 2019 10:39:15 GMT  
		Size: 2.8 MB (2752162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4339099bb0865f5d6843c07e7ca15eb96755b11ffeed72e1a31f3f9406f319f1`  
		Last Modified: Wed, 10 Apr 2019 11:55:29 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2ce91d2b43b900ffcb54653a79b531a4d7d152fc23e897fa1a0547e5836c170`  
		Last Modified: Wed, 10 Apr 2019 11:55:29 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41e2573c1929935c08931b407e459ab0a8a0991d315016b3adae582e90cc503b`  
		Last Modified: Wed, 10 Apr 2019 11:55:39 GMT  
		Size: 37.2 MB (37240650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d89c3d655d7c8f6f470647150adae71b64b398287685a9a32694909b5d9db67`  
		Last Modified: Wed, 10 Apr 2019 11:55:29 GMT  
		Size: 286.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:alpine` - linux; ppc64le

```console
$ docker pull httpd@sha256:8afcd0a4c7833ef1f066eba0103036de00ba77bc7b3c4ab84e0073c3a2c7278a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.4 MB (41448156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:278d92125f0d97fe069312179a84d3500f17ea58cee0c67e2ff891dd5be1991f`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Wed, 10 Apr 2019 08:27:30 GMT
ADD file:c13c1c2b4e6d71924f570a910caf6a1756ea5a28a4017c7b11305e021eacd0ee in / 
# Wed, 10 Apr 2019 08:27:33 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 10:02:35 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 10 Apr 2019 10:02:38 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Wed, 10 Apr 2019 10:02:45 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 Apr 2019 10:03:01 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Wed, 10 Apr 2019 10:03:08 GMT
WORKDIR /usr/local/apache2
# Wed, 10 Apr 2019 10:03:12 GMT
ENV HTTPD_VERSION=2.4.39
# Wed, 10 Apr 2019 10:03:16 GMT
ENV HTTPD_SHA256=b4ca9d05773aa59b54d66cd8f4744b945289f084d3be17d7981d1783a5decfa2
# Wed, 10 Apr 2019 10:03:21 GMT
ENV HTTPD_PATCHES=
# Wed, 10 Apr 2019 10:03:28 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Wed, 10 Apr 2019 10:05:30 GMT
RUN set -eux; 		runDeps=' 		apr-dev 		apr-util-dev 		apr-util-ldap 		perl 	'; 	apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		libxml2-dev 		lua-dev 		make 		nghttp2-dev 		openssl 		openssl-dev 		pcre-dev 		tar 		zlib-dev 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		-e 's!^(\s*TransferLog)\s+\S+!\1 /proc/self/fd/1!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		"$HTTPD_PREFIX/conf/extra/httpd-ssl.conf" 	; 		runDeps="$runDeps $( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .httpd-rundeps $runDeps; 	apk del .build-deps; 		httpd -v
# Wed, 10 Apr 2019 10:05:35 GMT
COPY file:8b68ac010cb13f58ebe31c3015d15c988625d2fde7339dca8a84c3c914493323 in /usr/local/bin/ 
# Wed, 10 Apr 2019 10:05:42 GMT
EXPOSE 80
# Wed, 10 Apr 2019 10:05:51 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:fe0f92a92ee06f38abf50fefd22331ac42262e3872ecd2d7ddfa7c24ab71a53a`  
		Last Modified: Wed, 10 Apr 2019 08:28:34 GMT  
		Size: 2.8 MB (2781020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cf61545f8719474c4878b844c696de862475ee2ebe6ef9609965a4276490c76`  
		Last Modified: Wed, 10 Apr 2019 10:06:29 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34798ca86d3a3261143db1c4c0221dfb8ed4249682411c832ce2281eb45ae17e`  
		Last Modified: Wed, 10 Apr 2019 10:06:29 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9498dcb8fb7d42427e5783ab9add46f21b2187266238e072de8b403774e08e6`  
		Last Modified: Wed, 10 Apr 2019 10:06:41 GMT  
		Size: 38.7 MB (38665386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62786aab454cdafdeba3e780203988cb47cb8f1ee28cbb697c633909db85c808`  
		Last Modified: Wed, 10 Apr 2019 10:06:29 GMT  
		Size: 291.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:alpine` - linux; s390x

```console
$ docker pull httpd@sha256:8efbc17fc9ec9c45042afbb8f5e789db8b5fde10e78aad9611bfb05e76e3a588
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.9 MB (40926829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b6c997ddc06ca0afadc61f2c24d1160a9311a6dd0d2b7b93555d083b2be01b5`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Wed, 10 Apr 2019 11:42:23 GMT
ADD file:ab106eb2cf4bf0e1ca7861a56dc24e44dd206fd3ae8d3587684324e5c11136f4 in / 
# Wed, 10 Apr 2019 11:42:23 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 12:02:12 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 10 Apr 2019 12:02:12 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Wed, 10 Apr 2019 12:02:13 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 Apr 2019 12:02:15 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Wed, 10 Apr 2019 12:02:16 GMT
WORKDIR /usr/local/apache2
# Wed, 10 Apr 2019 12:02:16 GMT
ENV HTTPD_VERSION=2.4.39
# Wed, 10 Apr 2019 12:02:17 GMT
ENV HTTPD_SHA256=b4ca9d05773aa59b54d66cd8f4744b945289f084d3be17d7981d1783a5decfa2
# Wed, 10 Apr 2019 12:02:17 GMT
ENV HTTPD_PATCHES=
# Wed, 10 Apr 2019 12:02:17 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Wed, 10 Apr 2019 12:05:03 GMT
RUN set -eux; 		runDeps=' 		apr-dev 		apr-util-dev 		apr-util-ldap 		perl 	'; 	apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		libxml2-dev 		lua-dev 		make 		nghttp2-dev 		openssl 		openssl-dev 		pcre-dev 		tar 		zlib-dev 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		-e 's!^(\s*TransferLog)\s+\S+!\1 /proc/self/fd/1!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		"$HTTPD_PREFIX/conf/extra/httpd-ssl.conf" 	; 		runDeps="$runDeps $( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .httpd-rundeps $runDeps; 	apk del .build-deps; 		httpd -v
# Wed, 10 Apr 2019 12:05:04 GMT
COPY file:8b68ac010cb13f58ebe31c3015d15c988625d2fde7339dca8a84c3c914493323 in /usr/local/bin/ 
# Wed, 10 Apr 2019 12:05:04 GMT
EXPOSE 80
# Wed, 10 Apr 2019 12:05:04 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:5b51e37a522c2e7cd3c67e8a3e5500b45189ea6698e9fdaed7f5d48282326633`  
		Last Modified: Wed, 10 Apr 2019 11:43:06 GMT  
		Size: 2.5 MB (2543326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff08a7f332189a4a546c9244112151c08002cf8a2cf0b887fda15733989f9f6`  
		Last Modified: Wed, 10 Apr 2019 12:05:41 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5531725742e68aaa4ecf6d16c8f997f50d519f557097c15a1c1f5190a6b97b14`  
		Last Modified: Wed, 10 Apr 2019 12:05:41 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb6faa30a8763129a8da2e63581ea5f5856b323079df65e71115992274af6246`  
		Last Modified: Wed, 10 Apr 2019 12:06:05 GMT  
		Size: 38.4 MB (38381817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5888b842d9e1dace7cc5a62f0cfb643cd6d84bde7c745931b3d504f43cb1c642`  
		Last Modified: Wed, 10 Apr 2019 12:05:41 GMT  
		Size: 286.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
