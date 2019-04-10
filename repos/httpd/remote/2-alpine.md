## `httpd:2-alpine`

```console
$ docker pull httpd@sha256:7af43307483b57185698a6e6216baed6b6c8984e242f1544c5f88fd676af9e60
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

### `httpd:2-alpine` - linux; amd64

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

### `httpd:2-alpine` - linux; arm variant v6

```console
$ docker pull httpd@sha256:4b80c7556e2ded125cebb7629d5d658b84e240df76a5b3feda03e5ece35cff57
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.3 MB (39286270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b89e8b0c3b2f5438f9a54f5204944eeed4f9dd316552a1fabbd48cf52f49b472`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:08:34 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 08 Mar 2019 04:08:34 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Fri, 08 Mar 2019 04:08:34 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Mar 2019 04:08:35 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Fri, 08 Mar 2019 04:08:36 GMT
WORKDIR /usr/local/apache2
# Wed, 03 Apr 2019 07:50:10 GMT
ENV HTTPD_VERSION=2.4.39
# Wed, 03 Apr 2019 07:50:10 GMT
ENV HTTPD_SHA256=b4ca9d05773aa59b54d66cd8f4744b945289f084d3be17d7981d1783a5decfa2
# Wed, 03 Apr 2019 07:50:11 GMT
ENV HTTPD_PATCHES=
# Wed, 03 Apr 2019 07:50:12 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Wed, 03 Apr 2019 07:51:27 GMT
RUN set -eux; 		runDeps=' 		apr-dev 		apr-util-dev 		apr-util-ldap 		perl 	'; 	apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		libxml2-dev 		lua-dev 		make 		nghttp2-dev 		openssl 		openssl-dev 		pcre-dev 		tar 		zlib-dev 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		-e 's!^(\s*TransferLog)\s+\S+!\1 /proc/self/fd/1!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		"$HTTPD_PREFIX/conf/extra/httpd-ssl.conf" 	; 		runDeps="$runDeps $( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .httpd-rundeps $runDeps; 	apk del .build-deps; 		httpd -v
# Wed, 03 Apr 2019 07:51:29 GMT
COPY file:8b68ac010cb13f58ebe31c3015d15c988625d2fde7339dca8a84c3c914493323 in /usr/local/bin/ 
# Wed, 03 Apr 2019 07:51:29 GMT
EXPOSE 80
# Wed, 03 Apr 2019 07:51:29 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:794bc38089d4db935b76943de2f17202912d08678a74f86dffe51512bb400288`  
		Last Modified: Fri, 08 Mar 2019 04:10:21 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efce21e7aeb1b4f7d24418b2148d28b15c4fe7358b75f3074e1d0a18e9b5b349`  
		Last Modified: Fri, 08 Mar 2019 04:10:21 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:997f0e2f9dfc522469dbd1ca0c03632f5ec50dd63bed6c1046aa6f2645554267`  
		Last Modified: Wed, 03 Apr 2019 07:51:57 GMT  
		Size: 36.7 MB (36743840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f2be266caee029076e327cae3bf01cf2bab5b6aabd3035fd60011517d4c0873`  
		Last Modified: Wed, 03 Apr 2019 07:51:43 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2-alpine` - linux; arm variant v7

```console
$ docker pull httpd@sha256:4f942b378a70e738dea26d28ce8180e5b931829abfd73bc21de3a6ae875e3885
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 MB (37601284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c38d7ce4da9116bb1d563ee285ab4d7561bddbb04f56a58e3c189a12ba6e3590`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:52 GMT
ADD file:e9ae09c8f3973b62bf7e10dd8b9251e50f5479c0d8d1644f632f3886e02c7323 in / 
# Fri, 08 Mar 2019 03:35:52 GMT
CMD ["/bin/sh"]
# Tue, 12 Mar 2019 12:08:57 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Tue, 12 Mar 2019 12:08:58 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 12 Mar 2019 12:08:58 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Mar 2019 12:09:00 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 12 Mar 2019 12:09:00 GMT
WORKDIR /usr/local/apache2
# Wed, 03 Apr 2019 12:04:21 GMT
ENV HTTPD_VERSION=2.4.39
# Wed, 03 Apr 2019 12:04:21 GMT
ENV HTTPD_SHA256=b4ca9d05773aa59b54d66cd8f4744b945289f084d3be17d7981d1783a5decfa2
# Wed, 03 Apr 2019 12:04:22 GMT
ENV HTTPD_PATCHES=
# Wed, 03 Apr 2019 12:04:22 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Wed, 03 Apr 2019 12:05:46 GMT
RUN set -eux; 		runDeps=' 		apr-dev 		apr-util-dev 		apr-util-ldap 		perl 	'; 	apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		libxml2-dev 		lua-dev 		make 		nghttp2-dev 		openssl 		openssl-dev 		pcre-dev 		tar 		zlib-dev 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		-e 's!^(\s*TransferLog)\s+\S+!\1 /proc/self/fd/1!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		"$HTTPD_PREFIX/conf/extra/httpd-ssl.conf" 	; 		runDeps="$runDeps $( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .httpd-rundeps $runDeps; 	apk del .build-deps; 		httpd -v
# Wed, 03 Apr 2019 12:05:47 GMT
COPY file:8b68ac010cb13f58ebe31c3015d15c988625d2fde7339dca8a84c3c914493323 in /usr/local/bin/ 
# Wed, 03 Apr 2019 12:05:47 GMT
EXPOSE 80
# Wed, 03 Apr 2019 12:05:48 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:d8d287cbc5740a5d49f37493eecadafc220fee4fd570329023344cad978c4272`  
		Last Modified: Tue, 05 Mar 2019 08:53:06 GMT  
		Size: 2.3 MB (2348580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dad53730d364ac5b4b76c5a492277299e2413b186af44b072e993b3b88f046b`  
		Last Modified: Tue, 12 Mar 2019 12:10:32 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e1fb498b7b7986864f88a0532461265077cc89d0100fed58c1b2a6e4677fa2d`  
		Last Modified: Tue, 12 Mar 2019 12:10:32 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b736725045195ebc069cc01f0a857de08466621994dda1c19af9acc665061e56`  
		Last Modified: Wed, 03 Apr 2019 12:06:46 GMT  
		Size: 35.3 MB (35250949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68dccc0afc7b5972cef68461093caa4a96e6fb0d874b628f8190c9e0b8364082`  
		Last Modified: Wed, 03 Apr 2019 12:06:32 GMT  
		Size: 292.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2-alpine` - linux; arm64 variant v8

```console
$ docker pull httpd@sha256:7c2cd4234bc95e49b252bfaeab2cc7ff5f5d1bb3d41bf153e7b48f853eb220e9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.1 MB (42131326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:784884c59c4c8d88b8808c02a84f44a841ba8fcc970a730a3339363ec93096e5`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:24:32 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 08 Mar 2019 04:24:33 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Fri, 08 Mar 2019 04:24:34 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Mar 2019 04:24:36 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Fri, 08 Mar 2019 04:24:37 GMT
WORKDIR /usr/local/apache2
# Wed, 03 Apr 2019 09:03:00 GMT
ENV HTTPD_VERSION=2.4.39
# Wed, 03 Apr 2019 09:03:01 GMT
ENV HTTPD_SHA256=b4ca9d05773aa59b54d66cd8f4744b945289f084d3be17d7981d1783a5decfa2
# Wed, 03 Apr 2019 09:03:02 GMT
ENV HTTPD_PATCHES=
# Wed, 03 Apr 2019 09:03:04 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Wed, 03 Apr 2019 09:05:02 GMT
RUN set -eux; 		runDeps=' 		apr-dev 		apr-util-dev 		apr-util-ldap 		perl 	'; 	apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		libxml2-dev 		lua-dev 		make 		nghttp2-dev 		openssl 		openssl-dev 		pcre-dev 		tar 		zlib-dev 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		-e 's!^(\s*TransferLog)\s+\S+!\1 /proc/self/fd/1!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		"$HTTPD_PREFIX/conf/extra/httpd-ssl.conf" 	; 		runDeps="$runDeps $( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .httpd-rundeps $runDeps; 	apk del .build-deps; 		httpd -v
# Wed, 03 Apr 2019 09:05:03 GMT
COPY file:8b68ac010cb13f58ebe31c3015d15c988625d2fde7339dca8a84c3c914493323 in /usr/local/bin/ 
# Wed, 03 Apr 2019 09:05:04 GMT
EXPOSE 80
# Wed, 03 Apr 2019 09:05:06 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720cbb68d917c2016db0d903ce4b8eeea9a5725b2db1b6b2373daa5583aaafc8`  
		Last Modified: Fri, 08 Mar 2019 04:27:53 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7af3b5bb047eba2b8fc2d7205ccabda373f51c04f2ccf1f90a29a5c5f49ad72a`  
		Last Modified: Fri, 08 Mar 2019 04:27:54 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d48d49cbc4474cbf9dfc056312e99db8a6e4a3f8aafee3638099903f2f062b`  
		Last Modified: Wed, 03 Apr 2019 09:06:29 GMT  
		Size: 39.4 MB (39441688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb1d5864285b2577db6cd0095d27b29a0728683fb49ada50923a54c3a617799f`  
		Last Modified: Wed, 03 Apr 2019 09:05:46 GMT  
		Size: 292.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2-alpine` - linux; 386

```console
$ docker pull httpd@sha256:287f88585a5f4ab9c828e976881f7f57dceb1bba329229e22f267a973c6a33be
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.8 MB (41848361 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a337fbf5b847d7e5c912d1f1e5924b280c9231831d8f0cab697a2ec0dd686744`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:50 GMT
ADD file:98a0f92574b6a8592a131ccb07c4f516694e053d610a1701fde2d5e7c65c2175 in / 
# Fri, 08 Mar 2019 03:35:50 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:10:32 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 08 Mar 2019 04:10:32 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Fri, 08 Mar 2019 04:10:33 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Mar 2019 04:10:34 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Fri, 08 Mar 2019 04:10:34 GMT
WORKDIR /usr/local/apache2
# Wed, 03 Apr 2019 11:28:18 GMT
ENV HTTPD_VERSION=2.4.39
# Wed, 03 Apr 2019 11:28:18 GMT
ENV HTTPD_SHA256=b4ca9d05773aa59b54d66cd8f4744b945289f084d3be17d7981d1783a5decfa2
# Wed, 03 Apr 2019 11:28:18 GMT
ENV HTTPD_PATCHES=
# Wed, 03 Apr 2019 11:28:19 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Wed, 03 Apr 2019 11:29:28 GMT
RUN set -eux; 		runDeps=' 		apr-dev 		apr-util-dev 		apr-util-ldap 		perl 	'; 	apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		libxml2-dev 		lua-dev 		make 		nghttp2-dev 		openssl 		openssl-dev 		pcre-dev 		tar 		zlib-dev 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		-e 's!^(\s*TransferLog)\s+\S+!\1 /proc/self/fd/1!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		"$HTTPD_PREFIX/conf/extra/httpd-ssl.conf" 	; 		runDeps="$runDeps $( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .httpd-rundeps $runDeps; 	apk del .build-deps; 		httpd -v
# Wed, 03 Apr 2019 11:29:29 GMT
COPY file:8b68ac010cb13f58ebe31c3015d15c988625d2fde7339dca8a84c3c914493323 in /usr/local/bin/ 
# Wed, 03 Apr 2019 11:29:29 GMT
EXPOSE 80
# Wed, 03 Apr 2019 11:29:29 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:a4c1e43a7431a562d92c5eb6e09e96b4731a474af51cad1c46e2d305ede29005`  
		Last Modified: Fri, 08 Mar 2019 03:36:34 GMT  
		Size: 2.7 MB (2749355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:102a204341a580aa207b51cdcf79bf893b12d25c3b66fa94c88344c790009b48`  
		Last Modified: Fri, 08 Mar 2019 04:14:57 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1766154b5c2dc5bcb0f81e084000cdeb905e6a01432a4b127b9dd59919cff6b0`  
		Last Modified: Fri, 08 Mar 2019 04:14:57 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6de6c84ba4ef589ab9dcdfbef0d90c2e2e2b1c9ae28b2889f82b67d7db159e1`  
		Last Modified: Wed, 03 Apr 2019 11:29:55 GMT  
		Size: 39.1 MB (39097308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:105366052207ab92c411593b9e849bf3759cae1b16346558f5df7e8ea1ebead8`  
		Last Modified: Wed, 03 Apr 2019 11:29:45 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2-alpine` - linux; ppc64le

```console
$ docker pull httpd@sha256:b972c427545b37329e3182d26f7903407a796cbf0e03a2857e632140e9f85a18
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.3 MB (43273835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42bef920636f8a02da1127f6b1c1a89c0bba82f6976fd0dcc07f43a005f2199d`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:33 GMT
ADD file:6dfaec9befa64397af571d1da2e766c694148f7a025b9411404a924d3de64bd3 in / 
# Fri, 08 Mar 2019 03:37:36 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:09:19 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 08 Mar 2019 04:09:23 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Fri, 08 Mar 2019 04:09:29 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Mar 2019 04:09:35 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Fri, 08 Mar 2019 04:09:39 GMT
WORKDIR /usr/local/apache2
# Wed, 03 Apr 2019 09:01:04 GMT
ENV HTTPD_VERSION=2.4.39
# Wed, 03 Apr 2019 09:01:05 GMT
ENV HTTPD_SHA256=b4ca9d05773aa59b54d66cd8f4744b945289f084d3be17d7981d1783a5decfa2
# Wed, 03 Apr 2019 09:01:07 GMT
ENV HTTPD_PATCHES=
# Wed, 03 Apr 2019 09:01:09 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Wed, 03 Apr 2019 09:02:38 GMT
RUN set -eux; 		runDeps=' 		apr-dev 		apr-util-dev 		apr-util-ldap 		perl 	'; 	apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		libxml2-dev 		lua-dev 		make 		nghttp2-dev 		openssl 		openssl-dev 		pcre-dev 		tar 		zlib-dev 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		-e 's!^(\s*TransferLog)\s+\S+!\1 /proc/self/fd/1!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		"$HTTPD_PREFIX/conf/extra/httpd-ssl.conf" 	; 		runDeps="$runDeps $( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .httpd-rundeps $runDeps; 	apk del .build-deps; 		httpd -v
# Wed, 03 Apr 2019 09:02:42 GMT
COPY file:8b68ac010cb13f58ebe31c3015d15c988625d2fde7339dca8a84c3c914493323 in /usr/local/bin/ 
# Wed, 03 Apr 2019 09:02:44 GMT
EXPOSE 80
# Wed, 03 Apr 2019 09:02:46 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:611bce2a4fa9a0e18025e088381d26f1dda2e1c02160c4d24a2720f9dbca9eaf`  
		Last Modified: Fri, 08 Mar 2019 03:38:31 GMT  
		Size: 2.8 MB (2778638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caf2340c0adaf877a6ccc62da812a10c6276b25dd2e5ac2fa82926a0dfd181c3`  
		Last Modified: Fri, 08 Mar 2019 04:11:35 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:252a6b4c3b5a2027b26a9ff5afe1b33122f3e39ed5544745671c5fe79936f974`  
		Last Modified: Fri, 08 Mar 2019 04:11:35 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:468347b9d71934614c7398b14c67a5ee3a49985508d06ea27c324924661c44ce`  
		Last Modified: Wed, 03 Apr 2019 09:03:40 GMT  
		Size: 40.5 MB (40493438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba4f561cbf0b3f2c2c12fb5a66cc124da184e22200e4550fdb8d27f5e4383e7c`  
		Last Modified: Wed, 03 Apr 2019 09:03:25 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2-alpine` - linux; s390x

```console
$ docker pull httpd@sha256:195932929af9b57e61205603370e5ee86d2e840b083c5cc4b4a7331c2cf85718
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.5 MB (42540691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97cb9419bd26903252b3d3b9218b3b698b5dffc4b5d8b669c1f246b36c7c2d75`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:46 GMT
ADD file:3f769e5ff31fbae6ea6b835fa878b05d6c6920ca4313aa63be7d057e29241d87 in / 
# Fri, 08 Mar 2019 03:35:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:04:33 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 08 Mar 2019 04:04:33 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Fri, 08 Mar 2019 04:04:34 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Mar 2019 04:04:34 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Fri, 08 Mar 2019 04:04:35 GMT
WORKDIR /usr/local/apache2
# Wed, 03 Apr 2019 11:53:01 GMT
ENV HTTPD_VERSION=2.4.39
# Wed, 03 Apr 2019 11:53:01 GMT
ENV HTTPD_SHA256=b4ca9d05773aa59b54d66cd8f4744b945289f084d3be17d7981d1783a5decfa2
# Wed, 03 Apr 2019 11:53:02 GMT
ENV HTTPD_PATCHES=
# Wed, 03 Apr 2019 11:53:02 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Wed, 03 Apr 2019 11:54:02 GMT
RUN set -eux; 		runDeps=' 		apr-dev 		apr-util-dev 		apr-util-ldap 		perl 	'; 	apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		libxml2-dev 		lua-dev 		make 		nghttp2-dev 		openssl 		openssl-dev 		pcre-dev 		tar 		zlib-dev 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		-e 's!^(\s*TransferLog)\s+\S+!\1 /proc/self/fd/1!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		"$HTTPD_PREFIX/conf/extra/httpd-ssl.conf" 	; 		runDeps="$runDeps $( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .httpd-rundeps $runDeps; 	apk del .build-deps; 		httpd -v
# Wed, 03 Apr 2019 11:54:02 GMT
COPY file:8b68ac010cb13f58ebe31c3015d15c988625d2fde7339dca8a84c3c914493323 in /usr/local/bin/ 
# Wed, 03 Apr 2019 11:54:03 GMT
EXPOSE 80
# Wed, 03 Apr 2019 11:54:03 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:d981dc59d98dcf79c1920d433d8d56f9892f229da716de64280980f317a80ef1`  
		Last Modified: Fri, 08 Mar 2019 03:36:19 GMT  
		Size: 2.5 MB (2541305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f6460b841a77bc8565e3f1543977e04f7f64b80ee4af48e263108e815d5f475`  
		Last Modified: Fri, 08 Mar 2019 04:05:43 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34e440542dfcc4d5e6a65b893a25425b559e91a571b4a486be1ba4a803e98f82`  
		Last Modified: Fri, 08 Mar 2019 04:05:43 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ac9ba76774f52d8cb6296e23d83ccd504be2e4a021ab1e75e5f7b5eedd2b994`  
		Last Modified: Wed, 03 Apr 2019 11:54:45 GMT  
		Size: 40.0 MB (39997689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd3929ea44146409c360acf04208a3ef611643b131def1dea67115d1b4142560`  
		Last Modified: Wed, 03 Apr 2019 11:54:35 GMT  
		Size: 291.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
