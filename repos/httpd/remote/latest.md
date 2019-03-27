## `httpd:latest`

```console
$ docker pull httpd@sha256:54fca6a71c24a6b081a20eff41bb227676773d3e44f62333763f42a5c1a0e628
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
$ docker pull httpd@sha256:1c78ed9b1278824b54b81d8824b91cb81f577c7fafc40ec0eda67c1e437b2be6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.4 MB (49381667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5eace252f2f29e8a7471fd25f0a9f5dd21b1b85974817870c51cc2865529a293`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:38:07 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 26 Mar 2019 23:38:07 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Mar 2019 23:38:07 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 26 Mar 2019 23:38:08 GMT
WORKDIR /usr/local/apache2
# Tue, 26 Mar 2019 23:38:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libapr1-dev 		libaprutil1-dev 		libaprutil1-ldap 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:38:28 GMT
ENV HTTPD_VERSION=2.4.38
# Tue, 26 Mar 2019 23:38:29 GMT
ENV HTTPD_SHA256=7dc65857a994c98370dc4334b260101a7a04be60e6e74a5c57a6dee1bc8f394a
# Tue, 26 Mar 2019 23:38:29 GMT
ENV HTTPD_PATCHES=
# Tue, 26 Mar 2019 23:38:30 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Tue, 26 Mar 2019 23:40:19 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		dirmngr 		dpkg-dev 		gcc 		gnupg 		liblua5.2-dev 		libnghttp2-dev 		libpcre3-dev 		libssl-dev 		libxml2-dev 		make 		wget 		zlib1g-dev 	; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		-e 's!^(\s*TransferLog)\s+\S+!\1 /proc/self/fd/1!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		"$HTTPD_PREFIX/conf/extra/httpd-ssl.conf" 	; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		httpd -v
# Tue, 26 Mar 2019 23:40:20 GMT
COPY file:8b68ac010cb13f58ebe31c3015d15c988625d2fde7339dca8a84c3c914493323 in /usr/local/bin/ 
# Tue, 26 Mar 2019 23:40:20 GMT
EXPOSE 80
# Tue, 26 Mar 2019 23:40:20 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7df2f4a2bf9517049dfa144f9354f9d22cc3356308fc37d9672b3e85ab564761`  
		Last Modified: Tue, 26 Mar 2019 23:40:44 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbda6f884d1428e64cd822db827c19161ba0d946011902923c98888638be869c`  
		Last Modified: Tue, 26 Mar 2019 23:40:47 GMT  
		Size: 10.3 MB (10336116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb331aac1c31a603762eed5ea78eeb24cb8f5a63f7d043830168a78aa27b5a69`  
		Last Modified: Tue, 26 Mar 2019 23:40:48 GMT  
		Size: 16.5 MB (16549050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef7c5393eddd10eb2fd6d04d83ac1707321fb9b076c51ef5a0dfb69cb7ee43a1`  
		Last Modified: Tue, 26 Mar 2019 23:40:44 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:latest` - linux; arm variant v5

```console
$ docker pull httpd@sha256:b705fae9bfa95bf106bea64a4cb546aac98dd3a49794c7ba073bc073d52e4157
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.3 MB (46334075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10eda155700b4c00cb78c99631e524814b6aa15efa87d8a0a446b64d6c7d538b`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Wed, 27 Mar 2019 08:53:57 GMT
ADD file:7a35d0949b1b3e7394102d060feb38dba6645340f0c24c11c41eab11995474e2 in / 
# Wed, 27 Mar 2019 08:53:58 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:41:55 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Wed, 27 Mar 2019 09:41:56 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Mar 2019 09:41:57 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Wed, 27 Mar 2019 09:41:57 GMT
WORKDIR /usr/local/apache2
# Wed, 27 Mar 2019 09:43:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libapr1-dev 		libaprutil1-dev 		libaprutil1-ldap 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 09:43:32 GMT
ENV HTTPD_VERSION=2.4.38
# Wed, 27 Mar 2019 09:43:32 GMT
ENV HTTPD_SHA256=7dc65857a994c98370dc4334b260101a7a04be60e6e74a5c57a6dee1bc8f394a
# Wed, 27 Mar 2019 09:43:33 GMT
ENV HTTPD_PATCHES=
# Wed, 27 Mar 2019 09:43:33 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Wed, 27 Mar 2019 09:46:10 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		dirmngr 		dpkg-dev 		gcc 		gnupg 		liblua5.2-dev 		libnghttp2-dev 		libpcre3-dev 		libssl-dev 		libxml2-dev 		make 		wget 		zlib1g-dev 	; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		-e 's!^(\s*TransferLog)\s+\S+!\1 /proc/self/fd/1!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		"$HTTPD_PREFIX/conf/extra/httpd-ssl.conf" 	; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		httpd -v
# Wed, 27 Mar 2019 09:46:11 GMT
COPY file:8b68ac010cb13f58ebe31c3015d15c988625d2fde7339dca8a84c3c914493323 in /usr/local/bin/ 
# Wed, 27 Mar 2019 09:46:11 GMT
EXPOSE 80
# Wed, 27 Mar 2019 09:46:11 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:2e028234e3987a188a306c264af3c27abc8240fc8e19373e1c5adc01b31e6176`  
		Last Modified: Wed, 27 Mar 2019 08:59:38 GMT  
		Size: 21.2 MB (21160663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:056c4e8d22d281122ff0c1b6ba217f3d9e4c3bad4e69f7b8a7379217b59a8cbc`  
		Last Modified: Wed, 27 Mar 2019 09:46:32 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f364dce45c7ae8d50e5aad7f4961a7b4675d7c259b8cfca3af366ab65da8a6e`  
		Last Modified: Wed, 27 Mar 2019 09:46:35 GMT  
		Size: 9.0 MB (8960277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a067296bd7da6003136bacb2234474fe4377d6460fdc20cac760886758824ec6`  
		Last Modified: Wed, 27 Mar 2019 09:46:37 GMT  
		Size: 16.2 MB (16212653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7dd723bf90df2c7aea512e13f521c52e6d0dabd60228116e150e3fa7acbe578`  
		Last Modified: Wed, 27 Mar 2019 09:46:32 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:latest` - linux; arm variant v7

```console
$ docker pull httpd@sha256:eb96fa967e4b44fd1a663d8fb7c9556b6e7b89cffec95fca70b5b89abe8c5e2d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.6 MB (43589796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbc65864f55b6c4ff014b66b15d2d3c4c16b4158e3d7e86070b28fef0a21b022`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Tue, 05 Mar 2019 13:11:01 GMT
ADD file:5d43d39fbe853e1f4c9f89be2ddc937fb88624889c511b9a75d6389c2b67918a in / 
# Tue, 05 Mar 2019 13:11:03 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 14:41:20 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 05 Mar 2019 14:41:20 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 05 Mar 2019 14:41:22 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 05 Mar 2019 14:41:22 GMT
WORKDIR /usr/local/apache2
# Tue, 05 Mar 2019 14:41:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libapr1-dev 		libaprutil1-dev 		libaprutil1-ldap 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 14:41:37 GMT
ENV HTTPD_VERSION=2.4.38
# Tue, 05 Mar 2019 14:41:37 GMT
ENV HTTPD_SHA256=7dc65857a994c98370dc4334b260101a7a04be60e6e74a5c57a6dee1bc8f394a
# Tue, 05 Mar 2019 14:41:38 GMT
ENV HTTPD_PATCHES=
# Tue, 05 Mar 2019 14:41:38 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Tue, 05 Mar 2019 14:43:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		dirmngr 		dpkg-dev 		gcc 		gnupg 		liblua5.2-dev 		libnghttp2-dev 		libpcre3-dev 		libssl-dev 		libxml2-dev 		make 		wget 		zlib1g-dev 	; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		-e 's!^(\s*TransferLog)\s+\S+!\1 /proc/self/fd/1!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		"$HTTPD_PREFIX/conf/extra/httpd-ssl.conf" 	; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		httpd -v
# Tue, 05 Mar 2019 14:43:49 GMT
COPY file:8b68ac010cb13f58ebe31c3015d15c988625d2fde7339dca8a84c3c914493323 in /usr/local/bin/ 
# Tue, 05 Mar 2019 14:43:49 GMT
EXPOSE 80
# Tue, 05 Mar 2019 14:43:50 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:ecad9bd7ef0cc879127c92e50db573b75c643910463a12affaa5be77c7960bda`  
		Last Modified: Tue, 05 Mar 2019 13:18:41 GMT  
		Size: 19.3 MB (19282494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2cecbe0a0c277492ab0e857f503509fe35c5644d3872f35628e459e77dbd1c8`  
		Last Modified: Tue, 05 Mar 2019 14:44:10 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c8676e79de5d7e9ebe4b57646e8210723ef653a2656a00f3774a1572c5e7e56`  
		Last Modified: Tue, 05 Mar 2019 14:44:13 GMT  
		Size: 8.5 MB (8458717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4eab8efc74f68eedc95c9b99a69a72a451c7d927e92abb2da3117ccb9e2772be`  
		Last Modified: Tue, 05 Mar 2019 14:44:15 GMT  
		Size: 15.8 MB (15848102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16f7ac61e998b1183b3194aa7d8f1f6d6b57eb2ab97d762da8ef20d9508b5ce1`  
		Last Modified: Tue, 05 Mar 2019 14:44:10 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:latest` - linux; arm64 variant v8

```console
$ docker pull httpd@sha256:6735c02f4b23364f82285b754ada1cdb704a454462a9889e330de0368755ca1e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.7 MB (45706444 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ad76491296e286a9bf54d417d0705a3cb107e886687b98215e0fc7da4d41e41`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 11:23:53 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Wed, 06 Feb 2019 11:23:53 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Feb 2019 11:23:56 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Wed, 06 Feb 2019 11:23:57 GMT
WORKDIR /usr/local/apache2
# Wed, 06 Feb 2019 11:26:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libapr1-dev 		libaprutil1-dev 		libaprutil1-ldap 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 11:26:08 GMT
ENV HTTPD_VERSION=2.4.38
# Wed, 06 Feb 2019 11:26:09 GMT
ENV HTTPD_SHA256=7dc65857a994c98370dc4334b260101a7a04be60e6e74a5c57a6dee1bc8f394a
# Wed, 06 Feb 2019 11:26:11 GMT
ENV HTTPD_PATCHES=
# Wed, 06 Feb 2019 11:26:13 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Wed, 13 Feb 2019 10:09:36 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		dirmngr 		dpkg-dev 		gcc 		gnupg 		liblua5.2-dev 		libnghttp2-dev 		libpcre3-dev 		libssl-dev 		libxml2-dev 		make 		wget 		zlib1g-dev 	; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		-e 's!^(\s*TransferLog)\s+\S+!\1 /proc/self/fd/1!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		"$HTTPD_PREFIX/conf/extra/httpd-ssl.conf" 	; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		httpd -v
# Wed, 13 Feb 2019 10:09:37 GMT
COPY file:8b68ac010cb13f58ebe31c3015d15c988625d2fde7339dca8a84c3c914493323 in /usr/local/bin/ 
# Wed, 13 Feb 2019 10:09:37 GMT
EXPOSE 80
# Wed, 13 Feb 2019 10:09:38 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79248597373f058764aeb8913d2688036340a8bda3b2f17f097861426230962d`  
		Last Modified: Wed, 06 Feb 2019 11:35:18 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f06f5abea4b8b5373b1d9806565cade04a1aa6ac93d911ec37f1cc720dd5528b`  
		Last Modified: Wed, 06 Feb 2019 11:35:22 GMT  
		Size: 9.2 MB (9160970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df51f9b99d92391ff6a70537d1a46be5d80abd7edc1abfc985f102b436e06a11`  
		Last Modified: Wed, 13 Feb 2019 10:12:10 GMT  
		Size: 16.2 MB (16194858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20064d7837023e6716ae03fd3df84b514f2646197712ff67723363a89615b049`  
		Last Modified: Wed, 13 Feb 2019 10:12:05 GMT  
		Size: 303.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:latest` - linux; 386

```console
$ docker pull httpd@sha256:e292b14161cfa5bae890b5a9a216eeaceff8dfcae866e673c1dd21a28ca2e5ba
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.7 MB (53721534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdabd89364d4279a545920f53811273979bd341252404365891de5e660c4835d`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Tue, 05 Mar 2019 11:45:43 GMT
ADD file:25fe90430e63a83798c7fa241ebe3a89591a059654422474b19d5610b104a639 in / 
# Tue, 05 Mar 2019 11:45:44 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 17:26:18 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 05 Mar 2019 17:26:18 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 05 Mar 2019 17:26:19 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 05 Mar 2019 17:26:19 GMT
WORKDIR /usr/local/apache2
# Tue, 05 Mar 2019 17:26:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libapr1-dev 		libaprutil1-dev 		libaprutil1-ldap 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 17:26:29 GMT
ENV HTTPD_VERSION=2.4.38
# Tue, 05 Mar 2019 17:26:29 GMT
ENV HTTPD_SHA256=7dc65857a994c98370dc4334b260101a7a04be60e6e74a5c57a6dee1bc8f394a
# Tue, 05 Mar 2019 17:26:30 GMT
ENV HTTPD_PATCHES=
# Tue, 05 Mar 2019 17:26:30 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Tue, 05 Mar 2019 17:28:16 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		dirmngr 		dpkg-dev 		gcc 		gnupg 		liblua5.2-dev 		libnghttp2-dev 		libpcre3-dev 		libssl-dev 		libxml2-dev 		make 		wget 		zlib1g-dev 	; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		-e 's!^(\s*TransferLog)\s+\S+!\1 /proc/self/fd/1!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		"$HTTPD_PREFIX/conf/extra/httpd-ssl.conf" 	; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		httpd -v
# Tue, 05 Mar 2019 17:28:16 GMT
COPY file:8b68ac010cb13f58ebe31c3015d15c988625d2fde7339dca8a84c3c914493323 in /usr/local/bin/ 
# Tue, 05 Mar 2019 17:28:17 GMT
EXPOSE 80
# Tue, 05 Mar 2019 17:28:17 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:14de7d5deca96a0d1b115104a4375816794d85fc365ada5173b5a806f0d8dbcf`  
		Last Modified: Tue, 05 Mar 2019 11:55:10 GMT  
		Size: 23.1 MB (23125680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6d8228904454ca10008dc2fb7677e3bec6e78c1ba35bba469a91fbd875701bb`  
		Last Modified: Tue, 05 Mar 2019 17:28:39 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aac5f6891e00f5327c8e8521d3619af050ea09ad88a320e66a09572590f3228`  
		Last Modified: Tue, 05 Mar 2019 17:28:43 GMT  
		Size: 13.9 MB (13908880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:422726ee564b74880d0bead0483b27c97e5801bfbb354b6e330655e2c00d2163`  
		Last Modified: Tue, 05 Mar 2019 17:28:43 GMT  
		Size: 16.7 MB (16686520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41204868a08352aae19cd586d7f5173d7b0011c3b8b9bebe1153df086f66dad2`  
		Last Modified: Tue, 05 Mar 2019 17:28:39 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:latest` - linux; ppc64le

```console
$ docker pull httpd@sha256:e1fd2e0d8a12e637c9ec729a76582e3df533fcd5750ad161f3845ba3b91b7b7e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.4 MB (49364232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59b4645f6160b9d16a5d2719baa8f9c7c70d65f3e772019b9f30ddd24a8d9d68`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Wed, 27 Mar 2019 08:25:17 GMT
ADD file:ef0d89af4ccdb491595dd964213059d7802952b9f452040c4f936f803ae3e3fd in / 
# Wed, 27 Mar 2019 08:25:20 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 11:21:40 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Wed, 27 Mar 2019 11:21:43 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Mar 2019 11:21:48 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Wed, 27 Mar 2019 11:21:51 GMT
WORKDIR /usr/local/apache2
# Wed, 27 Mar 2019 11:22:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libapr1-dev 		libaprutil1-dev 		libaprutil1-ldap 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 11:22:44 GMT
ENV HTTPD_VERSION=2.4.38
# Wed, 27 Mar 2019 11:22:46 GMT
ENV HTTPD_SHA256=7dc65857a994c98370dc4334b260101a7a04be60e6e74a5c57a6dee1bc8f394a
# Wed, 27 Mar 2019 11:22:51 GMT
ENV HTTPD_PATCHES=
# Wed, 27 Mar 2019 11:22:54 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Wed, 27 Mar 2019 11:28:30 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		dirmngr 		dpkg-dev 		gcc 		gnupg 		liblua5.2-dev 		libnghttp2-dev 		libpcre3-dev 		libssl-dev 		libxml2-dev 		make 		wget 		zlib1g-dev 	; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		-e 's!^(\s*TransferLog)\s+\S+!\1 /proc/self/fd/1!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		"$HTTPD_PREFIX/conf/extra/httpd-ssl.conf" 	; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		httpd -v
# Wed, 27 Mar 2019 11:28:33 GMT
COPY file:8b68ac010cb13f58ebe31c3015d15c988625d2fde7339dca8a84c3c914493323 in /usr/local/bin/ 
# Wed, 27 Mar 2019 11:28:35 GMT
EXPOSE 80
# Wed, 27 Mar 2019 11:28:36 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:47457ee2fac27696752b903854c4e4621e3481edc7a34b727f45b4c355de7976`  
		Last Modified: Wed, 27 Mar 2019 08:32:50 GMT  
		Size: 22.8 MB (22751385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e1b499470dc33eaa671c2a586a48881937262620980b0caef493b8133b3f69`  
		Last Modified: Wed, 27 Mar 2019 11:29:04 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:947d9e27a5579a22d22a25008b4f4fb96a6fe901314dcd247f3072da2532ea24`  
		Last Modified: Wed, 27 Mar 2019 11:29:07 GMT  
		Size: 9.9 MB (9870690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdfe1cb965eaf1ccd646334400a1c4f08f1da29ff8338a0529652cacc96bddac`  
		Last Modified: Wed, 27 Mar 2019 11:29:12 GMT  
		Size: 16.7 MB (16741674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a58ed74a21f48b160e3aa8c527d75d3bc451585cd82e6b11ae3580fd13fa5f9f`  
		Last Modified: Wed, 27 Mar 2019 11:29:04 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `httpd:latest` - linux; s390x

```console
$ docker pull httpd@sha256:eac40318c385df1419e79438aeb6803c0c1985de2fdbbed80943e37238818379
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.1 MB (50073969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1476d3810b8b26b82ec02f6a05281c928d98d513b8c089b8a818317f860202b6`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Tue, 05 Mar 2019 12:43:10 GMT
ADD file:977b2abfb4bb6e881775d945b4d82d3f3e492b498a78ce0a9c877d9c8b82e3a9 in / 
# Tue, 05 Mar 2019 12:43:10 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 13:43:55 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 05 Mar 2019 13:43:55 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 05 Mar 2019 13:43:56 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 05 Mar 2019 13:43:56 GMT
WORKDIR /usr/local/apache2
# Tue, 05 Mar 2019 13:45:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libapr1-dev 		libaprutil1-dev 		libaprutil1-ldap 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 13:45:06 GMT
ENV HTTPD_VERSION=2.4.38
# Tue, 05 Mar 2019 13:45:06 GMT
ENV HTTPD_SHA256=7dc65857a994c98370dc4334b260101a7a04be60e6e74a5c57a6dee1bc8f394a
# Tue, 05 Mar 2019 13:45:06 GMT
ENV HTTPD_PATCHES=
# Tue, 05 Mar 2019 13:45:06 GMT
ENV APACHE_DIST_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename= 	https://www-us.apache.org/dist/ 	https://www.apache.org/dist/ 	https://archive.apache.org/dist/
# Tue, 05 Mar 2019 13:46:36 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		dirmngr 		dpkg-dev 		gcc 		gnupg 		liblua5.2-dev 		libnghttp2-dev 		libpcre3-dev 		libssl-dev 		libxml2-dev 		make 		wget 		zlib1g-dev 	; 	rm -r /var/lib/apt/lists/*; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in $APACHE_DIST_URLS; do 			if wget -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'httpd.tar.bz2' "httpd/httpd-$HTTPD_VERSION.tar.bz2"; 	echo "$HTTPD_SHA256 *httpd.tar.bz2" | sha256sum -c -; 		ddist 'httpd.tar.bz2.asc' "httpd/httpd-$HTTPD_VERSION.tar.bz2.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in 		A93D62ECC3C8EA12DB220EC934EA76E6791485A8 		B9E8213AEFB861AF35A41F2C995E35221AD84DFF 	; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" httpd.tar.bz2.asc; 		mkdir -p src; 	tar -xf httpd.tar.bz2 -C src --strip-components=1; 	rm httpd.tar.bz2; 	cd src; 		patches() { 		while [ "$#" -gt 0 ]; do 			local patchFile="$1"; shift; 			local patchSha256="$1"; shift; 			ddist "$patchFile" "httpd/patches/apply_to_$HTTPD_VERSION/$patchFile"; 			echo "$patchSha256 *$patchFile" | sha256sum -c -; 			patch -p0 < "$patchFile"; 			rm -f "$patchFile"; 		done; 	}; 	patches $HTTPD_PATCHES; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 		--enable-mpms-shared=all 	; 	make -j "$(nproc)"; 	make install; 		cd ..; 	rm -r src man manual; 		sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		-e 's!^(\s*TransferLog)\s+\S+!\1 /proc/self/fd/1!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		"$HTTPD_PREFIX/conf/extra/httpd-ssl.conf" 	; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		httpd -v
# Tue, 05 Mar 2019 13:46:36 GMT
COPY file:8b68ac010cb13f58ebe31c3015d15c988625d2fde7339dca8a84c3c914493323 in /usr/local/bin/ 
# Tue, 05 Mar 2019 13:46:36 GMT
EXPOSE 80
# Tue, 05 Mar 2019 13:46:36 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:2c9e1401ee6b0131741b02fed745b7f1d34bf29b0bc59f41e08dc969a710fc58`  
		Last Modified: Tue, 05 Mar 2019 12:45:42 GMT  
		Size: 22.3 MB (22345383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e85315e9a137902f6feefdf025bc706dbc4b6dc1c83d35c228476f4aab8031ec`  
		Last Modified: Tue, 05 Mar 2019 13:46:50 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55c54aa13b450e6b6b5a16a83e0805f6ec1ed34f573fd30d21b89ff7799a8645`  
		Last Modified: Tue, 05 Mar 2019 13:46:56 GMT  
		Size: 11.0 MB (11006937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9daa5637d0e92d20ab2788d85560371b358e23991e9ddae4c5d18b6edd51610`  
		Last Modified: Tue, 05 Mar 2019 13:46:53 GMT  
		Size: 16.7 MB (16721192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1feaad6b3892e4ee631d6157b6243d017b42f4175591a6cc5809c316806d4410`  
		Last Modified: Tue, 05 Mar 2019 13:46:50 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
