<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `httpd`

-	[`httpd:2`](#httpd2)
-	[`httpd:2.4`](#httpd24)
-	[`httpd:2.4.34`](#httpd2434)
-	[`httpd:2.4.34-alpine`](#httpd2434-alpine)
-	[`httpd:2.4-alpine`](#httpd24-alpine)
-	[`httpd:2-alpine`](#httpd2-alpine)
-	[`httpd:alpine`](#httpdalpine)
-	[`httpd:latest`](#httpdlatest)

## `httpd:2`

```console
$ docker pull httpd@sha256:0f27bf502243a8a32844bba6fd652520c301c96996ae053cb5fc9d6cce698d8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5

### `httpd:2` - linux; amd64

```console
$ docker pull httpd@sha256:2ed0231931b5d44537132136418697e6037eb3985ba7c9126b11e6eb38a6634a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.0 MB (68995221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94af1f61475235154673372c1f46334c5601a6b182a818b15e6b519c479f9010`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Tue, 17 Jul 2018 00:20:47 GMT
ADD file:b90e572f7462a23e2e4eda57269941ee7d8f078ca8ab1eefca86927713e13365 in / 
# Tue, 17 Jul 2018 00:20:48 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 00:21:02 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Tue, 17 Jul 2018 03:05:28 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 17 Jul 2018 03:05:29 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 03:05:30 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 17 Jul 2018 03:05:30 GMT
WORKDIR /usr/local/apache2
# Tue, 17 Jul 2018 03:05:30 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Tue, 17 Jul 2018 03:05:31 GMT
ENV OPENSSL_VERSION=1.0.2l-1~bpo8+1
# Tue, 17 Jul 2018 03:05:32 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Tue, 17 Jul 2018 03:06:15 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:06:16 GMT
ENV HTTPD_VERSION=2.4.34
# Tue, 17 Jul 2018 03:06:16 GMT
ENV HTTPD_SHA256=fa53c95631febb08a9de41fd2864cfff815cf62d9306723ab0d4b8d7aa1638f0
# Tue, 17 Jul 2018 03:06:16 GMT
ENV HTTPD_PATCHES=
# Tue, 17 Jul 2018 03:06:17 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Tue, 17 Jul 2018 03:08:46 GMT
RUN set -eux; 		buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends -V $buildDeps; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jul 2018 03:08:46 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Tue, 17 Jul 2018 03:08:47 GMT
EXPOSE 80/tcp
# Tue, 17 Jul 2018 03:08:47 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:d660b1f15b9bfb8142f50b518156f2d364d9642fe05854538b060498e2f7928d`  
		Last Modified: Tue, 17 Jul 2018 00:34:02 GMT  
		Size: 54.3 MB (54252125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa1c79a2fa374bfb8c2184b396e8e8f666e80d5b30c19692a825ef55b77e6705`  
		Last Modified: Tue, 17 Jul 2018 00:35:01 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5f6514c0aff89d58cd8fd5105ff4cfb6908bec183d856b350858ba95843c06e`  
		Last Modified: Tue, 17 Jul 2018 03:09:14 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:676d3dd26040490bc28047a5f2f054d9960a4b8b79f996647b23c7debbe4bd12`  
		Last Modified: Tue, 17 Jul 2018 03:09:13 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fdddf845a1b6bbc89c827218607509650a05451cd5737fcc39cb40098e879cd`  
		Last Modified: Tue, 17 Jul 2018 03:09:18 GMT  
		Size: 11.7 MB (11748704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28ecdadc5f881f50bf0c434966cf20f7c5d5ae49b0fc9d76b91c1da5bc72f7c8`  
		Last Modified: Tue, 17 Jul 2018 03:09:14 GMT  
		Size: 3.0 MB (2993380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d882098e42b4971c54681c212cd2d92cd97e0daa81f709b3be4ed95d2cf89ae`  
		Last Modified: Tue, 17 Jul 2018 03:09:13 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2` - linux; arm variant v5

```console
$ docker pull httpd@sha256:e2a6f9a198f0d5d0cc5d6afb089acdcca4acc69966caf7c24c392946ea1fb62e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.0 MB (65966376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4681132f955b17abce1c907e37192b78a7b72d6f376e8bfa816c1d423966f85`
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
# Tue, 17 Jul 2018 09:02:10 GMT
ENV HTTPD_VERSION=2.4.34
# Tue, 17 Jul 2018 09:02:10 GMT
ENV HTTPD_SHA256=fa53c95631febb08a9de41fd2864cfff815cf62d9306723ab0d4b8d7aa1638f0
# Tue, 17 Jul 2018 09:02:10 GMT
ENV HTTPD_PATCHES=
# Tue, 17 Jul 2018 09:02:11 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Tue, 17 Jul 2018 09:04:44 GMT
RUN set -eux; 		buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends -V $buildDeps; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jul 2018 09:04:47 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Tue, 17 Jul 2018 09:04:47 GMT
EXPOSE 80/tcp
# Tue, 17 Jul 2018 09:04:47 GMT
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
	-	`sha256:41a72410290bfea7bad0fbbd088bf19414e806aaeb05996b346866114cacb280`  
		Last Modified: Tue, 17 Jul 2018 09:05:18 GMT  
		Size: 3.0 MB (3005420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85f86fd22fe6b184e729ed6ff972c3d21ba81d89ad418c80d96590933e6785e0`  
		Last Modified: Tue, 17 Jul 2018 09:05:15 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:2.4`

```console
$ docker pull httpd@sha256:0f27bf502243a8a32844bba6fd652520c301c96996ae053cb5fc9d6cce698d8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5

### `httpd:2.4` - linux; amd64

```console
$ docker pull httpd@sha256:2ed0231931b5d44537132136418697e6037eb3985ba7c9126b11e6eb38a6634a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.0 MB (68995221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94af1f61475235154673372c1f46334c5601a6b182a818b15e6b519c479f9010`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Tue, 17 Jul 2018 00:20:47 GMT
ADD file:b90e572f7462a23e2e4eda57269941ee7d8f078ca8ab1eefca86927713e13365 in / 
# Tue, 17 Jul 2018 00:20:48 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 00:21:02 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Tue, 17 Jul 2018 03:05:28 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 17 Jul 2018 03:05:29 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 03:05:30 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 17 Jul 2018 03:05:30 GMT
WORKDIR /usr/local/apache2
# Tue, 17 Jul 2018 03:05:30 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Tue, 17 Jul 2018 03:05:31 GMT
ENV OPENSSL_VERSION=1.0.2l-1~bpo8+1
# Tue, 17 Jul 2018 03:05:32 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Tue, 17 Jul 2018 03:06:15 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:06:16 GMT
ENV HTTPD_VERSION=2.4.34
# Tue, 17 Jul 2018 03:06:16 GMT
ENV HTTPD_SHA256=fa53c95631febb08a9de41fd2864cfff815cf62d9306723ab0d4b8d7aa1638f0
# Tue, 17 Jul 2018 03:06:16 GMT
ENV HTTPD_PATCHES=
# Tue, 17 Jul 2018 03:06:17 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Tue, 17 Jul 2018 03:08:46 GMT
RUN set -eux; 		buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends -V $buildDeps; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jul 2018 03:08:46 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Tue, 17 Jul 2018 03:08:47 GMT
EXPOSE 80/tcp
# Tue, 17 Jul 2018 03:08:47 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:d660b1f15b9bfb8142f50b518156f2d364d9642fe05854538b060498e2f7928d`  
		Last Modified: Tue, 17 Jul 2018 00:34:02 GMT  
		Size: 54.3 MB (54252125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa1c79a2fa374bfb8c2184b396e8e8f666e80d5b30c19692a825ef55b77e6705`  
		Last Modified: Tue, 17 Jul 2018 00:35:01 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5f6514c0aff89d58cd8fd5105ff4cfb6908bec183d856b350858ba95843c06e`  
		Last Modified: Tue, 17 Jul 2018 03:09:14 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:676d3dd26040490bc28047a5f2f054d9960a4b8b79f996647b23c7debbe4bd12`  
		Last Modified: Tue, 17 Jul 2018 03:09:13 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fdddf845a1b6bbc89c827218607509650a05451cd5737fcc39cb40098e879cd`  
		Last Modified: Tue, 17 Jul 2018 03:09:18 GMT  
		Size: 11.7 MB (11748704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28ecdadc5f881f50bf0c434966cf20f7c5d5ae49b0fc9d76b91c1da5bc72f7c8`  
		Last Modified: Tue, 17 Jul 2018 03:09:14 GMT  
		Size: 3.0 MB (2993380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d882098e42b4971c54681c212cd2d92cd97e0daa81f709b3be4ed95d2cf89ae`  
		Last Modified: Tue, 17 Jul 2018 03:09:13 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2.4` - linux; arm variant v5

```console
$ docker pull httpd@sha256:e2a6f9a198f0d5d0cc5d6afb089acdcca4acc69966caf7c24c392946ea1fb62e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.0 MB (65966376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4681132f955b17abce1c907e37192b78a7b72d6f376e8bfa816c1d423966f85`
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
# Tue, 17 Jul 2018 09:02:10 GMT
ENV HTTPD_VERSION=2.4.34
# Tue, 17 Jul 2018 09:02:10 GMT
ENV HTTPD_SHA256=fa53c95631febb08a9de41fd2864cfff815cf62d9306723ab0d4b8d7aa1638f0
# Tue, 17 Jul 2018 09:02:10 GMT
ENV HTTPD_PATCHES=
# Tue, 17 Jul 2018 09:02:11 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Tue, 17 Jul 2018 09:04:44 GMT
RUN set -eux; 		buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends -V $buildDeps; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jul 2018 09:04:47 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Tue, 17 Jul 2018 09:04:47 GMT
EXPOSE 80/tcp
# Tue, 17 Jul 2018 09:04:47 GMT
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
	-	`sha256:41a72410290bfea7bad0fbbd088bf19414e806aaeb05996b346866114cacb280`  
		Last Modified: Tue, 17 Jul 2018 09:05:18 GMT  
		Size: 3.0 MB (3005420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85f86fd22fe6b184e729ed6ff972c3d21ba81d89ad418c80d96590933e6785e0`  
		Last Modified: Tue, 17 Jul 2018 09:05:15 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:2.4.34`

```console
$ docker pull httpd@sha256:0f27bf502243a8a32844bba6fd652520c301c96996ae053cb5fc9d6cce698d8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5

### `httpd:2.4.34` - linux; amd64

```console
$ docker pull httpd@sha256:2ed0231931b5d44537132136418697e6037eb3985ba7c9126b11e6eb38a6634a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.0 MB (68995221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94af1f61475235154673372c1f46334c5601a6b182a818b15e6b519c479f9010`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Tue, 17 Jul 2018 00:20:47 GMT
ADD file:b90e572f7462a23e2e4eda57269941ee7d8f078ca8ab1eefca86927713e13365 in / 
# Tue, 17 Jul 2018 00:20:48 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 00:21:02 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Tue, 17 Jul 2018 03:05:28 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 17 Jul 2018 03:05:29 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 03:05:30 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 17 Jul 2018 03:05:30 GMT
WORKDIR /usr/local/apache2
# Tue, 17 Jul 2018 03:05:30 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Tue, 17 Jul 2018 03:05:31 GMT
ENV OPENSSL_VERSION=1.0.2l-1~bpo8+1
# Tue, 17 Jul 2018 03:05:32 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Tue, 17 Jul 2018 03:06:15 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:06:16 GMT
ENV HTTPD_VERSION=2.4.34
# Tue, 17 Jul 2018 03:06:16 GMT
ENV HTTPD_SHA256=fa53c95631febb08a9de41fd2864cfff815cf62d9306723ab0d4b8d7aa1638f0
# Tue, 17 Jul 2018 03:06:16 GMT
ENV HTTPD_PATCHES=
# Tue, 17 Jul 2018 03:06:17 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Tue, 17 Jul 2018 03:08:46 GMT
RUN set -eux; 		buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends -V $buildDeps; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jul 2018 03:08:46 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Tue, 17 Jul 2018 03:08:47 GMT
EXPOSE 80/tcp
# Tue, 17 Jul 2018 03:08:47 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:d660b1f15b9bfb8142f50b518156f2d364d9642fe05854538b060498e2f7928d`  
		Last Modified: Tue, 17 Jul 2018 00:34:02 GMT  
		Size: 54.3 MB (54252125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa1c79a2fa374bfb8c2184b396e8e8f666e80d5b30c19692a825ef55b77e6705`  
		Last Modified: Tue, 17 Jul 2018 00:35:01 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5f6514c0aff89d58cd8fd5105ff4cfb6908bec183d856b350858ba95843c06e`  
		Last Modified: Tue, 17 Jul 2018 03:09:14 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:676d3dd26040490bc28047a5f2f054d9960a4b8b79f996647b23c7debbe4bd12`  
		Last Modified: Tue, 17 Jul 2018 03:09:13 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fdddf845a1b6bbc89c827218607509650a05451cd5737fcc39cb40098e879cd`  
		Last Modified: Tue, 17 Jul 2018 03:09:18 GMT  
		Size: 11.7 MB (11748704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28ecdadc5f881f50bf0c434966cf20f7c5d5ae49b0fc9d76b91c1da5bc72f7c8`  
		Last Modified: Tue, 17 Jul 2018 03:09:14 GMT  
		Size: 3.0 MB (2993380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d882098e42b4971c54681c212cd2d92cd97e0daa81f709b3be4ed95d2cf89ae`  
		Last Modified: Tue, 17 Jul 2018 03:09:13 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2.4.34` - linux; arm variant v5

```console
$ docker pull httpd@sha256:e2a6f9a198f0d5d0cc5d6afb089acdcca4acc69966caf7c24c392946ea1fb62e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.0 MB (65966376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4681132f955b17abce1c907e37192b78a7b72d6f376e8bfa816c1d423966f85`
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
# Tue, 17 Jul 2018 09:02:10 GMT
ENV HTTPD_VERSION=2.4.34
# Tue, 17 Jul 2018 09:02:10 GMT
ENV HTTPD_SHA256=fa53c95631febb08a9de41fd2864cfff815cf62d9306723ab0d4b8d7aa1638f0
# Tue, 17 Jul 2018 09:02:10 GMT
ENV HTTPD_PATCHES=
# Tue, 17 Jul 2018 09:02:11 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Tue, 17 Jul 2018 09:04:44 GMT
RUN set -eux; 		buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends -V $buildDeps; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jul 2018 09:04:47 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Tue, 17 Jul 2018 09:04:47 GMT
EXPOSE 80/tcp
# Tue, 17 Jul 2018 09:04:47 GMT
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
	-	`sha256:41a72410290bfea7bad0fbbd088bf19414e806aaeb05996b346866114cacb280`  
		Last Modified: Tue, 17 Jul 2018 09:05:18 GMT  
		Size: 3.0 MB (3005420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85f86fd22fe6b184e729ed6ff972c3d21ba81d89ad418c80d96590933e6785e0`  
		Last Modified: Tue, 17 Jul 2018 09:05:15 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:2.4.34-alpine`

```console
$ docker pull httpd@sha256:9c1ed9de079958bebae0ff4ab2f6f36e9202384700f7907f89efb413faa92392
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `httpd:2.4.34-alpine` - linux; amd64

```console
$ docker pull httpd@sha256:c2c6cffa5dbf33abedf55e474b727dfe8fb5b8e46f1507c6f35dd1b24eff0822
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.2 MB (30213958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3057be6d3767a93725d7bb473c8c768e16465a69f5fa7e3b16aa12780e7b0e76`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:45 GMT
ADD file:6ee19b92d5cb1bf143947fe2e2481cb3b353d42e1e54888a8ba48c03dd4155f2 in / 
# Fri, 06 Jul 2018 14:13:45 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 15:38:52 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 06 Jul 2018 15:38:52 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Fri, 06 Jul 2018 15:38:52 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Jul 2018 15:38:53 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Fri, 06 Jul 2018 15:38:53 GMT
WORKDIR /usr/local/apache2
# Mon, 16 Jul 2018 23:23:05 GMT
ENV HTTPD_VERSION=2.4.34
# Mon, 16 Jul 2018 23:23:05 GMT
ENV HTTPD_SHA256=fa53c95631febb08a9de41fd2864cfff815cf62d9306723ab0d4b8d7aa1638f0
# Mon, 16 Jul 2018 23:23:05 GMT
ENV HTTPD_PATCHES=
# Mon, 16 Jul 2018 23:23:06 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Mon, 16 Jul 2018 23:24:53 GMT
RUN set -eux; 		runDeps=' 		apr-dev 		apr-util-dev 		apr-util-ldap 		perl 	'; 	apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		libressl 		libressl-dev 		libxml2-dev 		lua-dev 		make 		nghttp2-dev 		pcre-dev 		tar 		zlib-dev 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		runDeps="$runDeps $( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .httpd-rundeps $runDeps; 	apk del .build-deps
# Mon, 16 Jul 2018 23:24:54 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Mon, 16 Jul 2018 23:24:54 GMT
EXPOSE 80/tcp
# Mon, 16 Jul 2018 23:24:54 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:911c6d0c7995e5d9763c1864d54fb6deccda04a55d7955123a8e22dd9d44c497`  
		Last Modified: Fri, 06 Jul 2018 14:16:43 GMT  
		Size: 2.1 MB (2103553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb560bf76af3c41f6e108b9e4bfbb66f5a7b80cfc69f19d848838762c768f8ad`  
		Last Modified: Fri, 06 Jul 2018 15:41:01 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b077eec28e124b17ddf8e866bb91b6dec57c342270466e0be8305e6083466d2f`  
		Last Modified: Fri, 06 Jul 2018 15:41:01 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81c48f162b71335659953447250558b49a2db0cc93ed7d469d27e996f6408b8e`  
		Last Modified: Mon, 16 Jul 2018 23:27:12 GMT  
		Size: 28.1 MB (28108718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e3a7e7c1ad772b33c9339d0a58c944bb8aab20e3bee7376f50f96287191f175`  
		Last Modified: Mon, 16 Jul 2018 23:27:01 GMT  
		Size: 291.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2.4.34-alpine` - linux; arm64 variant v8

```console
$ docker pull httpd@sha256:f604ae1f27243f9276484a581a2471a412f11a1eb3e4c9577537a396f6aeea27
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.3 MB (29313037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:275b3ec47ce4125c9762a032762d0f4f2e8a3da47800cc197ade9a34c28f8fb6`
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
# Tue, 17 Jul 2018 09:20:43 GMT
ENV HTTPD_VERSION=2.4.34
# Tue, 17 Jul 2018 09:20:44 GMT
ENV HTTPD_SHA256=fa53c95631febb08a9de41fd2864cfff815cf62d9306723ab0d4b8d7aa1638f0
# Tue, 17 Jul 2018 09:20:45 GMT
ENV HTTPD_PATCHES=
# Tue, 17 Jul 2018 09:20:46 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Tue, 17 Jul 2018 09:23:04 GMT
RUN set -eux; 		runDeps=' 		apr-dev 		apr-util-dev 		apr-util-ldap 		perl 	'; 	apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		libressl 		libressl-dev 		libxml2-dev 		lua-dev 		make 		nghttp2-dev 		pcre-dev 		tar 		zlib-dev 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		runDeps="$runDeps $( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .httpd-rundeps $runDeps; 	apk del .build-deps
# Tue, 17 Jul 2018 09:23:05 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Tue, 17 Jul 2018 09:23:06 GMT
EXPOSE 80/tcp
# Tue, 17 Jul 2018 09:23:06 GMT
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
	-	`sha256:c51f2a0c4a59946fe1b4f8f313c62a2ca2c74072c3cfc96462a3ed93ecfeb5a3`  
		Last Modified: Tue, 17 Jul 2018 09:23:41 GMT  
		Size: 27.3 MB (27322313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c66239acbdcfa74d8dc36227cc50d7f6f96a70fdd127d4a633ba21c91d826b30`  
		Last Modified: Tue, 17 Jul 2018 09:23:28 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2.4.34-alpine` - linux; ppc64le

```console
$ docker pull httpd@sha256:6b4c38834dff3449225c1ea135a44259d0b3a696686d91fcc4445bfdd74f99eb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.3 MB (30274442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ffed02cf4adfd245f534c3c01f2dc5549dae9ea8b1d8c68e60c37ecf6fba045`
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
# Tue, 17 Jul 2018 08:31:13 GMT
ENV HTTPD_VERSION=2.4.34
# Tue, 17 Jul 2018 08:31:15 GMT
ENV HTTPD_SHA256=fa53c95631febb08a9de41fd2864cfff815cf62d9306723ab0d4b8d7aa1638f0
# Tue, 17 Jul 2018 08:31:16 GMT
ENV HTTPD_PATCHES=
# Tue, 17 Jul 2018 08:31:17 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Tue, 17 Jul 2018 08:33:01 GMT
RUN set -eux; 		runDeps=' 		apr-dev 		apr-util-dev 		apr-util-ldap 		perl 	'; 	apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		libressl 		libressl-dev 		libxml2-dev 		lua-dev 		make 		nghttp2-dev 		pcre-dev 		tar 		zlib-dev 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		runDeps="$runDeps $( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .httpd-rundeps $runDeps; 	apk del .build-deps
# Tue, 17 Jul 2018 08:33:03 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Tue, 17 Jul 2018 08:33:06 GMT
EXPOSE 80/tcp
# Tue, 17 Jul 2018 08:33:08 GMT
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
	-	`sha256:35e46059b4dde0db3dd6abcdb99b3d182b648113dcbc7b1e0dc220179c8319ad`  
		Last Modified: Tue, 17 Jul 2018 08:33:43 GMT  
		Size: 28.2 MB (28191048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d5d3f0aed21862b428292c40724572762fb43b5bbf576cdafcff41ced0c7e0b`  
		Last Modified: Tue, 17 Jul 2018 08:33:32 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:2.4-alpine`

```console
$ docker pull httpd@sha256:9c1ed9de079958bebae0ff4ab2f6f36e9202384700f7907f89efb413faa92392
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `httpd:2.4-alpine` - linux; amd64

```console
$ docker pull httpd@sha256:c2c6cffa5dbf33abedf55e474b727dfe8fb5b8e46f1507c6f35dd1b24eff0822
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.2 MB (30213958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3057be6d3767a93725d7bb473c8c768e16465a69f5fa7e3b16aa12780e7b0e76`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:45 GMT
ADD file:6ee19b92d5cb1bf143947fe2e2481cb3b353d42e1e54888a8ba48c03dd4155f2 in / 
# Fri, 06 Jul 2018 14:13:45 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 15:38:52 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 06 Jul 2018 15:38:52 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Fri, 06 Jul 2018 15:38:52 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Jul 2018 15:38:53 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Fri, 06 Jul 2018 15:38:53 GMT
WORKDIR /usr/local/apache2
# Mon, 16 Jul 2018 23:23:05 GMT
ENV HTTPD_VERSION=2.4.34
# Mon, 16 Jul 2018 23:23:05 GMT
ENV HTTPD_SHA256=fa53c95631febb08a9de41fd2864cfff815cf62d9306723ab0d4b8d7aa1638f0
# Mon, 16 Jul 2018 23:23:05 GMT
ENV HTTPD_PATCHES=
# Mon, 16 Jul 2018 23:23:06 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Mon, 16 Jul 2018 23:24:53 GMT
RUN set -eux; 		runDeps=' 		apr-dev 		apr-util-dev 		apr-util-ldap 		perl 	'; 	apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		libressl 		libressl-dev 		libxml2-dev 		lua-dev 		make 		nghttp2-dev 		pcre-dev 		tar 		zlib-dev 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		runDeps="$runDeps $( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .httpd-rundeps $runDeps; 	apk del .build-deps
# Mon, 16 Jul 2018 23:24:54 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Mon, 16 Jul 2018 23:24:54 GMT
EXPOSE 80/tcp
# Mon, 16 Jul 2018 23:24:54 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:911c6d0c7995e5d9763c1864d54fb6deccda04a55d7955123a8e22dd9d44c497`  
		Last Modified: Fri, 06 Jul 2018 14:16:43 GMT  
		Size: 2.1 MB (2103553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb560bf76af3c41f6e108b9e4bfbb66f5a7b80cfc69f19d848838762c768f8ad`  
		Last Modified: Fri, 06 Jul 2018 15:41:01 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b077eec28e124b17ddf8e866bb91b6dec57c342270466e0be8305e6083466d2f`  
		Last Modified: Fri, 06 Jul 2018 15:41:01 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81c48f162b71335659953447250558b49a2db0cc93ed7d469d27e996f6408b8e`  
		Last Modified: Mon, 16 Jul 2018 23:27:12 GMT  
		Size: 28.1 MB (28108718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e3a7e7c1ad772b33c9339d0a58c944bb8aab20e3bee7376f50f96287191f175`  
		Last Modified: Mon, 16 Jul 2018 23:27:01 GMT  
		Size: 291.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2.4-alpine` - linux; arm64 variant v8

```console
$ docker pull httpd@sha256:f604ae1f27243f9276484a581a2471a412f11a1eb3e4c9577537a396f6aeea27
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.3 MB (29313037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:275b3ec47ce4125c9762a032762d0f4f2e8a3da47800cc197ade9a34c28f8fb6`
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
# Tue, 17 Jul 2018 09:20:43 GMT
ENV HTTPD_VERSION=2.4.34
# Tue, 17 Jul 2018 09:20:44 GMT
ENV HTTPD_SHA256=fa53c95631febb08a9de41fd2864cfff815cf62d9306723ab0d4b8d7aa1638f0
# Tue, 17 Jul 2018 09:20:45 GMT
ENV HTTPD_PATCHES=
# Tue, 17 Jul 2018 09:20:46 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Tue, 17 Jul 2018 09:23:04 GMT
RUN set -eux; 		runDeps=' 		apr-dev 		apr-util-dev 		apr-util-ldap 		perl 	'; 	apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		libressl 		libressl-dev 		libxml2-dev 		lua-dev 		make 		nghttp2-dev 		pcre-dev 		tar 		zlib-dev 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		runDeps="$runDeps $( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .httpd-rundeps $runDeps; 	apk del .build-deps
# Tue, 17 Jul 2018 09:23:05 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Tue, 17 Jul 2018 09:23:06 GMT
EXPOSE 80/tcp
# Tue, 17 Jul 2018 09:23:06 GMT
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
	-	`sha256:c51f2a0c4a59946fe1b4f8f313c62a2ca2c74072c3cfc96462a3ed93ecfeb5a3`  
		Last Modified: Tue, 17 Jul 2018 09:23:41 GMT  
		Size: 27.3 MB (27322313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c66239acbdcfa74d8dc36227cc50d7f6f96a70fdd127d4a633ba21c91d826b30`  
		Last Modified: Tue, 17 Jul 2018 09:23:28 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2.4-alpine` - linux; ppc64le

```console
$ docker pull httpd@sha256:6b4c38834dff3449225c1ea135a44259d0b3a696686d91fcc4445bfdd74f99eb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.3 MB (30274442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ffed02cf4adfd245f534c3c01f2dc5549dae9ea8b1d8c68e60c37ecf6fba045`
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
# Tue, 17 Jul 2018 08:31:13 GMT
ENV HTTPD_VERSION=2.4.34
# Tue, 17 Jul 2018 08:31:15 GMT
ENV HTTPD_SHA256=fa53c95631febb08a9de41fd2864cfff815cf62d9306723ab0d4b8d7aa1638f0
# Tue, 17 Jul 2018 08:31:16 GMT
ENV HTTPD_PATCHES=
# Tue, 17 Jul 2018 08:31:17 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Tue, 17 Jul 2018 08:33:01 GMT
RUN set -eux; 		runDeps=' 		apr-dev 		apr-util-dev 		apr-util-ldap 		perl 	'; 	apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		libressl 		libressl-dev 		libxml2-dev 		lua-dev 		make 		nghttp2-dev 		pcre-dev 		tar 		zlib-dev 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		runDeps="$runDeps $( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .httpd-rundeps $runDeps; 	apk del .build-deps
# Tue, 17 Jul 2018 08:33:03 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Tue, 17 Jul 2018 08:33:06 GMT
EXPOSE 80/tcp
# Tue, 17 Jul 2018 08:33:08 GMT
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
	-	`sha256:35e46059b4dde0db3dd6abcdb99b3d182b648113dcbc7b1e0dc220179c8319ad`  
		Last Modified: Tue, 17 Jul 2018 08:33:43 GMT  
		Size: 28.2 MB (28191048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d5d3f0aed21862b428292c40724572762fb43b5bbf576cdafcff41ced0c7e0b`  
		Last Modified: Tue, 17 Jul 2018 08:33:32 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:2-alpine`

```console
$ docker pull httpd@sha256:9c1ed9de079958bebae0ff4ab2f6f36e9202384700f7907f89efb413faa92392
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `httpd:2-alpine` - linux; amd64

```console
$ docker pull httpd@sha256:c2c6cffa5dbf33abedf55e474b727dfe8fb5b8e46f1507c6f35dd1b24eff0822
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.2 MB (30213958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3057be6d3767a93725d7bb473c8c768e16465a69f5fa7e3b16aa12780e7b0e76`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:45 GMT
ADD file:6ee19b92d5cb1bf143947fe2e2481cb3b353d42e1e54888a8ba48c03dd4155f2 in / 
# Fri, 06 Jul 2018 14:13:45 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 15:38:52 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 06 Jul 2018 15:38:52 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Fri, 06 Jul 2018 15:38:52 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Jul 2018 15:38:53 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Fri, 06 Jul 2018 15:38:53 GMT
WORKDIR /usr/local/apache2
# Mon, 16 Jul 2018 23:23:05 GMT
ENV HTTPD_VERSION=2.4.34
# Mon, 16 Jul 2018 23:23:05 GMT
ENV HTTPD_SHA256=fa53c95631febb08a9de41fd2864cfff815cf62d9306723ab0d4b8d7aa1638f0
# Mon, 16 Jul 2018 23:23:05 GMT
ENV HTTPD_PATCHES=
# Mon, 16 Jul 2018 23:23:06 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Mon, 16 Jul 2018 23:24:53 GMT
RUN set -eux; 		runDeps=' 		apr-dev 		apr-util-dev 		apr-util-ldap 		perl 	'; 	apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		libressl 		libressl-dev 		libxml2-dev 		lua-dev 		make 		nghttp2-dev 		pcre-dev 		tar 		zlib-dev 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		runDeps="$runDeps $( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .httpd-rundeps $runDeps; 	apk del .build-deps
# Mon, 16 Jul 2018 23:24:54 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Mon, 16 Jul 2018 23:24:54 GMT
EXPOSE 80/tcp
# Mon, 16 Jul 2018 23:24:54 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:911c6d0c7995e5d9763c1864d54fb6deccda04a55d7955123a8e22dd9d44c497`  
		Last Modified: Fri, 06 Jul 2018 14:16:43 GMT  
		Size: 2.1 MB (2103553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb560bf76af3c41f6e108b9e4bfbb66f5a7b80cfc69f19d848838762c768f8ad`  
		Last Modified: Fri, 06 Jul 2018 15:41:01 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b077eec28e124b17ddf8e866bb91b6dec57c342270466e0be8305e6083466d2f`  
		Last Modified: Fri, 06 Jul 2018 15:41:01 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81c48f162b71335659953447250558b49a2db0cc93ed7d469d27e996f6408b8e`  
		Last Modified: Mon, 16 Jul 2018 23:27:12 GMT  
		Size: 28.1 MB (28108718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e3a7e7c1ad772b33c9339d0a58c944bb8aab20e3bee7376f50f96287191f175`  
		Last Modified: Mon, 16 Jul 2018 23:27:01 GMT  
		Size: 291.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2-alpine` - linux; arm64 variant v8

```console
$ docker pull httpd@sha256:f604ae1f27243f9276484a581a2471a412f11a1eb3e4c9577537a396f6aeea27
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.3 MB (29313037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:275b3ec47ce4125c9762a032762d0f4f2e8a3da47800cc197ade9a34c28f8fb6`
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
# Tue, 17 Jul 2018 09:20:43 GMT
ENV HTTPD_VERSION=2.4.34
# Tue, 17 Jul 2018 09:20:44 GMT
ENV HTTPD_SHA256=fa53c95631febb08a9de41fd2864cfff815cf62d9306723ab0d4b8d7aa1638f0
# Tue, 17 Jul 2018 09:20:45 GMT
ENV HTTPD_PATCHES=
# Tue, 17 Jul 2018 09:20:46 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Tue, 17 Jul 2018 09:23:04 GMT
RUN set -eux; 		runDeps=' 		apr-dev 		apr-util-dev 		apr-util-ldap 		perl 	'; 	apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		libressl 		libressl-dev 		libxml2-dev 		lua-dev 		make 		nghttp2-dev 		pcre-dev 		tar 		zlib-dev 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		runDeps="$runDeps $( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .httpd-rundeps $runDeps; 	apk del .build-deps
# Tue, 17 Jul 2018 09:23:05 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Tue, 17 Jul 2018 09:23:06 GMT
EXPOSE 80/tcp
# Tue, 17 Jul 2018 09:23:06 GMT
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
	-	`sha256:c51f2a0c4a59946fe1b4f8f313c62a2ca2c74072c3cfc96462a3ed93ecfeb5a3`  
		Last Modified: Tue, 17 Jul 2018 09:23:41 GMT  
		Size: 27.3 MB (27322313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c66239acbdcfa74d8dc36227cc50d7f6f96a70fdd127d4a633ba21c91d826b30`  
		Last Modified: Tue, 17 Jul 2018 09:23:28 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:2-alpine` - linux; ppc64le

```console
$ docker pull httpd@sha256:6b4c38834dff3449225c1ea135a44259d0b3a696686d91fcc4445bfdd74f99eb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.3 MB (30274442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ffed02cf4adfd245f534c3c01f2dc5549dae9ea8b1d8c68e60c37ecf6fba045`
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
# Tue, 17 Jul 2018 08:31:13 GMT
ENV HTTPD_VERSION=2.4.34
# Tue, 17 Jul 2018 08:31:15 GMT
ENV HTTPD_SHA256=fa53c95631febb08a9de41fd2864cfff815cf62d9306723ab0d4b8d7aa1638f0
# Tue, 17 Jul 2018 08:31:16 GMT
ENV HTTPD_PATCHES=
# Tue, 17 Jul 2018 08:31:17 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Tue, 17 Jul 2018 08:33:01 GMT
RUN set -eux; 		runDeps=' 		apr-dev 		apr-util-dev 		apr-util-ldap 		perl 	'; 	apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		libressl 		libressl-dev 		libxml2-dev 		lua-dev 		make 		nghttp2-dev 		pcre-dev 		tar 		zlib-dev 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		runDeps="$runDeps $( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .httpd-rundeps $runDeps; 	apk del .build-deps
# Tue, 17 Jul 2018 08:33:03 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Tue, 17 Jul 2018 08:33:06 GMT
EXPOSE 80/tcp
# Tue, 17 Jul 2018 08:33:08 GMT
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
	-	`sha256:35e46059b4dde0db3dd6abcdb99b3d182b648113dcbc7b1e0dc220179c8319ad`  
		Last Modified: Tue, 17 Jul 2018 08:33:43 GMT  
		Size: 28.2 MB (28191048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d5d3f0aed21862b428292c40724572762fb43b5bbf576cdafcff41ced0c7e0b`  
		Last Modified: Tue, 17 Jul 2018 08:33:32 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:alpine`

```console
$ docker pull httpd@sha256:9c1ed9de079958bebae0ff4ab2f6f36e9202384700f7907f89efb413faa92392
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `httpd:alpine` - linux; amd64

```console
$ docker pull httpd@sha256:c2c6cffa5dbf33abedf55e474b727dfe8fb5b8e46f1507c6f35dd1b24eff0822
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.2 MB (30213958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3057be6d3767a93725d7bb473c8c768e16465a69f5fa7e3b16aa12780e7b0e76`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:45 GMT
ADD file:6ee19b92d5cb1bf143947fe2e2481cb3b353d42e1e54888a8ba48c03dd4155f2 in / 
# Fri, 06 Jul 2018 14:13:45 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 15:38:52 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 06 Jul 2018 15:38:52 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Fri, 06 Jul 2018 15:38:52 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Jul 2018 15:38:53 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Fri, 06 Jul 2018 15:38:53 GMT
WORKDIR /usr/local/apache2
# Mon, 16 Jul 2018 23:23:05 GMT
ENV HTTPD_VERSION=2.4.34
# Mon, 16 Jul 2018 23:23:05 GMT
ENV HTTPD_SHA256=fa53c95631febb08a9de41fd2864cfff815cf62d9306723ab0d4b8d7aa1638f0
# Mon, 16 Jul 2018 23:23:05 GMT
ENV HTTPD_PATCHES=
# Mon, 16 Jul 2018 23:23:06 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Mon, 16 Jul 2018 23:24:53 GMT
RUN set -eux; 		runDeps=' 		apr-dev 		apr-util-dev 		apr-util-ldap 		perl 	'; 	apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		libressl 		libressl-dev 		libxml2-dev 		lua-dev 		make 		nghttp2-dev 		pcre-dev 		tar 		zlib-dev 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		runDeps="$runDeps $( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .httpd-rundeps $runDeps; 	apk del .build-deps
# Mon, 16 Jul 2018 23:24:54 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Mon, 16 Jul 2018 23:24:54 GMT
EXPOSE 80/tcp
# Mon, 16 Jul 2018 23:24:54 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:911c6d0c7995e5d9763c1864d54fb6deccda04a55d7955123a8e22dd9d44c497`  
		Last Modified: Fri, 06 Jul 2018 14:16:43 GMT  
		Size: 2.1 MB (2103553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb560bf76af3c41f6e108b9e4bfbb66f5a7b80cfc69f19d848838762c768f8ad`  
		Last Modified: Fri, 06 Jul 2018 15:41:01 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b077eec28e124b17ddf8e866bb91b6dec57c342270466e0be8305e6083466d2f`  
		Last Modified: Fri, 06 Jul 2018 15:41:01 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81c48f162b71335659953447250558b49a2db0cc93ed7d469d27e996f6408b8e`  
		Last Modified: Mon, 16 Jul 2018 23:27:12 GMT  
		Size: 28.1 MB (28108718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e3a7e7c1ad772b33c9339d0a58c944bb8aab20e3bee7376f50f96287191f175`  
		Last Modified: Mon, 16 Jul 2018 23:27:01 GMT  
		Size: 291.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:alpine` - linux; arm64 variant v8

```console
$ docker pull httpd@sha256:f604ae1f27243f9276484a581a2471a412f11a1eb3e4c9577537a396f6aeea27
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.3 MB (29313037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:275b3ec47ce4125c9762a032762d0f4f2e8a3da47800cc197ade9a34c28f8fb6`
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
# Tue, 17 Jul 2018 09:20:43 GMT
ENV HTTPD_VERSION=2.4.34
# Tue, 17 Jul 2018 09:20:44 GMT
ENV HTTPD_SHA256=fa53c95631febb08a9de41fd2864cfff815cf62d9306723ab0d4b8d7aa1638f0
# Tue, 17 Jul 2018 09:20:45 GMT
ENV HTTPD_PATCHES=
# Tue, 17 Jul 2018 09:20:46 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Tue, 17 Jul 2018 09:23:04 GMT
RUN set -eux; 		runDeps=' 		apr-dev 		apr-util-dev 		apr-util-ldap 		perl 	'; 	apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		libressl 		libressl-dev 		libxml2-dev 		lua-dev 		make 		nghttp2-dev 		pcre-dev 		tar 		zlib-dev 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		runDeps="$runDeps $( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .httpd-rundeps $runDeps; 	apk del .build-deps
# Tue, 17 Jul 2018 09:23:05 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Tue, 17 Jul 2018 09:23:06 GMT
EXPOSE 80/tcp
# Tue, 17 Jul 2018 09:23:06 GMT
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
	-	`sha256:c51f2a0c4a59946fe1b4f8f313c62a2ca2c74072c3cfc96462a3ed93ecfeb5a3`  
		Last Modified: Tue, 17 Jul 2018 09:23:41 GMT  
		Size: 27.3 MB (27322313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c66239acbdcfa74d8dc36227cc50d7f6f96a70fdd127d4a633ba21c91d826b30`  
		Last Modified: Tue, 17 Jul 2018 09:23:28 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:alpine` - linux; ppc64le

```console
$ docker pull httpd@sha256:6b4c38834dff3449225c1ea135a44259d0b3a696686d91fcc4445bfdd74f99eb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.3 MB (30274442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ffed02cf4adfd245f534c3c01f2dc5549dae9ea8b1d8c68e60c37ecf6fba045`
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
# Tue, 17 Jul 2018 08:31:13 GMT
ENV HTTPD_VERSION=2.4.34
# Tue, 17 Jul 2018 08:31:15 GMT
ENV HTTPD_SHA256=fa53c95631febb08a9de41fd2864cfff815cf62d9306723ab0d4b8d7aa1638f0
# Tue, 17 Jul 2018 08:31:16 GMT
ENV HTTPD_PATCHES=
# Tue, 17 Jul 2018 08:31:17 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Tue, 17 Jul 2018 08:33:01 GMT
RUN set -eux; 		runDeps=' 		apr-dev 		apr-util-dev 		apr-util-ldap 		perl 	'; 	apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		libressl 		libressl-dev 		libxml2-dev 		lua-dev 		make 		nghttp2-dev 		pcre-dev 		tar 		zlib-dev 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		runDeps="$runDeps $( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .httpd-rundeps $runDeps; 	apk del .build-deps
# Tue, 17 Jul 2018 08:33:03 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Tue, 17 Jul 2018 08:33:06 GMT
EXPOSE 80/tcp
# Tue, 17 Jul 2018 08:33:08 GMT
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
	-	`sha256:35e46059b4dde0db3dd6abcdb99b3d182b648113dcbc7b1e0dc220179c8319ad`  
		Last Modified: Tue, 17 Jul 2018 08:33:43 GMT  
		Size: 28.2 MB (28191048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d5d3f0aed21862b428292c40724572762fb43b5bbf576cdafcff41ced0c7e0b`  
		Last Modified: Tue, 17 Jul 2018 08:33:32 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:latest`

```console
$ docker pull httpd@sha256:0f27bf502243a8a32844bba6fd652520c301c96996ae053cb5fc9d6cce698d8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5

### `httpd:latest` - linux; amd64

```console
$ docker pull httpd@sha256:2ed0231931b5d44537132136418697e6037eb3985ba7c9126b11e6eb38a6634a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.0 MB (68995221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94af1f61475235154673372c1f46334c5601a6b182a818b15e6b519c479f9010`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Tue, 17 Jul 2018 00:20:47 GMT
ADD file:b90e572f7462a23e2e4eda57269941ee7d8f078ca8ab1eefca86927713e13365 in / 
# Tue, 17 Jul 2018 00:20:48 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 00:21:02 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Tue, 17 Jul 2018 03:05:28 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 17 Jul 2018 03:05:29 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 03:05:30 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 17 Jul 2018 03:05:30 GMT
WORKDIR /usr/local/apache2
# Tue, 17 Jul 2018 03:05:30 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Tue, 17 Jul 2018 03:05:31 GMT
ENV OPENSSL_VERSION=1.0.2l-1~bpo8+1
# Tue, 17 Jul 2018 03:05:32 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Tue, 17 Jul 2018 03:06:15 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:06:16 GMT
ENV HTTPD_VERSION=2.4.34
# Tue, 17 Jul 2018 03:06:16 GMT
ENV HTTPD_SHA256=fa53c95631febb08a9de41fd2864cfff815cf62d9306723ab0d4b8d7aa1638f0
# Tue, 17 Jul 2018 03:06:16 GMT
ENV HTTPD_PATCHES=
# Tue, 17 Jul 2018 03:06:17 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Tue, 17 Jul 2018 03:08:46 GMT
RUN set -eux; 		buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends -V $buildDeps; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jul 2018 03:08:46 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Tue, 17 Jul 2018 03:08:47 GMT
EXPOSE 80/tcp
# Tue, 17 Jul 2018 03:08:47 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:d660b1f15b9bfb8142f50b518156f2d364d9642fe05854538b060498e2f7928d`  
		Last Modified: Tue, 17 Jul 2018 00:34:02 GMT  
		Size: 54.3 MB (54252125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa1c79a2fa374bfb8c2184b396e8e8f666e80d5b30c19692a825ef55b77e6705`  
		Last Modified: Tue, 17 Jul 2018 00:35:01 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5f6514c0aff89d58cd8fd5105ff4cfb6908bec183d856b350858ba95843c06e`  
		Last Modified: Tue, 17 Jul 2018 03:09:14 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:676d3dd26040490bc28047a5f2f054d9960a4b8b79f996647b23c7debbe4bd12`  
		Last Modified: Tue, 17 Jul 2018 03:09:13 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fdddf845a1b6bbc89c827218607509650a05451cd5737fcc39cb40098e879cd`  
		Last Modified: Tue, 17 Jul 2018 03:09:18 GMT  
		Size: 11.7 MB (11748704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28ecdadc5f881f50bf0c434966cf20f7c5d5ae49b0fc9d76b91c1da5bc72f7c8`  
		Last Modified: Tue, 17 Jul 2018 03:09:14 GMT  
		Size: 3.0 MB (2993380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d882098e42b4971c54681c212cd2d92cd97e0daa81f709b3be4ed95d2cf89ae`  
		Last Modified: Tue, 17 Jul 2018 03:09:13 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:latest` - linux; arm variant v5

```console
$ docker pull httpd@sha256:e2a6f9a198f0d5d0cc5d6afb089acdcca4acc69966caf7c24c392946ea1fb62e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.0 MB (65966376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4681132f955b17abce1c907e37192b78a7b72d6f376e8bfa816c1d423966f85`
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
# Tue, 17 Jul 2018 09:02:10 GMT
ENV HTTPD_VERSION=2.4.34
# Tue, 17 Jul 2018 09:02:10 GMT
ENV HTTPD_SHA256=fa53c95631febb08a9de41fd2864cfff815cf62d9306723ab0d4b8d7aa1638f0
# Tue, 17 Jul 2018 09:02:10 GMT
ENV HTTPD_PATCHES=
# Tue, 17 Jul 2018 09:02:11 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Tue, 17 Jul 2018 09:04:44 GMT
RUN set -eux; 		buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends -V $buildDeps; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 17 Jul 2018 09:04:47 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Tue, 17 Jul 2018 09:04:47 GMT
EXPOSE 80/tcp
# Tue, 17 Jul 2018 09:04:47 GMT
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
	-	`sha256:41a72410290bfea7bad0fbbd088bf19414e806aaeb05996b346866114cacb280`  
		Last Modified: Tue, 17 Jul 2018 09:05:18 GMT  
		Size: 3.0 MB (3005420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85f86fd22fe6b184e729ed6ff972c3d21ba81d89ad418c80d96590933e6785e0`  
		Last Modified: Tue, 17 Jul 2018 09:05:15 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
