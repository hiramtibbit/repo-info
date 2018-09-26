<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `httpd`

-	[`httpd:2`](#httpd2)
-	[`httpd:2.4`](#httpd24)
-	[`httpd:2.4.35`](#httpd2435)
-	[`httpd:2.4.35-alpine`](#httpd2435-alpine)
-	[`httpd:2.4-alpine`](#httpd24-alpine)
-	[`httpd:2-alpine`](#httpd2-alpine)
-	[`httpd:alpine`](#httpdalpine)
-	[`httpd:latest`](#httpdlatest)

## `httpd:2`

```console
$ docker pull httpd@sha256:c572a23fb42c7e9c599c63503201d77c41a0ed6b1a88280772f59ac7202b2e92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `httpd:2` - linux; amd64

```console
$ docker pull httpd@sha256:3cc89d0bff10d261d6cd19eeabf33fc8ea814a0685829892e267de24d621fe29
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.0 MB (68998106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dabb527449975533d6eea937e5a0123ed1b57b16d921b7b4346a3cf367751615`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Tue, 04 Sep 2018 21:19:53 GMT
ADD file:8d73a09e59fe50289a6d0c019302aefe2e00ac6411e82404389c0c83f50cf08a in / 
# Tue, 04 Sep 2018 21:19:54 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 21:19:58 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Wed, 05 Sep 2018 00:02:17 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Wed, 05 Sep 2018 00:02:17 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 00:02:18 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Wed, 05 Sep 2018 00:02:18 GMT
WORKDIR /usr/local/apache2
# Wed, 05 Sep 2018 00:02:18 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Wed, 05 Sep 2018 00:02:18 GMT
ENV OPENSSL_VERSION=1.0.2l-1~bpo8+1
# Wed, 05 Sep 2018 00:02:19 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Wed, 05 Sep 2018 00:02:55 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Wed, 26 Sep 2018 00:27:00 GMT
ENV HTTPD_VERSION=2.4.35
# Wed, 26 Sep 2018 00:27:01 GMT
ENV HTTPD_SHA256=2607c6fdd4d12ac3f583127629291e9432b247b782396a563bec5678aae69b56
# Wed, 26 Sep 2018 00:27:01 GMT
ENV HTTPD_PATCHES=
# Wed, 26 Sep 2018 00:27:01 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Wed, 26 Sep 2018 00:28:56 GMT
RUN set -eux; 		buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends -V $buildDeps; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 26 Sep 2018 00:28:57 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Wed, 26 Sep 2018 00:28:57 GMT
EXPOSE 80/tcp
# Wed, 26 Sep 2018 00:28:57 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:f189db1b88b3cab5fd17f74fee412610fe40d4b077e7882c1a50a8b6f4f0cea3`  
		Last Modified: Tue, 04 Sep 2018 21:23:11 GMT  
		Size: 54.3 MB (54252211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba2d31d4e2e7f55fddfd4e376574bf249ed7e26a2f7ab8146beb8794e403ba7e`  
		Last Modified: Tue, 04 Sep 2018 21:23:20 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23a65f5e37464800174de1d15a6b79dda2c7616c83ed7c8f41d1610b9faa2b9b`  
		Last Modified: Wed, 05 Sep 2018 00:07:21 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e8eccbd4bc65e169434d419b56b0e2d44646b3e8f5747264e981a59c6d96e5b`  
		Last Modified: Wed, 05 Sep 2018 00:07:21 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c145eec18d8f84de80687e8d35df1f58674f84d14a0d898505075680fd17e3e`  
		Last Modified: Wed, 05 Sep 2018 00:07:24 GMT  
		Size: 11.7 MB (11748660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c64fd93430a081ca14ea9266ab35a9f1a7dde0faced2c9cbf92b7c12ff460c56`  
		Last Modified: Wed, 26 Sep 2018 00:30:42 GMT  
		Size: 3.0 MB (2996209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9efc31823a226bf0cd7df623d3ec201d1b2f447a36bd72fa3c55b97e3d6cee5`  
		Last Modified: Wed, 26 Sep 2018 00:30:41 GMT  
		Size: 303.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:2.4`

```console
$ docker pull httpd@sha256:c572a23fb42c7e9c599c63503201d77c41a0ed6b1a88280772f59ac7202b2e92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `httpd:2.4` - linux; amd64

```console
$ docker pull httpd@sha256:3cc89d0bff10d261d6cd19eeabf33fc8ea814a0685829892e267de24d621fe29
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.0 MB (68998106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dabb527449975533d6eea937e5a0123ed1b57b16d921b7b4346a3cf367751615`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Tue, 04 Sep 2018 21:19:53 GMT
ADD file:8d73a09e59fe50289a6d0c019302aefe2e00ac6411e82404389c0c83f50cf08a in / 
# Tue, 04 Sep 2018 21:19:54 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 21:19:58 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Wed, 05 Sep 2018 00:02:17 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Wed, 05 Sep 2018 00:02:17 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 00:02:18 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Wed, 05 Sep 2018 00:02:18 GMT
WORKDIR /usr/local/apache2
# Wed, 05 Sep 2018 00:02:18 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Wed, 05 Sep 2018 00:02:18 GMT
ENV OPENSSL_VERSION=1.0.2l-1~bpo8+1
# Wed, 05 Sep 2018 00:02:19 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Wed, 05 Sep 2018 00:02:55 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Wed, 26 Sep 2018 00:27:00 GMT
ENV HTTPD_VERSION=2.4.35
# Wed, 26 Sep 2018 00:27:01 GMT
ENV HTTPD_SHA256=2607c6fdd4d12ac3f583127629291e9432b247b782396a563bec5678aae69b56
# Wed, 26 Sep 2018 00:27:01 GMT
ENV HTTPD_PATCHES=
# Wed, 26 Sep 2018 00:27:01 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Wed, 26 Sep 2018 00:28:56 GMT
RUN set -eux; 		buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends -V $buildDeps; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 26 Sep 2018 00:28:57 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Wed, 26 Sep 2018 00:28:57 GMT
EXPOSE 80/tcp
# Wed, 26 Sep 2018 00:28:57 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:f189db1b88b3cab5fd17f74fee412610fe40d4b077e7882c1a50a8b6f4f0cea3`  
		Last Modified: Tue, 04 Sep 2018 21:23:11 GMT  
		Size: 54.3 MB (54252211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba2d31d4e2e7f55fddfd4e376574bf249ed7e26a2f7ab8146beb8794e403ba7e`  
		Last Modified: Tue, 04 Sep 2018 21:23:20 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23a65f5e37464800174de1d15a6b79dda2c7616c83ed7c8f41d1610b9faa2b9b`  
		Last Modified: Wed, 05 Sep 2018 00:07:21 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e8eccbd4bc65e169434d419b56b0e2d44646b3e8f5747264e981a59c6d96e5b`  
		Last Modified: Wed, 05 Sep 2018 00:07:21 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c145eec18d8f84de80687e8d35df1f58674f84d14a0d898505075680fd17e3e`  
		Last Modified: Wed, 05 Sep 2018 00:07:24 GMT  
		Size: 11.7 MB (11748660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c64fd93430a081ca14ea9266ab35a9f1a7dde0faced2c9cbf92b7c12ff460c56`  
		Last Modified: Wed, 26 Sep 2018 00:30:42 GMT  
		Size: 3.0 MB (2996209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9efc31823a226bf0cd7df623d3ec201d1b2f447a36bd72fa3c55b97e3d6cee5`  
		Last Modified: Wed, 26 Sep 2018 00:30:41 GMT  
		Size: 303.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:2.4.35`

```console
$ docker pull httpd@sha256:c572a23fb42c7e9c599c63503201d77c41a0ed6b1a88280772f59ac7202b2e92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `httpd:2.4.35` - linux; amd64

```console
$ docker pull httpd@sha256:3cc89d0bff10d261d6cd19eeabf33fc8ea814a0685829892e267de24d621fe29
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.0 MB (68998106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dabb527449975533d6eea937e5a0123ed1b57b16d921b7b4346a3cf367751615`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Tue, 04 Sep 2018 21:19:53 GMT
ADD file:8d73a09e59fe50289a6d0c019302aefe2e00ac6411e82404389c0c83f50cf08a in / 
# Tue, 04 Sep 2018 21:19:54 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 21:19:58 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Wed, 05 Sep 2018 00:02:17 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Wed, 05 Sep 2018 00:02:17 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 00:02:18 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Wed, 05 Sep 2018 00:02:18 GMT
WORKDIR /usr/local/apache2
# Wed, 05 Sep 2018 00:02:18 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Wed, 05 Sep 2018 00:02:18 GMT
ENV OPENSSL_VERSION=1.0.2l-1~bpo8+1
# Wed, 05 Sep 2018 00:02:19 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Wed, 05 Sep 2018 00:02:55 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Wed, 26 Sep 2018 00:27:00 GMT
ENV HTTPD_VERSION=2.4.35
# Wed, 26 Sep 2018 00:27:01 GMT
ENV HTTPD_SHA256=2607c6fdd4d12ac3f583127629291e9432b247b782396a563bec5678aae69b56
# Wed, 26 Sep 2018 00:27:01 GMT
ENV HTTPD_PATCHES=
# Wed, 26 Sep 2018 00:27:01 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Wed, 26 Sep 2018 00:28:56 GMT
RUN set -eux; 		buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends -V $buildDeps; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 26 Sep 2018 00:28:57 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Wed, 26 Sep 2018 00:28:57 GMT
EXPOSE 80/tcp
# Wed, 26 Sep 2018 00:28:57 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:f189db1b88b3cab5fd17f74fee412610fe40d4b077e7882c1a50a8b6f4f0cea3`  
		Last Modified: Tue, 04 Sep 2018 21:23:11 GMT  
		Size: 54.3 MB (54252211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba2d31d4e2e7f55fddfd4e376574bf249ed7e26a2f7ab8146beb8794e403ba7e`  
		Last Modified: Tue, 04 Sep 2018 21:23:20 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23a65f5e37464800174de1d15a6b79dda2c7616c83ed7c8f41d1610b9faa2b9b`  
		Last Modified: Wed, 05 Sep 2018 00:07:21 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e8eccbd4bc65e169434d419b56b0e2d44646b3e8f5747264e981a59c6d96e5b`  
		Last Modified: Wed, 05 Sep 2018 00:07:21 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c145eec18d8f84de80687e8d35df1f58674f84d14a0d898505075680fd17e3e`  
		Last Modified: Wed, 05 Sep 2018 00:07:24 GMT  
		Size: 11.7 MB (11748660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c64fd93430a081ca14ea9266ab35a9f1a7dde0faced2c9cbf92b7c12ff460c56`  
		Last Modified: Wed, 26 Sep 2018 00:30:42 GMT  
		Size: 3.0 MB (2996209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9efc31823a226bf0cd7df623d3ec201d1b2f447a36bd72fa3c55b97e3d6cee5`  
		Last Modified: Wed, 26 Sep 2018 00:30:41 GMT  
		Size: 303.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:2.4.35-alpine`

```console
$ docker pull httpd@sha256:c67ae44207069c57bdd35ca4c774690ef4c64090d3dcdb1edd3c1516913881e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `httpd:2.4.35-alpine` - linux; amd64

```console
$ docker pull httpd@sha256:9f527a45db61afb2e189e9738e608ddb0a37004159e24675ef24956b1897ffde
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.2 MB (30234792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ce4c0d1e99a0872e84bdf3dff60c69f5aff0f311fdd602cc4ec0ffe26e11da7`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:38 GMT
ADD file:49f9e47e678d868d5b023482aa8dded71276a241a665c4f8b55ca77269321b34 in / 
# Tue, 11 Sep 2018 22:19:39 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 23:22:49 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Tue, 11 Sep 2018 23:22:49 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 11 Sep 2018 23:22:50 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Sep 2018 23:22:50 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 11 Sep 2018 23:22:51 GMT
WORKDIR /usr/local/apache2
# Wed, 26 Sep 2018 00:29:07 GMT
ENV HTTPD_VERSION=2.4.35
# Wed, 26 Sep 2018 00:29:07 GMT
ENV HTTPD_SHA256=2607c6fdd4d12ac3f583127629291e9432b247b782396a563bec5678aae69b56
# Wed, 26 Sep 2018 00:29:07 GMT
ENV HTTPD_PATCHES=
# Wed, 26 Sep 2018 00:29:08 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Wed, 26 Sep 2018 00:30:28 GMT
RUN set -eux; 		runDeps=' 		apr-dev 		apr-util-dev 		apr-util-ldap 		perl 	'; 	apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		libressl 		libressl-dev 		libxml2-dev 		lua-dev 		make 		nghttp2-dev 		pcre-dev 		tar 		zlib-dev 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		runDeps="$runDeps $( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .httpd-rundeps $runDeps; 	apk del .build-deps
# Wed, 26 Sep 2018 00:30:29 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Wed, 26 Sep 2018 00:30:29 GMT
EXPOSE 80/tcp
# Wed, 26 Sep 2018 00:30:29 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:c67f3896b22c1378881cbbb9c9d1edfe881fd07f713371835ef46d93c649684d`  
		Last Modified: Tue, 11 Sep 2018 22:21:16 GMT  
		Size: 2.1 MB (2107175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:154fb9965a5cb6d13bccf560b4d345501767f0a6331d5f856c0ed3a1ff4e8aa3`  
		Last Modified: Tue, 11 Sep 2018 23:24:57 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67a036bd0b88480d008232612988e69a45bc22feb5461829fdb36d01e5267eb8`  
		Last Modified: Tue, 11 Sep 2018 23:24:57 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad91da443219f71af65ad8d23b7a83137e2beacd9b7ebe86993ecd6643b04107`  
		Last Modified: Wed, 26 Sep 2018 00:31:16 GMT  
		Size: 28.1 MB (28125930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cee13f6e4b9b2f2fa0f99dff622b4824e0f8530c75971ea3d7d849a3e52cd45f`  
		Last Modified: Wed, 26 Sep 2018 00:31:11 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:2.4-alpine`

```console
$ docker pull httpd@sha256:c67ae44207069c57bdd35ca4c774690ef4c64090d3dcdb1edd3c1516913881e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `httpd:2.4-alpine` - linux; amd64

```console
$ docker pull httpd@sha256:9f527a45db61afb2e189e9738e608ddb0a37004159e24675ef24956b1897ffde
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.2 MB (30234792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ce4c0d1e99a0872e84bdf3dff60c69f5aff0f311fdd602cc4ec0ffe26e11da7`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:38 GMT
ADD file:49f9e47e678d868d5b023482aa8dded71276a241a665c4f8b55ca77269321b34 in / 
# Tue, 11 Sep 2018 22:19:39 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 23:22:49 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Tue, 11 Sep 2018 23:22:49 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 11 Sep 2018 23:22:50 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Sep 2018 23:22:50 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 11 Sep 2018 23:22:51 GMT
WORKDIR /usr/local/apache2
# Wed, 26 Sep 2018 00:29:07 GMT
ENV HTTPD_VERSION=2.4.35
# Wed, 26 Sep 2018 00:29:07 GMT
ENV HTTPD_SHA256=2607c6fdd4d12ac3f583127629291e9432b247b782396a563bec5678aae69b56
# Wed, 26 Sep 2018 00:29:07 GMT
ENV HTTPD_PATCHES=
# Wed, 26 Sep 2018 00:29:08 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Wed, 26 Sep 2018 00:30:28 GMT
RUN set -eux; 		runDeps=' 		apr-dev 		apr-util-dev 		apr-util-ldap 		perl 	'; 	apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		libressl 		libressl-dev 		libxml2-dev 		lua-dev 		make 		nghttp2-dev 		pcre-dev 		tar 		zlib-dev 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		runDeps="$runDeps $( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .httpd-rundeps $runDeps; 	apk del .build-deps
# Wed, 26 Sep 2018 00:30:29 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Wed, 26 Sep 2018 00:30:29 GMT
EXPOSE 80/tcp
# Wed, 26 Sep 2018 00:30:29 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:c67f3896b22c1378881cbbb9c9d1edfe881fd07f713371835ef46d93c649684d`  
		Last Modified: Tue, 11 Sep 2018 22:21:16 GMT  
		Size: 2.1 MB (2107175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:154fb9965a5cb6d13bccf560b4d345501767f0a6331d5f856c0ed3a1ff4e8aa3`  
		Last Modified: Tue, 11 Sep 2018 23:24:57 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67a036bd0b88480d008232612988e69a45bc22feb5461829fdb36d01e5267eb8`  
		Last Modified: Tue, 11 Sep 2018 23:24:57 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad91da443219f71af65ad8d23b7a83137e2beacd9b7ebe86993ecd6643b04107`  
		Last Modified: Wed, 26 Sep 2018 00:31:16 GMT  
		Size: 28.1 MB (28125930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cee13f6e4b9b2f2fa0f99dff622b4824e0f8530c75971ea3d7d849a3e52cd45f`  
		Last Modified: Wed, 26 Sep 2018 00:31:11 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:2-alpine`

```console
$ docker pull httpd@sha256:c67ae44207069c57bdd35ca4c774690ef4c64090d3dcdb1edd3c1516913881e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `httpd:2-alpine` - linux; amd64

```console
$ docker pull httpd@sha256:9f527a45db61afb2e189e9738e608ddb0a37004159e24675ef24956b1897ffde
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.2 MB (30234792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ce4c0d1e99a0872e84bdf3dff60c69f5aff0f311fdd602cc4ec0ffe26e11da7`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:38 GMT
ADD file:49f9e47e678d868d5b023482aa8dded71276a241a665c4f8b55ca77269321b34 in / 
# Tue, 11 Sep 2018 22:19:39 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 23:22:49 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Tue, 11 Sep 2018 23:22:49 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 11 Sep 2018 23:22:50 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Sep 2018 23:22:50 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 11 Sep 2018 23:22:51 GMT
WORKDIR /usr/local/apache2
# Wed, 26 Sep 2018 00:29:07 GMT
ENV HTTPD_VERSION=2.4.35
# Wed, 26 Sep 2018 00:29:07 GMT
ENV HTTPD_SHA256=2607c6fdd4d12ac3f583127629291e9432b247b782396a563bec5678aae69b56
# Wed, 26 Sep 2018 00:29:07 GMT
ENV HTTPD_PATCHES=
# Wed, 26 Sep 2018 00:29:08 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Wed, 26 Sep 2018 00:30:28 GMT
RUN set -eux; 		runDeps=' 		apr-dev 		apr-util-dev 		apr-util-ldap 		perl 	'; 	apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		libressl 		libressl-dev 		libxml2-dev 		lua-dev 		make 		nghttp2-dev 		pcre-dev 		tar 		zlib-dev 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		runDeps="$runDeps $( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .httpd-rundeps $runDeps; 	apk del .build-deps
# Wed, 26 Sep 2018 00:30:29 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Wed, 26 Sep 2018 00:30:29 GMT
EXPOSE 80/tcp
# Wed, 26 Sep 2018 00:30:29 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:c67f3896b22c1378881cbbb9c9d1edfe881fd07f713371835ef46d93c649684d`  
		Last Modified: Tue, 11 Sep 2018 22:21:16 GMT  
		Size: 2.1 MB (2107175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:154fb9965a5cb6d13bccf560b4d345501767f0a6331d5f856c0ed3a1ff4e8aa3`  
		Last Modified: Tue, 11 Sep 2018 23:24:57 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67a036bd0b88480d008232612988e69a45bc22feb5461829fdb36d01e5267eb8`  
		Last Modified: Tue, 11 Sep 2018 23:24:57 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad91da443219f71af65ad8d23b7a83137e2beacd9b7ebe86993ecd6643b04107`  
		Last Modified: Wed, 26 Sep 2018 00:31:16 GMT  
		Size: 28.1 MB (28125930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cee13f6e4b9b2f2fa0f99dff622b4824e0f8530c75971ea3d7d849a3e52cd45f`  
		Last Modified: Wed, 26 Sep 2018 00:31:11 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:alpine`

```console
$ docker pull httpd@sha256:c67ae44207069c57bdd35ca4c774690ef4c64090d3dcdb1edd3c1516913881e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `httpd:alpine` - linux; amd64

```console
$ docker pull httpd@sha256:9f527a45db61afb2e189e9738e608ddb0a37004159e24675ef24956b1897ffde
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.2 MB (30234792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ce4c0d1e99a0872e84bdf3dff60c69f5aff0f311fdd602cc4ec0ffe26e11da7`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:38 GMT
ADD file:49f9e47e678d868d5b023482aa8dded71276a241a665c4f8b55ca77269321b34 in / 
# Tue, 11 Sep 2018 22:19:39 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 23:22:49 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Tue, 11 Sep 2018 23:22:49 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 11 Sep 2018 23:22:50 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Sep 2018 23:22:50 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 11 Sep 2018 23:22:51 GMT
WORKDIR /usr/local/apache2
# Wed, 26 Sep 2018 00:29:07 GMT
ENV HTTPD_VERSION=2.4.35
# Wed, 26 Sep 2018 00:29:07 GMT
ENV HTTPD_SHA256=2607c6fdd4d12ac3f583127629291e9432b247b782396a563bec5678aae69b56
# Wed, 26 Sep 2018 00:29:07 GMT
ENV HTTPD_PATCHES=
# Wed, 26 Sep 2018 00:29:08 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Wed, 26 Sep 2018 00:30:28 GMT
RUN set -eux; 		runDeps=' 		apr-dev 		apr-util-dev 		apr-util-ldap 		perl 	'; 	apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		libressl 		libressl-dev 		libxml2-dev 		lua-dev 		make 		nghttp2-dev 		pcre-dev 		tar 		zlib-dev 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		runDeps="$runDeps $( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .httpd-rundeps $runDeps; 	apk del .build-deps
# Wed, 26 Sep 2018 00:30:29 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Wed, 26 Sep 2018 00:30:29 GMT
EXPOSE 80/tcp
# Wed, 26 Sep 2018 00:30:29 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:c67f3896b22c1378881cbbb9c9d1edfe881fd07f713371835ef46d93c649684d`  
		Last Modified: Tue, 11 Sep 2018 22:21:16 GMT  
		Size: 2.1 MB (2107175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:154fb9965a5cb6d13bccf560b4d345501767f0a6331d5f856c0ed3a1ff4e8aa3`  
		Last Modified: Tue, 11 Sep 2018 23:24:57 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67a036bd0b88480d008232612988e69a45bc22feb5461829fdb36d01e5267eb8`  
		Last Modified: Tue, 11 Sep 2018 23:24:57 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad91da443219f71af65ad8d23b7a83137e2beacd9b7ebe86993ecd6643b04107`  
		Last Modified: Wed, 26 Sep 2018 00:31:16 GMT  
		Size: 28.1 MB (28125930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cee13f6e4b9b2f2fa0f99dff622b4824e0f8530c75971ea3d7d849a3e52cd45f`  
		Last Modified: Wed, 26 Sep 2018 00:31:11 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `httpd:latest`

```console
$ docker pull httpd@sha256:c572a23fb42c7e9c599c63503201d77c41a0ed6b1a88280772f59ac7202b2e92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `httpd:latest` - linux; amd64

```console
$ docker pull httpd@sha256:3cc89d0bff10d261d6cd19eeabf33fc8ea814a0685829892e267de24d621fe29
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.0 MB (68998106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dabb527449975533d6eea937e5a0123ed1b57b16d921b7b4346a3cf367751615`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Tue, 04 Sep 2018 21:19:53 GMT
ADD file:8d73a09e59fe50289a6d0c019302aefe2e00ac6411e82404389c0c83f50cf08a in / 
# Tue, 04 Sep 2018 21:19:54 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 21:19:58 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Wed, 05 Sep 2018 00:02:17 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Wed, 05 Sep 2018 00:02:17 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 00:02:18 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Wed, 05 Sep 2018 00:02:18 GMT
WORKDIR /usr/local/apache2
# Wed, 05 Sep 2018 00:02:18 GMT
ENV NGHTTP2_VERSION=1.18.1-1
# Wed, 05 Sep 2018 00:02:18 GMT
ENV OPENSSL_VERSION=1.0.2l-1~bpo8+1
# Wed, 05 Sep 2018 00:02:19 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: libnghttp2*'; 		echo "Pin: version $NGHTTP2_VERSION"; 		echo 'Pin-Priority: 990'; 		echo; 	} > /etc/apt/preferences.d/unstable-nghttp2
# Wed, 05 Sep 2018 00:02:55 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		libapr1 		libaprutil1 		libaprutil1-ldap 		libapr1-dev 		libaprutil1-dev 		liblua5.2-0 		libnghttp2-14=$NGHTTP2_VERSION 		libpcre++0 		libssl1.0.0=$OPENSSL_VERSION 		libxml2 	&& rm -r /var/lib/apt/lists/*
# Wed, 26 Sep 2018 00:27:00 GMT
ENV HTTPD_VERSION=2.4.35
# Wed, 26 Sep 2018 00:27:01 GMT
ENV HTTPD_SHA256=2607c6fdd4d12ac3f583127629291e9432b247b782396a563bec5678aae69b56
# Wed, 26 Sep 2018 00:27:01 GMT
ENV HTTPD_PATCHES=
# Wed, 26 Sep 2018 00:27:01 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Wed, 26 Sep 2018 00:28:56 GMT
RUN set -eux; 		buildDeps=" 		bzip2 		ca-certificates 		dpkg-dev 		gcc 		liblua5.2-dev 		libnghttp2-dev=$NGHTTP2_VERSION 		libpcre++-dev 		libssl-dev=$OPENSSL_VERSION 		libxml2-dev 		zlib1g-dev 		make 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends -V $buildDeps; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf"; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 26 Sep 2018 00:28:57 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Wed, 26 Sep 2018 00:28:57 GMT
EXPOSE 80/tcp
# Wed, 26 Sep 2018 00:28:57 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:f189db1b88b3cab5fd17f74fee412610fe40d4b077e7882c1a50a8b6f4f0cea3`  
		Last Modified: Tue, 04 Sep 2018 21:23:11 GMT  
		Size: 54.3 MB (54252211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba2d31d4e2e7f55fddfd4e376574bf249ed7e26a2f7ab8146beb8794e403ba7e`  
		Last Modified: Tue, 04 Sep 2018 21:23:20 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23a65f5e37464800174de1d15a6b79dda2c7616c83ed7c8f41d1610b9faa2b9b`  
		Last Modified: Wed, 05 Sep 2018 00:07:21 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e8eccbd4bc65e169434d419b56b0e2d44646b3e8f5747264e981a59c6d96e5b`  
		Last Modified: Wed, 05 Sep 2018 00:07:21 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c145eec18d8f84de80687e8d35df1f58674f84d14a0d898505075680fd17e3e`  
		Last Modified: Wed, 05 Sep 2018 00:07:24 GMT  
		Size: 11.7 MB (11748660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c64fd93430a081ca14ea9266ab35a9f1a7dde0faced2c9cbf92b7c12ff460c56`  
		Last Modified: Wed, 26 Sep 2018 00:30:42 GMT  
		Size: 3.0 MB (2996209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9efc31823a226bf0cd7df623d3ec201d1b2f447a36bd72fa3c55b97e3d6cee5`  
		Last Modified: Wed, 26 Sep 2018 00:30:41 GMT  
		Size: 303.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
