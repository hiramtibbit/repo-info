<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `httpd`

-	[`httpd:2`](#httpd2)
-	[`httpd:2.4`](#httpd24)
-	[`httpd:2.4.33`](#httpd2433)
-	[`httpd:2.4.33-alpine`](#httpd2433-alpine)
-	[`httpd:2.4-alpine`](#httpd24-alpine)
-	[`httpd:2-alpine`](#httpd2-alpine)
-	[`httpd:alpine`](#httpdalpine)
-	[`httpd:latest`](#httpdlatest)

## `httpd:2`

```console
$ docker pull httpd@sha256:e00dc5f5999c8d7090e6cc45c2ed829d8ac5a9de99e3bda45bc801749959de8b
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

### `httpd:2` - linux; amd64

```console
$ docker pull httpd@sha256:fbaa22ab88f398a2a4727351810757f63f178959252c801ae4e8fa20f09559f1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.0 MB (68981217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a7d646dbba854001197bbfaa8fa52a54b5245b3c85f4f4c012ca7a0a523f876`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Tue, 26 Jun 2018 21:20:50 GMT
ADD file:d4f4a33443015d350df6f0aa1d8b3491b27b93adabcbfb1b983fc915abc8723b in / 
# Tue, 26 Jun 2018 21:20:51 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 21:20:59 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Tue, 26 Jun 2018 22:35:16 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 26 Jun 2018 22:35:16 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Jun 2018 22:35:17 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 26 Jun 2018 22:35:17 GMT
WORKDIR /usr/local/apache2
# Tue, 26 Jun 2018 22:35:17 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Tue, 26 Jun 2018 22:35:18 GMT
ENV OPENSSL_VERSION=1.0.2l-1~bpo8+1
# Tue, 26 Jun 2018 22:35:18 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Tue, 26 Jun 2018 22:36:04 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:36:04 GMT
ENV HTTPD_VERSION=2.4.33
# Tue, 26 Jun 2018 22:36:04 GMT
ENV HTTPD_SHA256=de02511859b00d17845b9abdd1f975d5ccb5d0b280c567da5bf2ad4b70846f05
# Tue, 26 Jun 2018 22:36:05 GMT
ENV HTTPD_PATCHES=
# Tue, 26 Jun 2018 22:36:05 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Tue, 26 Jun 2018 22:38:32 GMT
RUN set -eux; 		buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends -V $buildDeps; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 26 Jun 2018 22:38:32 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Tue, 26 Jun 2018 22:38:32 GMT
EXPOSE 80/tcp
# Tue, 26 Jun 2018 22:38:33 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:1c7fe136a31e13a1c879245672184ced3b9fc590989ba42a522a57b071a9c1aa`  
		Last Modified: Tue, 26 Jun 2018 21:29:49 GMT  
		Size: 54.3 MB (54252035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d2d593b3a770bd2ea569cb995a11dc285d26a7cbff61a89e71c3126fe0d629`  
		Last Modified: Tue, 26 Jun 2018 21:30:34 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96cd507e10fd2fe187aa69212e1483c766095543fa0a73e52e436d38867a6dcb`  
		Last Modified: Tue, 26 Jun 2018 22:40:56 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec6bb3492a4650e97f6033334dc166e8a6813eadc8e1f54f3a047920925556f6`  
		Last Modified: Tue, 26 Jun 2018 22:40:53 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ea3a980fa47ae2f1806a6aa8fdada35f2c2a82e96551bdce77006d987b3e95a`  
		Last Modified: Tue, 26 Jun 2018 22:40:58 GMT  
		Size: 11.7 MB (11742514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebe42c0aa1a83a42977d234d09d83502f2ea4cf063c4faf054549084c5f81b8f`  
		Last Modified: Tue, 26 Jun 2018 22:40:54 GMT  
		Size: 3.0 MB (2985654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a640bae86fe0ad4cc0da44549a00c80dcf7608a660bcca9f20806695ce71939a`  
		Last Modified: Tue, 26 Jun 2018 22:40:54 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2` - linux; arm variant v5

```console
$ docker pull httpd@sha256:1540d1ff8dbe076aaf54fa4b06a90dc81a5b7ed576b766027d255ba881cd2721
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.0 MB (65957428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebc549c2f4c30462a516b83ff84bf6ceda7b090b48a9c57b8e16aceb78f7d676`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Wed, 27 Jun 2018 08:49:35 GMT
ADD file:ffdec8efe717fef7468633ecb4de75a3e3f775a293230d77477e11b8364c9042 in / 
# Wed, 27 Jun 2018 08:49:38 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 08:49:49 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Wed, 27 Jun 2018 09:22:04 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Wed, 27 Jun 2018 09:22:04 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 09:22:05 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Wed, 27 Jun 2018 09:22:05 GMT
WORKDIR /usr/local/apache2
# Wed, 27 Jun 2018 09:22:05 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Wed, 27 Jun 2018 09:22:06 GMT
ENV OPENSSL_VERSION=1.0.2l-1~bpo8+1
# Wed, 27 Jun 2018 09:22:07 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Wed, 27 Jun 2018 09:22:50 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Wed, 27 Jun 2018 09:22:50 GMT
ENV HTTPD_VERSION=2.4.33
# Wed, 27 Jun 2018 09:22:50 GMT
ENV HTTPD_SHA256=de02511859b00d17845b9abdd1f975d5ccb5d0b280c567da5bf2ad4b70846f05
# Wed, 27 Jun 2018 09:22:51 GMT
ENV HTTPD_PATCHES=
# Wed, 27 Jun 2018 09:22:51 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Wed, 27 Jun 2018 09:25:17 GMT
RUN set -eux; 		buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends -V $buildDeps; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 09:25:17 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Wed, 27 Jun 2018 09:25:17 GMT
EXPOSE 80/tcp
# Wed, 27 Jun 2018 09:25:18 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:2370554fdd8c2d014fa023ee30dcf0dc3febde1853ffc7cd9641ea8eb276d0bb`  
		Last Modified: Wed, 27 Jun 2018 08:58:15 GMT  
		Size: 52.4 MB (52448410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6be65820afabc7cad348688a94f5611ef45a8c3df1ac87d06b00722c2ee87f3`  
		Last Modified: Wed, 27 Jun 2018 08:58:37 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3744b8b61fb6ce35b9070b33f3faaf2ee0136ff532c7ef18a26463e79adc7d`  
		Last Modified: Wed, 27 Jun 2018 09:25:42 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14fffca87c6c32856223bebbbe9cbccd8594f2a222823014aff51e51408f29bc`  
		Last Modified: Wed, 27 Jun 2018 09:25:43 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c12f7488b089b007f9a39054ca55d9fcabebdfaa5719bba832d16fb658ab3993`  
		Last Modified: Wed, 27 Jun 2018 09:25:48 GMT  
		Size: 10.5 MB (10511501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06c3a57524bb3c5fddadd05b7be8a41aeea92c905a8268e4b69f54d5c53d3021`  
		Last Modified: Wed, 27 Jun 2018 09:25:43 GMT  
		Size: 3.0 MB (2996475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d39e770f1f5ed685c743aaa3857174b3dfae1b9c9cdd0c051cd925bb9ff8a080`  
		Last Modified: Wed, 27 Jun 2018 09:25:42 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2` - linux; arm variant v7

```console
$ docker pull httpd@sha256:aa8ce4bd1af8abb3171489ae892947963562381adeb7b251ae3dc64ecb8f196c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.1 MB (63136494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d94d144b876c1f42c5ed1e1f3964fd3b8b047d2bcc36fab9858732c9e2203e0`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Sat, 28 Apr 2018 11:59:05 GMT
ADD file:4e9c283075c120ce66f83bf541b0aeaa8a46f74c21d38e4ab1578e7f1b892823 in / 
# Sat, 28 Apr 2018 11:59:05 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 11:59:17 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Sat, 28 Apr 2018 12:42:19 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Sat, 28 Apr 2018 12:42:19 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 12:42:21 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Sat, 28 Apr 2018 12:42:21 GMT
WORKDIR /usr/local/apache2
# Sat, 28 Apr 2018 12:42:21 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Sat, 28 Apr 2018 12:42:22 GMT
ENV OPENSSL_VERSION=1.0.2l-1~bpo8+1
# Sat, 28 Apr 2018 12:42:23 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Sat, 28 Apr 2018 12:43:02 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:43:03 GMT
ENV HTTPD_VERSION=2.4.33
# Sat, 28 Apr 2018 12:43:03 GMT
ENV HTTPD_SHA256=de02511859b00d17845b9abdd1f975d5ccb5d0b280c567da5bf2ad4b70846f05
# Sat, 28 Apr 2018 12:43:03 GMT
ENV HTTPD_PATCHES=
# Sat, 28 Apr 2018 12:43:04 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Sat, 28 Apr 2018 12:45:08 GMT
RUN set -eux; 		buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends -V $buildDeps; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 12:45:09 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Sat, 28 Apr 2018 12:45:09 GMT
EXPOSE 80/tcp
# Sat, 28 Apr 2018 12:45:09 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:5c478157e28e3c26a0209484edb518799e1c21863d4700579c010b7203e0537f`  
		Last Modified: Sat, 28 Apr 2018 12:10:24 GMT  
		Size: 50.2 MB (50195697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95181562cb10525c78d8d4e8266daba1725e1c184c6b05e62f162e51230a51a6`  
		Last Modified: Sat, 28 Apr 2018 12:10:57 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f228f27600b37df2a634155aa78b700c87a3aa732fb041f1af80107ca3c94ef`  
		Last Modified: Sat, 28 Apr 2018 12:45:25 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df60f8fb99b5a23dab34d245d1369bd05fd00b64ff2b99e6a1fe499b48724d21`  
		Last Modified: Sat, 28 Apr 2018 12:45:25 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78d8afcd606866f307ec211bc42227dc780b4b7181d7b917a21f8b5af850e87a`  
		Last Modified: Sat, 28 Apr 2018 12:45:28 GMT  
		Size: 10.1 MB (10077707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d752970546370da365eecceb0934c454027d2aba7f477a22fd4f16ae1a2eda8f`  
		Last Modified: Sat, 28 Apr 2018 12:45:26 GMT  
		Size: 2.9 MB (2862043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:573857cb70d5e52ec1fe054558d740845363e8bc872e1f72f30f617b8a37c3f2`  
		Last Modified: Sat, 28 Apr 2018 12:45:26 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2` - linux; arm64 variant v8

```console
$ docker pull httpd@sha256:43ce57e0e1728249619a7e69ddb92050844ac291aa6ad49ba5078262819d2c8f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.9 MB (64861176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36ba24292764bea537941229e3e856d71f08e1836ec1f21cf9c2ebc0676defc4`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Mon, 30 Apr 2018 23:21:38 GMT
ADD file:387c83918422a6546379c4d84818ca3949fcd63aec058da562b08c947a9ed571 in / 
# Mon, 30 Apr 2018 23:21:40 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 23:22:20 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Tue, 01 May 2018 10:17:20 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 01 May 2018 10:17:20 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 May 2018 10:17:22 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 01 May 2018 10:17:23 GMT
WORKDIR /usr/local/apache2
# Tue, 01 May 2018 10:17:24 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Tue, 01 May 2018 10:17:25 GMT
ENV OPENSSL_VERSION=1.0.2l-1~bpo8+1
# Tue, 01 May 2018 10:17:26 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Tue, 01 May 2018 10:18:25 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Tue, 01 May 2018 10:18:26 GMT
ENV HTTPD_VERSION=2.4.33
# Tue, 01 May 2018 10:18:27 GMT
ENV HTTPD_SHA256=de02511859b00d17845b9abdd1f975d5ccb5d0b280c567da5bf2ad4b70846f05
# Tue, 01 May 2018 10:18:28 GMT
ENV HTTPD_PATCHES=
# Tue, 01 May 2018 10:18:29 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Tue, 01 May 2018 10:23:23 GMT
RUN set -eux; 		buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends -V $buildDeps; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 01 May 2018 10:23:25 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Tue, 01 May 2018 10:23:26 GMT
EXPOSE 80/tcp
# Tue, 01 May 2018 10:23:27 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:363cfded2ef3921ef972c85cafc77cf16cdcfddfd49782ad4540cb73fd5e57a2`  
		Last Modified: Mon, 30 Apr 2018 23:41:06 GMT  
		Size: 51.4 MB (51446854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e56ad4849b8546ea0acf26ec919166bdf289984892ad1021795dac9e5eb07534`  
		Last Modified: Mon, 30 Apr 2018 23:42:33 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6a6edd1932b425caf3c6fd25cc846096f667c258313c2fa050c75ebeaa9f76a`  
		Last Modified: Tue, 01 May 2018 10:24:00 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f8d06024a7c721fd93b69b725ed2b410cf8a311d6dd6713af42a6fdf53d466e`  
		Last Modified: Tue, 01 May 2018 10:24:00 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06702fafcd1db728eb130d0371603ed7ddcd4e703df63cb82d4e0300924ae487`  
		Last Modified: Tue, 01 May 2018 10:24:05 GMT  
		Size: 10.6 MB (10595084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3eb9fa8d294e64cfa5abcfccd96861e3dce44422de5fe36770e1d701ab7f7dd`  
		Last Modified: Tue, 01 May 2018 10:24:02 GMT  
		Size: 2.8 MB (2818219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88cc6eb681d915b6ec191f406b42447655cf5ce37b614b6bb2eb7ea9295501a5`  
		Last Modified: Tue, 01 May 2018 10:24:00 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2` - linux; 386

```console
$ docker pull httpd@sha256:4bdc85583f0ae97f8fcc802039c18e8f80a62a77502fc489055505fc46869555
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.6 MB (73627128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de3571a2dad14e3ffa7cb692a590cd474ed03997e2b682cb3ab97612e2dfe96d`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Sat, 28 Apr 2018 10:39:32 GMT
ADD file:ce5174f2b2c155a2421fac3ff37a02d9551d5d79e31a541189bcfd2416a6903a in / 
# Sat, 28 Apr 2018 10:39:32 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 10:39:35 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Fri, 01 Jun 2018 09:33:29 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Fri, 01 Jun 2018 09:33:29 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 01 Jun 2018 09:33:30 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Fri, 01 Jun 2018 09:33:30 GMT
WORKDIR /usr/local/apache2
# Fri, 01 Jun 2018 09:33:30 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Fri, 01 Jun 2018 09:33:30 GMT
ENV OPENSSL_VERSION=1.0.2l-1~bpo8+1
# Fri, 01 Jun 2018 09:33:31 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Fri, 01 Jun 2018 09:34:41 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Fri, 01 Jun 2018 09:34:41 GMT
ENV HTTPD_VERSION=2.4.33
# Fri, 01 Jun 2018 09:34:41 GMT
ENV HTTPD_SHA256=de02511859b00d17845b9abdd1f975d5ccb5d0b280c567da5bf2ad4b70846f05
# Fri, 01 Jun 2018 09:34:41 GMT
ENV HTTPD_PATCHES=
# Fri, 01 Jun 2018 09:34:41 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Fri, 01 Jun 2018 09:37:52 GMT
RUN set -eux; 		buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends -V $buildDeps; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 01 Jun 2018 09:37:53 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Fri, 01 Jun 2018 09:37:53 GMT
EXPOSE 80/tcp
# Fri, 01 Jun 2018 09:37:53 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:05b419d667f793c8c2edf0ff0aec14fc4d66733cdb89957ac89e8bfbeaddd0fa`  
		Last Modified: Sat, 28 Apr 2018 10:44:20 GMT  
		Size: 54.5 MB (54486782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaafd97590fdac5dea7f881527551541eb4b99e1d0847f3bc7a4603fd622173d`  
		Last Modified: Sat, 28 Apr 2018 10:44:43 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f658c595fbbeac3d642aaafc299d8e0b41d5847773f00415908a5590e3cc056`  
		Last Modified: Fri, 01 Jun 2018 09:40:41 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e29b0a7b807d2b7a59457849cc3e1b3ba50dca7b3908efc1bf90ce3d4152794c`  
		Last Modified: Fri, 01 Jun 2018 09:40:41 GMT  
		Size: 339.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13bdc0871e6b23c4192b93cbec2c2984e455b53c77fc5b7cc854b3eb84d084d4`  
		Last Modified: Fri, 01 Jun 2018 09:40:50 GMT  
		Size: 16.3 MB (16303187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b10621d768078dc5c019e599820c8403f2c47e72af48cc1049d43220889ffc46`  
		Last Modified: Fri, 01 Jun 2018 09:40:42 GMT  
		Size: 2.8 MB (2836143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b48b8d4f096f842f1ee793cd25f383f6664d39abd4e50e426af6b7a56015586d`  
		Last Modified: Fri, 01 Jun 2018 09:40:41 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2` - linux; ppc64le

```console
$ docker pull httpd@sha256:14c30e2bbcd99d69eaeacb3931dda3ed4279fa4a74d9201da6d94c682f299195
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.8 MB (67825725 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:204ed1acb17edfd98177d98a8a0b340de354d9c7e203f8c4e19d5a549698e2b2`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Sat, 28 Apr 2018 08:17:46 GMT
ADD file:6a4bd4ea54f669286e984ecf8178e1fa7c12c8b6fc0f96e4203ae7a6f99a2279 in / 
# Sat, 28 Apr 2018 08:17:47 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 08:17:55 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Sat, 28 Apr 2018 08:49:27 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Sat, 28 Apr 2018 08:49:28 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 08:49:32 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Sat, 28 Apr 2018 08:49:33 GMT
WORKDIR /usr/local/apache2
# Sat, 28 Apr 2018 08:49:34 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Sat, 28 Apr 2018 08:49:35 GMT
ENV OPENSSL_VERSION=1.0.2l-1~bpo8+1
# Sat, 28 Apr 2018 08:49:42 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Sat, 28 Apr 2018 08:51:18 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Sat, 28 Apr 2018 08:51:20 GMT
ENV HTTPD_VERSION=2.4.33
# Sat, 28 Apr 2018 08:51:21 GMT
ENV HTTPD_SHA256=de02511859b00d17845b9abdd1f975d5ccb5d0b280c567da5bf2ad4b70846f05
# Sat, 28 Apr 2018 08:51:22 GMT
ENV HTTPD_PATCHES=
# Sat, 28 Apr 2018 08:51:23 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Sat, 28 Apr 2018 08:55:54 GMT
RUN set -eux; 		buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends -V $buildDeps; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 08:55:56 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Sat, 28 Apr 2018 08:55:57 GMT
EXPOSE 80/tcp
# Sat, 28 Apr 2018 08:55:58 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:2668401c9f940b1d6b03e5f0086fa248cb957610ef9a7c79983d2fb0707ec76c`  
		Last Modified: Sat, 28 Apr 2018 08:24:36 GMT  
		Size: 53.4 MB (53392811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b4ad9a0a90189920eb8079c0f50e9e9ea8cc8576e5a3c8473b4371dfbdef821`  
		Last Modified: Sat, 28 Apr 2018 08:25:04 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f1b504604e96eab3768839540ac78a0d9aa0f9ba087eee88686d0456161a31e`  
		Last Modified: Sat, 28 Apr 2018 08:56:21 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e4fad3d69996a6405ea0d19eda24ceb8e8afd457f000435eb40a6aeb6291dc9`  
		Last Modified: Sat, 28 Apr 2018 08:56:21 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:439cbc49a985d5ed81d5d60b514d0160e816a3a92df7e5e96914d34bfe184998`  
		Last Modified: Sat, 28 Apr 2018 08:56:24 GMT  
		Size: 11.5 MB (11462955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:390a9bee46c221b84effb1a2fa13047b035867d1624ad38089f6bc8822bf06d0`  
		Last Modified: Sat, 28 Apr 2018 08:56:22 GMT  
		Size: 3.0 MB (2968911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f19476aaa7577d39d32bcfa67950122126d387cb1c4493f23fa15950c7d5cb00`  
		Last Modified: Sat, 28 Apr 2018 08:56:20 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2` - linux; s390x

```console
$ docker pull httpd@sha256:4aef099e84091d2bd2bbb1e4ff4243abb97bb1e898c9440f41d288186c1db911
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.9 MB (68942158 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9bdb401e6105852f1c39a652b1d87e696e8b3e766b293cd5962f835b360b82f`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Sat, 28 Apr 2018 11:42:31 GMT
ADD file:ac1cfec75c7e1898f2c9b7d17653da3684fdda7d14440ce16f1939bb66105cdc in / 
# Sat, 28 Apr 2018 11:42:31 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 11:42:39 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Sat, 28 Apr 2018 13:33:27 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Sat, 28 Apr 2018 13:33:27 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 13:33:27 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Sat, 28 Apr 2018 13:33:28 GMT
WORKDIR /usr/local/apache2
# Sat, 28 Apr 2018 13:33:28 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Sat, 28 Apr 2018 13:33:28 GMT
ENV OPENSSL_VERSION=1.0.2l-1~bpo8+1
# Sat, 28 Apr 2018 13:33:28 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Sat, 28 Apr 2018 13:33:49 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Sat, 28 Apr 2018 13:33:51 GMT
ENV HTTPD_VERSION=2.4.33
# Sat, 28 Apr 2018 13:33:52 GMT
ENV HTTPD_SHA256=de02511859b00d17845b9abdd1f975d5ccb5d0b280c567da5bf2ad4b70846f05
# Sat, 28 Apr 2018 13:33:52 GMT
ENV HTTPD_PATCHES=
# Sat, 28 Apr 2018 13:33:52 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Sat, 28 Apr 2018 13:35:02 GMT
RUN set -eux; 		buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends -V $buildDeps; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 13:35:03 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Sat, 28 Apr 2018 13:35:03 GMT
EXPOSE 80/tcp
# Sat, 28 Apr 2018 13:35:03 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:e0524893a6d25f3e36c190fea678ecf1845e7c0d2ba833b077a429d64b943e0a`  
		Last Modified: Sat, 28 Apr 2018 11:47:52 GMT  
		Size: 54.5 MB (54465857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:478f892a5aa022a5e91933c14bacf80c0f73e82984f49c8e43aa44e93038e9da`  
		Last Modified: Sat, 28 Apr 2018 11:48:15 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e71757346b9348a2a8d1c2bd878688a58eca184151f0434d5186c608525cc57b`  
		Last Modified: Sat, 28 Apr 2018 13:35:23 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a775e43c434609fa5323a4ef14da2a74ebc5dce389eb2de04e628f35a28617e3`  
		Last Modified: Sat, 28 Apr 2018 13:35:23 GMT  
		Size: 337.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7980080db0824baaf46a4d2641dee87492e256f4e75c81aea63dd453497ea0cc`  
		Last Modified: Sat, 28 Apr 2018 13:35:26 GMT  
		Size: 11.4 MB (11361028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:192d68a090d30a0093e100d9ab8fc5ec007c4e3743e3fe527d98319929c19e4c`  
		Last Modified: Sat, 28 Apr 2018 13:35:24 GMT  
		Size: 3.1 MB (3114265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ac7f6ab7f571d1ed658c22c79cc7539e3bab391c66e3a827659a89b4107cd1b`  
		Last Modified: Sat, 28 Apr 2018 13:35:23 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:2.4`

```console
$ docker pull httpd@sha256:e00dc5f5999c8d7090e6cc45c2ed829d8ac5a9de99e3bda45bc801749959de8b
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

### `httpd:2.4` - linux; amd64

```console
$ docker pull httpd@sha256:fbaa22ab88f398a2a4727351810757f63f178959252c801ae4e8fa20f09559f1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.0 MB (68981217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a7d646dbba854001197bbfaa8fa52a54b5245b3c85f4f4c012ca7a0a523f876`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Tue, 26 Jun 2018 21:20:50 GMT
ADD file:d4f4a33443015d350df6f0aa1d8b3491b27b93adabcbfb1b983fc915abc8723b in / 
# Tue, 26 Jun 2018 21:20:51 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 21:20:59 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Tue, 26 Jun 2018 22:35:16 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 26 Jun 2018 22:35:16 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Jun 2018 22:35:17 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 26 Jun 2018 22:35:17 GMT
WORKDIR /usr/local/apache2
# Tue, 26 Jun 2018 22:35:17 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Tue, 26 Jun 2018 22:35:18 GMT
ENV OPENSSL_VERSION=1.0.2l-1~bpo8+1
# Tue, 26 Jun 2018 22:35:18 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Tue, 26 Jun 2018 22:36:04 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:36:04 GMT
ENV HTTPD_VERSION=2.4.33
# Tue, 26 Jun 2018 22:36:04 GMT
ENV HTTPD_SHA256=de02511859b00d17845b9abdd1f975d5ccb5d0b280c567da5bf2ad4b70846f05
# Tue, 26 Jun 2018 22:36:05 GMT
ENV HTTPD_PATCHES=
# Tue, 26 Jun 2018 22:36:05 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Tue, 26 Jun 2018 22:38:32 GMT
RUN set -eux; 		buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends -V $buildDeps; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 26 Jun 2018 22:38:32 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Tue, 26 Jun 2018 22:38:32 GMT
EXPOSE 80/tcp
# Tue, 26 Jun 2018 22:38:33 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:1c7fe136a31e13a1c879245672184ced3b9fc590989ba42a522a57b071a9c1aa`  
		Last Modified: Tue, 26 Jun 2018 21:29:49 GMT  
		Size: 54.3 MB (54252035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d2d593b3a770bd2ea569cb995a11dc285d26a7cbff61a89e71c3126fe0d629`  
		Last Modified: Tue, 26 Jun 2018 21:30:34 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96cd507e10fd2fe187aa69212e1483c766095543fa0a73e52e436d38867a6dcb`  
		Last Modified: Tue, 26 Jun 2018 22:40:56 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec6bb3492a4650e97f6033334dc166e8a6813eadc8e1f54f3a047920925556f6`  
		Last Modified: Tue, 26 Jun 2018 22:40:53 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ea3a980fa47ae2f1806a6aa8fdada35f2c2a82e96551bdce77006d987b3e95a`  
		Last Modified: Tue, 26 Jun 2018 22:40:58 GMT  
		Size: 11.7 MB (11742514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebe42c0aa1a83a42977d234d09d83502f2ea4cf063c4faf054549084c5f81b8f`  
		Last Modified: Tue, 26 Jun 2018 22:40:54 GMT  
		Size: 3.0 MB (2985654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a640bae86fe0ad4cc0da44549a00c80dcf7608a660bcca9f20806695ce71939a`  
		Last Modified: Tue, 26 Jun 2018 22:40:54 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2.4` - linux; arm variant v5

```console
$ docker pull httpd@sha256:1540d1ff8dbe076aaf54fa4b06a90dc81a5b7ed576b766027d255ba881cd2721
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.0 MB (65957428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebc549c2f4c30462a516b83ff84bf6ceda7b090b48a9c57b8e16aceb78f7d676`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Wed, 27 Jun 2018 08:49:35 GMT
ADD file:ffdec8efe717fef7468633ecb4de75a3e3f775a293230d77477e11b8364c9042 in / 
# Wed, 27 Jun 2018 08:49:38 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 08:49:49 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Wed, 27 Jun 2018 09:22:04 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Wed, 27 Jun 2018 09:22:04 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 09:22:05 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Wed, 27 Jun 2018 09:22:05 GMT
WORKDIR /usr/local/apache2
# Wed, 27 Jun 2018 09:22:05 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Wed, 27 Jun 2018 09:22:06 GMT
ENV OPENSSL_VERSION=1.0.2l-1~bpo8+1
# Wed, 27 Jun 2018 09:22:07 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Wed, 27 Jun 2018 09:22:50 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Wed, 27 Jun 2018 09:22:50 GMT
ENV HTTPD_VERSION=2.4.33
# Wed, 27 Jun 2018 09:22:50 GMT
ENV HTTPD_SHA256=de02511859b00d17845b9abdd1f975d5ccb5d0b280c567da5bf2ad4b70846f05
# Wed, 27 Jun 2018 09:22:51 GMT
ENV HTTPD_PATCHES=
# Wed, 27 Jun 2018 09:22:51 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Wed, 27 Jun 2018 09:25:17 GMT
RUN set -eux; 		buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends -V $buildDeps; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 09:25:17 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Wed, 27 Jun 2018 09:25:17 GMT
EXPOSE 80/tcp
# Wed, 27 Jun 2018 09:25:18 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:2370554fdd8c2d014fa023ee30dcf0dc3febde1853ffc7cd9641ea8eb276d0bb`  
		Last Modified: Wed, 27 Jun 2018 08:58:15 GMT  
		Size: 52.4 MB (52448410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6be65820afabc7cad348688a94f5611ef45a8c3df1ac87d06b00722c2ee87f3`  
		Last Modified: Wed, 27 Jun 2018 08:58:37 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3744b8b61fb6ce35b9070b33f3faaf2ee0136ff532c7ef18a26463e79adc7d`  
		Last Modified: Wed, 27 Jun 2018 09:25:42 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14fffca87c6c32856223bebbbe9cbccd8594f2a222823014aff51e51408f29bc`  
		Last Modified: Wed, 27 Jun 2018 09:25:43 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c12f7488b089b007f9a39054ca55d9fcabebdfaa5719bba832d16fb658ab3993`  
		Last Modified: Wed, 27 Jun 2018 09:25:48 GMT  
		Size: 10.5 MB (10511501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06c3a57524bb3c5fddadd05b7be8a41aeea92c905a8268e4b69f54d5c53d3021`  
		Last Modified: Wed, 27 Jun 2018 09:25:43 GMT  
		Size: 3.0 MB (2996475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d39e770f1f5ed685c743aaa3857174b3dfae1b9c9cdd0c051cd925bb9ff8a080`  
		Last Modified: Wed, 27 Jun 2018 09:25:42 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2.4` - linux; arm variant v7

```console
$ docker pull httpd@sha256:aa8ce4bd1af8abb3171489ae892947963562381adeb7b251ae3dc64ecb8f196c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.1 MB (63136494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d94d144b876c1f42c5ed1e1f3964fd3b8b047d2bcc36fab9858732c9e2203e0`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Sat, 28 Apr 2018 11:59:05 GMT
ADD file:4e9c283075c120ce66f83bf541b0aeaa8a46f74c21d38e4ab1578e7f1b892823 in / 
# Sat, 28 Apr 2018 11:59:05 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 11:59:17 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Sat, 28 Apr 2018 12:42:19 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Sat, 28 Apr 2018 12:42:19 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 12:42:21 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Sat, 28 Apr 2018 12:42:21 GMT
WORKDIR /usr/local/apache2
# Sat, 28 Apr 2018 12:42:21 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Sat, 28 Apr 2018 12:42:22 GMT
ENV OPENSSL_VERSION=1.0.2l-1~bpo8+1
# Sat, 28 Apr 2018 12:42:23 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Sat, 28 Apr 2018 12:43:02 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:43:03 GMT
ENV HTTPD_VERSION=2.4.33
# Sat, 28 Apr 2018 12:43:03 GMT
ENV HTTPD_SHA256=de02511859b00d17845b9abdd1f975d5ccb5d0b280c567da5bf2ad4b70846f05
# Sat, 28 Apr 2018 12:43:03 GMT
ENV HTTPD_PATCHES=
# Sat, 28 Apr 2018 12:43:04 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Sat, 28 Apr 2018 12:45:08 GMT
RUN set -eux; 		buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends -V $buildDeps; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 12:45:09 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Sat, 28 Apr 2018 12:45:09 GMT
EXPOSE 80/tcp
# Sat, 28 Apr 2018 12:45:09 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:5c478157e28e3c26a0209484edb518799e1c21863d4700579c010b7203e0537f`  
		Last Modified: Sat, 28 Apr 2018 12:10:24 GMT  
		Size: 50.2 MB (50195697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95181562cb10525c78d8d4e8266daba1725e1c184c6b05e62f162e51230a51a6`  
		Last Modified: Sat, 28 Apr 2018 12:10:57 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f228f27600b37df2a634155aa78b700c87a3aa732fb041f1af80107ca3c94ef`  
		Last Modified: Sat, 28 Apr 2018 12:45:25 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df60f8fb99b5a23dab34d245d1369bd05fd00b64ff2b99e6a1fe499b48724d21`  
		Last Modified: Sat, 28 Apr 2018 12:45:25 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78d8afcd606866f307ec211bc42227dc780b4b7181d7b917a21f8b5af850e87a`  
		Last Modified: Sat, 28 Apr 2018 12:45:28 GMT  
		Size: 10.1 MB (10077707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d752970546370da365eecceb0934c454027d2aba7f477a22fd4f16ae1a2eda8f`  
		Last Modified: Sat, 28 Apr 2018 12:45:26 GMT  
		Size: 2.9 MB (2862043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:573857cb70d5e52ec1fe054558d740845363e8bc872e1f72f30f617b8a37c3f2`  
		Last Modified: Sat, 28 Apr 2018 12:45:26 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2.4` - linux; arm64 variant v8

```console
$ docker pull httpd@sha256:43ce57e0e1728249619a7e69ddb92050844ac291aa6ad49ba5078262819d2c8f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.9 MB (64861176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36ba24292764bea537941229e3e856d71f08e1836ec1f21cf9c2ebc0676defc4`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Mon, 30 Apr 2018 23:21:38 GMT
ADD file:387c83918422a6546379c4d84818ca3949fcd63aec058da562b08c947a9ed571 in / 
# Mon, 30 Apr 2018 23:21:40 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 23:22:20 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Tue, 01 May 2018 10:17:20 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 01 May 2018 10:17:20 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 May 2018 10:17:22 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 01 May 2018 10:17:23 GMT
WORKDIR /usr/local/apache2
# Tue, 01 May 2018 10:17:24 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Tue, 01 May 2018 10:17:25 GMT
ENV OPENSSL_VERSION=1.0.2l-1~bpo8+1
# Tue, 01 May 2018 10:17:26 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Tue, 01 May 2018 10:18:25 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Tue, 01 May 2018 10:18:26 GMT
ENV HTTPD_VERSION=2.4.33
# Tue, 01 May 2018 10:18:27 GMT
ENV HTTPD_SHA256=de02511859b00d17845b9abdd1f975d5ccb5d0b280c567da5bf2ad4b70846f05
# Tue, 01 May 2018 10:18:28 GMT
ENV HTTPD_PATCHES=
# Tue, 01 May 2018 10:18:29 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Tue, 01 May 2018 10:23:23 GMT
RUN set -eux; 		buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends -V $buildDeps; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 01 May 2018 10:23:25 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Tue, 01 May 2018 10:23:26 GMT
EXPOSE 80/tcp
# Tue, 01 May 2018 10:23:27 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:363cfded2ef3921ef972c85cafc77cf16cdcfddfd49782ad4540cb73fd5e57a2`  
		Last Modified: Mon, 30 Apr 2018 23:41:06 GMT  
		Size: 51.4 MB (51446854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e56ad4849b8546ea0acf26ec919166bdf289984892ad1021795dac9e5eb07534`  
		Last Modified: Mon, 30 Apr 2018 23:42:33 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6a6edd1932b425caf3c6fd25cc846096f667c258313c2fa050c75ebeaa9f76a`  
		Last Modified: Tue, 01 May 2018 10:24:00 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f8d06024a7c721fd93b69b725ed2b410cf8a311d6dd6713af42a6fdf53d466e`  
		Last Modified: Tue, 01 May 2018 10:24:00 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06702fafcd1db728eb130d0371603ed7ddcd4e703df63cb82d4e0300924ae487`  
		Last Modified: Tue, 01 May 2018 10:24:05 GMT  
		Size: 10.6 MB (10595084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3eb9fa8d294e64cfa5abcfccd96861e3dce44422de5fe36770e1d701ab7f7dd`  
		Last Modified: Tue, 01 May 2018 10:24:02 GMT  
		Size: 2.8 MB (2818219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88cc6eb681d915b6ec191f406b42447655cf5ce37b614b6bb2eb7ea9295501a5`  
		Last Modified: Tue, 01 May 2018 10:24:00 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2.4` - linux; 386

```console
$ docker pull httpd@sha256:4bdc85583f0ae97f8fcc802039c18e8f80a62a77502fc489055505fc46869555
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.6 MB (73627128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de3571a2dad14e3ffa7cb692a590cd474ed03997e2b682cb3ab97612e2dfe96d`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Sat, 28 Apr 2018 10:39:32 GMT
ADD file:ce5174f2b2c155a2421fac3ff37a02d9551d5d79e31a541189bcfd2416a6903a in / 
# Sat, 28 Apr 2018 10:39:32 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 10:39:35 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Fri, 01 Jun 2018 09:33:29 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Fri, 01 Jun 2018 09:33:29 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 01 Jun 2018 09:33:30 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Fri, 01 Jun 2018 09:33:30 GMT
WORKDIR /usr/local/apache2
# Fri, 01 Jun 2018 09:33:30 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Fri, 01 Jun 2018 09:33:30 GMT
ENV OPENSSL_VERSION=1.0.2l-1~bpo8+1
# Fri, 01 Jun 2018 09:33:31 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Fri, 01 Jun 2018 09:34:41 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Fri, 01 Jun 2018 09:34:41 GMT
ENV HTTPD_VERSION=2.4.33
# Fri, 01 Jun 2018 09:34:41 GMT
ENV HTTPD_SHA256=de02511859b00d17845b9abdd1f975d5ccb5d0b280c567da5bf2ad4b70846f05
# Fri, 01 Jun 2018 09:34:41 GMT
ENV HTTPD_PATCHES=
# Fri, 01 Jun 2018 09:34:41 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Fri, 01 Jun 2018 09:37:52 GMT
RUN set -eux; 		buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends -V $buildDeps; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 01 Jun 2018 09:37:53 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Fri, 01 Jun 2018 09:37:53 GMT
EXPOSE 80/tcp
# Fri, 01 Jun 2018 09:37:53 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:05b419d667f793c8c2edf0ff0aec14fc4d66733cdb89957ac89e8bfbeaddd0fa`  
		Last Modified: Sat, 28 Apr 2018 10:44:20 GMT  
		Size: 54.5 MB (54486782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaafd97590fdac5dea7f881527551541eb4b99e1d0847f3bc7a4603fd622173d`  
		Last Modified: Sat, 28 Apr 2018 10:44:43 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f658c595fbbeac3d642aaafc299d8e0b41d5847773f00415908a5590e3cc056`  
		Last Modified: Fri, 01 Jun 2018 09:40:41 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e29b0a7b807d2b7a59457849cc3e1b3ba50dca7b3908efc1bf90ce3d4152794c`  
		Last Modified: Fri, 01 Jun 2018 09:40:41 GMT  
		Size: 339.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13bdc0871e6b23c4192b93cbec2c2984e455b53c77fc5b7cc854b3eb84d084d4`  
		Last Modified: Fri, 01 Jun 2018 09:40:50 GMT  
		Size: 16.3 MB (16303187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b10621d768078dc5c019e599820c8403f2c47e72af48cc1049d43220889ffc46`  
		Last Modified: Fri, 01 Jun 2018 09:40:42 GMT  
		Size: 2.8 MB (2836143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b48b8d4f096f842f1ee793cd25f383f6664d39abd4e50e426af6b7a56015586d`  
		Last Modified: Fri, 01 Jun 2018 09:40:41 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2.4` - linux; ppc64le

```console
$ docker pull httpd@sha256:14c30e2bbcd99d69eaeacb3931dda3ed4279fa4a74d9201da6d94c682f299195
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.8 MB (67825725 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:204ed1acb17edfd98177d98a8a0b340de354d9c7e203f8c4e19d5a549698e2b2`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Sat, 28 Apr 2018 08:17:46 GMT
ADD file:6a4bd4ea54f669286e984ecf8178e1fa7c12c8b6fc0f96e4203ae7a6f99a2279 in / 
# Sat, 28 Apr 2018 08:17:47 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 08:17:55 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Sat, 28 Apr 2018 08:49:27 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Sat, 28 Apr 2018 08:49:28 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 08:49:32 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Sat, 28 Apr 2018 08:49:33 GMT
WORKDIR /usr/local/apache2
# Sat, 28 Apr 2018 08:49:34 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Sat, 28 Apr 2018 08:49:35 GMT
ENV OPENSSL_VERSION=1.0.2l-1~bpo8+1
# Sat, 28 Apr 2018 08:49:42 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Sat, 28 Apr 2018 08:51:18 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Sat, 28 Apr 2018 08:51:20 GMT
ENV HTTPD_VERSION=2.4.33
# Sat, 28 Apr 2018 08:51:21 GMT
ENV HTTPD_SHA256=de02511859b00d17845b9abdd1f975d5ccb5d0b280c567da5bf2ad4b70846f05
# Sat, 28 Apr 2018 08:51:22 GMT
ENV HTTPD_PATCHES=
# Sat, 28 Apr 2018 08:51:23 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Sat, 28 Apr 2018 08:55:54 GMT
RUN set -eux; 		buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends -V $buildDeps; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 08:55:56 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Sat, 28 Apr 2018 08:55:57 GMT
EXPOSE 80/tcp
# Sat, 28 Apr 2018 08:55:58 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:2668401c9f940b1d6b03e5f0086fa248cb957610ef9a7c79983d2fb0707ec76c`  
		Last Modified: Sat, 28 Apr 2018 08:24:36 GMT  
		Size: 53.4 MB (53392811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b4ad9a0a90189920eb8079c0f50e9e9ea8cc8576e5a3c8473b4371dfbdef821`  
		Last Modified: Sat, 28 Apr 2018 08:25:04 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f1b504604e96eab3768839540ac78a0d9aa0f9ba087eee88686d0456161a31e`  
		Last Modified: Sat, 28 Apr 2018 08:56:21 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e4fad3d69996a6405ea0d19eda24ceb8e8afd457f000435eb40a6aeb6291dc9`  
		Last Modified: Sat, 28 Apr 2018 08:56:21 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:439cbc49a985d5ed81d5d60b514d0160e816a3a92df7e5e96914d34bfe184998`  
		Last Modified: Sat, 28 Apr 2018 08:56:24 GMT  
		Size: 11.5 MB (11462955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:390a9bee46c221b84effb1a2fa13047b035867d1624ad38089f6bc8822bf06d0`  
		Last Modified: Sat, 28 Apr 2018 08:56:22 GMT  
		Size: 3.0 MB (2968911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f19476aaa7577d39d32bcfa67950122126d387cb1c4493f23fa15950c7d5cb00`  
		Last Modified: Sat, 28 Apr 2018 08:56:20 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2.4` - linux; s390x

```console
$ docker pull httpd@sha256:4aef099e84091d2bd2bbb1e4ff4243abb97bb1e898c9440f41d288186c1db911
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.9 MB (68942158 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9bdb401e6105852f1c39a652b1d87e696e8b3e766b293cd5962f835b360b82f`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Sat, 28 Apr 2018 11:42:31 GMT
ADD file:ac1cfec75c7e1898f2c9b7d17653da3684fdda7d14440ce16f1939bb66105cdc in / 
# Sat, 28 Apr 2018 11:42:31 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 11:42:39 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Sat, 28 Apr 2018 13:33:27 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Sat, 28 Apr 2018 13:33:27 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 13:33:27 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Sat, 28 Apr 2018 13:33:28 GMT
WORKDIR /usr/local/apache2
# Sat, 28 Apr 2018 13:33:28 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Sat, 28 Apr 2018 13:33:28 GMT
ENV OPENSSL_VERSION=1.0.2l-1~bpo8+1
# Sat, 28 Apr 2018 13:33:28 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Sat, 28 Apr 2018 13:33:49 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Sat, 28 Apr 2018 13:33:51 GMT
ENV HTTPD_VERSION=2.4.33
# Sat, 28 Apr 2018 13:33:52 GMT
ENV HTTPD_SHA256=de02511859b00d17845b9abdd1f975d5ccb5d0b280c567da5bf2ad4b70846f05
# Sat, 28 Apr 2018 13:33:52 GMT
ENV HTTPD_PATCHES=
# Sat, 28 Apr 2018 13:33:52 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Sat, 28 Apr 2018 13:35:02 GMT
RUN set -eux; 		buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends -V $buildDeps; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 13:35:03 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Sat, 28 Apr 2018 13:35:03 GMT
EXPOSE 80/tcp
# Sat, 28 Apr 2018 13:35:03 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:e0524893a6d25f3e36c190fea678ecf1845e7c0d2ba833b077a429d64b943e0a`  
		Last Modified: Sat, 28 Apr 2018 11:47:52 GMT  
		Size: 54.5 MB (54465857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:478f892a5aa022a5e91933c14bacf80c0f73e82984f49c8e43aa44e93038e9da`  
		Last Modified: Sat, 28 Apr 2018 11:48:15 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e71757346b9348a2a8d1c2bd878688a58eca184151f0434d5186c608525cc57b`  
		Last Modified: Sat, 28 Apr 2018 13:35:23 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a775e43c434609fa5323a4ef14da2a74ebc5dce389eb2de04e628f35a28617e3`  
		Last Modified: Sat, 28 Apr 2018 13:35:23 GMT  
		Size: 337.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7980080db0824baaf46a4d2641dee87492e256f4e75c81aea63dd453497ea0cc`  
		Last Modified: Sat, 28 Apr 2018 13:35:26 GMT  
		Size: 11.4 MB (11361028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:192d68a090d30a0093e100d9ab8fc5ec007c4e3743e3fe527d98319929c19e4c`  
		Last Modified: Sat, 28 Apr 2018 13:35:24 GMT  
		Size: 3.1 MB (3114265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ac7f6ab7f571d1ed658c22c79cc7539e3bab391c66e3a827659a89b4107cd1b`  
		Last Modified: Sat, 28 Apr 2018 13:35:23 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:2.4.33`

```console
$ docker pull httpd@sha256:e00dc5f5999c8d7090e6cc45c2ed829d8ac5a9de99e3bda45bc801749959de8b
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

### `httpd:2.4.33` - linux; amd64

```console
$ docker pull httpd@sha256:fbaa22ab88f398a2a4727351810757f63f178959252c801ae4e8fa20f09559f1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.0 MB (68981217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a7d646dbba854001197bbfaa8fa52a54b5245b3c85f4f4c012ca7a0a523f876`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Tue, 26 Jun 2018 21:20:50 GMT
ADD file:d4f4a33443015d350df6f0aa1d8b3491b27b93adabcbfb1b983fc915abc8723b in / 
# Tue, 26 Jun 2018 21:20:51 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 21:20:59 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Tue, 26 Jun 2018 22:35:16 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 26 Jun 2018 22:35:16 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Jun 2018 22:35:17 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 26 Jun 2018 22:35:17 GMT
WORKDIR /usr/local/apache2
# Tue, 26 Jun 2018 22:35:17 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Tue, 26 Jun 2018 22:35:18 GMT
ENV OPENSSL_VERSION=1.0.2l-1~bpo8+1
# Tue, 26 Jun 2018 22:35:18 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Tue, 26 Jun 2018 22:36:04 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:36:04 GMT
ENV HTTPD_VERSION=2.4.33
# Tue, 26 Jun 2018 22:36:04 GMT
ENV HTTPD_SHA256=de02511859b00d17845b9abdd1f975d5ccb5d0b280c567da5bf2ad4b70846f05
# Tue, 26 Jun 2018 22:36:05 GMT
ENV HTTPD_PATCHES=
# Tue, 26 Jun 2018 22:36:05 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Tue, 26 Jun 2018 22:38:32 GMT
RUN set -eux; 		buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends -V $buildDeps; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 26 Jun 2018 22:38:32 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Tue, 26 Jun 2018 22:38:32 GMT
EXPOSE 80/tcp
# Tue, 26 Jun 2018 22:38:33 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:1c7fe136a31e13a1c879245672184ced3b9fc590989ba42a522a57b071a9c1aa`  
		Last Modified: Tue, 26 Jun 2018 21:29:49 GMT  
		Size: 54.3 MB (54252035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d2d593b3a770bd2ea569cb995a11dc285d26a7cbff61a89e71c3126fe0d629`  
		Last Modified: Tue, 26 Jun 2018 21:30:34 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96cd507e10fd2fe187aa69212e1483c766095543fa0a73e52e436d38867a6dcb`  
		Last Modified: Tue, 26 Jun 2018 22:40:56 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec6bb3492a4650e97f6033334dc166e8a6813eadc8e1f54f3a047920925556f6`  
		Last Modified: Tue, 26 Jun 2018 22:40:53 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ea3a980fa47ae2f1806a6aa8fdada35f2c2a82e96551bdce77006d987b3e95a`  
		Last Modified: Tue, 26 Jun 2018 22:40:58 GMT  
		Size: 11.7 MB (11742514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebe42c0aa1a83a42977d234d09d83502f2ea4cf063c4faf054549084c5f81b8f`  
		Last Modified: Tue, 26 Jun 2018 22:40:54 GMT  
		Size: 3.0 MB (2985654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a640bae86fe0ad4cc0da44549a00c80dcf7608a660bcca9f20806695ce71939a`  
		Last Modified: Tue, 26 Jun 2018 22:40:54 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2.4.33` - linux; arm variant v5

```console
$ docker pull httpd@sha256:1540d1ff8dbe076aaf54fa4b06a90dc81a5b7ed576b766027d255ba881cd2721
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.0 MB (65957428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebc549c2f4c30462a516b83ff84bf6ceda7b090b48a9c57b8e16aceb78f7d676`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Wed, 27 Jun 2018 08:49:35 GMT
ADD file:ffdec8efe717fef7468633ecb4de75a3e3f775a293230d77477e11b8364c9042 in / 
# Wed, 27 Jun 2018 08:49:38 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 08:49:49 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Wed, 27 Jun 2018 09:22:04 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Wed, 27 Jun 2018 09:22:04 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 09:22:05 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Wed, 27 Jun 2018 09:22:05 GMT
WORKDIR /usr/local/apache2
# Wed, 27 Jun 2018 09:22:05 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Wed, 27 Jun 2018 09:22:06 GMT
ENV OPENSSL_VERSION=1.0.2l-1~bpo8+1
# Wed, 27 Jun 2018 09:22:07 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Wed, 27 Jun 2018 09:22:50 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Wed, 27 Jun 2018 09:22:50 GMT
ENV HTTPD_VERSION=2.4.33
# Wed, 27 Jun 2018 09:22:50 GMT
ENV HTTPD_SHA256=de02511859b00d17845b9abdd1f975d5ccb5d0b280c567da5bf2ad4b70846f05
# Wed, 27 Jun 2018 09:22:51 GMT
ENV HTTPD_PATCHES=
# Wed, 27 Jun 2018 09:22:51 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Wed, 27 Jun 2018 09:25:17 GMT
RUN set -eux; 		buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends -V $buildDeps; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 09:25:17 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Wed, 27 Jun 2018 09:25:17 GMT
EXPOSE 80/tcp
# Wed, 27 Jun 2018 09:25:18 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:2370554fdd8c2d014fa023ee30dcf0dc3febde1853ffc7cd9641ea8eb276d0bb`  
		Last Modified: Wed, 27 Jun 2018 08:58:15 GMT  
		Size: 52.4 MB (52448410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6be65820afabc7cad348688a94f5611ef45a8c3df1ac87d06b00722c2ee87f3`  
		Last Modified: Wed, 27 Jun 2018 08:58:37 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3744b8b61fb6ce35b9070b33f3faaf2ee0136ff532c7ef18a26463e79adc7d`  
		Last Modified: Wed, 27 Jun 2018 09:25:42 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14fffca87c6c32856223bebbbe9cbccd8594f2a222823014aff51e51408f29bc`  
		Last Modified: Wed, 27 Jun 2018 09:25:43 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c12f7488b089b007f9a39054ca55d9fcabebdfaa5719bba832d16fb658ab3993`  
		Last Modified: Wed, 27 Jun 2018 09:25:48 GMT  
		Size: 10.5 MB (10511501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06c3a57524bb3c5fddadd05b7be8a41aeea92c905a8268e4b69f54d5c53d3021`  
		Last Modified: Wed, 27 Jun 2018 09:25:43 GMT  
		Size: 3.0 MB (2996475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d39e770f1f5ed685c743aaa3857174b3dfae1b9c9cdd0c051cd925bb9ff8a080`  
		Last Modified: Wed, 27 Jun 2018 09:25:42 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2.4.33` - linux; arm variant v7

```console
$ docker pull httpd@sha256:aa8ce4bd1af8abb3171489ae892947963562381adeb7b251ae3dc64ecb8f196c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.1 MB (63136494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d94d144b876c1f42c5ed1e1f3964fd3b8b047d2bcc36fab9858732c9e2203e0`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Sat, 28 Apr 2018 11:59:05 GMT
ADD file:4e9c283075c120ce66f83bf541b0aeaa8a46f74c21d38e4ab1578e7f1b892823 in / 
# Sat, 28 Apr 2018 11:59:05 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 11:59:17 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Sat, 28 Apr 2018 12:42:19 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Sat, 28 Apr 2018 12:42:19 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 12:42:21 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Sat, 28 Apr 2018 12:42:21 GMT
WORKDIR /usr/local/apache2
# Sat, 28 Apr 2018 12:42:21 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Sat, 28 Apr 2018 12:42:22 GMT
ENV OPENSSL_VERSION=1.0.2l-1~bpo8+1
# Sat, 28 Apr 2018 12:42:23 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Sat, 28 Apr 2018 12:43:02 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:43:03 GMT
ENV HTTPD_VERSION=2.4.33
# Sat, 28 Apr 2018 12:43:03 GMT
ENV HTTPD_SHA256=de02511859b00d17845b9abdd1f975d5ccb5d0b280c567da5bf2ad4b70846f05
# Sat, 28 Apr 2018 12:43:03 GMT
ENV HTTPD_PATCHES=
# Sat, 28 Apr 2018 12:43:04 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Sat, 28 Apr 2018 12:45:08 GMT
RUN set -eux; 		buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends -V $buildDeps; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 12:45:09 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Sat, 28 Apr 2018 12:45:09 GMT
EXPOSE 80/tcp
# Sat, 28 Apr 2018 12:45:09 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:5c478157e28e3c26a0209484edb518799e1c21863d4700579c010b7203e0537f`  
		Last Modified: Sat, 28 Apr 2018 12:10:24 GMT  
		Size: 50.2 MB (50195697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95181562cb10525c78d8d4e8266daba1725e1c184c6b05e62f162e51230a51a6`  
		Last Modified: Sat, 28 Apr 2018 12:10:57 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f228f27600b37df2a634155aa78b700c87a3aa732fb041f1af80107ca3c94ef`  
		Last Modified: Sat, 28 Apr 2018 12:45:25 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df60f8fb99b5a23dab34d245d1369bd05fd00b64ff2b99e6a1fe499b48724d21`  
		Last Modified: Sat, 28 Apr 2018 12:45:25 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78d8afcd606866f307ec211bc42227dc780b4b7181d7b917a21f8b5af850e87a`  
		Last Modified: Sat, 28 Apr 2018 12:45:28 GMT  
		Size: 10.1 MB (10077707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d752970546370da365eecceb0934c454027d2aba7f477a22fd4f16ae1a2eda8f`  
		Last Modified: Sat, 28 Apr 2018 12:45:26 GMT  
		Size: 2.9 MB (2862043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:573857cb70d5e52ec1fe054558d740845363e8bc872e1f72f30f617b8a37c3f2`  
		Last Modified: Sat, 28 Apr 2018 12:45:26 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2.4.33` - linux; arm64 variant v8

```console
$ docker pull httpd@sha256:43ce57e0e1728249619a7e69ddb92050844ac291aa6ad49ba5078262819d2c8f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.9 MB (64861176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36ba24292764bea537941229e3e856d71f08e1836ec1f21cf9c2ebc0676defc4`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Mon, 30 Apr 2018 23:21:38 GMT
ADD file:387c83918422a6546379c4d84818ca3949fcd63aec058da562b08c947a9ed571 in / 
# Mon, 30 Apr 2018 23:21:40 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 23:22:20 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Tue, 01 May 2018 10:17:20 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 01 May 2018 10:17:20 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 May 2018 10:17:22 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 01 May 2018 10:17:23 GMT
WORKDIR /usr/local/apache2
# Tue, 01 May 2018 10:17:24 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Tue, 01 May 2018 10:17:25 GMT
ENV OPENSSL_VERSION=1.0.2l-1~bpo8+1
# Tue, 01 May 2018 10:17:26 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Tue, 01 May 2018 10:18:25 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Tue, 01 May 2018 10:18:26 GMT
ENV HTTPD_VERSION=2.4.33
# Tue, 01 May 2018 10:18:27 GMT
ENV HTTPD_SHA256=de02511859b00d17845b9abdd1f975d5ccb5d0b280c567da5bf2ad4b70846f05
# Tue, 01 May 2018 10:18:28 GMT
ENV HTTPD_PATCHES=
# Tue, 01 May 2018 10:18:29 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Tue, 01 May 2018 10:23:23 GMT
RUN set -eux; 		buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends -V $buildDeps; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 01 May 2018 10:23:25 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Tue, 01 May 2018 10:23:26 GMT
EXPOSE 80/tcp
# Tue, 01 May 2018 10:23:27 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:363cfded2ef3921ef972c85cafc77cf16cdcfddfd49782ad4540cb73fd5e57a2`  
		Last Modified: Mon, 30 Apr 2018 23:41:06 GMT  
		Size: 51.4 MB (51446854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e56ad4849b8546ea0acf26ec919166bdf289984892ad1021795dac9e5eb07534`  
		Last Modified: Mon, 30 Apr 2018 23:42:33 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6a6edd1932b425caf3c6fd25cc846096f667c258313c2fa050c75ebeaa9f76a`  
		Last Modified: Tue, 01 May 2018 10:24:00 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f8d06024a7c721fd93b69b725ed2b410cf8a311d6dd6713af42a6fdf53d466e`  
		Last Modified: Tue, 01 May 2018 10:24:00 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06702fafcd1db728eb130d0371603ed7ddcd4e703df63cb82d4e0300924ae487`  
		Last Modified: Tue, 01 May 2018 10:24:05 GMT  
		Size: 10.6 MB (10595084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3eb9fa8d294e64cfa5abcfccd96861e3dce44422de5fe36770e1d701ab7f7dd`  
		Last Modified: Tue, 01 May 2018 10:24:02 GMT  
		Size: 2.8 MB (2818219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88cc6eb681d915b6ec191f406b42447655cf5ce37b614b6bb2eb7ea9295501a5`  
		Last Modified: Tue, 01 May 2018 10:24:00 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2.4.33` - linux; 386

```console
$ docker pull httpd@sha256:4bdc85583f0ae97f8fcc802039c18e8f80a62a77502fc489055505fc46869555
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.6 MB (73627128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de3571a2dad14e3ffa7cb692a590cd474ed03997e2b682cb3ab97612e2dfe96d`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Sat, 28 Apr 2018 10:39:32 GMT
ADD file:ce5174f2b2c155a2421fac3ff37a02d9551d5d79e31a541189bcfd2416a6903a in / 
# Sat, 28 Apr 2018 10:39:32 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 10:39:35 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Fri, 01 Jun 2018 09:33:29 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Fri, 01 Jun 2018 09:33:29 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 01 Jun 2018 09:33:30 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Fri, 01 Jun 2018 09:33:30 GMT
WORKDIR /usr/local/apache2
# Fri, 01 Jun 2018 09:33:30 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Fri, 01 Jun 2018 09:33:30 GMT
ENV OPENSSL_VERSION=1.0.2l-1~bpo8+1
# Fri, 01 Jun 2018 09:33:31 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Fri, 01 Jun 2018 09:34:41 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Fri, 01 Jun 2018 09:34:41 GMT
ENV HTTPD_VERSION=2.4.33
# Fri, 01 Jun 2018 09:34:41 GMT
ENV HTTPD_SHA256=de02511859b00d17845b9abdd1f975d5ccb5d0b280c567da5bf2ad4b70846f05
# Fri, 01 Jun 2018 09:34:41 GMT
ENV HTTPD_PATCHES=
# Fri, 01 Jun 2018 09:34:41 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Fri, 01 Jun 2018 09:37:52 GMT
RUN set -eux; 		buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends -V $buildDeps; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 01 Jun 2018 09:37:53 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Fri, 01 Jun 2018 09:37:53 GMT
EXPOSE 80/tcp
# Fri, 01 Jun 2018 09:37:53 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:05b419d667f793c8c2edf0ff0aec14fc4d66733cdb89957ac89e8bfbeaddd0fa`  
		Last Modified: Sat, 28 Apr 2018 10:44:20 GMT  
		Size: 54.5 MB (54486782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaafd97590fdac5dea7f881527551541eb4b99e1d0847f3bc7a4603fd622173d`  
		Last Modified: Sat, 28 Apr 2018 10:44:43 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f658c595fbbeac3d642aaafc299d8e0b41d5847773f00415908a5590e3cc056`  
		Last Modified: Fri, 01 Jun 2018 09:40:41 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e29b0a7b807d2b7a59457849cc3e1b3ba50dca7b3908efc1bf90ce3d4152794c`  
		Last Modified: Fri, 01 Jun 2018 09:40:41 GMT  
		Size: 339.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13bdc0871e6b23c4192b93cbec2c2984e455b53c77fc5b7cc854b3eb84d084d4`  
		Last Modified: Fri, 01 Jun 2018 09:40:50 GMT  
		Size: 16.3 MB (16303187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b10621d768078dc5c019e599820c8403f2c47e72af48cc1049d43220889ffc46`  
		Last Modified: Fri, 01 Jun 2018 09:40:42 GMT  
		Size: 2.8 MB (2836143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b48b8d4f096f842f1ee793cd25f383f6664d39abd4e50e426af6b7a56015586d`  
		Last Modified: Fri, 01 Jun 2018 09:40:41 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2.4.33` - linux; ppc64le

```console
$ docker pull httpd@sha256:14c30e2bbcd99d69eaeacb3931dda3ed4279fa4a74d9201da6d94c682f299195
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.8 MB (67825725 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:204ed1acb17edfd98177d98a8a0b340de354d9c7e203f8c4e19d5a549698e2b2`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Sat, 28 Apr 2018 08:17:46 GMT
ADD file:6a4bd4ea54f669286e984ecf8178e1fa7c12c8b6fc0f96e4203ae7a6f99a2279 in / 
# Sat, 28 Apr 2018 08:17:47 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 08:17:55 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Sat, 28 Apr 2018 08:49:27 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Sat, 28 Apr 2018 08:49:28 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 08:49:32 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Sat, 28 Apr 2018 08:49:33 GMT
WORKDIR /usr/local/apache2
# Sat, 28 Apr 2018 08:49:34 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Sat, 28 Apr 2018 08:49:35 GMT
ENV OPENSSL_VERSION=1.0.2l-1~bpo8+1
# Sat, 28 Apr 2018 08:49:42 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Sat, 28 Apr 2018 08:51:18 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Sat, 28 Apr 2018 08:51:20 GMT
ENV HTTPD_VERSION=2.4.33
# Sat, 28 Apr 2018 08:51:21 GMT
ENV HTTPD_SHA256=de02511859b00d17845b9abdd1f975d5ccb5d0b280c567da5bf2ad4b70846f05
# Sat, 28 Apr 2018 08:51:22 GMT
ENV HTTPD_PATCHES=
# Sat, 28 Apr 2018 08:51:23 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Sat, 28 Apr 2018 08:55:54 GMT
RUN set -eux; 		buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends -V $buildDeps; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 08:55:56 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Sat, 28 Apr 2018 08:55:57 GMT
EXPOSE 80/tcp
# Sat, 28 Apr 2018 08:55:58 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:2668401c9f940b1d6b03e5f0086fa248cb957610ef9a7c79983d2fb0707ec76c`  
		Last Modified: Sat, 28 Apr 2018 08:24:36 GMT  
		Size: 53.4 MB (53392811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b4ad9a0a90189920eb8079c0f50e9e9ea8cc8576e5a3c8473b4371dfbdef821`  
		Last Modified: Sat, 28 Apr 2018 08:25:04 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f1b504604e96eab3768839540ac78a0d9aa0f9ba087eee88686d0456161a31e`  
		Last Modified: Sat, 28 Apr 2018 08:56:21 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e4fad3d69996a6405ea0d19eda24ceb8e8afd457f000435eb40a6aeb6291dc9`  
		Last Modified: Sat, 28 Apr 2018 08:56:21 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:439cbc49a985d5ed81d5d60b514d0160e816a3a92df7e5e96914d34bfe184998`  
		Last Modified: Sat, 28 Apr 2018 08:56:24 GMT  
		Size: 11.5 MB (11462955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:390a9bee46c221b84effb1a2fa13047b035867d1624ad38089f6bc8822bf06d0`  
		Last Modified: Sat, 28 Apr 2018 08:56:22 GMT  
		Size: 3.0 MB (2968911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f19476aaa7577d39d32bcfa67950122126d387cb1c4493f23fa15950c7d5cb00`  
		Last Modified: Sat, 28 Apr 2018 08:56:20 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2.4.33` - linux; s390x

```console
$ docker pull httpd@sha256:4aef099e84091d2bd2bbb1e4ff4243abb97bb1e898c9440f41d288186c1db911
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.9 MB (68942158 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9bdb401e6105852f1c39a652b1d87e696e8b3e766b293cd5962f835b360b82f`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Sat, 28 Apr 2018 11:42:31 GMT
ADD file:ac1cfec75c7e1898f2c9b7d17653da3684fdda7d14440ce16f1939bb66105cdc in / 
# Sat, 28 Apr 2018 11:42:31 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 11:42:39 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Sat, 28 Apr 2018 13:33:27 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Sat, 28 Apr 2018 13:33:27 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 13:33:27 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Sat, 28 Apr 2018 13:33:28 GMT
WORKDIR /usr/local/apache2
# Sat, 28 Apr 2018 13:33:28 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Sat, 28 Apr 2018 13:33:28 GMT
ENV OPENSSL_VERSION=1.0.2l-1~bpo8+1
# Sat, 28 Apr 2018 13:33:28 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Sat, 28 Apr 2018 13:33:49 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Sat, 28 Apr 2018 13:33:51 GMT
ENV HTTPD_VERSION=2.4.33
# Sat, 28 Apr 2018 13:33:52 GMT
ENV HTTPD_SHA256=de02511859b00d17845b9abdd1f975d5ccb5d0b280c567da5bf2ad4b70846f05
# Sat, 28 Apr 2018 13:33:52 GMT
ENV HTTPD_PATCHES=
# Sat, 28 Apr 2018 13:33:52 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Sat, 28 Apr 2018 13:35:02 GMT
RUN set -eux; 		buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends -V $buildDeps; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 13:35:03 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Sat, 28 Apr 2018 13:35:03 GMT
EXPOSE 80/tcp
# Sat, 28 Apr 2018 13:35:03 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:e0524893a6d25f3e36c190fea678ecf1845e7c0d2ba833b077a429d64b943e0a`  
		Last Modified: Sat, 28 Apr 2018 11:47:52 GMT  
		Size: 54.5 MB (54465857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:478f892a5aa022a5e91933c14bacf80c0f73e82984f49c8e43aa44e93038e9da`  
		Last Modified: Sat, 28 Apr 2018 11:48:15 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e71757346b9348a2a8d1c2bd878688a58eca184151f0434d5186c608525cc57b`  
		Last Modified: Sat, 28 Apr 2018 13:35:23 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a775e43c434609fa5323a4ef14da2a74ebc5dce389eb2de04e628f35a28617e3`  
		Last Modified: Sat, 28 Apr 2018 13:35:23 GMT  
		Size: 337.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7980080db0824baaf46a4d2641dee87492e256f4e75c81aea63dd453497ea0cc`  
		Last Modified: Sat, 28 Apr 2018 13:35:26 GMT  
		Size: 11.4 MB (11361028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:192d68a090d30a0093e100d9ab8fc5ec007c4e3743e3fe527d98319929c19e4c`  
		Last Modified: Sat, 28 Apr 2018 13:35:24 GMT  
		Size: 3.1 MB (3114265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ac7f6ab7f571d1ed658c22c79cc7539e3bab391c66e3a827659a89b4107cd1b`  
		Last Modified: Sat, 28 Apr 2018 13:35:23 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:2.4.33-alpine`

```console
$ docker pull httpd@sha256:8ccb6cd820fa0d9703088c49a3c3b51edda05fd9206e55028d2c73155fd04c4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `httpd:2.4.33-alpine` - linux; amd64

```console
$ docker pull httpd@sha256:e21157360bcd5ff5efbbbdf38799026201275f0b71bebf14eb20443a811a7e51
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.3 MB (30323821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bf29b596030ae5b13410ddd78ad83c60b1961072dc6b7492ea80d595852931d`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Tue, 26 Jun 2018 22:38:47 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Tue, 26 Jun 2018 22:38:48 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 26 Jun 2018 22:38:48 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Jun 2018 22:38:49 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 26 Jun 2018 22:38:49 GMT
WORKDIR /usr/local/apache2
# Tue, 26 Jun 2018 22:38:49 GMT
ENV HTTPD_VERSION=2.4.33
# Tue, 26 Jun 2018 22:38:49 GMT
ENV HTTPD_SHA256=de02511859b00d17845b9abdd1f975d5ccb5d0b280c567da5bf2ad4b70846f05
# Tue, 26 Jun 2018 22:38:49 GMT
ENV HTTPD_PATCHES=
# Tue, 26 Jun 2018 22:38:49 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Tue, 26 Jun 2018 22:40:37 GMT
RUN set -eux; 		runDeps=' 		apr-dev 		apr-util-dev 		apr-util-ldap 		perl 	'; 	apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		libressl 		libressl-dev 		libxml2-dev 		lua-dev 		make 		nghttp2-dev 		pcre-dev 		tar 		zlib-dev 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		runDeps="$runDeps $( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .httpd-rundeps $runDeps; 	apk del .build-deps
# Tue, 26 Jun 2018 22:40:38 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Tue, 26 Jun 2018 22:40:38 GMT
EXPOSE 80/tcp
# Tue, 26 Jun 2018 22:40:38 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71b4120c7a852e7eddb28ff7d3e0463f527168850b2b4d5ebd3f7bd71e27a1fc`  
		Last Modified: Tue, 26 Jun 2018 22:41:43 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eb3783fe1ed79b83951617af2f67ac7247ee45f2badcae20268a439f75d408c`  
		Last Modified: Tue, 26 Jun 2018 22:41:43 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bf90ac1b57d04bae3313fee20bc53ef85d949db135fe6831f553cf9492ac134`  
		Last Modified: Tue, 26 Jun 2018 22:41:54 GMT  
		Size: 28.3 MB (28256597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e1cdd84e04f90bda30e0bff3dab497a07d096b3fc6cb5b708fe2542bb8bb823`  
		Last Modified: Tue, 26 Jun 2018 22:41:44 GMT  
		Size: 288.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2.4.33-alpine` - linux; arm variant v6

```console
$ docker pull httpd@sha256:92d43851234c6bfd625dab3b8622ca59ac6ffaf9cae59ed2c958746df7dcd664
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 MB (27354575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc01e9ca95973d3b0439d8d56bb220dd79812d6714bda2f966374dd7ab373321`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:35 GMT
ADD file:009348222efb3c4ca2e53c387fb34c488679ca07db39525a6c5cc214e46abffd in / 
# Wed, 25 Oct 2017 23:28:36 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:36 GMT
CMD ["/bin/sh"]
# Wed, 28 Mar 2018 13:55:24 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 28 Mar 2018 13:55:24 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Wed, 28 Mar 2018 13:55:25 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Mar 2018 13:55:27 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Wed, 28 Mar 2018 13:55:28 GMT
WORKDIR /usr/local/apache2
# Wed, 28 Mar 2018 13:55:28 GMT
ENV HTTPD_VERSION=2.4.33
# Wed, 28 Mar 2018 13:55:29 GMT
ENV HTTPD_SHA256=de02511859b00d17845b9abdd1f975d5ccb5d0b280c567da5bf2ad4b70846f05
# Wed, 28 Mar 2018 13:55:30 GMT
ENV HTTPD_PATCHES=
# Wed, 28 Mar 2018 13:55:30 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Wed, 28 Mar 2018 13:56:55 GMT
RUN set -eux; 		runDeps=' 		apr-dev 		apr-util-dev 		apr-util-ldap 		perl 	'; 	apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		libressl 		libressl-dev 		libxml2-dev 		lua-dev 		make 		nghttp2-dev 		pcre-dev 		tar 		zlib-dev 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		runDeps="$runDeps $( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .httpd-rundeps $runDeps; 	apk del .build-deps
# Wed, 28 Mar 2018 13:56:56 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Wed, 28 Mar 2018 13:56:56 GMT
EXPOSE 80/tcp
# Wed, 28 Mar 2018 13:56:56 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:0864efeeb5cb8dca4eb53e5d6fd38486daee80fa326fe36d1ad254f8fa6bb310`  
		Last Modified: Sun, 23 Jul 2017 20:21:42 GMT  
		Size: 2.0 MB (1965988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cda69762aee1588fa82aeabf1af6d6ad24f737cce1451fab2e0199849b1e12e`  
		Last Modified: Wed, 25 Oct 2017 23:28:45 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72c11b1eac754a7631a317da1efcb355c8d2791a5aeb0962eafbab667043f2c2`  
		Last Modified: Wed, 28 Mar 2018 13:57:12 GMT  
		Size: 1.3 KB (1278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18203065956658b94aeaf743bb3dc9deb4d1462a54264c72a9bda1a5243c0115`  
		Last Modified: Wed, 28 Mar 2018 13:57:12 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:327f84ce6b82b285129907776bc7dc1726ef5c55e8dae8eb3f2e076d6eb6e469`  
		Last Modified: Wed, 28 Mar 2018 13:57:22 GMT  
		Size: 25.4 MB (25386671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c079c559c7953bf59bdff5f4a9c3e197856a9a00dd8466b47ce54bbf24a081a`  
		Last Modified: Wed, 28 Mar 2018 13:57:12 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2.4.33-alpine` - linux; arm64 variant v8

```console
$ docker pull httpd@sha256:1948341361832cfd7060d3379c1fb1cd3a9b29121b81bfdb2bcdbbff93fa9e36
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.4 MB (28443957 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29b0f508742f3ad6494f685b520a38734e2cf7b809450e8a31b6268e228bdbb8`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Tue, 24 Apr 2018 09:05:59 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Tue, 24 Apr 2018 09:06:00 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 24 Apr 2018 09:06:01 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Apr 2018 09:06:03 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 24 Apr 2018 09:06:04 GMT
WORKDIR /usr/local/apache2
# Tue, 24 Apr 2018 09:06:05 GMT
ENV HTTPD_VERSION=2.4.33
# Tue, 24 Apr 2018 09:06:06 GMT
ENV HTTPD_SHA256=de02511859b00d17845b9abdd1f975d5ccb5d0b280c567da5bf2ad4b70846f05
# Tue, 24 Apr 2018 09:06:07 GMT
ENV HTTPD_PATCHES=
# Tue, 24 Apr 2018 09:06:08 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Tue, 24 Apr 2018 09:10:46 GMT
RUN set -eux; 		runDeps=' 		apr-dev 		apr-util-dev 		apr-util-ldap 		perl 	'; 	apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		libressl 		libressl-dev 		libxml2-dev 		lua-dev 		make 		nghttp2-dev 		pcre-dev 		tar 		zlib-dev 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		runDeps="$runDeps $( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .httpd-rundeps $runDeps; 	apk del .build-deps
# Tue, 24 Apr 2018 09:10:47 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Tue, 24 Apr 2018 09:10:48 GMT
EXPOSE 80/tcp
# Tue, 24 Apr 2018 09:10:50 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:b78042c299ad99d1e646b18762d4bc22a84c4f88e5bb491ea6293a10f53ddf79`  
		Last Modified: Fri, 01 Dec 2017 18:43:42 GMT  
		Size: 2.0 MB (1988857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd45b97b6c2a3ac869ae5c99e087e97bc29714b165180e06f0c9116f400f2dd`  
		Last Modified: Fri, 01 Dec 2017 18:43:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:008efa9a4a01fb7a3f30b7d0d02bce18ea8405a0139cee36278edd8f0b992764`  
		Last Modified: Tue, 24 Apr 2018 09:11:48 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:034eabda80a50ee92751d5e7d000e0231aafa960e72c93ba08af7575797741a9`  
		Last Modified: Tue, 24 Apr 2018 09:11:49 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:591a0bc5797f4bf8ea200a9306f19817854507cc9d7daa735a298487fcafd723`  
		Last Modified: Tue, 24 Apr 2018 09:12:01 GMT  
		Size: 26.5 MB (26453238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4018624ad19e6321b4ad7723dd6f196f1429339944602fdce50e6d06c46a551e`  
		Last Modified: Tue, 24 Apr 2018 09:11:48 GMT  
		Size: 288.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2.4.33-alpine` - linux; 386

```console
$ docker pull httpd@sha256:93ee04225bd68a765086155d6222c48f39950232d0c15f2fd3fabb96f1d412ce
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.9 MB (29854960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d871bf5622e13db0fbe273b5c13bdbd255ccfbf2cee96d37aa0fe36508ce7e32`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Fri, 01 Jun 2018 06:57:26 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Jun 2018 06:57:26 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Jun 2018 06:57:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Jun 2018 09:38:10 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 01 Jun 2018 09:38:10 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Fri, 01 Jun 2018 09:38:10 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 01 Jun 2018 09:38:11 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Fri, 01 Jun 2018 09:38:11 GMT
WORKDIR /usr/local/apache2
# Fri, 01 Jun 2018 09:38:11 GMT
ENV HTTPD_VERSION=2.4.33
# Fri, 01 Jun 2018 09:38:11 GMT
ENV HTTPD_SHA256=de02511859b00d17845b9abdd1f975d5ccb5d0b280c567da5bf2ad4b70846f05
# Fri, 01 Jun 2018 09:38:11 GMT
ENV HTTPD_PATCHES=
# Fri, 01 Jun 2018 09:38:11 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Fri, 01 Jun 2018 09:40:23 GMT
RUN set -eux; 		runDeps=' 		apr-dev 		apr-util-dev 		apr-util-ldap 		perl 	'; 	apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		libressl 		libressl-dev 		libxml2-dev 		lua-dev 		make 		nghttp2-dev 		pcre-dev 		tar 		zlib-dev 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		runDeps="$runDeps $( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .httpd-rundeps $runDeps; 	apk del .build-deps
# Fri, 01 Jun 2018 09:40:24 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Fri, 01 Jun 2018 09:40:24 GMT
EXPOSE 80/tcp
# Fri, 01 Jun 2018 09:40:24 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:061a9db3c9e4f3bc32618a5f1a7e2b8aefb20fcc48f8be709bc7f7eabe61d003`  
		Last Modified: Fri, 01 Jun 2018 06:57:51 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6778cc9bfb7a6262ab888b4d747d8d3322368507970b4be6ca7d3f3c604cebd1`  
		Last Modified: Fri, 01 Jun 2018 09:41:20 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e6a7dbe64b4562b3baafff6dc40d9102856d928191bdf72ff938e5d8b6cfec0`  
		Last Modified: Fri, 01 Jun 2018 09:41:21 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3056e1cc192e89309246c42034b614db7e757622567f554d2bd57fc860dd4518`  
		Last Modified: Fri, 01 Jun 2018 09:41:34 GMT  
		Size: 27.7 MB (27726883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:641274b7a795b632e1d1783197c8a2a0dc3dc1ada2865a9cc66cadf5a7edec02`  
		Last Modified: Fri, 01 Jun 2018 09:41:20 GMT  
		Size: 288.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2.4.33-alpine` - linux; ppc64le

```console
$ docker pull httpd@sha256:5d8fb4363c389148a710a049fd5dafc5377a875bb16f69aefb70789663d02766
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.4 MB (29363466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68b0f2e42887cac3a11ea290dba42642809b7b92104b30b8bc5fec5796d4ceb9`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Tue, 24 Apr 2018 08:24:52 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Tue, 24 Apr 2018 08:24:54 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 24 Apr 2018 08:24:55 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Apr 2018 08:24:58 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 24 Apr 2018 08:24:58 GMT
WORKDIR /usr/local/apache2
# Tue, 24 Apr 2018 08:24:59 GMT
ENV HTTPD_VERSION=2.4.33
# Tue, 24 Apr 2018 08:24:59 GMT
ENV HTTPD_SHA256=de02511859b00d17845b9abdd1f975d5ccb5d0b280c567da5bf2ad4b70846f05
# Tue, 24 Apr 2018 08:25:00 GMT
ENV HTTPD_PATCHES=
# Tue, 24 Apr 2018 08:25:00 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Tue, 24 Apr 2018 08:27:01 GMT
RUN set -eux; 		runDeps=' 		apr-dev 		apr-util-dev 		apr-util-ldap 		perl 	'; 	apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		libressl 		libressl-dev 		libxml2-dev 		lua-dev 		make 		nghttp2-dev 		pcre-dev 		tar 		zlib-dev 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		runDeps="$runDeps $( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .httpd-rundeps $runDeps; 	apk del .build-deps
# Tue, 24 Apr 2018 08:27:02 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Tue, 24 Apr 2018 08:27:04 GMT
EXPOSE 80/tcp
# Tue, 24 Apr 2018 08:27:05 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:0da653ea85b50d280ec56ca2eafb7e8b37590630356e043fa9ff162d55732a23`  
		Last Modified: Fri, 01 Dec 2017 18:42:14 GMT  
		Size: 2.1 MB (2081469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd90b777cc38b5b6ca1b2407e647fdc22ef31b57ef98e924e7e0635adffc385`  
		Last Modified: Fri, 01 Dec 2017 18:42:15 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95cedac7749c7e9d93463908970d3e745cc7d5ab60b21f498619c558c396041f`  
		Last Modified: Tue, 24 Apr 2018 08:27:34 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1248ed19b1b314a10074074ec4efeaa57036f78fdb0a6f531f2c512522075423`  
		Last Modified: Tue, 24 Apr 2018 08:27:34 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c552c977282986b74bb0bfcd1591b0959e4c5c027c8d620b37959b10bb95aa85`  
		Last Modified: Tue, 24 Apr 2018 08:27:47 GMT  
		Size: 27.3 MB (27280081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4553f638bf8da66f6e13b32df69450d6c09283f303d8034e351699a81dbc1c8d`  
		Last Modified: Tue, 24 Apr 2018 08:27:34 GMT  
		Size: 285.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2.4.33-alpine` - linux; s390x

```console
$ docker pull httpd@sha256:f5c42ee069f548599e7a810456e4b00dff3eb411277b7ee3203d3c24b4597252
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.7 MB (31740011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50babdb0b278f4120549563ca72893d8c24d61e10ef24c0a49b275d83eb51844`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:57 GMT
ADD file:9c09dfc247c393ab1c6205a4b7857047a3d88e398e8d35aede30f7d613ef1de9 in / 
# Fri, 01 Dec 2017 18:41:58 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:58 GMT
CMD ["/bin/sh"]
# Tue, 24 Apr 2018 11:55:57 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Tue, 24 Apr 2018 11:55:57 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 24 Apr 2018 11:55:57 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Apr 2018 11:55:58 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 24 Apr 2018 11:55:58 GMT
WORKDIR /usr/local/apache2
# Tue, 24 Apr 2018 11:55:58 GMT
ENV HTTPD_VERSION=2.4.33
# Tue, 24 Apr 2018 11:55:58 GMT
ENV HTTPD_SHA256=de02511859b00d17845b9abdd1f975d5ccb5d0b280c567da5bf2ad4b70846f05
# Tue, 24 Apr 2018 11:55:58 GMT
ENV HTTPD_PATCHES=
# Tue, 24 Apr 2018 11:55:59 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Tue, 24 Apr 2018 11:57:48 GMT
RUN set -eux; 		runDeps=' 		apr-dev 		apr-util-dev 		apr-util-ldap 		perl 	'; 	apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		libressl 		libressl-dev 		libxml2-dev 		lua-dev 		make 		nghttp2-dev 		pcre-dev 		tar 		zlib-dev 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		runDeps="$runDeps $( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .httpd-rundeps $runDeps; 	apk del .build-deps
# Tue, 24 Apr 2018 11:57:48 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Tue, 24 Apr 2018 11:57:48 GMT
EXPOSE 80/tcp
# Tue, 24 Apr 2018 11:57:48 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:11e7bc85614a236b32043d147930fd2bc9055af8642fe30e5e56142590572b0e`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 2.2 MB (2185231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f825cbb729285f1fe2a0cd1d4d36897e3fe2191c5ee044ce11a5d301dc64a34`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed334fdeb1d6caa22c313891127ba787811ae71cbbd84e3ddc3d4737ef2d23f0`  
		Last Modified: Tue, 24 Apr 2018 11:58:09 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70252f7a2b79617ef582c91978eb8f15f65941a8c319e67b06bcc749ee86bbfa`  
		Last Modified: Tue, 24 Apr 2018 11:58:09 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5800e3cf17ea1668deacec7bb43048f2a6959d9f49c58eb8837f3d8e579cb393`  
		Last Modified: Tue, 24 Apr 2018 11:58:18 GMT  
		Size: 29.6 MB (29552923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57d4b88a087f74b6883676f8fad10f5b37cae1dc9e124ed994aef975af569388`  
		Last Modified: Tue, 24 Apr 2018 11:58:10 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:2.4-alpine`

```console
$ docker pull httpd@sha256:8ccb6cd820fa0d9703088c49a3c3b51edda05fd9206e55028d2c73155fd04c4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `httpd:2.4-alpine` - linux; amd64

```console
$ docker pull httpd@sha256:e21157360bcd5ff5efbbbdf38799026201275f0b71bebf14eb20443a811a7e51
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.3 MB (30323821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bf29b596030ae5b13410ddd78ad83c60b1961072dc6b7492ea80d595852931d`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Tue, 26 Jun 2018 22:38:47 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Tue, 26 Jun 2018 22:38:48 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 26 Jun 2018 22:38:48 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Jun 2018 22:38:49 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 26 Jun 2018 22:38:49 GMT
WORKDIR /usr/local/apache2
# Tue, 26 Jun 2018 22:38:49 GMT
ENV HTTPD_VERSION=2.4.33
# Tue, 26 Jun 2018 22:38:49 GMT
ENV HTTPD_SHA256=de02511859b00d17845b9abdd1f975d5ccb5d0b280c567da5bf2ad4b70846f05
# Tue, 26 Jun 2018 22:38:49 GMT
ENV HTTPD_PATCHES=
# Tue, 26 Jun 2018 22:38:49 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Tue, 26 Jun 2018 22:40:37 GMT
RUN set -eux; 		runDeps=' 		apr-dev 		apr-util-dev 		apr-util-ldap 		perl 	'; 	apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		libressl 		libressl-dev 		libxml2-dev 		lua-dev 		make 		nghttp2-dev 		pcre-dev 		tar 		zlib-dev 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		runDeps="$runDeps $( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .httpd-rundeps $runDeps; 	apk del .build-deps
# Tue, 26 Jun 2018 22:40:38 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Tue, 26 Jun 2018 22:40:38 GMT
EXPOSE 80/tcp
# Tue, 26 Jun 2018 22:40:38 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71b4120c7a852e7eddb28ff7d3e0463f527168850b2b4d5ebd3f7bd71e27a1fc`  
		Last Modified: Tue, 26 Jun 2018 22:41:43 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eb3783fe1ed79b83951617af2f67ac7247ee45f2badcae20268a439f75d408c`  
		Last Modified: Tue, 26 Jun 2018 22:41:43 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bf90ac1b57d04bae3313fee20bc53ef85d949db135fe6831f553cf9492ac134`  
		Last Modified: Tue, 26 Jun 2018 22:41:54 GMT  
		Size: 28.3 MB (28256597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e1cdd84e04f90bda30e0bff3dab497a07d096b3fc6cb5b708fe2542bb8bb823`  
		Last Modified: Tue, 26 Jun 2018 22:41:44 GMT  
		Size: 288.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2.4-alpine` - linux; arm variant v6

```console
$ docker pull httpd@sha256:92d43851234c6bfd625dab3b8622ca59ac6ffaf9cae59ed2c958746df7dcd664
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 MB (27354575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc01e9ca95973d3b0439d8d56bb220dd79812d6714bda2f966374dd7ab373321`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:35 GMT
ADD file:009348222efb3c4ca2e53c387fb34c488679ca07db39525a6c5cc214e46abffd in / 
# Wed, 25 Oct 2017 23:28:36 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:36 GMT
CMD ["/bin/sh"]
# Wed, 28 Mar 2018 13:55:24 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 28 Mar 2018 13:55:24 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Wed, 28 Mar 2018 13:55:25 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Mar 2018 13:55:27 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Wed, 28 Mar 2018 13:55:28 GMT
WORKDIR /usr/local/apache2
# Wed, 28 Mar 2018 13:55:28 GMT
ENV HTTPD_VERSION=2.4.33
# Wed, 28 Mar 2018 13:55:29 GMT
ENV HTTPD_SHA256=de02511859b00d17845b9abdd1f975d5ccb5d0b280c567da5bf2ad4b70846f05
# Wed, 28 Mar 2018 13:55:30 GMT
ENV HTTPD_PATCHES=
# Wed, 28 Mar 2018 13:55:30 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Wed, 28 Mar 2018 13:56:55 GMT
RUN set -eux; 		runDeps=' 		apr-dev 		apr-util-dev 		apr-util-ldap 		perl 	'; 	apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		libressl 		libressl-dev 		libxml2-dev 		lua-dev 		make 		nghttp2-dev 		pcre-dev 		tar 		zlib-dev 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		runDeps="$runDeps $( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .httpd-rundeps $runDeps; 	apk del .build-deps
# Wed, 28 Mar 2018 13:56:56 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Wed, 28 Mar 2018 13:56:56 GMT
EXPOSE 80/tcp
# Wed, 28 Mar 2018 13:56:56 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:0864efeeb5cb8dca4eb53e5d6fd38486daee80fa326fe36d1ad254f8fa6bb310`  
		Last Modified: Sun, 23 Jul 2017 20:21:42 GMT  
		Size: 2.0 MB (1965988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cda69762aee1588fa82aeabf1af6d6ad24f737cce1451fab2e0199849b1e12e`  
		Last Modified: Wed, 25 Oct 2017 23:28:45 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72c11b1eac754a7631a317da1efcb355c8d2791a5aeb0962eafbab667043f2c2`  
		Last Modified: Wed, 28 Mar 2018 13:57:12 GMT  
		Size: 1.3 KB (1278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18203065956658b94aeaf743bb3dc9deb4d1462a54264c72a9bda1a5243c0115`  
		Last Modified: Wed, 28 Mar 2018 13:57:12 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:327f84ce6b82b285129907776bc7dc1726ef5c55e8dae8eb3f2e076d6eb6e469`  
		Last Modified: Wed, 28 Mar 2018 13:57:22 GMT  
		Size: 25.4 MB (25386671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c079c559c7953bf59bdff5f4a9c3e197856a9a00dd8466b47ce54bbf24a081a`  
		Last Modified: Wed, 28 Mar 2018 13:57:12 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2.4-alpine` - linux; arm64 variant v8

```console
$ docker pull httpd@sha256:1948341361832cfd7060d3379c1fb1cd3a9b29121b81bfdb2bcdbbff93fa9e36
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.4 MB (28443957 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29b0f508742f3ad6494f685b520a38734e2cf7b809450e8a31b6268e228bdbb8`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Tue, 24 Apr 2018 09:05:59 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Tue, 24 Apr 2018 09:06:00 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 24 Apr 2018 09:06:01 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Apr 2018 09:06:03 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 24 Apr 2018 09:06:04 GMT
WORKDIR /usr/local/apache2
# Tue, 24 Apr 2018 09:06:05 GMT
ENV HTTPD_VERSION=2.4.33
# Tue, 24 Apr 2018 09:06:06 GMT
ENV HTTPD_SHA256=de02511859b00d17845b9abdd1f975d5ccb5d0b280c567da5bf2ad4b70846f05
# Tue, 24 Apr 2018 09:06:07 GMT
ENV HTTPD_PATCHES=
# Tue, 24 Apr 2018 09:06:08 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Tue, 24 Apr 2018 09:10:46 GMT
RUN set -eux; 		runDeps=' 		apr-dev 		apr-util-dev 		apr-util-ldap 		perl 	'; 	apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		libressl 		libressl-dev 		libxml2-dev 		lua-dev 		make 		nghttp2-dev 		pcre-dev 		tar 		zlib-dev 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		runDeps="$runDeps $( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .httpd-rundeps $runDeps; 	apk del .build-deps
# Tue, 24 Apr 2018 09:10:47 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Tue, 24 Apr 2018 09:10:48 GMT
EXPOSE 80/tcp
# Tue, 24 Apr 2018 09:10:50 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:b78042c299ad99d1e646b18762d4bc22a84c4f88e5bb491ea6293a10f53ddf79`  
		Last Modified: Fri, 01 Dec 2017 18:43:42 GMT  
		Size: 2.0 MB (1988857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd45b97b6c2a3ac869ae5c99e087e97bc29714b165180e06f0c9116f400f2dd`  
		Last Modified: Fri, 01 Dec 2017 18:43:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:008efa9a4a01fb7a3f30b7d0d02bce18ea8405a0139cee36278edd8f0b992764`  
		Last Modified: Tue, 24 Apr 2018 09:11:48 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:034eabda80a50ee92751d5e7d000e0231aafa960e72c93ba08af7575797741a9`  
		Last Modified: Tue, 24 Apr 2018 09:11:49 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:591a0bc5797f4bf8ea200a9306f19817854507cc9d7daa735a298487fcafd723`  
		Last Modified: Tue, 24 Apr 2018 09:12:01 GMT  
		Size: 26.5 MB (26453238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4018624ad19e6321b4ad7723dd6f196f1429339944602fdce50e6d06c46a551e`  
		Last Modified: Tue, 24 Apr 2018 09:11:48 GMT  
		Size: 288.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2.4-alpine` - linux; 386

```console
$ docker pull httpd@sha256:93ee04225bd68a765086155d6222c48f39950232d0c15f2fd3fabb96f1d412ce
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.9 MB (29854960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d871bf5622e13db0fbe273b5c13bdbd255ccfbf2cee96d37aa0fe36508ce7e32`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Fri, 01 Jun 2018 06:57:26 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Jun 2018 06:57:26 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Jun 2018 06:57:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Jun 2018 09:38:10 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 01 Jun 2018 09:38:10 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Fri, 01 Jun 2018 09:38:10 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 01 Jun 2018 09:38:11 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Fri, 01 Jun 2018 09:38:11 GMT
WORKDIR /usr/local/apache2
# Fri, 01 Jun 2018 09:38:11 GMT
ENV HTTPD_VERSION=2.4.33
# Fri, 01 Jun 2018 09:38:11 GMT
ENV HTTPD_SHA256=de02511859b00d17845b9abdd1f975d5ccb5d0b280c567da5bf2ad4b70846f05
# Fri, 01 Jun 2018 09:38:11 GMT
ENV HTTPD_PATCHES=
# Fri, 01 Jun 2018 09:38:11 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Fri, 01 Jun 2018 09:40:23 GMT
RUN set -eux; 		runDeps=' 		apr-dev 		apr-util-dev 		apr-util-ldap 		perl 	'; 	apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		libressl 		libressl-dev 		libxml2-dev 		lua-dev 		make 		nghttp2-dev 		pcre-dev 		tar 		zlib-dev 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		runDeps="$runDeps $( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .httpd-rundeps $runDeps; 	apk del .build-deps
# Fri, 01 Jun 2018 09:40:24 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Fri, 01 Jun 2018 09:40:24 GMT
EXPOSE 80/tcp
# Fri, 01 Jun 2018 09:40:24 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:061a9db3c9e4f3bc32618a5f1a7e2b8aefb20fcc48f8be709bc7f7eabe61d003`  
		Last Modified: Fri, 01 Jun 2018 06:57:51 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6778cc9bfb7a6262ab888b4d747d8d3322368507970b4be6ca7d3f3c604cebd1`  
		Last Modified: Fri, 01 Jun 2018 09:41:20 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e6a7dbe64b4562b3baafff6dc40d9102856d928191bdf72ff938e5d8b6cfec0`  
		Last Modified: Fri, 01 Jun 2018 09:41:21 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3056e1cc192e89309246c42034b614db7e757622567f554d2bd57fc860dd4518`  
		Last Modified: Fri, 01 Jun 2018 09:41:34 GMT  
		Size: 27.7 MB (27726883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:641274b7a795b632e1d1783197c8a2a0dc3dc1ada2865a9cc66cadf5a7edec02`  
		Last Modified: Fri, 01 Jun 2018 09:41:20 GMT  
		Size: 288.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2.4-alpine` - linux; ppc64le

```console
$ docker pull httpd@sha256:5d8fb4363c389148a710a049fd5dafc5377a875bb16f69aefb70789663d02766
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.4 MB (29363466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68b0f2e42887cac3a11ea290dba42642809b7b92104b30b8bc5fec5796d4ceb9`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Tue, 24 Apr 2018 08:24:52 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Tue, 24 Apr 2018 08:24:54 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 24 Apr 2018 08:24:55 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Apr 2018 08:24:58 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 24 Apr 2018 08:24:58 GMT
WORKDIR /usr/local/apache2
# Tue, 24 Apr 2018 08:24:59 GMT
ENV HTTPD_VERSION=2.4.33
# Tue, 24 Apr 2018 08:24:59 GMT
ENV HTTPD_SHA256=de02511859b00d17845b9abdd1f975d5ccb5d0b280c567da5bf2ad4b70846f05
# Tue, 24 Apr 2018 08:25:00 GMT
ENV HTTPD_PATCHES=
# Tue, 24 Apr 2018 08:25:00 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Tue, 24 Apr 2018 08:27:01 GMT
RUN set -eux; 		runDeps=' 		apr-dev 		apr-util-dev 		apr-util-ldap 		perl 	'; 	apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		libressl 		libressl-dev 		libxml2-dev 		lua-dev 		make 		nghttp2-dev 		pcre-dev 		tar 		zlib-dev 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		runDeps="$runDeps $( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .httpd-rundeps $runDeps; 	apk del .build-deps
# Tue, 24 Apr 2018 08:27:02 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Tue, 24 Apr 2018 08:27:04 GMT
EXPOSE 80/tcp
# Tue, 24 Apr 2018 08:27:05 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:0da653ea85b50d280ec56ca2eafb7e8b37590630356e043fa9ff162d55732a23`  
		Last Modified: Fri, 01 Dec 2017 18:42:14 GMT  
		Size: 2.1 MB (2081469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd90b777cc38b5b6ca1b2407e647fdc22ef31b57ef98e924e7e0635adffc385`  
		Last Modified: Fri, 01 Dec 2017 18:42:15 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95cedac7749c7e9d93463908970d3e745cc7d5ab60b21f498619c558c396041f`  
		Last Modified: Tue, 24 Apr 2018 08:27:34 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1248ed19b1b314a10074074ec4efeaa57036f78fdb0a6f531f2c512522075423`  
		Last Modified: Tue, 24 Apr 2018 08:27:34 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c552c977282986b74bb0bfcd1591b0959e4c5c027c8d620b37959b10bb95aa85`  
		Last Modified: Tue, 24 Apr 2018 08:27:47 GMT  
		Size: 27.3 MB (27280081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4553f638bf8da66f6e13b32df69450d6c09283f303d8034e351699a81dbc1c8d`  
		Last Modified: Tue, 24 Apr 2018 08:27:34 GMT  
		Size: 285.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2.4-alpine` - linux; s390x

```console
$ docker pull httpd@sha256:f5c42ee069f548599e7a810456e4b00dff3eb411277b7ee3203d3c24b4597252
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.7 MB (31740011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50babdb0b278f4120549563ca72893d8c24d61e10ef24c0a49b275d83eb51844`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:57 GMT
ADD file:9c09dfc247c393ab1c6205a4b7857047a3d88e398e8d35aede30f7d613ef1de9 in / 
# Fri, 01 Dec 2017 18:41:58 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:58 GMT
CMD ["/bin/sh"]
# Tue, 24 Apr 2018 11:55:57 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Tue, 24 Apr 2018 11:55:57 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 24 Apr 2018 11:55:57 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Apr 2018 11:55:58 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 24 Apr 2018 11:55:58 GMT
WORKDIR /usr/local/apache2
# Tue, 24 Apr 2018 11:55:58 GMT
ENV HTTPD_VERSION=2.4.33
# Tue, 24 Apr 2018 11:55:58 GMT
ENV HTTPD_SHA256=de02511859b00d17845b9abdd1f975d5ccb5d0b280c567da5bf2ad4b70846f05
# Tue, 24 Apr 2018 11:55:58 GMT
ENV HTTPD_PATCHES=
# Tue, 24 Apr 2018 11:55:59 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Tue, 24 Apr 2018 11:57:48 GMT
RUN set -eux; 		runDeps=' 		apr-dev 		apr-util-dev 		apr-util-ldap 		perl 	'; 	apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		libressl 		libressl-dev 		libxml2-dev 		lua-dev 		make 		nghttp2-dev 		pcre-dev 		tar 		zlib-dev 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		runDeps="$runDeps $( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .httpd-rundeps $runDeps; 	apk del .build-deps
# Tue, 24 Apr 2018 11:57:48 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Tue, 24 Apr 2018 11:57:48 GMT
EXPOSE 80/tcp
# Tue, 24 Apr 2018 11:57:48 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:11e7bc85614a236b32043d147930fd2bc9055af8642fe30e5e56142590572b0e`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 2.2 MB (2185231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f825cbb729285f1fe2a0cd1d4d36897e3fe2191c5ee044ce11a5d301dc64a34`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed334fdeb1d6caa22c313891127ba787811ae71cbbd84e3ddc3d4737ef2d23f0`  
		Last Modified: Tue, 24 Apr 2018 11:58:09 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70252f7a2b79617ef582c91978eb8f15f65941a8c319e67b06bcc749ee86bbfa`  
		Last Modified: Tue, 24 Apr 2018 11:58:09 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5800e3cf17ea1668deacec7bb43048f2a6959d9f49c58eb8837f3d8e579cb393`  
		Last Modified: Tue, 24 Apr 2018 11:58:18 GMT  
		Size: 29.6 MB (29552923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57d4b88a087f74b6883676f8fad10f5b37cae1dc9e124ed994aef975af569388`  
		Last Modified: Tue, 24 Apr 2018 11:58:10 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:2-alpine`

```console
$ docker pull httpd@sha256:8ccb6cd820fa0d9703088c49a3c3b51edda05fd9206e55028d2c73155fd04c4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `httpd:2-alpine` - linux; amd64

```console
$ docker pull httpd@sha256:e21157360bcd5ff5efbbbdf38799026201275f0b71bebf14eb20443a811a7e51
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.3 MB (30323821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bf29b596030ae5b13410ddd78ad83c60b1961072dc6b7492ea80d595852931d`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Tue, 26 Jun 2018 22:38:47 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Tue, 26 Jun 2018 22:38:48 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 26 Jun 2018 22:38:48 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Jun 2018 22:38:49 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 26 Jun 2018 22:38:49 GMT
WORKDIR /usr/local/apache2
# Tue, 26 Jun 2018 22:38:49 GMT
ENV HTTPD_VERSION=2.4.33
# Tue, 26 Jun 2018 22:38:49 GMT
ENV HTTPD_SHA256=de02511859b00d17845b9abdd1f975d5ccb5d0b280c567da5bf2ad4b70846f05
# Tue, 26 Jun 2018 22:38:49 GMT
ENV HTTPD_PATCHES=
# Tue, 26 Jun 2018 22:38:49 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Tue, 26 Jun 2018 22:40:37 GMT
RUN set -eux; 		runDeps=' 		apr-dev 		apr-util-dev 		apr-util-ldap 		perl 	'; 	apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		libressl 		libressl-dev 		libxml2-dev 		lua-dev 		make 		nghttp2-dev 		pcre-dev 		tar 		zlib-dev 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		runDeps="$runDeps $( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .httpd-rundeps $runDeps; 	apk del .build-deps
# Tue, 26 Jun 2018 22:40:38 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Tue, 26 Jun 2018 22:40:38 GMT
EXPOSE 80/tcp
# Tue, 26 Jun 2018 22:40:38 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71b4120c7a852e7eddb28ff7d3e0463f527168850b2b4d5ebd3f7bd71e27a1fc`  
		Last Modified: Tue, 26 Jun 2018 22:41:43 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eb3783fe1ed79b83951617af2f67ac7247ee45f2badcae20268a439f75d408c`  
		Last Modified: Tue, 26 Jun 2018 22:41:43 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bf90ac1b57d04bae3313fee20bc53ef85d949db135fe6831f553cf9492ac134`  
		Last Modified: Tue, 26 Jun 2018 22:41:54 GMT  
		Size: 28.3 MB (28256597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e1cdd84e04f90bda30e0bff3dab497a07d096b3fc6cb5b708fe2542bb8bb823`  
		Last Modified: Tue, 26 Jun 2018 22:41:44 GMT  
		Size: 288.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2-alpine` - linux; arm variant v6

```console
$ docker pull httpd@sha256:92d43851234c6bfd625dab3b8622ca59ac6ffaf9cae59ed2c958746df7dcd664
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 MB (27354575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc01e9ca95973d3b0439d8d56bb220dd79812d6714bda2f966374dd7ab373321`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:35 GMT
ADD file:009348222efb3c4ca2e53c387fb34c488679ca07db39525a6c5cc214e46abffd in / 
# Wed, 25 Oct 2017 23:28:36 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:36 GMT
CMD ["/bin/sh"]
# Wed, 28 Mar 2018 13:55:24 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 28 Mar 2018 13:55:24 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Wed, 28 Mar 2018 13:55:25 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Mar 2018 13:55:27 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Wed, 28 Mar 2018 13:55:28 GMT
WORKDIR /usr/local/apache2
# Wed, 28 Mar 2018 13:55:28 GMT
ENV HTTPD_VERSION=2.4.33
# Wed, 28 Mar 2018 13:55:29 GMT
ENV HTTPD_SHA256=de02511859b00d17845b9abdd1f975d5ccb5d0b280c567da5bf2ad4b70846f05
# Wed, 28 Mar 2018 13:55:30 GMT
ENV HTTPD_PATCHES=
# Wed, 28 Mar 2018 13:55:30 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Wed, 28 Mar 2018 13:56:55 GMT
RUN set -eux; 		runDeps=' 		apr-dev 		apr-util-dev 		apr-util-ldap 		perl 	'; 	apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		libressl 		libressl-dev 		libxml2-dev 		lua-dev 		make 		nghttp2-dev 		pcre-dev 		tar 		zlib-dev 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		runDeps="$runDeps $( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .httpd-rundeps $runDeps; 	apk del .build-deps
# Wed, 28 Mar 2018 13:56:56 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Wed, 28 Mar 2018 13:56:56 GMT
EXPOSE 80/tcp
# Wed, 28 Mar 2018 13:56:56 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:0864efeeb5cb8dca4eb53e5d6fd38486daee80fa326fe36d1ad254f8fa6bb310`  
		Last Modified: Sun, 23 Jul 2017 20:21:42 GMT  
		Size: 2.0 MB (1965988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cda69762aee1588fa82aeabf1af6d6ad24f737cce1451fab2e0199849b1e12e`  
		Last Modified: Wed, 25 Oct 2017 23:28:45 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72c11b1eac754a7631a317da1efcb355c8d2791a5aeb0962eafbab667043f2c2`  
		Last Modified: Wed, 28 Mar 2018 13:57:12 GMT  
		Size: 1.3 KB (1278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18203065956658b94aeaf743bb3dc9deb4d1462a54264c72a9bda1a5243c0115`  
		Last Modified: Wed, 28 Mar 2018 13:57:12 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:327f84ce6b82b285129907776bc7dc1726ef5c55e8dae8eb3f2e076d6eb6e469`  
		Last Modified: Wed, 28 Mar 2018 13:57:22 GMT  
		Size: 25.4 MB (25386671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c079c559c7953bf59bdff5f4a9c3e197856a9a00dd8466b47ce54bbf24a081a`  
		Last Modified: Wed, 28 Mar 2018 13:57:12 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2-alpine` - linux; arm64 variant v8

```console
$ docker pull httpd@sha256:1948341361832cfd7060d3379c1fb1cd3a9b29121b81bfdb2bcdbbff93fa9e36
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.4 MB (28443957 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29b0f508742f3ad6494f685b520a38734e2cf7b809450e8a31b6268e228bdbb8`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Tue, 24 Apr 2018 09:05:59 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Tue, 24 Apr 2018 09:06:00 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 24 Apr 2018 09:06:01 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Apr 2018 09:06:03 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 24 Apr 2018 09:06:04 GMT
WORKDIR /usr/local/apache2
# Tue, 24 Apr 2018 09:06:05 GMT
ENV HTTPD_VERSION=2.4.33
# Tue, 24 Apr 2018 09:06:06 GMT
ENV HTTPD_SHA256=de02511859b00d17845b9abdd1f975d5ccb5d0b280c567da5bf2ad4b70846f05
# Tue, 24 Apr 2018 09:06:07 GMT
ENV HTTPD_PATCHES=
# Tue, 24 Apr 2018 09:06:08 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Tue, 24 Apr 2018 09:10:46 GMT
RUN set -eux; 		runDeps=' 		apr-dev 		apr-util-dev 		apr-util-ldap 		perl 	'; 	apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		libressl 		libressl-dev 		libxml2-dev 		lua-dev 		make 		nghttp2-dev 		pcre-dev 		tar 		zlib-dev 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		runDeps="$runDeps $( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .httpd-rundeps $runDeps; 	apk del .build-deps
# Tue, 24 Apr 2018 09:10:47 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Tue, 24 Apr 2018 09:10:48 GMT
EXPOSE 80/tcp
# Tue, 24 Apr 2018 09:10:50 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:b78042c299ad99d1e646b18762d4bc22a84c4f88e5bb491ea6293a10f53ddf79`  
		Last Modified: Fri, 01 Dec 2017 18:43:42 GMT  
		Size: 2.0 MB (1988857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd45b97b6c2a3ac869ae5c99e087e97bc29714b165180e06f0c9116f400f2dd`  
		Last Modified: Fri, 01 Dec 2017 18:43:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:008efa9a4a01fb7a3f30b7d0d02bce18ea8405a0139cee36278edd8f0b992764`  
		Last Modified: Tue, 24 Apr 2018 09:11:48 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:034eabda80a50ee92751d5e7d000e0231aafa960e72c93ba08af7575797741a9`  
		Last Modified: Tue, 24 Apr 2018 09:11:49 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:591a0bc5797f4bf8ea200a9306f19817854507cc9d7daa735a298487fcafd723`  
		Last Modified: Tue, 24 Apr 2018 09:12:01 GMT  
		Size: 26.5 MB (26453238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4018624ad19e6321b4ad7723dd6f196f1429339944602fdce50e6d06c46a551e`  
		Last Modified: Tue, 24 Apr 2018 09:11:48 GMT  
		Size: 288.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2-alpine` - linux; 386

```console
$ docker pull httpd@sha256:93ee04225bd68a765086155d6222c48f39950232d0c15f2fd3fabb96f1d412ce
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.9 MB (29854960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d871bf5622e13db0fbe273b5c13bdbd255ccfbf2cee96d37aa0fe36508ce7e32`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Fri, 01 Jun 2018 06:57:26 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Jun 2018 06:57:26 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Jun 2018 06:57:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Jun 2018 09:38:10 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 01 Jun 2018 09:38:10 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Fri, 01 Jun 2018 09:38:10 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 01 Jun 2018 09:38:11 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Fri, 01 Jun 2018 09:38:11 GMT
WORKDIR /usr/local/apache2
# Fri, 01 Jun 2018 09:38:11 GMT
ENV HTTPD_VERSION=2.4.33
# Fri, 01 Jun 2018 09:38:11 GMT
ENV HTTPD_SHA256=de02511859b00d17845b9abdd1f975d5ccb5d0b280c567da5bf2ad4b70846f05
# Fri, 01 Jun 2018 09:38:11 GMT
ENV HTTPD_PATCHES=
# Fri, 01 Jun 2018 09:38:11 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Fri, 01 Jun 2018 09:40:23 GMT
RUN set -eux; 		runDeps=' 		apr-dev 		apr-util-dev 		apr-util-ldap 		perl 	'; 	apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		libressl 		libressl-dev 		libxml2-dev 		lua-dev 		make 		nghttp2-dev 		pcre-dev 		tar 		zlib-dev 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		runDeps="$runDeps $( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .httpd-rundeps $runDeps; 	apk del .build-deps
# Fri, 01 Jun 2018 09:40:24 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Fri, 01 Jun 2018 09:40:24 GMT
EXPOSE 80/tcp
# Fri, 01 Jun 2018 09:40:24 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:061a9db3c9e4f3bc32618a5f1a7e2b8aefb20fcc48f8be709bc7f7eabe61d003`  
		Last Modified: Fri, 01 Jun 2018 06:57:51 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6778cc9bfb7a6262ab888b4d747d8d3322368507970b4be6ca7d3f3c604cebd1`  
		Last Modified: Fri, 01 Jun 2018 09:41:20 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e6a7dbe64b4562b3baafff6dc40d9102856d928191bdf72ff938e5d8b6cfec0`  
		Last Modified: Fri, 01 Jun 2018 09:41:21 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3056e1cc192e89309246c42034b614db7e757622567f554d2bd57fc860dd4518`  
		Last Modified: Fri, 01 Jun 2018 09:41:34 GMT  
		Size: 27.7 MB (27726883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:641274b7a795b632e1d1783197c8a2a0dc3dc1ada2865a9cc66cadf5a7edec02`  
		Last Modified: Fri, 01 Jun 2018 09:41:20 GMT  
		Size: 288.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2-alpine` - linux; ppc64le

```console
$ docker pull httpd@sha256:5d8fb4363c389148a710a049fd5dafc5377a875bb16f69aefb70789663d02766
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.4 MB (29363466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68b0f2e42887cac3a11ea290dba42642809b7b92104b30b8bc5fec5796d4ceb9`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Tue, 24 Apr 2018 08:24:52 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Tue, 24 Apr 2018 08:24:54 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 24 Apr 2018 08:24:55 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Apr 2018 08:24:58 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 24 Apr 2018 08:24:58 GMT
WORKDIR /usr/local/apache2
# Tue, 24 Apr 2018 08:24:59 GMT
ENV HTTPD_VERSION=2.4.33
# Tue, 24 Apr 2018 08:24:59 GMT
ENV HTTPD_SHA256=de02511859b00d17845b9abdd1f975d5ccb5d0b280c567da5bf2ad4b70846f05
# Tue, 24 Apr 2018 08:25:00 GMT
ENV HTTPD_PATCHES=
# Tue, 24 Apr 2018 08:25:00 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Tue, 24 Apr 2018 08:27:01 GMT
RUN set -eux; 		runDeps=' 		apr-dev 		apr-util-dev 		apr-util-ldap 		perl 	'; 	apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		libressl 		libressl-dev 		libxml2-dev 		lua-dev 		make 		nghttp2-dev 		pcre-dev 		tar 		zlib-dev 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		runDeps="$runDeps $( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .httpd-rundeps $runDeps; 	apk del .build-deps
# Tue, 24 Apr 2018 08:27:02 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Tue, 24 Apr 2018 08:27:04 GMT
EXPOSE 80/tcp
# Tue, 24 Apr 2018 08:27:05 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:0da653ea85b50d280ec56ca2eafb7e8b37590630356e043fa9ff162d55732a23`  
		Last Modified: Fri, 01 Dec 2017 18:42:14 GMT  
		Size: 2.1 MB (2081469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd90b777cc38b5b6ca1b2407e647fdc22ef31b57ef98e924e7e0635adffc385`  
		Last Modified: Fri, 01 Dec 2017 18:42:15 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95cedac7749c7e9d93463908970d3e745cc7d5ab60b21f498619c558c396041f`  
		Last Modified: Tue, 24 Apr 2018 08:27:34 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1248ed19b1b314a10074074ec4efeaa57036f78fdb0a6f531f2c512522075423`  
		Last Modified: Tue, 24 Apr 2018 08:27:34 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c552c977282986b74bb0bfcd1591b0959e4c5c027c8d620b37959b10bb95aa85`  
		Last Modified: Tue, 24 Apr 2018 08:27:47 GMT  
		Size: 27.3 MB (27280081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4553f638bf8da66f6e13b32df69450d6c09283f303d8034e351699a81dbc1c8d`  
		Last Modified: Tue, 24 Apr 2018 08:27:34 GMT  
		Size: 285.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2-alpine` - linux; s390x

```console
$ docker pull httpd@sha256:f5c42ee069f548599e7a810456e4b00dff3eb411277b7ee3203d3c24b4597252
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.7 MB (31740011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50babdb0b278f4120549563ca72893d8c24d61e10ef24c0a49b275d83eb51844`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:57 GMT
ADD file:9c09dfc247c393ab1c6205a4b7857047a3d88e398e8d35aede30f7d613ef1de9 in / 
# Fri, 01 Dec 2017 18:41:58 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:58 GMT
CMD ["/bin/sh"]
# Tue, 24 Apr 2018 11:55:57 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Tue, 24 Apr 2018 11:55:57 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 24 Apr 2018 11:55:57 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Apr 2018 11:55:58 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 24 Apr 2018 11:55:58 GMT
WORKDIR /usr/local/apache2
# Tue, 24 Apr 2018 11:55:58 GMT
ENV HTTPD_VERSION=2.4.33
# Tue, 24 Apr 2018 11:55:58 GMT
ENV HTTPD_SHA256=de02511859b00d17845b9abdd1f975d5ccb5d0b280c567da5bf2ad4b70846f05
# Tue, 24 Apr 2018 11:55:58 GMT
ENV HTTPD_PATCHES=
# Tue, 24 Apr 2018 11:55:59 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Tue, 24 Apr 2018 11:57:48 GMT
RUN set -eux; 		runDeps=' 		apr-dev 		apr-util-dev 		apr-util-ldap 		perl 	'; 	apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		libressl 		libressl-dev 		libxml2-dev 		lua-dev 		make 		nghttp2-dev 		pcre-dev 		tar 		zlib-dev 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		runDeps="$runDeps $( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .httpd-rundeps $runDeps; 	apk del .build-deps
# Tue, 24 Apr 2018 11:57:48 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Tue, 24 Apr 2018 11:57:48 GMT
EXPOSE 80/tcp
# Tue, 24 Apr 2018 11:57:48 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:11e7bc85614a236b32043d147930fd2bc9055af8642fe30e5e56142590572b0e`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 2.2 MB (2185231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f825cbb729285f1fe2a0cd1d4d36897e3fe2191c5ee044ce11a5d301dc64a34`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed334fdeb1d6caa22c313891127ba787811ae71cbbd84e3ddc3d4737ef2d23f0`  
		Last Modified: Tue, 24 Apr 2018 11:58:09 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70252f7a2b79617ef582c91978eb8f15f65941a8c319e67b06bcc749ee86bbfa`  
		Last Modified: Tue, 24 Apr 2018 11:58:09 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5800e3cf17ea1668deacec7bb43048f2a6959d9f49c58eb8837f3d8e579cb393`  
		Last Modified: Tue, 24 Apr 2018 11:58:18 GMT  
		Size: 29.6 MB (29552923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57d4b88a087f74b6883676f8fad10f5b37cae1dc9e124ed994aef975af569388`  
		Last Modified: Tue, 24 Apr 2018 11:58:10 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:alpine`

```console
$ docker pull httpd@sha256:8ccb6cd820fa0d9703088c49a3c3b51edda05fd9206e55028d2c73155fd04c4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `httpd:alpine` - linux; amd64

```console
$ docker pull httpd@sha256:e21157360bcd5ff5efbbbdf38799026201275f0b71bebf14eb20443a811a7e51
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.3 MB (30323821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bf29b596030ae5b13410ddd78ad83c60b1961072dc6b7492ea80d595852931d`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Tue, 26 Jun 2018 22:38:47 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Tue, 26 Jun 2018 22:38:48 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 26 Jun 2018 22:38:48 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Jun 2018 22:38:49 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 26 Jun 2018 22:38:49 GMT
WORKDIR /usr/local/apache2
# Tue, 26 Jun 2018 22:38:49 GMT
ENV HTTPD_VERSION=2.4.33
# Tue, 26 Jun 2018 22:38:49 GMT
ENV HTTPD_SHA256=de02511859b00d17845b9abdd1f975d5ccb5d0b280c567da5bf2ad4b70846f05
# Tue, 26 Jun 2018 22:38:49 GMT
ENV HTTPD_PATCHES=
# Tue, 26 Jun 2018 22:38:49 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Tue, 26 Jun 2018 22:40:37 GMT
RUN set -eux; 		runDeps=' 		apr-dev 		apr-util-dev 		apr-util-ldap 		perl 	'; 	apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		libressl 		libressl-dev 		libxml2-dev 		lua-dev 		make 		nghttp2-dev 		pcre-dev 		tar 		zlib-dev 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		runDeps="$runDeps $( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .httpd-rundeps $runDeps; 	apk del .build-deps
# Tue, 26 Jun 2018 22:40:38 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Tue, 26 Jun 2018 22:40:38 GMT
EXPOSE 80/tcp
# Tue, 26 Jun 2018 22:40:38 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71b4120c7a852e7eddb28ff7d3e0463f527168850b2b4d5ebd3f7bd71e27a1fc`  
		Last Modified: Tue, 26 Jun 2018 22:41:43 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eb3783fe1ed79b83951617af2f67ac7247ee45f2badcae20268a439f75d408c`  
		Last Modified: Tue, 26 Jun 2018 22:41:43 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bf90ac1b57d04bae3313fee20bc53ef85d949db135fe6831f553cf9492ac134`  
		Last Modified: Tue, 26 Jun 2018 22:41:54 GMT  
		Size: 28.3 MB (28256597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e1cdd84e04f90bda30e0bff3dab497a07d096b3fc6cb5b708fe2542bb8bb823`  
		Last Modified: Tue, 26 Jun 2018 22:41:44 GMT  
		Size: 288.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:alpine` - linux; arm variant v6

```console
$ docker pull httpd@sha256:92d43851234c6bfd625dab3b8622ca59ac6ffaf9cae59ed2c958746df7dcd664
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 MB (27354575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc01e9ca95973d3b0439d8d56bb220dd79812d6714bda2f966374dd7ab373321`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:35 GMT
ADD file:009348222efb3c4ca2e53c387fb34c488679ca07db39525a6c5cc214e46abffd in / 
# Wed, 25 Oct 2017 23:28:36 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:36 GMT
CMD ["/bin/sh"]
# Wed, 28 Mar 2018 13:55:24 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 28 Mar 2018 13:55:24 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Wed, 28 Mar 2018 13:55:25 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Mar 2018 13:55:27 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Wed, 28 Mar 2018 13:55:28 GMT
WORKDIR /usr/local/apache2
# Wed, 28 Mar 2018 13:55:28 GMT
ENV HTTPD_VERSION=2.4.33
# Wed, 28 Mar 2018 13:55:29 GMT
ENV HTTPD_SHA256=de02511859b00d17845b9abdd1f975d5ccb5d0b280c567da5bf2ad4b70846f05
# Wed, 28 Mar 2018 13:55:30 GMT
ENV HTTPD_PATCHES=
# Wed, 28 Mar 2018 13:55:30 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Wed, 28 Mar 2018 13:56:55 GMT
RUN set -eux; 		runDeps=' 		apr-dev 		apr-util-dev 		apr-util-ldap 		perl 	'; 	apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		libressl 		libressl-dev 		libxml2-dev 		lua-dev 		make 		nghttp2-dev 		pcre-dev 		tar 		zlib-dev 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		runDeps="$runDeps $( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .httpd-rundeps $runDeps; 	apk del .build-deps
# Wed, 28 Mar 2018 13:56:56 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Wed, 28 Mar 2018 13:56:56 GMT
EXPOSE 80/tcp
# Wed, 28 Mar 2018 13:56:56 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:0864efeeb5cb8dca4eb53e5d6fd38486daee80fa326fe36d1ad254f8fa6bb310`  
		Last Modified: Sun, 23 Jul 2017 20:21:42 GMT  
		Size: 2.0 MB (1965988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cda69762aee1588fa82aeabf1af6d6ad24f737cce1451fab2e0199849b1e12e`  
		Last Modified: Wed, 25 Oct 2017 23:28:45 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72c11b1eac754a7631a317da1efcb355c8d2791a5aeb0962eafbab667043f2c2`  
		Last Modified: Wed, 28 Mar 2018 13:57:12 GMT  
		Size: 1.3 KB (1278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18203065956658b94aeaf743bb3dc9deb4d1462a54264c72a9bda1a5243c0115`  
		Last Modified: Wed, 28 Mar 2018 13:57:12 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:327f84ce6b82b285129907776bc7dc1726ef5c55e8dae8eb3f2e076d6eb6e469`  
		Last Modified: Wed, 28 Mar 2018 13:57:22 GMT  
		Size: 25.4 MB (25386671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c079c559c7953bf59bdff5f4a9c3e197856a9a00dd8466b47ce54bbf24a081a`  
		Last Modified: Wed, 28 Mar 2018 13:57:12 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:alpine` - linux; arm64 variant v8

```console
$ docker pull httpd@sha256:1948341361832cfd7060d3379c1fb1cd3a9b29121b81bfdb2bcdbbff93fa9e36
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.4 MB (28443957 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29b0f508742f3ad6494f685b520a38734e2cf7b809450e8a31b6268e228bdbb8`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Tue, 24 Apr 2018 09:05:59 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Tue, 24 Apr 2018 09:06:00 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 24 Apr 2018 09:06:01 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Apr 2018 09:06:03 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 24 Apr 2018 09:06:04 GMT
WORKDIR /usr/local/apache2
# Tue, 24 Apr 2018 09:06:05 GMT
ENV HTTPD_VERSION=2.4.33
# Tue, 24 Apr 2018 09:06:06 GMT
ENV HTTPD_SHA256=de02511859b00d17845b9abdd1f975d5ccb5d0b280c567da5bf2ad4b70846f05
# Tue, 24 Apr 2018 09:06:07 GMT
ENV HTTPD_PATCHES=
# Tue, 24 Apr 2018 09:06:08 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Tue, 24 Apr 2018 09:10:46 GMT
RUN set -eux; 		runDeps=' 		apr-dev 		apr-util-dev 		apr-util-ldap 		perl 	'; 	apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		libressl 		libressl-dev 		libxml2-dev 		lua-dev 		make 		nghttp2-dev 		pcre-dev 		tar 		zlib-dev 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		runDeps="$runDeps $( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .httpd-rundeps $runDeps; 	apk del .build-deps
# Tue, 24 Apr 2018 09:10:47 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Tue, 24 Apr 2018 09:10:48 GMT
EXPOSE 80/tcp
# Tue, 24 Apr 2018 09:10:50 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:b78042c299ad99d1e646b18762d4bc22a84c4f88e5bb491ea6293a10f53ddf79`  
		Last Modified: Fri, 01 Dec 2017 18:43:42 GMT  
		Size: 2.0 MB (1988857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd45b97b6c2a3ac869ae5c99e087e97bc29714b165180e06f0c9116f400f2dd`  
		Last Modified: Fri, 01 Dec 2017 18:43:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:008efa9a4a01fb7a3f30b7d0d02bce18ea8405a0139cee36278edd8f0b992764`  
		Last Modified: Tue, 24 Apr 2018 09:11:48 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:034eabda80a50ee92751d5e7d000e0231aafa960e72c93ba08af7575797741a9`  
		Last Modified: Tue, 24 Apr 2018 09:11:49 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:591a0bc5797f4bf8ea200a9306f19817854507cc9d7daa735a298487fcafd723`  
		Last Modified: Tue, 24 Apr 2018 09:12:01 GMT  
		Size: 26.5 MB (26453238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4018624ad19e6321b4ad7723dd6f196f1429339944602fdce50e6d06c46a551e`  
		Last Modified: Tue, 24 Apr 2018 09:11:48 GMT  
		Size: 288.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:alpine` - linux; 386

```console
$ docker pull httpd@sha256:93ee04225bd68a765086155d6222c48f39950232d0c15f2fd3fabb96f1d412ce
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.9 MB (29854960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d871bf5622e13db0fbe273b5c13bdbd255ccfbf2cee96d37aa0fe36508ce7e32`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Fri, 01 Jun 2018 06:57:26 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Jun 2018 06:57:26 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Jun 2018 06:57:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Jun 2018 09:38:10 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 01 Jun 2018 09:38:10 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Fri, 01 Jun 2018 09:38:10 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 01 Jun 2018 09:38:11 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Fri, 01 Jun 2018 09:38:11 GMT
WORKDIR /usr/local/apache2
# Fri, 01 Jun 2018 09:38:11 GMT
ENV HTTPD_VERSION=2.4.33
# Fri, 01 Jun 2018 09:38:11 GMT
ENV HTTPD_SHA256=de02511859b00d17845b9abdd1f975d5ccb5d0b280c567da5bf2ad4b70846f05
# Fri, 01 Jun 2018 09:38:11 GMT
ENV HTTPD_PATCHES=
# Fri, 01 Jun 2018 09:38:11 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Fri, 01 Jun 2018 09:40:23 GMT
RUN set -eux; 		runDeps=' 		apr-dev 		apr-util-dev 		apr-util-ldap 		perl 	'; 	apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		libressl 		libressl-dev 		libxml2-dev 		lua-dev 		make 		nghttp2-dev 		pcre-dev 		tar 		zlib-dev 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		runDeps="$runDeps $( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .httpd-rundeps $runDeps; 	apk del .build-deps
# Fri, 01 Jun 2018 09:40:24 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Fri, 01 Jun 2018 09:40:24 GMT
EXPOSE 80/tcp
# Fri, 01 Jun 2018 09:40:24 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:061a9db3c9e4f3bc32618a5f1a7e2b8aefb20fcc48f8be709bc7f7eabe61d003`  
		Last Modified: Fri, 01 Jun 2018 06:57:51 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6778cc9bfb7a6262ab888b4d747d8d3322368507970b4be6ca7d3f3c604cebd1`  
		Last Modified: Fri, 01 Jun 2018 09:41:20 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e6a7dbe64b4562b3baafff6dc40d9102856d928191bdf72ff938e5d8b6cfec0`  
		Last Modified: Fri, 01 Jun 2018 09:41:21 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3056e1cc192e89309246c42034b614db7e757622567f554d2bd57fc860dd4518`  
		Last Modified: Fri, 01 Jun 2018 09:41:34 GMT  
		Size: 27.7 MB (27726883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:641274b7a795b632e1d1783197c8a2a0dc3dc1ada2865a9cc66cadf5a7edec02`  
		Last Modified: Fri, 01 Jun 2018 09:41:20 GMT  
		Size: 288.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:alpine` - linux; ppc64le

```console
$ docker pull httpd@sha256:5d8fb4363c389148a710a049fd5dafc5377a875bb16f69aefb70789663d02766
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.4 MB (29363466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68b0f2e42887cac3a11ea290dba42642809b7b92104b30b8bc5fec5796d4ceb9`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Tue, 24 Apr 2018 08:24:52 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Tue, 24 Apr 2018 08:24:54 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 24 Apr 2018 08:24:55 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Apr 2018 08:24:58 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 24 Apr 2018 08:24:58 GMT
WORKDIR /usr/local/apache2
# Tue, 24 Apr 2018 08:24:59 GMT
ENV HTTPD_VERSION=2.4.33
# Tue, 24 Apr 2018 08:24:59 GMT
ENV HTTPD_SHA256=de02511859b00d17845b9abdd1f975d5ccb5d0b280c567da5bf2ad4b70846f05
# Tue, 24 Apr 2018 08:25:00 GMT
ENV HTTPD_PATCHES=
# Tue, 24 Apr 2018 08:25:00 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Tue, 24 Apr 2018 08:27:01 GMT
RUN set -eux; 		runDeps=' 		apr-dev 		apr-util-dev 		apr-util-ldap 		perl 	'; 	apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		libressl 		libressl-dev 		libxml2-dev 		lua-dev 		make 		nghttp2-dev 		pcre-dev 		tar 		zlib-dev 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		runDeps="$runDeps $( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .httpd-rundeps $runDeps; 	apk del .build-deps
# Tue, 24 Apr 2018 08:27:02 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Tue, 24 Apr 2018 08:27:04 GMT
EXPOSE 80/tcp
# Tue, 24 Apr 2018 08:27:05 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:0da653ea85b50d280ec56ca2eafb7e8b37590630356e043fa9ff162d55732a23`  
		Last Modified: Fri, 01 Dec 2017 18:42:14 GMT  
		Size: 2.1 MB (2081469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd90b777cc38b5b6ca1b2407e647fdc22ef31b57ef98e924e7e0635adffc385`  
		Last Modified: Fri, 01 Dec 2017 18:42:15 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95cedac7749c7e9d93463908970d3e745cc7d5ab60b21f498619c558c396041f`  
		Last Modified: Tue, 24 Apr 2018 08:27:34 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1248ed19b1b314a10074074ec4efeaa57036f78fdb0a6f531f2c512522075423`  
		Last Modified: Tue, 24 Apr 2018 08:27:34 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c552c977282986b74bb0bfcd1591b0959e4c5c027c8d620b37959b10bb95aa85`  
		Last Modified: Tue, 24 Apr 2018 08:27:47 GMT  
		Size: 27.3 MB (27280081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4553f638bf8da66f6e13b32df69450d6c09283f303d8034e351699a81dbc1c8d`  
		Last Modified: Tue, 24 Apr 2018 08:27:34 GMT  
		Size: 285.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:alpine` - linux; s390x

```console
$ docker pull httpd@sha256:f5c42ee069f548599e7a810456e4b00dff3eb411277b7ee3203d3c24b4597252
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.7 MB (31740011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50babdb0b278f4120549563ca72893d8c24d61e10ef24c0a49b275d83eb51844`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:57 GMT
ADD file:9c09dfc247c393ab1c6205a4b7857047a3d88e398e8d35aede30f7d613ef1de9 in / 
# Fri, 01 Dec 2017 18:41:58 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:58 GMT
CMD ["/bin/sh"]
# Tue, 24 Apr 2018 11:55:57 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Tue, 24 Apr 2018 11:55:57 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 24 Apr 2018 11:55:57 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Apr 2018 11:55:58 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 24 Apr 2018 11:55:58 GMT
WORKDIR /usr/local/apache2
# Tue, 24 Apr 2018 11:55:58 GMT
ENV HTTPD_VERSION=2.4.33
# Tue, 24 Apr 2018 11:55:58 GMT
ENV HTTPD_SHA256=de02511859b00d17845b9abdd1f975d5ccb5d0b280c567da5bf2ad4b70846f05
# Tue, 24 Apr 2018 11:55:58 GMT
ENV HTTPD_PATCHES=
# Tue, 24 Apr 2018 11:55:59 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Tue, 24 Apr 2018 11:57:48 GMT
RUN set -eux; 		runDeps=' 		apr-dev 		apr-util-dev 		apr-util-ldap 		perl 	'; 	apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		libressl 		libressl-dev 		libxml2-dev 		lua-dev 		make 		nghttp2-dev 		pcre-dev 		tar 		zlib-dev 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		runDeps="$runDeps $( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .httpd-rundeps $runDeps; 	apk del .build-deps
# Tue, 24 Apr 2018 11:57:48 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Tue, 24 Apr 2018 11:57:48 GMT
EXPOSE 80/tcp
# Tue, 24 Apr 2018 11:57:48 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:11e7bc85614a236b32043d147930fd2bc9055af8642fe30e5e56142590572b0e`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 2.2 MB (2185231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f825cbb729285f1fe2a0cd1d4d36897e3fe2191c5ee044ce11a5d301dc64a34`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed334fdeb1d6caa22c313891127ba787811ae71cbbd84e3ddc3d4737ef2d23f0`  
		Last Modified: Tue, 24 Apr 2018 11:58:09 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70252f7a2b79617ef582c91978eb8f15f65941a8c319e67b06bcc749ee86bbfa`  
		Last Modified: Tue, 24 Apr 2018 11:58:09 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5800e3cf17ea1668deacec7bb43048f2a6959d9f49c58eb8837f3d8e579cb393`  
		Last Modified: Tue, 24 Apr 2018 11:58:18 GMT  
		Size: 29.6 MB (29552923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57d4b88a087f74b6883676f8fad10f5b37cae1dc9e124ed994aef975af569388`  
		Last Modified: Tue, 24 Apr 2018 11:58:10 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:latest`

```console
$ docker pull httpd@sha256:e00dc5f5999c8d7090e6cc45c2ed829d8ac5a9de99e3bda45bc801749959de8b
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
$ docker pull httpd@sha256:fbaa22ab88f398a2a4727351810757f63f178959252c801ae4e8fa20f09559f1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.0 MB (68981217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a7d646dbba854001197bbfaa8fa52a54b5245b3c85f4f4c012ca7a0a523f876`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Tue, 26 Jun 2018 21:20:50 GMT
ADD file:d4f4a33443015d350df6f0aa1d8b3491b27b93adabcbfb1b983fc915abc8723b in / 
# Tue, 26 Jun 2018 21:20:51 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 21:20:59 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Tue, 26 Jun 2018 22:35:16 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 26 Jun 2018 22:35:16 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Jun 2018 22:35:17 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 26 Jun 2018 22:35:17 GMT
WORKDIR /usr/local/apache2
# Tue, 26 Jun 2018 22:35:17 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Tue, 26 Jun 2018 22:35:18 GMT
ENV OPENSSL_VERSION=1.0.2l-1~bpo8+1
# Tue, 26 Jun 2018 22:35:18 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Tue, 26 Jun 2018 22:36:04 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:36:04 GMT
ENV HTTPD_VERSION=2.4.33
# Tue, 26 Jun 2018 22:36:04 GMT
ENV HTTPD_SHA256=de02511859b00d17845b9abdd1f975d5ccb5d0b280c567da5bf2ad4b70846f05
# Tue, 26 Jun 2018 22:36:05 GMT
ENV HTTPD_PATCHES=
# Tue, 26 Jun 2018 22:36:05 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Tue, 26 Jun 2018 22:38:32 GMT
RUN set -eux; 		buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends -V $buildDeps; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 26 Jun 2018 22:38:32 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Tue, 26 Jun 2018 22:38:32 GMT
EXPOSE 80/tcp
# Tue, 26 Jun 2018 22:38:33 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:1c7fe136a31e13a1c879245672184ced3b9fc590989ba42a522a57b071a9c1aa`  
		Last Modified: Tue, 26 Jun 2018 21:29:49 GMT  
		Size: 54.3 MB (54252035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d2d593b3a770bd2ea569cb995a11dc285d26a7cbff61a89e71c3126fe0d629`  
		Last Modified: Tue, 26 Jun 2018 21:30:34 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96cd507e10fd2fe187aa69212e1483c766095543fa0a73e52e436d38867a6dcb`  
		Last Modified: Tue, 26 Jun 2018 22:40:56 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec6bb3492a4650e97f6033334dc166e8a6813eadc8e1f54f3a047920925556f6`  
		Last Modified: Tue, 26 Jun 2018 22:40:53 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ea3a980fa47ae2f1806a6aa8fdada35f2c2a82e96551bdce77006d987b3e95a`  
		Last Modified: Tue, 26 Jun 2018 22:40:58 GMT  
		Size: 11.7 MB (11742514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebe42c0aa1a83a42977d234d09d83502f2ea4cf063c4faf054549084c5f81b8f`  
		Last Modified: Tue, 26 Jun 2018 22:40:54 GMT  
		Size: 3.0 MB (2985654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a640bae86fe0ad4cc0da44549a00c80dcf7608a660bcca9f20806695ce71939a`  
		Last Modified: Tue, 26 Jun 2018 22:40:54 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:latest` - linux; arm variant v5

```console
$ docker pull httpd@sha256:1540d1ff8dbe076aaf54fa4b06a90dc81a5b7ed576b766027d255ba881cd2721
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.0 MB (65957428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebc549c2f4c30462a516b83ff84bf6ceda7b090b48a9c57b8e16aceb78f7d676`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Wed, 27 Jun 2018 08:49:35 GMT
ADD file:ffdec8efe717fef7468633ecb4de75a3e3f775a293230d77477e11b8364c9042 in / 
# Wed, 27 Jun 2018 08:49:38 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 08:49:49 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Wed, 27 Jun 2018 09:22:04 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Wed, 27 Jun 2018 09:22:04 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 09:22:05 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Wed, 27 Jun 2018 09:22:05 GMT
WORKDIR /usr/local/apache2
# Wed, 27 Jun 2018 09:22:05 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Wed, 27 Jun 2018 09:22:06 GMT
ENV OPENSSL_VERSION=1.0.2l-1~bpo8+1
# Wed, 27 Jun 2018 09:22:07 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Wed, 27 Jun 2018 09:22:50 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Wed, 27 Jun 2018 09:22:50 GMT
ENV HTTPD_VERSION=2.4.33
# Wed, 27 Jun 2018 09:22:50 GMT
ENV HTTPD_SHA256=de02511859b00d17845b9abdd1f975d5ccb5d0b280c567da5bf2ad4b70846f05
# Wed, 27 Jun 2018 09:22:51 GMT
ENV HTTPD_PATCHES=
# Wed, 27 Jun 2018 09:22:51 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Wed, 27 Jun 2018 09:25:17 GMT
RUN set -eux; 		buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends -V $buildDeps; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 09:25:17 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Wed, 27 Jun 2018 09:25:17 GMT
EXPOSE 80/tcp
# Wed, 27 Jun 2018 09:25:18 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:2370554fdd8c2d014fa023ee30dcf0dc3febde1853ffc7cd9641ea8eb276d0bb`  
		Last Modified: Wed, 27 Jun 2018 08:58:15 GMT  
		Size: 52.4 MB (52448410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6be65820afabc7cad348688a94f5611ef45a8c3df1ac87d06b00722c2ee87f3`  
		Last Modified: Wed, 27 Jun 2018 08:58:37 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3744b8b61fb6ce35b9070b33f3faaf2ee0136ff532c7ef18a26463e79adc7d`  
		Last Modified: Wed, 27 Jun 2018 09:25:42 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14fffca87c6c32856223bebbbe9cbccd8594f2a222823014aff51e51408f29bc`  
		Last Modified: Wed, 27 Jun 2018 09:25:43 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c12f7488b089b007f9a39054ca55d9fcabebdfaa5719bba832d16fb658ab3993`  
		Last Modified: Wed, 27 Jun 2018 09:25:48 GMT  
		Size: 10.5 MB (10511501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06c3a57524bb3c5fddadd05b7be8a41aeea92c905a8268e4b69f54d5c53d3021`  
		Last Modified: Wed, 27 Jun 2018 09:25:43 GMT  
		Size: 3.0 MB (2996475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d39e770f1f5ed685c743aaa3857174b3dfae1b9c9cdd0c051cd925bb9ff8a080`  
		Last Modified: Wed, 27 Jun 2018 09:25:42 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:latest` - linux; arm variant v7

```console
$ docker pull httpd@sha256:aa8ce4bd1af8abb3171489ae892947963562381adeb7b251ae3dc64ecb8f196c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.1 MB (63136494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d94d144b876c1f42c5ed1e1f3964fd3b8b047d2bcc36fab9858732c9e2203e0`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Sat, 28 Apr 2018 11:59:05 GMT
ADD file:4e9c283075c120ce66f83bf541b0aeaa8a46f74c21d38e4ab1578e7f1b892823 in / 
# Sat, 28 Apr 2018 11:59:05 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 11:59:17 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Sat, 28 Apr 2018 12:42:19 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Sat, 28 Apr 2018 12:42:19 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 12:42:21 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Sat, 28 Apr 2018 12:42:21 GMT
WORKDIR /usr/local/apache2
# Sat, 28 Apr 2018 12:42:21 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Sat, 28 Apr 2018 12:42:22 GMT
ENV OPENSSL_VERSION=1.0.2l-1~bpo8+1
# Sat, 28 Apr 2018 12:42:23 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Sat, 28 Apr 2018 12:43:02 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:43:03 GMT
ENV HTTPD_VERSION=2.4.33
# Sat, 28 Apr 2018 12:43:03 GMT
ENV HTTPD_SHA256=de02511859b00d17845b9abdd1f975d5ccb5d0b280c567da5bf2ad4b70846f05
# Sat, 28 Apr 2018 12:43:03 GMT
ENV HTTPD_PATCHES=
# Sat, 28 Apr 2018 12:43:04 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Sat, 28 Apr 2018 12:45:08 GMT
RUN set -eux; 		buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends -V $buildDeps; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 12:45:09 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Sat, 28 Apr 2018 12:45:09 GMT
EXPOSE 80/tcp
# Sat, 28 Apr 2018 12:45:09 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:5c478157e28e3c26a0209484edb518799e1c21863d4700579c010b7203e0537f`  
		Last Modified: Sat, 28 Apr 2018 12:10:24 GMT  
		Size: 50.2 MB (50195697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95181562cb10525c78d8d4e8266daba1725e1c184c6b05e62f162e51230a51a6`  
		Last Modified: Sat, 28 Apr 2018 12:10:57 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f228f27600b37df2a634155aa78b700c87a3aa732fb041f1af80107ca3c94ef`  
		Last Modified: Sat, 28 Apr 2018 12:45:25 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df60f8fb99b5a23dab34d245d1369bd05fd00b64ff2b99e6a1fe499b48724d21`  
		Last Modified: Sat, 28 Apr 2018 12:45:25 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78d8afcd606866f307ec211bc42227dc780b4b7181d7b917a21f8b5af850e87a`  
		Last Modified: Sat, 28 Apr 2018 12:45:28 GMT  
		Size: 10.1 MB (10077707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d752970546370da365eecceb0934c454027d2aba7f477a22fd4f16ae1a2eda8f`  
		Last Modified: Sat, 28 Apr 2018 12:45:26 GMT  
		Size: 2.9 MB (2862043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:573857cb70d5e52ec1fe054558d740845363e8bc872e1f72f30f617b8a37c3f2`  
		Last Modified: Sat, 28 Apr 2018 12:45:26 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:latest` - linux; arm64 variant v8

```console
$ docker pull httpd@sha256:43ce57e0e1728249619a7e69ddb92050844ac291aa6ad49ba5078262819d2c8f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.9 MB (64861176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36ba24292764bea537941229e3e856d71f08e1836ec1f21cf9c2ebc0676defc4`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Mon, 30 Apr 2018 23:21:38 GMT
ADD file:387c83918422a6546379c4d84818ca3949fcd63aec058da562b08c947a9ed571 in / 
# Mon, 30 Apr 2018 23:21:40 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 23:22:20 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Tue, 01 May 2018 10:17:20 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 01 May 2018 10:17:20 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 May 2018 10:17:22 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 01 May 2018 10:17:23 GMT
WORKDIR /usr/local/apache2
# Tue, 01 May 2018 10:17:24 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Tue, 01 May 2018 10:17:25 GMT
ENV OPENSSL_VERSION=1.0.2l-1~bpo8+1
# Tue, 01 May 2018 10:17:26 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Tue, 01 May 2018 10:18:25 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Tue, 01 May 2018 10:18:26 GMT
ENV HTTPD_VERSION=2.4.33
# Tue, 01 May 2018 10:18:27 GMT
ENV HTTPD_SHA256=de02511859b00d17845b9abdd1f975d5ccb5d0b280c567da5bf2ad4b70846f05
# Tue, 01 May 2018 10:18:28 GMT
ENV HTTPD_PATCHES=
# Tue, 01 May 2018 10:18:29 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Tue, 01 May 2018 10:23:23 GMT
RUN set -eux; 		buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends -V $buildDeps; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 01 May 2018 10:23:25 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Tue, 01 May 2018 10:23:26 GMT
EXPOSE 80/tcp
# Tue, 01 May 2018 10:23:27 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:363cfded2ef3921ef972c85cafc77cf16cdcfddfd49782ad4540cb73fd5e57a2`  
		Last Modified: Mon, 30 Apr 2018 23:41:06 GMT  
		Size: 51.4 MB (51446854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e56ad4849b8546ea0acf26ec919166bdf289984892ad1021795dac9e5eb07534`  
		Last Modified: Mon, 30 Apr 2018 23:42:33 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6a6edd1932b425caf3c6fd25cc846096f667c258313c2fa050c75ebeaa9f76a`  
		Last Modified: Tue, 01 May 2018 10:24:00 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f8d06024a7c721fd93b69b725ed2b410cf8a311d6dd6713af42a6fdf53d466e`  
		Last Modified: Tue, 01 May 2018 10:24:00 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06702fafcd1db728eb130d0371603ed7ddcd4e703df63cb82d4e0300924ae487`  
		Last Modified: Tue, 01 May 2018 10:24:05 GMT  
		Size: 10.6 MB (10595084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3eb9fa8d294e64cfa5abcfccd96861e3dce44422de5fe36770e1d701ab7f7dd`  
		Last Modified: Tue, 01 May 2018 10:24:02 GMT  
		Size: 2.8 MB (2818219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88cc6eb681d915b6ec191f406b42447655cf5ce37b614b6bb2eb7ea9295501a5`  
		Last Modified: Tue, 01 May 2018 10:24:00 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:latest` - linux; 386

```console
$ docker pull httpd@sha256:4bdc85583f0ae97f8fcc802039c18e8f80a62a77502fc489055505fc46869555
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.6 MB (73627128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de3571a2dad14e3ffa7cb692a590cd474ed03997e2b682cb3ab97612e2dfe96d`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Sat, 28 Apr 2018 10:39:32 GMT
ADD file:ce5174f2b2c155a2421fac3ff37a02d9551d5d79e31a541189bcfd2416a6903a in / 
# Sat, 28 Apr 2018 10:39:32 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 10:39:35 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Fri, 01 Jun 2018 09:33:29 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Fri, 01 Jun 2018 09:33:29 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 01 Jun 2018 09:33:30 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Fri, 01 Jun 2018 09:33:30 GMT
WORKDIR /usr/local/apache2
# Fri, 01 Jun 2018 09:33:30 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Fri, 01 Jun 2018 09:33:30 GMT
ENV OPENSSL_VERSION=1.0.2l-1~bpo8+1
# Fri, 01 Jun 2018 09:33:31 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Fri, 01 Jun 2018 09:34:41 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Fri, 01 Jun 2018 09:34:41 GMT
ENV HTTPD_VERSION=2.4.33
# Fri, 01 Jun 2018 09:34:41 GMT
ENV HTTPD_SHA256=de02511859b00d17845b9abdd1f975d5ccb5d0b280c567da5bf2ad4b70846f05
# Fri, 01 Jun 2018 09:34:41 GMT
ENV HTTPD_PATCHES=
# Fri, 01 Jun 2018 09:34:41 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Fri, 01 Jun 2018 09:37:52 GMT
RUN set -eux; 		buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends -V $buildDeps; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 01 Jun 2018 09:37:53 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Fri, 01 Jun 2018 09:37:53 GMT
EXPOSE 80/tcp
# Fri, 01 Jun 2018 09:37:53 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:05b419d667f793c8c2edf0ff0aec14fc4d66733cdb89957ac89e8bfbeaddd0fa`  
		Last Modified: Sat, 28 Apr 2018 10:44:20 GMT  
		Size: 54.5 MB (54486782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaafd97590fdac5dea7f881527551541eb4b99e1d0847f3bc7a4603fd622173d`  
		Last Modified: Sat, 28 Apr 2018 10:44:43 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f658c595fbbeac3d642aaafc299d8e0b41d5847773f00415908a5590e3cc056`  
		Last Modified: Fri, 01 Jun 2018 09:40:41 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e29b0a7b807d2b7a59457849cc3e1b3ba50dca7b3908efc1bf90ce3d4152794c`  
		Last Modified: Fri, 01 Jun 2018 09:40:41 GMT  
		Size: 339.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13bdc0871e6b23c4192b93cbec2c2984e455b53c77fc5b7cc854b3eb84d084d4`  
		Last Modified: Fri, 01 Jun 2018 09:40:50 GMT  
		Size: 16.3 MB (16303187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b10621d768078dc5c019e599820c8403f2c47e72af48cc1049d43220889ffc46`  
		Last Modified: Fri, 01 Jun 2018 09:40:42 GMT  
		Size: 2.8 MB (2836143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b48b8d4f096f842f1ee793cd25f383f6664d39abd4e50e426af6b7a56015586d`  
		Last Modified: Fri, 01 Jun 2018 09:40:41 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:latest` - linux; ppc64le

```console
$ docker pull httpd@sha256:14c30e2bbcd99d69eaeacb3931dda3ed4279fa4a74d9201da6d94c682f299195
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.8 MB (67825725 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:204ed1acb17edfd98177d98a8a0b340de354d9c7e203f8c4e19d5a549698e2b2`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Sat, 28 Apr 2018 08:17:46 GMT
ADD file:6a4bd4ea54f669286e984ecf8178e1fa7c12c8b6fc0f96e4203ae7a6f99a2279 in / 
# Sat, 28 Apr 2018 08:17:47 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 08:17:55 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Sat, 28 Apr 2018 08:49:27 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Sat, 28 Apr 2018 08:49:28 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 08:49:32 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Sat, 28 Apr 2018 08:49:33 GMT
WORKDIR /usr/local/apache2
# Sat, 28 Apr 2018 08:49:34 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Sat, 28 Apr 2018 08:49:35 GMT
ENV OPENSSL_VERSION=1.0.2l-1~bpo8+1
# Sat, 28 Apr 2018 08:49:42 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Sat, 28 Apr 2018 08:51:18 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Sat, 28 Apr 2018 08:51:20 GMT
ENV HTTPD_VERSION=2.4.33
# Sat, 28 Apr 2018 08:51:21 GMT
ENV HTTPD_SHA256=de02511859b00d17845b9abdd1f975d5ccb5d0b280c567da5bf2ad4b70846f05
# Sat, 28 Apr 2018 08:51:22 GMT
ENV HTTPD_PATCHES=
# Sat, 28 Apr 2018 08:51:23 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Sat, 28 Apr 2018 08:55:54 GMT
RUN set -eux; 		buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends -V $buildDeps; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 08:55:56 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Sat, 28 Apr 2018 08:55:57 GMT
EXPOSE 80/tcp
# Sat, 28 Apr 2018 08:55:58 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:2668401c9f940b1d6b03e5f0086fa248cb957610ef9a7c79983d2fb0707ec76c`  
		Last Modified: Sat, 28 Apr 2018 08:24:36 GMT  
		Size: 53.4 MB (53392811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b4ad9a0a90189920eb8079c0f50e9e9ea8cc8576e5a3c8473b4371dfbdef821`  
		Last Modified: Sat, 28 Apr 2018 08:25:04 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f1b504604e96eab3768839540ac78a0d9aa0f9ba087eee88686d0456161a31e`  
		Last Modified: Sat, 28 Apr 2018 08:56:21 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e4fad3d69996a6405ea0d19eda24ceb8e8afd457f000435eb40a6aeb6291dc9`  
		Last Modified: Sat, 28 Apr 2018 08:56:21 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:439cbc49a985d5ed81d5d60b514d0160e816a3a92df7e5e96914d34bfe184998`  
		Last Modified: Sat, 28 Apr 2018 08:56:24 GMT  
		Size: 11.5 MB (11462955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:390a9bee46c221b84effb1a2fa13047b035867d1624ad38089f6bc8822bf06d0`  
		Last Modified: Sat, 28 Apr 2018 08:56:22 GMT  
		Size: 3.0 MB (2968911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f19476aaa7577d39d32bcfa67950122126d387cb1c4493f23fa15950c7d5cb00`  
		Last Modified: Sat, 28 Apr 2018 08:56:20 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:latest` - linux; s390x

```console
$ docker pull httpd@sha256:4aef099e84091d2bd2bbb1e4ff4243abb97bb1e898c9440f41d288186c1db911
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.9 MB (68942158 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9bdb401e6105852f1c39a652b1d87e696e8b3e766b293cd5962f835b360b82f`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Sat, 28 Apr 2018 11:42:31 GMT
ADD file:ac1cfec75c7e1898f2c9b7d17653da3684fdda7d14440ce16f1939bb66105cdc in / 
# Sat, 28 Apr 2018 11:42:31 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 11:42:39 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Sat, 28 Apr 2018 13:33:27 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Sat, 28 Apr 2018 13:33:27 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 13:33:27 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Sat, 28 Apr 2018 13:33:28 GMT
WORKDIR /usr/local/apache2
# Sat, 28 Apr 2018 13:33:28 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Sat, 28 Apr 2018 13:33:28 GMT
ENV OPENSSL_VERSION=1.0.2l-1~bpo8+1
# Sat, 28 Apr 2018 13:33:28 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Sat, 28 Apr 2018 13:33:49 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Sat, 28 Apr 2018 13:33:51 GMT
ENV HTTPD_VERSION=2.4.33
# Sat, 28 Apr 2018 13:33:52 GMT
ENV HTTPD_SHA256=de02511859b00d17845b9abdd1f975d5ccb5d0b280c567da5bf2ad4b70846f05
# Sat, 28 Apr 2018 13:33:52 GMT
ENV HTTPD_PATCHES=
# Sat, 28 Apr 2018 13:33:52 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Sat, 28 Apr 2018 13:35:02 GMT
RUN set -eux; 		buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends -V $buildDeps; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 13:35:03 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Sat, 28 Apr 2018 13:35:03 GMT
EXPOSE 80/tcp
# Sat, 28 Apr 2018 13:35:03 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:e0524893a6d25f3e36c190fea678ecf1845e7c0d2ba833b077a429d64b943e0a`  
		Last Modified: Sat, 28 Apr 2018 11:47:52 GMT  
		Size: 54.5 MB (54465857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:478f892a5aa022a5e91933c14bacf80c0f73e82984f49c8e43aa44e93038e9da`  
		Last Modified: Sat, 28 Apr 2018 11:48:15 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e71757346b9348a2a8d1c2bd878688a58eca184151f0434d5186c608525cc57b`  
		Last Modified: Sat, 28 Apr 2018 13:35:23 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a775e43c434609fa5323a4ef14da2a74ebc5dce389eb2de04e628f35a28617e3`  
		Last Modified: Sat, 28 Apr 2018 13:35:23 GMT  
		Size: 337.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7980080db0824baaf46a4d2641dee87492e256f4e75c81aea63dd453497ea0cc`  
		Last Modified: Sat, 28 Apr 2018 13:35:26 GMT  
		Size: 11.4 MB (11361028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:192d68a090d30a0093e100d9ab8fc5ec007c4e3743e3fe527d98319929c19e4c`  
		Last Modified: Sat, 28 Apr 2018 13:35:24 GMT  
		Size: 3.1 MB (3114265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ac7f6ab7f571d1ed658c22c79cc7539e3bab391c66e3a827659a89b4107cd1b`  
		Last Modified: Sat, 28 Apr 2018 13:35:23 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
